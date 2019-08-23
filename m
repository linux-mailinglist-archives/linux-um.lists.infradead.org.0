Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FDC9B0F3
	for <lists+linux-um@lfdr.de>; Fri, 23 Aug 2019 15:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDSJQPZHrX1a2J1bMJmfvRk2j0JKdbs4c4GiawZC4D0=; b=rEz3xJ4aV5wNSn
	p44xl0GFPK7GmPBIl+ILvcCvuc496L4/CTVZCbvpZV7LSCnv+iNBi+k7cfaVxVq1hfhV6+wZSa4zK
	g5jCL0hwQt+xQMR5koPttoJQ1m6GlIuBu8T8C8BuXZIdE+tRmvTVwRKXrCVQ47W4HD00A5m6tZ3PW
	YEoMc1+1Yklf5O5QBb1lXe+5VKvPsglKP4JQEDmT1rFTJQS2lcGguZ79v0WVXJq7RflIOa1DR+hh9
	GDFnTdE4ISXx3/K6fxI5kn87DKldKgH8aMKcGaRNAFCeUqC6csvHNLrstvS4Gtz1x2ttabKDBZJ88
	rw4gSdZedGJTHzkprPsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19e3-0006X4-9I; Fri, 23 Aug 2019 13:30:23 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19e0-0006Wk-P5
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 13:30:21 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i19dz-0005Dc-FT
 for linux-um@lists.infradead.org; Fri, 23 Aug 2019 15:30:19 +0200
Message-ID: <80288c363d70b517004c61a02e1d5514f2769554.camel@sipsolutions.net>
Subject: Re: [PATCH] arch: um: enable CONFIG_CONSTRUCTORS
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Fri, 23 Aug 2019 15:30:18 +0200
In-Reply-To: <20190823130557.15870-1-johannes@sipsolutions.net>
References: <20190823130557.15870-1-johannes@sipsolutions.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_063020_818798_DCCEEE1D 
X-CRM114-Status: UNSURE (   5.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Fri, 2019-08-23 at 15:05 +0200, Johannes Berg wrote:
> 
> -#ifdef CONFIG_CONSTRUCTORS
> +#if defined(CONFIG_CONSTRUCTORS) && !defined(CONFIG_UML)
>  	ctor_fn_t *fn = (ctor_fn_t *) __ctors_start;

Hmm, no, this doesn't work. I was trying to do this for KASAN, but libc
calls this stuff WAY too early, and so KASAN just crashes.

It *does* get called (only once), but much too early.

Let's see if I can come up with a fix.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
