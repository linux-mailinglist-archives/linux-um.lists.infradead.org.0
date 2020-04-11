Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0D11A52EC
	for <lists+linux-um@lfdr.de>; Sat, 11 Apr 2020 18:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfJiwxaL72iZ5GQpyz/c2vtm1io1csXxQ5br7okxz10=; b=uxLIXJFfKYN8FP
	SUZAls2CEzGa4swEo6ToFR2Do0R/lykZKkr2uDZugz/wtTk1ZhpQYQ8ksAs05m6Yv1/x8BsalbLDO
	HTmOMtKf0mQ02vbRxQD7326T/XlBjzj2m0Cb7qrhJVNOHPCoaL2H/vpIDXlIhf9JV310djtr3AeZT
	/6fHy1FR+rcy02kg3fEZGFKVLxp39P/0A7nLm3LaglNLWvgkUi7Psd9GfT0F1peXgVuLbg2EPjKCx
	dmrsd+djMLYcTTwYqmqZwYwWNnuBaL3pIWuhSwZt1PWF7eZgtYmIAt38TLrE/1rEa4Xe8BrY2u1P+
	AHlD/TVK/J5+xT7b0OJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNJAD-0007Fd-63; Sat, 11 Apr 2020 16:39:25 +0000
Received: from smtprelay0008.hostedemail.com ([216.40.44.8]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNJAA-0007F6-CF
 for linux-um@lists.infradead.org; Sat, 11 Apr 2020 16:39:23 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 5FD0718029126;
 Sat, 11 Apr 2020 16:39:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:966:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2196:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3865:3867:3868:3870:3872:4321:4385:5007:6691:10004:10400:10848:11026:11232:11658:11914:12043:12297:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21451:21627:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: songs44_1699a1ced6313
X-Filterd-Recvd-Size: 1699
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Sat, 11 Apr 2020 16:39:15 +0000 (UTC)
Message-ID: <16239d86d8177e70f15aab5e7dca61758a749fb0.camel@perches.com>
Subject: Re: [trivial PATCH] um virtio: Neaten vu_err macro definition
From: Joe Perches <joe@perches.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>, 
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Date: Sat, 11 Apr 2020 09:37:10 -0700
In-Reply-To: <ba7b958fda7c42e10fded7b158e892e2dfb06494.camel@perches.com>
References: <ba7b958fda7c42e10fded7b158e892e2dfb06494.camel@perches.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_093922_476827_6B8CD7A6 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.8 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.40.44.8 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Erel Geron <erelx.geron@intel.com>, linux-um@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, 2020-04-11 at 09:28 -0700, Joe Perches wrote:
> Defining a macro with ... and __VA_ARGS__ (without ##) can cause
> compilation errors if a macro use does not have additional args.
> 
> Add ## to __VA_ARGS__ in the macro definition.
[]
> diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
[]
> @@ -74,7 +74,7 @@ struct virtio_uml_vq_info {
>  
>  extern unsigned long long physmem_size, highmem;
>  
> -#define vu_err(vu_dev, ...)	dev_err(&(vu_dev)->pdev->dev, __VA_ARGS__)
> +#define vu_err(vu_dev, ...)	dev_err(&(vu_dev)->pdev->dev, ##__VA_ARGS__)

Ignore this.  Caffeine-free so far this morning.

It _might_ be better as:

#define vu_err(vu_dev, fmt, ...)	dev_err(&(vu_dev)->pdev->dev, fmt, ##__VA_ARGS__)



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
