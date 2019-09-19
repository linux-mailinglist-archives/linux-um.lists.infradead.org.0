Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB27B7733
	for <lists+linux-um@lfdr.de>; Thu, 19 Sep 2019 12:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nu0SgwYaL0B60L1N8qhgX0BpR/dHkRKVvtV5aJcbHw8=; b=jH8hl3BnC8Rkxx
	KaZJ1IkxBGAsv4YW76mIb0hNkbt/cwj1m1P1TwhVDRSDpCEZ3o9L9h4u+M41G6cik3yDa/iWmdJL4
	fINofeFnCaisXfAz7TjmzC/n/n3eW4rJkKlag0d2ciJwDD5LuhDYoEm1Sz2nY03wAmwyG/2fLsoGD
	Zqj1YQuMoHMQAvL8aOmUS7fX2gbGAD6TSQiM8KhKgWfsb3IjnAiXIGUk/iZrNBg3WqDk+wECBer4L
	0Y/8YY4n7j80pCwjfeVa2s8m0h+5r78Xyd9JmBK6udhDmk5n5sMXN5NjzhfvzG3o1V6ANBjDTgHup
	bs8VImCQz2HNql7d1mog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtRo-00067l-R5; Thu, 19 Sep 2019 10:14:00 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtRm-00067K-N2
 for linux-um@lists.infradead.org; Thu, 19 Sep 2019 10:14:00 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iAtRi-0006iM-Hq; Thu, 19 Sep 2019 12:13:54 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: virtio: keep reading on -EAGAIN
Date: Thu, 19 Sep 2019 12:13:48 +0200
Message-Id: <1568888028-I2734f0a83b4b28ea237050d5def17b4529b8b446@changeid>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_031358_751948_26DE5757 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

When we get an interrupt from the socket getting readable,
and start reading, there's a possibility for a race. This
depends on the implementation of the device, but e.g. with
qemu's libvhost-user, we can see:

 device                 virtio_uml
---------------------------------------
  write header
                         get interrupt
                         read header
                         read body -> returns -EAGAIN
  write body

The -EAGAIN return is because the socket is non-blocking,
and then this leads us to abandon this message.

In fact, we've already read the header, so when the get
another signal/interrupt for the body, we again read it
as though it's a new message header, and also abandon it
for the same reason (wrong size etc.)

This essentially breaks things, and if that message was
one that required a response, it leads to a deadlock as
the device is waiting for the response but we'll never
reply.

Fix this by spinning on -EAGAIN as well.

Note that this situation is highly unlikely to occur in
normal usage, since there will be very few messages and
only in the startup phase. With the inband call feature
this does tend to happen (eventually) though.

Fixes: 5d38f324993f ("um: drivers: Add virtio vhost-user driver")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/drivers/virtio_uml.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index 12f3b0bf14b7..66b5a936f289 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -112,7 +112,7 @@ static int full_read(int fd, void *buf, int len)
 			buf += rc;
 			len -= rc;
 		}
-	} while (len && (rc > 0 || rc == -EINTR));
+	} while (len && (rc > 0 || rc == -EINTR || rc == -EAGAIN));
 
 	if (rc < 0)
 		return rc;
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
