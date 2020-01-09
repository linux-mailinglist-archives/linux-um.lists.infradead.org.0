Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6CB13565C
	for <lists+linux-um@lfdr.de>; Thu,  9 Jan 2020 10:59:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afzfcTa5TfzmCiX1YtbXUFxE2ULX4ndkw8DEYo18Oqk=; b=ZZwSyDYSbUYn6A
	Xz6CHgRu1IBFnolLXBcb2kPCRBPJkyHhCyIyfpfIqEUjD7LQjGkxRb3k18ZXg7ewCuBYOH/BiIAGh
	BOXtyxF6/HrN2xAAf2cGVcNYG+thh2xw/EBTQ3ayztmTozjm7+Iv9X3LUm1Ln5kvsEYIOwUAER+z0
	A6RU42rw7OCCzQhnxQC+GjkMmxBmB1UBRDQG8v9o1GjsNyC4npmFTW4KTT9bTr8opjpwrooGJ+hwd
	GNJH0mg52NBtiBsKyBupkG+wBoEZCLb9uB9uDrRltK3GGGG3f8Ae0XUSpFmDlrlmsPPyygWGx+dSw
	cOJ60uZAGDiDRdS99mpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUac-0008J2-9f; Thu, 09 Jan 2020 09:58:54 +0000
Received: from target.luon.net ([2a00:8240:5:10::21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUaY-0008Hw-N8
 for linux-um@lists.infradead.org; Thu, 09 Jan 2020 09:58:52 +0000
Received: from [2001:470:78b1:0:40e2:7ff:fef4:3122] (helo=beast.luon.net)
 by target.luon.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <sjoerd@debian.org>)
 id 1ipUaO-0001iT-HT; Thu, 09 Jan 2020 10:58:40 +0100
Received: by beast.luon.net (Postfix, from userid 1000)
 id 0E5BA3E1F0D; Thu,  9 Jan 2020 10:58:40 +0100 (CET)
Message-ID: <5caba454fee6e04443a8b51c63c50a39b9b932d8.camel@debian.org>
Subject: Re: Bug#928924: user-mode-linux: xterm functionality broken due to
 wrong path to port-helper
From: Sjoerd Simons <sjoerd@debian.org>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, rrs@debian.org, 
 928924@bugs.debian.org
Date: Thu, 09 Jan 2020 10:58:39 +0100
In-Reply-To: <4d26aa36-d2ab-b7f1-6cd6-abf1b158fe0a@kot-begemot.co.uk>
References: <451d491044af46fe1d87d10196e24e8e7b076f26.camel@debian.org>
 <157830351172.48768.9073767232890169518.reportbug@beast>
 <95a2a1cdb323633a0779acaeb0377ed60e7e3afc.camel@debian.org>
 <4d26aa36-d2ab-b7f1-6cd6-abf1b158fe0a@kot-begemot.co.uk>
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_015850_753024_C5E2B85B 
X-CRM114-Status: GOOD (  21.89  )
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
Cc: linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2020-01-06 at 16:58 +0000, Anton Ivanov wrote:
> 
> On 06/01/2020 16:21, Ritesh Raj Sarraf wrote:
> > Control: tag -1 +help
> > 
> > On Mon, 2020-01-06 at 10:38 +0100, Sjoerd Simons wrote:
> > > On my sid system:
> > > ```
> > > $ strings /usr/bin/linux.uml | grep port-helper
> > > /usr/lib//uml/port-helper
> > > ```
> > > 
> > > So the path is still incorrect even with newer upstream kernels.
> > 
> > I spent some time today looking at the new build but I haven't been
> > able to ascertain why this isn't setting the correct path.
> 
> It is used in a "user" side file - xterm.c
> 
> None of these sees "CONFIG_" so it considers it undef-ed which
> defaults 
> to 32 bit.

Is there any reason why the port helper is in the weird `/usr/lib64`
that seems more like a redhat-ism; On Debian if it's proper multi arch
under `/usr/lib/x86_64-linux-gnu/`..

However uml-utilities can't be installed for multiple architectures on
one system anyway (as it ships binaries). So there is little point in
try to being multi-arch-like (or just awkward :p)...

So to me the most practical and straight-forward solution would
probably be to revert the broken kernel patch and change the uml-
utilities package instead to always install in a single spot.

> You need to use some other way to figure out what is the build or to
> set 
> OS_LIB_PATH for this case.
> 
> > ```
> > $ strings `which  linux.uml` | grep port-helper
> > /usr/lib/uml/port-helper
> > ```
> > 
> > First, for context to the readers here, the port-helper binary is
> > shipped with uml-utilities package. This package, depending on the
> > architecture, installs the binary to a architecture specific
> > location.
> > 
> > https://sources.debian.org/src/uml-utilities/20070815.2-1/Makefile/#L10
> > 
> > Which on an amd64 machine is: /usr/lib64/uml/port-helper
> > 
> > ```
> > $ dpkg  -S /usr/lib64/uml/port-helper
> > uml-utilities: /usr/lib64/uml/port-helper
> > ```
> > 
> > The UML setup on my box always worked because long back, when I
> > first
> > encountered this problem, I had created a symlink of the path to
> > /usr/lib/ too. And had completely forgotten about it. My apologies.
> > 
> > 
> > But that said, the current problem is with the UML binary built by
> > the
> > kernel sources.
> > Problem is that, as mentioned above and other reports too on this
> > bug
> > report thread, the path resolved at build time is always
> > "/usr/lib/uml/".
> > 
> > The build configuration and the code are all correct.
> > 
> > ```
> > $ grep 64BIT .config
> > CONFIG_64BIT=y
> > CONFIG_64BIT_TIME=y
> > CONFIG_PHYS_ADDR_T_64BIT=y
> > CONFIG_ARCH_DMA_ADDR_T_64BIT=y
> > ```
> > 
> > 
> > Snipped from: arch/um/include/shared/os.h
> > 
> > ```
> > #ifdef CONFIG_64BIT
> > #define OS_LIB_PATH     "/usr/lib64/"
> > #else
> > #define OS_LIB_PATH     "/usr/lib/"
> > #endif
> > ```
> > 
> > I also checked the generated include headers and they are correct
> > for
> > the amd64 .config file.
> > 
> > ```
> > linux-source-5.4/include/generated$ grep 64BIT autoconf.h
> > #define CONFIG_64BIT_TIME 1
> > #define CONFIG_PHYS_ADDR_T_64BIT 1
> > #define CONFIG_64BIT 1
> > #define CONFIG_ARCH_DMA_ADDR_T_64BIT 1
> > ```
> > 
> > I'll keep looking as time permits but if anyone else has ideas on
> > what
> > I may be doing wrong, please do mention.
> > 
> > Thanks,
> > Ritesh
> > 
> > 
> > _______________________________________________
> > linux-um mailing list
> > linux-um@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-um
> > 

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
