Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CE616913B
	for <lists+linux-um@lfdr.de>; Sat, 22 Feb 2020 19:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XfzzIVGCNgVYsggtOEHVR4RSMw+gpaFT0NNhe7H+rI8=; b=D0qmzJPZxXRJkpvJqgH9X7n1D
	QER61Misxefkzs5M33dd72Y8ZYDBtmnB2KJ1hPyQ5iVpXP/qhq7W7NaH87gJxDTklA6/W9ScGKMIl
	9HWsma73enFBu7fzEDs/Ix8/72vO8jFsGMcpl6UyUDVeVG6iOghgl0xrRRZM52173KmqfMZVGfZol
	kRM7phOZXK5zjIDIfEci9OkxyzRBXWyUXsBoMRXUmEDl9re44WRN4bGMxFRnMuapb4TG8MsRTVYGg
	s+VhLM9Qn4gAWDcgOSEoC7iGHFEwtbElyjWCsy7+AKUeIswmHQP5tzLqCnDQmthrxWkKmfhFEF0Mv
	CYwCXBBGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ZLu-0001sc-HT; Sat, 22 Feb 2020 18:18:10 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ZLr-0001rh-CL
 for linux-um@lists.infradead.org; Sat, 22 Feb 2020 18:18:09 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j5ZLl-0006OE-Ua; Sat, 22 Feb 2020 18:18:02 +0000
Received: from [151.251.251.9] (helo=[192.168.14.3])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j5ZLj-0005tN-3P; Sat, 22 Feb 2020 18:18:01 +0000
Subject: Re: [PATCH] Documentation: update UserModeLinux-HOWTO.txt
To: Manbing <manbing3@gmail.com>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>, Jonathan Corbet <corbet@lwn.net>
References: <1582391968-3960-1-git-send-email-manbing3@gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <9e8a47ca-bc82-496c-dc32-a5cde0d26fe9@cambridgegreys.com>
Date: Sat, 22 Feb 2020 18:17:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1582391968-3960-1-git-send-email-manbing3@gmail.com>
Content-Language: en-US
X-Spam-Score: -0.7
X-Spam-Score: -0.7
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_101807_421229_6DF8D478 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: cambridgegreys.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 22/02/2020 17:19, Manbing wrote:
> Original content is obsolete. Which is based on kernel 2.4.0-prerelease.
> Updating content according to kernel 5.5.1.
> 
> Signed-off-by: Manbing <manbing3@gmail.com>
> ---
>   Documentation/virt/uml/UserModeLinux-HOWTO.txt | 42 +++++---------------------
>   1 file changed, 8 insertions(+), 34 deletions(-)
> 
> diff --git a/Documentation/virt/uml/UserModeLinux-HOWTO.txt b/Documentation/virt/uml/UserModeLinux-HOWTO.txt
> index 87b80f5..08ee28d 100644
> --- a/Documentation/virt/uml/UserModeLinux-HOWTO.txt
> +++ b/Documentation/virt/uml/UserModeLinux-HOWTO.txt
> @@ -1,6 +1,6 @@
>     User Mode Linux HOWTO
>     User Mode Linux Core Team
> -  Mon Nov 18 14:16:16 EST 2002
> +  Mon Feb 10 08:27:24 EST 2020
>   
>     This document describes the use and abuse of Jeff Dike's User Mode
>     Linux: a port of the Linux kernel as a normal Intel Linux process.
> @@ -215,26 +215,17 @@
>   
>   
>     Compiling the user mode kernel is just like compiling any other
> -  kernel.  Let's go through the steps, using 2.4.0-prerelease (current
> +  kernel.  Let's go through the steps, using 5.5.1 (current
>     as of this writing) as an example:
>   
>   
> -  1. Download the latest UML patch from
> -
> -     the download page <http://user-mode-linux.sourceforge.net/
> -
> -     In this example, the file is uml-patch-2.4.0-prerelease.bz2.
> -
> -
> -  2. Download the matching kernel from your favourite kernel mirror,
> +  1. Download the matching kernel from your favourite kernel mirror,
>        such as:
>   
> -     ftp://ftp.ca.kernel.org/pub/kernel/v2.4/linux-2.4.0-prerelease.tar.bz2
> -     <ftp://ftp.ca.kernel.org/pub/kernel/v2.4/linux-2.4.0-prerelease.tar.bz2>
> -     .
> +     wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.5.1.tar.xz
>   
>   
> -  3. Make a directory and unpack the kernel into it.
> +  2. Make a directory and unpack the kernel into it.
>   
>   
>   
> @@ -255,31 +246,14 @@
>   
>   
>          host%
> -       tar -xzvf linux-2.4.0-prerelease.tar.bz2
> -
> -
> -
> -
> -
> -
> -  4. Apply the patch using
> -
> -
> -
> -       host%
> -       cd ~/uml/linux
> -
> -
> -
> -       host%
> -       bzcat uml-patch-2.4.0-prerelease.bz2 | patch -p1
> +       tar xvf linux-5.5.1.tar.xz
>   
>   
>   
>   
>   
>   
> -  5. Run your favorite config; `make xconfig ARCH=um' is the most
> +  3. Run your favorite config; `make xconfig ARCH=um' is the most
>        convenient.  `make config ARCH=um' and 'make menuconfig ARCH=um'
>        will work as well.  The defaults will give you a useful kernel.  If
>        you want to change something, go ahead, it probably won't hurt
> @@ -293,7 +267,7 @@
>   
>   
>   
> -  6. Finish with `make linux ARCH=um': the result is a file called
> +  4. Finish with `make linux ARCH=um': the result is a file called
>        `linux' in the top directory of your source tree.
>   
>     Make sure that you don't build this kernel in /usr/src/linux.  On some
> 

I am rewriting the whole thing at the moment.

I will publish the finished sections for review at some point during the 
coming week.

It needs to be rewritten from scratch, fixing a few things like this is 
not enough.

Brgds,

-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
