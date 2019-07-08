Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FC161BE4
	for <lists+linux-um@lfdr.de>; Mon,  8 Jul 2019 10:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OMRIV8we55zqk1EtKQBIejrHwRh4vPhEL/Dej/bZY3g=; b=mEPh7att6h8Xd9eS+N3Tcdl8G
	UGXKC1Ugrleei3+2XSTau3FtYIp561p6RiR9PLFCYB6lJtxwiFeNkZq6+v6c+f/AdZ8H8f30WYWSx
	FW8pTpkU7JhKdkhZRFQosqPM9eOSIRzFbmXt0XpQCyA0kpG4nw5Y+ONk6nEcQ5y18uavqPfCwFX3P
	PpwmTk7LVLwEIGVsTN2ZwwNjptza85jUU4g2zfpuxmZvtvzy9X9DD9KVv/ucchlRdGAIQ+VGK3Piq
	jYra4sZYyqOPgcgAsmyQrHqjtRNs97WanohKpTaSFR086zw4xjw6y6MlKif+amkP41FAIpxV7/6GA
	Af57qASHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkPGU-0007pV-BW; Mon, 08 Jul 2019 08:44:50 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkPG9-0007be-Ck
 for linux-um@lists.infradead.org; Mon, 08 Jul 2019 08:44:32 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hkPG5-0007YA-C3; Mon, 08 Jul 2019 08:44:25 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hkPG3-0002jV-0Q; Mon, 08 Jul 2019 09:44:25 +0100
Subject: Re: [PATCH 3/3] um: Add checks to mtu parameter parsing
To: linux-um@lists.infradead.org
References: <20190708082925.8661-1-anton.ivanov@cambridgegreys.com>
 <20190708082925.8661-4-anton.ivanov@cambridgegreys.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <116fcb64-7bba-02b4-8ff0-8edb3205c06e@cambridgegreys.com>
Date: Mon, 8 Jul 2019 09:44:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190708082925.8661-4-anton.ivanov@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_014430_571938_95E577CC 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: richard@nod.at
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 08/07/2019 09:29, anton.ivanov@cambridgegreys.com wrote:
> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> 
> Adds a sanity check to the parsing of mtu command line param
> 
> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> ---
>   arch/um/drivers/vector_kern.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> index e314a60cdc98..d7bb0c2788fe 100644
> --- a/arch/um/drivers/vector_kern.c
> +++ b/arch/um/drivers/vector_kern.c
> @@ -117,13 +117,14 @@ static void vector_reset_stats(struct vector_private *vp)
>   static int get_mtu(struct arglist *def)
>   {
>   	char *mtu = uml_vector_fetch_arg(def, "mtu");
> -	long result;
> +	long result = ETH_MAX_PACKET;
>   
>   	if (mtu != NULL) {
>   		if (kstrtoul(mtu, 10, &result) == 0)
> -			return result;
> +			if (result > (1 << 16) - 1)
> +				result = ETH_MAX_PACKET;

The logic here is incorrect, I will send an amended patch.

>   	}
> -	return ETH_MAX_PACKET;
> +	return result;
>   }
>   
>   static int get_depth(struct arglist *def)
> 

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
