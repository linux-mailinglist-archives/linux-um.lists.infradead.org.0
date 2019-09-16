Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2925DB43D4
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 00:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZM6wLiRfpRrSldyggXYEX32Rc2oyrOcXxwdJZzC0QC8=; b=W1888YCOoKngID
	N0swg4XicsJnz0Sv8X1ZtG5xO0ugqUjV5282559p1qZ3hOqb0mWCJvmF0utN2r2/5gm4TRhFCb4iy
	xSxwcIZOOOBI/d7O+kix6QRgts3rpSN+ZQRkA593p8EJ+3s+XySrrl2BF5Opfc6SjvM7hsK8JjHeu
	6grnNycVCssrDirn/u7u6xWWZVb52eF6mVSKG++9jPYiFscgw68QBPEIsC2oPACOyMxBmPfRy8qD4
	wp/0rsPGuW1hxz0ZKvabTWVAfUWWlpz1s+lvQJFZO3wohYGIydVpSMULCcSCrApKPBaQsmyyMV40v
	n9Ja7tEClcl1LWAvpsKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9zGP-0000rR-KS; Mon, 16 Sep 2019 22:14:29 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9zGN-0000qn-EQ
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 22:14:28 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i9zGM-0000My-65
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 00:14:26 +0200
Message-ID: <7583ac26d787ddf211473166136836f3472bf31e.camel@sipsolutions.net>
Subject: Re: [RFC v2 2/2] um: implement time-travel=ext
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Tue, 17 Sep 2019 00:14:25 +0200
In-Reply-To: <1568671815-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
References: <1568671815-I895f9019593bd579566f14e5af9346e3c9b56f28@changeid>
 <1568671815-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_151427_488470_825388FB 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-09-17 at 00:10 +0200, Johannes Berg wrote:
> 
>  arch/um/drivers/virtio_uml.c          |  59 ++++++-
>  arch/um/include/linux/time-internal.h |  28 +++
>  arch/um/include/shared/os.h           |   1 +
>  arch/um/kernel/skas/syscall.c         |   3 +-
>  arch/um/kernel/time.c                 | 243 ++++++++++++++++++++++++--
>  arch/um/os-Linux/file.c               |  31 ++++
>  include/uapi/linux/um_timetravel.h    | 107 ++++++++++++
>  7 files changed, 458 insertions(+), 14 deletions(-)
>  create mode 100644 include/uapi/linux/um_timetravel.h

FWIW, this does seem nicer than

>  arch/um/Kconfig                       |  13 ++
>  arch/um/drivers/virtio_uml.c          | 204 ++++++++++++++++-
>  arch/um/include/linux/time-internal.h |  14 ++
>  arch/um/include/shared/os.h           |   6 +
>  arch/um/kernel/time.c                 | 315 +++++++++++++++++++++++++-
>  arch/um/os-Linux/file.c               | 116 ++++++++++
>  include/uapi/linux/virtio_ids.h       |   2 +
>  include/uapi/linux/virtio_simtime.h   |  99 ++++++++
>  8 files changed, 755 insertions(+), 14 deletions(-)
>  create mode 100644 include/uapi/linux/virtio_simtime.h

(which isn't even the whole story, I neglected one of the patches)


Also, it seems somewhat faster - my virtio-based one usually ran in a
bit over 1.5 seconds, this one usually takes around 1.1-1.2 seconds for
the same test.

It does still have a bug with interrupt delivery, I get a warning there
that I need to check out, I doubt it'll affect the code much though.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
