Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603DA13BE1
	for <lists+linux-um@lfdr.de>; Sat,  4 May 2019 21:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8rECTYyCZqTCJo102PT4shlKSTwYVXy1tu9CPzBZG8=; b=PeK4Ek81Nre1Z6
	MWxb6YdFnEutuTZykoaQWblRem11FlmbK9M/la3QnDu9NsDc494V7w/bFmzqQMIX2FJMbsiuvU3r/
	tyA6ViaUvZNLevX0U7lvvccBPDYSQTqNpIsxHmi1R6plmDDdu1zsxjUabbZC3L0ignMNyigJV1UnJ
	hbKqJmlohZKIT57ZvZUM0iyuJu+E9ImcUtXsh6dIl10UEJwM6Klk8Y34e+0L+doID+Lte1/7BlhKJ
	MsDeViGBAgLLpmBNI/wzHNv+7b4kBmbvgllySd1eU2arW6PJr9aQdJnI99ABEWFIePuj/IGz14De2
	ZxOB1gpb7rcZ7AoPNJMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMzyt-00010B-LW; Sat, 04 May 2019 19:05:55 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMzyq-0000zm-Rq
 for linux-um@lists.infradead.org; Sat, 04 May 2019 19:05:54 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hMzyj-0007vW-1J; Sat, 04 May 2019 21:05:45 +0200
Message-ID: <95430ca975e73addc7f65e331488bc280974fd72.camel@sipsolutions.net>
Subject: Re: [PATCH 3/3] arch: um: support virtual time
From: Johannes Berg <johannes@sipsolutions.net>
To: "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>
Date: Sat, 04 May 2019 21:05:43 +0200
In-Reply-To: <20190503213249.30008-3-johannes@sipsolutions.net>
References: <20190503213249.30008-1-johannes@sipsolutions.net>
 <20190503213249.30008-3-johannes@sipsolutions.net>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_120552_902615_BABF5040 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, 2019-05-03 at 21:32 +0000, Johannes Berg wrote:
> 
> @@ -65,12 +75,17 @@ int os_timer_set_interval(void)
> 
>         if (timer_settime(event_high_res_timer, 0, &its, NULL) == -1)
>                 return -errno;
> +#else
> +       timer_enabled = true;
> +       timer_expiry = virtual_time + UM_NSEC_PER_SEC / UM_HZ;
> +#endif

This is broken in two ways - first of all, I missed the interval
completely, and secondly if you end up with a process that does
something like

 x = gettime();
 while (x == gettime()) { /* nothing */ }

then it gets stuck forever ...

I have a new version almost ready.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
