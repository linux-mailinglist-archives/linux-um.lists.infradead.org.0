Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D04E17D6
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 12:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wvayPB7hoVEZjByKeLv6Vl7tj4XPz/t6GErIDG/W64Y=; b=g+E2r5sC67QJbLUBesv0xzBU/
	/rB+ciSeaIHThNlkfGd2m6uhFvOlRgcAscaCqqIujuzifKL6mqHgcHseSZHBPd0/Lrg4jBUepFg5s
	z8F5QcYhqQ3zju+b4FxbDGSHyRrSrkVlSmmtL398vGP6xVP0d9N750enlfavOSrU4lXzr24kR2N7O
	bQLkj5zK7vqlf8LNhYXx1bPKyA6OlluzWyYQR2+mCRQrEYHQUkfXeOYYGX+uM4HMo8Te/wud2dfPX
	k4R7aQ2AWT1FJYi0mlH5bT5gnCVNmDwmuiDgtj2gk+VIZgHdiU0WkoLSxPYIxlbzxAp5iwT3ppuO8
	ihpPzZAGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDqS-0005Qg-Fr; Wed, 23 Oct 2019 10:26:24 +0000
Received: from mail.sf-mail.de ([2a01:4f8:1c17:6fae:616d:6c69:616d:6c69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDqH-0004bg-LO
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 10:26:15 +0000
Received: (qmail 27735 invoked from network); 23 Oct 2019 10:20:38 -0000
Received: from mail.sf-mail.de ([2a01:4f8:1c17:6fae:616d:6c69:616d:6c69]:43938
 HELO webmail.sf-mail.de) (auth=eike@sf-mail.de)
 by mail.sf-mail.de (Qsmtpd 0.36dev) with (DHE-RSA-AES256-GCM-SHA384 encrypted)
 ESMTPSA for <rppt@kernel.org>; Wed, 23 Oct 2019 12:20:38 +0200
MIME-Version: 1.0
Date: Wed, 23 Oct 2019 12:20:29 +0200
From: Rolf Eike Beer <eike-kernel@sf-tec.de>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH 08/12] parisc: use pgtable-nopXd instead of 4level-fixup
In-Reply-To: <1571822941-29776-9-git-send-email-rppt@kernel.org>
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
 <1571822941-29776-9-git-send-email-rppt@kernel.org>
Message-ID: <70339cfc547e2fa0f6b98fefb1b1a9fa@sf-tec.de>
X-Sender: eike-kernel@sf-tec.de
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_032614_020571_18A4CCAA 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-parisc-owner@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-alpha@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

> diff --git a/arch/parisc/include/asm/page.h 
> b/arch/parisc/include/asm/page.h
> index 93caf17..1d339ee 100644
> --- a/arch/parisc/include/asm/page.h
> +++ b/arch/parisc/include/asm/page.h
> @@ -42,48 +42,54 @@ typedef struct { unsigned long pte; } pte_t; /*
> either 32 or 64bit */
> 
>  /* NOTE: even on 64 bits, these entries are __u32 because we allocate
>   * the pmd and pgd in ZONE_DMA (i.e. under 4GB) */
> -typedef struct { __u32 pmd; } pmd_t;
>  typedef struct { __u32 pgd; } pgd_t;
>  typedef struct { unsigned long pgprot; } pgprot_t;
> 
> -#define pte_val(x)	((x).pte)
> -/* These do not work lvalues, so make sure we don't use them as such. 
> */
> +#if CONFIG_PGTABLE_LEVELS == 3
> +typedef struct { __u32 pmd; } pmd_t;
> +#define __pmd(x)	((pmd_t) { (x) } )
> +/* pXd_val() do not work lvalues, so make sure we don't use them as 
> such. */

For me it sounds like there is something missing, maybe an "as" before 
lvalues?
And it was "These", so plural, and now it is singular, so do -> does?

Eike

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
