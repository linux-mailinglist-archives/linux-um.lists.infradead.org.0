Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EC5B3D5D
	for <lists+linux-um@lfdr.de>; Mon, 16 Sep 2019 17:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mNAu26fpyNTi1WszWhkp305oppsw7fnrZzx9vv6bwzo=; b=ChzkIY+u0kadnXqGW6t/Kyz7D
	ZIItjur88aTKjjpdP/rg/XZZw79Q3pTu7ymSXlU98LRaI1aVFTsxU/Zj2j3WWYPRAezdZu4Wnay3F
	7noLQP85LIJbtSoUZt96sKNDp7owUsYhuaVVlrE4eFqqpEXVwOs05a2vpMJpjdI13Vv07TaexnQB+
	Qs4i8cJMzFjgXcbXhc47jufTRgJisxTiN7IgJckkI+A7z1Xdodi+nTFTauSCkrh3c/VxApjbpWyxq
	p5o0UDlxdBNZDwoEGdSQBYYTJiEnfq3nfWNGpdx4SKn0UQHcffgxJvkCcM3MVRgv2B073bUIS333X
	jkoL9IeFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9shi-0002jX-3T; Mon, 16 Sep 2019 15:14:14 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9she-0002j7-TZ
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 15:14:12 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i9shZ-0003bw-TN; Mon, 16 Sep 2019 15:14:06 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i9shX-0003t0-M1; Mon, 16 Sep 2019 16:14:05 +0100
Subject: Re: [PATCH] um: export uml_reserved
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <1568639174-I89491153563c5836b17475c319aeeb3582a7b5e3@changeid>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <30ad0c09-3f44-9eff-3517-e55adab9ceb9@kot-begemot.co.uk>
Date: Mon, 16 Sep 2019 16:14:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568639174-I89491153563c5836b17475c319aeeb3582a7b5e3@changeid>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_081410_955608_51BDB188 
X-CRM114-Status: GOOD (  13.55  )
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



On 16/09/2019 14:06, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> We need this symbol now, in case the virtio_uml driver
> is a module, as it needs to know how much memory was
> reserved to not advertise that to the device.
> 
> Fixes: 5d38f324993f ("um: drivers: Add virtio vhost-user driver")
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   arch/um/kernel/um_arch.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
> index 0f40eccbd759..474790b146c3 100644
> --- a/arch/um/kernel/um_arch.c
> +++ b/arch/um/kernel/um_arch.c
> @@ -102,6 +102,7 @@ unsigned long uml_physmem;
>   EXPORT_SYMBOL(uml_physmem);
>   
>   unsigned long uml_reserved; /* Also modified in mem_init */
> +EXPORT_SYMBOL(uml_reserved);
>   unsigned long start_vm;
>   unsigned long end_vm;
>   
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
