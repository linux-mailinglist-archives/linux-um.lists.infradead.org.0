Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF92FB4FA5
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 15:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ScBW1EaHw9hx0i5VXIvxHO4jC4iGKlNbRnRcpQnegA=; b=FJXRI6hT1ni5GN
	c99bnuwgxdr0PZGxM3MYNaUJsaEK8ctVGuHBT29F5Hbk+w7GaWwxMofW1q3GMdQkNxwMksutSIvGN
	FVmSI8Dd1hdUjDhUeXo8pG5pmxGkJSzxSshvyo9/ntX7Kw/8Fa6NvQ+Jsazqc5puhkDzeq6GzXVlw
	WS2r8Bk2hTnemlhGOStVJcrkoCnln8CNb6VyHhfDr0H78b/WbhpWIRIGOYgTgYN0NTZZVOwpdN4rP
	nS+5l5j++cJ0jZlg4McnbEdb94BMgIUPGdLoBlZPWWgDFDyohmRZqTaTBL6rbwC1Qp16R6jM9/J1K
	B3YNn2700tCJQDAZWRgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADrJ-0001vu-1r; Tue, 17 Sep 2019 13:49:33 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADrG-0001va-Kk
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 13:49:31 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iADrF-0005kf-1w; Tue, 17 Sep 2019 15:49:29 +0200
Message-ID: <2a6fc1c8ab6312ad0683d3b4f6f11767b1803929.camel@sipsolutions.net>
Subject: Re: [RFC v3 2/2] um: implement time-travel=ext
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Tue, 17 Sep 2019 15:49:27 +0200
In-Reply-To: <ddaf73a2-762a-91d2-40ab-d432e363d52b@kot-begemot.co.uk>
References: <20190917132943.20102-1-johannes@sipsolutions.net>
 <1568726354-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
 <a8a2a033d8dc988c34d321425b7d0baa65b8df81.camel@sipsolutions.net>
 <ddaf73a2-762a-91d2-40ab-d432e363d52b@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_064930_682027_86A123AA 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-09-17 at 14:47 +0100, Anton Ivanov wrote:

> > Though, come to think of it, I probably broke modular builds again here.
> 
> :)

I'll fix it later, or maybe I'll just prohibit it, though there isn't
really a strict reason to other than not having to sprinkle
EXPORT_SYMBOL all over.

> > Anyway, I won't send a new version soon I think, comments welcome and
> > I'll see how the qemu changes progress.
> 
> As I said - I am going to wait for Richard's next PR so I have a settled 
> tree and I will get on with testing. I should have a bit more time then 
> as well as ONS Europe will be out of the way. At the moment all of my 
> time is being eaten by various k8 related stuff for that.

Sure, thanks. I'll keep rebasing this as that happens too, maybe I
should publish a git tree on kernel.org for it?

Not that I really expect you to (want to) test all the time-travel
stuff, it seems like a fairly niche feature :-)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
