Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A785C187703
	for <lists+linux-um@lfdr.de>; Tue, 17 Mar 2020 01:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XE5Sp9CMLJ5Aa1gINMLJvX/u0nS+BlmzS/3jI9guh7g=; b=lHUbr4N+hcLv+Z
	FKliUvrvxL/y+MexZqphpnUm5mp2w4nkGznNfloXHF6Q1NGv+cobe+lhKeKuYvtGMXB5axZXUiwkU
	NiNf5kFrGYCKEVKp29zsiAeEemiBgrJQ1xGNFFQSs277d0QQLXwbkEJZzApNCbO7fXP1Q345p+nZY
	8lPBC5PeGd/zKfoDN0qiNd1z6bwAHDS6tM6yaTTL1pm2UmqrR4e0MeA6ZMwYFocgqim4Ri4q7C+wS
	wchoqbyZ2410CoZ2aVXSbCOSk/ITt/pjuwhb52QUp3WZXZAbsQ07OgDq7tzZ6E+bJgscIIb5SU53R
	DV/N42O5VxifdvMdRIzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE0MJ-0008Pq-5J; Tue, 17 Mar 2020 00:45:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE0MG-0008OV-QX
 for linux-um@lists.infradead.org; Tue, 17 Mar 2020 00:45:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: krisman) with ESMTPSA id 47A2528AE2F
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: jdike@addtoit.com
Subject: [PATCH 1/2] um: ubd: Prevent buffer overrun on command completion
Date: Mon, 16 Mar 2020 20:45:06 -0400
Message-Id: <20200317004507.1513370-2-krisman@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200317004507.1513370-1-krisman@collabora.com>
References: <20200317004507.1513370-1-krisman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_174524_996299_7AD7636D 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Martyn Welch <martyn.welch@collabora.com>, richard@nod.at,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Gabriel Krisman Bertazi <krisman@collabora.com>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On the hypervisor side, when completing commands and the pipe is full,
we retry writing only the entries that failed, by offsetting
io_req_buffer, but we don't reduce the number of bytes written, which
can cause a buffer overrun of io_req_buffer, and write garbage to the
pipe.

Cc: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 arch/um/drivers/ubd_kern.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/um/drivers/ubd_kern.c b/arch/um/drivers/ubd_kern.c
index 6627d7c30f37..0f5d0a699a49 100644
--- a/arch/um/drivers/ubd_kern.c
+++ b/arch/um/drivers/ubd_kern.c
@@ -1606,7 +1606,9 @@ int io_thread(void *arg)
 		written = 0;
 
 		do {
-			res = os_write_file(kernel_fd, ((char *) io_req_buffer) + written, n);
+			res = os_write_file(kernel_fd,
+					    ((char *) io_req_buffer) + written,
+					    n - written);
 			if (res >= 0) {
 				written += res;
 			}
-- 
2.25.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
