Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F29D8C49
	for <lists+linux-um@lfdr.de>; Wed, 16 Oct 2019 11:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2zMkwnvWcCL9nOyHDw5rl8OhFiTBHI2twfJFM4pPEOA=; b=ex9BVJY81ksuOChIlikky1Axu
	BnwyyEVTDP01gdDPdjHt8rKYfoo64MgXLKzy1sJmcRK01eKFEzewnGomgjgdE1ybYlEfzWbugCoGD
	lFgh689951K3d6/5Z9hvI4PalkWxtPf/5kWhDdq4wQkW+PicqMJN3nSNGHInSkiu6KhVICWfnTmqi
	t32NTwFJzzyC2E6P8cMIx7Vq23P6JNsd7cN967cGQ8fjlOJHNtHTKfWwsMlg/sP4ApsY3+MAuKkuE
	2tvp6IYX8XeJvuYELlJJ43ls64T3h8q8ULFZfGfQo6H4w7Qp0+nm/n4tnXDdXsOXwQsjU4ZX5wmsP
	zkR6JNyRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfM6-0006Tf-0d; Wed, 16 Oct 2019 09:12:30 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfM2-0006TI-RR
 for linux-um@lists.infradead.org; Wed, 16 Oct 2019 09:12:28 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iKfLz-0005xP-ID; Wed, 16 Oct 2019 09:12:23 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iKfLx-00022o-69; Wed, 16 Oct 2019 10:12:23 +0100
Subject: Re: [PATCH] um: Fix pcap and vde driver builds
To: linux-um@lists.infradead.org
References: <20191016075343.28564-1-anton.ivanov@cambridgegreys.com>
 <20191016075343.28564-2-anton.ivanov@cambridgegreys.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <2645291b-0bc4-86e9-bba1-4866a00d6650@cambridgegreys.com>
Date: Wed, 16 Oct 2019 10:12:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191016075343.28564-2-anton.ivanov@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_021226_889094_BF616758 
X-CRM114-Status: GOOD (  13.07  )
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
Cc: richard@nod.at, 938962@bugs.debian.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 16/10/2019 08:53, Anton Ivanov wrote:
> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> ---
>   arch/um/drivers/Makefile | 8 ++++++++
>   scripts/link-vmlinux.sh  | 2 +-
>   2 files changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/arch/um/drivers/Makefile b/arch/um/drivers/Makefile
> index 693319839f69..34355057ec85 100644
> --- a/arch/um/drivers/Makefile
> +++ b/arch/um/drivers/Makefile
> @@ -24,6 +24,14 @@ LDFLAGS_vde.o := -r $(shell $(CC) $(CFLAGS) -print-file-name=libvdeplug.a)
>   
>   targets := pcap_kern.o pcap_user.o vde_kern.o vde_user.o
>   
> +ifeq ($(CONFIG_UML_NET_PCAP),y)
> +	export UML_EXTRA_LIBS += -lpcap
> +endif
> +ifeq ($(CONFIG_UML_NET_VDE),y)
> +	export UML_EXTRA_LIBS += -lvde -lvdeplug
> +endif
> +
> +
>   $(obj)/pcap.o: $(obj)/pcap_kern.o $(obj)/pcap_user.o
>   	$(LD) -r -dp -o $@ $^ $(ld_flags)
>   
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 915775eb2921..d3e6a6cdfc13 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -86,7 +86,7 @@ vmlinux_link()
>   		${CC} ${CFLAGS_vmlinux} -o ${2}			\
>   			-Wl,-T,${lds}				\
>   			${objects}				\
> -			-lutil -lrt -lpthread
> +			-lutil -lrt -lpthread ${UML_EXTRA_LIBS}
>   		rm -f linux
>   	fi
>   }


This will not work as advertised unfortunately - I have to write out the 
libs list somewhere and load it again in the link script instead of 
passing it as an environment variable.

A fixed patch will follow shortly.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
