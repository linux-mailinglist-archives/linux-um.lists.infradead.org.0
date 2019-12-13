Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C82811E1F7
	for <lists+linux-um@lfdr.de>; Fri, 13 Dec 2019 11:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/RF2cFgsIm8X2ruLrNTBFZcScZKK17eDDjU/0wbYzcc=; b=ckVn6Mn15kwnw+t5IKSNrOxRk
	rAoDzmZ0GysTcD1pSHCu1sTUkvTYr6j6E7tIhhtlDlrLiPcMLtGypUtsVuFeVcPZKglGSpNN1mUQx
	Eq6PEWvWOKm5eKST2zrpLREPNat/R5F39mUGHuFzVeRBH5Nwn/wsChLgAbP18rjSB/bNjxVV5I5Fh
	sLvuAc7w16GUwMvD2pv0A3vbs+y8bwpUw5bcVVWqElCw+6U30Ny46qpyIPmUo8vcoouKGnWRijL06
	2S86Cu5gluIPRGlPntw+P2AeZVoOiKSwvedxRO7LS4An1lxqNkEyr1V/e+TY72P55Shi1AsmtJQHu
	A5i3yp/vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifiFb-0008HS-VG; Fri, 13 Dec 2019 10:32:47 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifiFW-0008Gi-Sw
 for linux-um@lists.infradead.org; Fri, 13 Dec 2019 10:32:45 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1ifiFT-0004vB-AM; Fri, 13 Dec 2019 10:32:39 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1ifiFQ-0000HW-S3; Fri, 13 Dec 2019 10:32:38 +0000
Subject: Re: [PATCH] um: fix time-travel=inf-cpu with xor/raid6
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20191213100128.04075cf409e9.Id772dc879535c85524c32b81fd392bbbfd515741@changeid>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <5bec5e3f-ad17-e60f-eb9f-7b2d7a08ed27@kot-begemot.co.uk>
Date: Fri, 13 Dec 2019 10:32:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191213100128.04075cf409e9.Id772dc879535c85524c32b81fd392bbbfd515741@changeid>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_023242_938339_914F98E3 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 13/12/2019 09:01, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> Today, I erroneously built a time-travel configuration with btrfs
> enabled, and noticed it cannot boot in time-travel=inf-cpu mode,
> both xor and raid6 speed measurement gets stuck.
> 
> For xor, work around it by picking the first algorithm if inf-cpu
> mode is enabled.
> 
> For raid6, I didn't find such a workaround, so disallow enabling
> time-travel mode if RAID6_PQ_BENCHMARK is enabled.
> 
> With this, and RAID6_PQ_BENCHMARK disabled, I can boot a kernel
> that has btrfs enabled in time-travel=inf-cpu mode.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   arch/um/Kconfig            | 2 ++
>   arch/um/include/asm/Kbuild | 1 -
>   arch/um/include/asm/xor.h  | 7 +++++++
>   3 files changed, 9 insertions(+), 1 deletion(-)
>   create mode 100644 arch/um/include/asm/xor.h
> 
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 2a6d04fcb3e9..a8bf60b5c208 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -188,6 +188,8 @@ config SECCOMP
>   config UML_TIME_TRAVEL_SUPPORT
>   	bool
>   	prompt "Support time-travel mode (e.g. for test execution)"
> +	# inf-cpu mode is incompatible with the benchmarking
> +	depends on !RAID6_PQ_BENCHMARK
>   	help
>   	  Enable this option to support time travel inside the UML instance.
>   
> diff --git a/arch/um/include/asm/Kbuild b/arch/um/include/asm/Kbuild
> index 398006d27e40..db7d9d4e30d8 100644
> --- a/arch/um/include/asm/Kbuild
> +++ b/arch/um/include/asm/Kbuild
> @@ -25,5 +25,4 @@ generic-y += switch_to.h
>   generic-y += topology.h
>   generic-y += trace_clock.h
>   generic-y += word-at-a-time.h
> -generic-y += xor.h
>   generic-y += kprobes.h
> diff --git a/arch/um/include/asm/xor.h b/arch/um/include/asm/xor.h
> new file mode 100644
> index 000000000000..7a3208c47cfc
> --- /dev/null
> +++ b/arch/um/include/asm/xor.h
> @@ -0,0 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#include <asm-generic/xor.h>
> +#include <shared/timer-internal.h>
> +
> +/* pick an arbitrary one - measuring isn't possible with inf-cpu */
> +#define XOR_SELECT_TEMPLATE(x)	\
> +	(time_travel_mode == TT_MODE_INFCPU ? &xor_block_8regs : NULL)
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
