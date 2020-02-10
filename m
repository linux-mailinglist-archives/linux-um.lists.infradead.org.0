Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA165157DF1
	for <lists+linux-um@lfdr.de>; Mon, 10 Feb 2020 15:56:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ulWYca2Ojy5l/jpnpnnt2YJnd3OUhQq0qPjfF1pdx5c=; b=tJ24KvoPPWUNs/n8ajmTiLlqv
	C0UEQA2AOGRGyR9pnRLOg4o2D+Kn0PxLP47vMli7Pg2wiHwTkb28+YevBH0/TC5tBIjTRc9fowDea
	WJLXoOdVnWgZz70YdPfQKefJsHMzlJkwEwsHTFZEmsZuQB+//rK86zxYmXRaBraEjH28D1ZD6oYbK
	VxZOb1W3TYodYEA9B3BpTTYHyoZVO9Vn5J/yPh29N5l85oUx7713B2BkVyb2HhZ2Zr1UVDoeEoQ5n
	lLMPARw5tP7mU4Z/TMMjBKc+06h2xAueiX0wos6XzylppRaOIA5mufpLEe+685VU87FW6W0Z0Pfpi
	A+cKfiDsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1AU4-00041Z-AA; Mon, 10 Feb 2020 14:56:24 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1AU1-00041F-Jl
 for linux-um@lists.infradead.org; Mon, 10 Feb 2020 14:56:23 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1ATy-0004Zl-7d; Mon, 10 Feb 2020 14:56:18 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1ATv-0001SC-Sx; Mon, 10 Feb 2020 14:56:17 +0000
Subject: Re: [PATCH v3] uml: make CONFIG_STATIC_LINK actually static
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, geert@linux-m68k.org, james_mcmechan@hotmail.com
References: <20200124221401.210449-1-brendanhiggins@google.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <3a533475-1009-b6b0-2e1e-4fa9a1ddf175@cambridgegreys.com>
Date: Mon, 10 Feb 2020 14:56:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200124221401.210449-1-brendanhiggins@google.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_065621_647549_59133A2B 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 24/01/2020 22:14, Brendan Higgins wrote:
> Currently, CONFIG_STATIC_LINK can be enabled with options which cannot
> be statically linked, namely UML_NET_VECTOR, UML_NET_VDE, and
> UML_NET_PCAP; this is because glibc tries to load NSS which does not
> support being statically linked. So make CONFIG_STATIC_LINK depend on
> !UML_NET_VECTOR && !UML_NET_VDE && !UML_NET_PCAP.
> 
> Link: https://lore.kernel.org/lkml/f658f317-be54-ed75-8296-c373c2dcc697@cambridgegreys.com/#t
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>   arch/um/Kconfig         | 8 +++++++-
>   arch/um/drivers/Kconfig | 3 +++
>   2 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 0917f8443c285..28d62151fb2ed 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -62,9 +62,12 @@ config NR_CPUS
>   
>   source "arch/$(HEADER_ARCH)/um/Kconfig"
>   
> +config FORBID_STATIC_LINK
> +	bool
> +
>   config STATIC_LINK
>   	bool "Force a static link"
> -	default n
> +	depends on !FORBID_STATIC_LINK
>   	help
>   	  This option gives you the ability to force a static link of UML.
>   	  Normally, UML is linked as a shared binary.  This is inconvenient for
> @@ -73,6 +76,9 @@ config STATIC_LINK
>   	  Additionally, this option enables using higher memory spaces (up to
>   	  2.75G) for UML.
>   
> +	  NOTE: This option is incompatible with some networking features which
> +	  depend on features that require being dynamically loaded (like NSS).
> +
>   config LD_SCRIPT_STATIC
>   	bool
>   	default y
> diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
> index 72d4170557820..9160ead56e33c 100644
> --- a/arch/um/drivers/Kconfig
> +++ b/arch/um/drivers/Kconfig
> @@ -234,6 +234,7 @@ config UML_NET_DAEMON
>   config UML_NET_VECTOR
>   	bool "Vector I/O high performance network devices"
>   	depends on UML_NET
> +	select FORBID_STATIC_LINK
>   	help
>   	This User-Mode Linux network driver uses multi-message send
>   	and receive functions. The host running the UML guest must have
> @@ -245,6 +246,7 @@ config UML_NET_VECTOR
>   config UML_NET_VDE
>   	bool "VDE transport (obsolete)"
>   	depends on UML_NET
> +	select FORBID_STATIC_LINK
>   	help
>   	This User-Mode Linux network transport allows one or more running
>   	UMLs on a single host to communicate with each other and also
> @@ -292,6 +294,7 @@ config UML_NET_MCAST
>   config UML_NET_PCAP
>   	bool "pcap transport (obsolete)"
>   	depends on UML_NET
> +	select FORBID_STATIC_LINK
>   	help
>   	The pcap transport makes a pcap packet stream on the host look
>   	like an ethernet device inside UML.  This is useful for making
> 

Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
