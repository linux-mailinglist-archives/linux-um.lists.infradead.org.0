Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDB71AE814
	for <lists+linux-um@lfdr.de>; Sat, 18 Apr 2020 00:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAA3gFs9t+DlA0iPAifT7Jtf68W/WbZ6hEL+LTqn83E=; b=F9wAH///lgKrLB
	d/CGewEOWg/cS6kYHxf9qNUKPVA2Kft6djAdn6R92zez/+TFMpfdY7/jdbciZeAvoogJNAN0OirjM
	l40R0wM7x3umX8Wdx4Ep+NZdwKq7DgjKKIBqSmE5eZGNk9OAt5ikoLOiDxIxFvMe0HSGKZJbKTU0Y
	vUrPvLTzyv3c6IDmkvIzn1o6mjy9M/Dq3s1x3V3y8lWguuZJWiNkU5MvUvNwS6V3w3I5ZPlJCw5bx
	SPR+0sDiJc+8hCwW46UQKlkKcX+dVnyna5L729mtqnvbDoWQLttXYSK+FuAGkXM2EDPSPtJozP/nn
	vc8omQbKzHIorWDWzQ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPZKq-0007NA-A8; Fri, 17 Apr 2020 22:19:44 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPZKn-0007Lm-U7
 for linux-um@lists.infradead.org; Fri, 17 Apr 2020 22:19:43 +0000
Received: by mail-oi1-x242.google.com with SMTP id 8so3441134oiy.6
 for <linux-um@lists.infradead.org>; Fri, 17 Apr 2020 15:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yW1rTc/fkIGCNKy5NNRXoxwqN+9iD/xtD2sA5y2Ygts=;
 b=K8PuDkELJoZhAcizFoboOzhRmWXkhFdTSZaaMf8sX6UlPapG9poyvyftZH6GH5eJCl
 pgq+BEg7YAwtqtxmzTjsx2YXgOt84mX0I3dD7OjmlrWCrqXuYbTGgL1hkgtpqp7jTGzY
 4N9rM4gjl0XTPhPi/Y7W9GptFFwxTqGfEZh2ZXSWkXhXhQokcrZqxggzEuLQmxCMzTMG
 k0bf2AcMoCs5xOpOXJLBB5Vmnn/UMKedTa7CYJLBZma7Wt+nXgBago3gwG3GaiFboU+k
 S18t78HwCnZVoo3FixR3gUFkhRsHNXkQ2Mqzi3XA5zIVajNq+8h5SjnmqW2PPTEt9HGO
 Sqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yW1rTc/fkIGCNKy5NNRXoxwqN+9iD/xtD2sA5y2Ygts=;
 b=BRn6uFlwknmxtA7+IzIKVjccJSrYYeA6tBRDSu8thK0bYvGPuzBmN7kMhX3aXRKkfz
 1NCkdgv8icmFub4OVy5anh0kImC1NvMJNTIAL+VSdRKO3X0PvRaYUItgV81cUoEVsf1C
 GekprnpAe/hW78l8S7uTLT+Bvi+PDpEBzlXbic13LzbxFRICT4Hma0bymA+Rm5NpQGI7
 eFMQxpsMhXYor5+XD3llaWBosFN9ec5peibnvOYQLmgReMIoKCz0QOEGf5jYQgCvHV22
 fd/aJstFNa3ytopf6SyuxsImTbX+2d75MUIgJbnI2Tm61RO0PjMWWfqB72l/9J0M8uam
 thFQ==
X-Gm-Message-State: AGi0PubtzDWzfci6TB8Fyo89J6Bv/UxMgTwqu3EdakgPObqSz6AVxXfR
 VpuqeigFX5dK3NL+08+us38=
X-Google-Smtp-Source: APiQypJROud2ynmS8ZZ+1tLghEUJwO0lE5GiqY6V2tQK0kHfEreSrGenaDr/D5lDg0PuGUoH5k9CLg==
X-Received: by 2002:aca:3e8a:: with SMTP id l132mr223511oia.151.1587161978435; 
 Fri, 17 Apr 2020 15:19:38 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id v14sm141733ooe.10.2020.04.17.15.19.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Apr 2020 15:19:37 -0700 (PDT)
Date: Fri, 17 Apr 2020 15:19:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] um: do not evaluate compiler's library path when cleaning
Message-ID: <20200417221936.GA13833@ubuntu-s3-xlarge-x86>
References: <20200417180455.1174340-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417180455.1174340-1-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_151941_968933_C30463FB 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Johannes Berg <johannes.berg@intel.com>, linux-kbuild@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 Erel Geron <erelx.geron@intel.com>, Alex Dewar <alex.dewar@gmx.co.uk>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 03:04:55AM +0900, Masahiro Yamada wrote:
> Since commit a83e4ca26af8 ("kbuild: remove cc-option switch from
> -Wframe-larger-than="), 'make ARCH=um clean' emits an error message
> as follows:
> 
>   $ make ARCH=um clean
>   gcc: error: missing argument to '-Wframe-larger-than='
> 
> We do not care compiler flags when cleaning.
> 
> Use the '=' operator for lazy expansion because we do not use
> LDFLAGS_pcap.o or LDFLAGS_vde.o when cleaning.
> 
> While I was here, I removed the redundant -r option because it
> already exists in the recipe.
> 
> Fixes: a83e4ca26af8 ("kbuild: remove cc-option switch from -Wframe-larger-than=")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  arch/um/drivers/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/um/drivers/Makefile b/arch/um/drivers/Makefile
> index a290821e355c..2a249f619467 100644
> --- a/arch/um/drivers/Makefile
> +++ b/arch/um/drivers/Makefile
> @@ -18,9 +18,9 @@ ubd-objs := ubd_kern.o ubd_user.o
>  port-objs := port_kern.o port_user.o
>  harddog-objs := harddog_kern.o harddog_user.o
>  
> -LDFLAGS_pcap.o := -r $(shell $(CC) $(KBUILD_CFLAGS) -print-file-name=libpcap.a)
> +LDFLAGS_pcap.o = $(shell $(CC) $(KBUILD_CFLAGS) -print-file-name=libpcap.a)
>  
> -LDFLAGS_vde.o := -r $(shell $(CC) $(CFLAGS) -print-file-name=libvdeplug.a)
> +LDFLAGS_vde.o = $(shell $(CC) $(CFLAGS) -print-file-name=libvdeplug.a)
>  
>  targets := pcap_kern.o pcap_user.o vde_kern.o vde_user.o
>  
> -- 
> 2.25.1
> 

I tested building pcap.o both before and after this change, no changes
there.

I do see the clean error fixed.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> [build]

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
