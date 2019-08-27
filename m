Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3A89DD29
	for <lists+linux-um@lfdr.de>; Tue, 27 Aug 2019 07:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p/O1ci/mKd7G2WGjUVSElduOl0CzvkycQfcEuBsCDjw=; b=Y6f/yzqgGqPgXscAaanuUBC59
	XmXX8LSqyTVYcrxIK41cnHfYpQ22kpWGormocOP2mkNSddsObp5pwnq0SYGeinR0MewP/tSe7M+BK
	MDGxenPTN4Z+WAj/PJ6P7WlfaiOpQFLtEBGrfoBoxQV7Q4ziZxtEHNIyiiYpGMU3WhM2rwIG0GkCX
	ENbNeEYETn/zeWlyEnLD/tOrVONKqHeozeOnPqHwEN5uykMDJXZmo/8A1g1eqpEBtJXn3iR6iKxfz
	ipx2OB7kxdkmW5ffUbKGtcYsoBRKlT+aBBP6I5VHlVmA84Kk+1Fo0jbmVLzhz4R8w51u7ZGKVilnH
	gm0TsG8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2U2R-0005Yg-Mc; Tue, 27 Aug 2019 05:29:03 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2U2N-0005YN-W0
 for linux-um@lists.infradead.org; Tue, 27 Aug 2019 05:29:01 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i2U2M-0000hU-Oo; Tue, 27 Aug 2019 05:28:58 +0000
Received: from [151.251.252.137] (helo=[192.168.65.83])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i2U2K-0008Q4-Fc; Tue, 27 Aug 2019 06:28:58 +0100
Subject: Re: [PATCH 3/4] arch: um: remove misleading #define ARCh_IRQ_ENABLED
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190823104429.11047-1-johannes@sipsolutions.net>
 <20190823104429.11047-3-johannes@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <20658329-a148-40de-66d1-d820f905b8fd@kot-begemot.co.uk>
Date: Tue, 27 Aug 2019 06:28:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190823104429.11047-3-johannes@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_222900_158989_7A0756C7 
X-CRM114-Status: GOOD (  12.96  )
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



On 23/08/2019 11:44, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> Due to the typo in the name, this can never be used, but
> it's also misleading because our value for enabled/disabled
> is always just 0/1, not an actual signal mask.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   arch/um/include/asm/irqflags.h | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/um/include/asm/irqflags.h b/arch/um/include/asm/irqflags.h
> index cbc6c0013a64..0642ad9035d1 100644
> --- a/arch/um/include/asm/irqflags.h
> +++ b/arch/um/include/asm/irqflags.h
> @@ -32,7 +32,6 @@ static inline void arch_local_irq_disable(void)
>   }
>   
>   #define ARCH_IRQ_DISABLED	0
> -#define ARCh_IRQ_ENABLED	(SIGIO|SIGVTALRM)
>   
>   #include <asm-generic/irqflags.h>
>   
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>


-- 
Anton R Ivanov

http://www.kot-begemot.co.uk

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
