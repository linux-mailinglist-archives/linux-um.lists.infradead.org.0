Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0ED19BCF8
	for <lists+linux-um@lfdr.de>; Thu,  2 Apr 2020 09:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YpEg6hrTMC8zVSBFHAJyl0kWQsUVZODttjp4fQHiDcc=; b=MoPxB6yKRMNDvD1pBMTZnf6sl
	OQTHBhnJRp5mx+0HZL83viD/mS7qXjjGA1rFLmQfksNXQkLm9w5zeI1w4Q88jLLTc7tzqwPK4AJYJ
	GF9tefp20QZ9jWfk+kYZkxXpzdbqICcCujoq5ZD50eAWTnvTPwX+GipAErLn8/VdeGKXuC92QPCIh
	sCsHJcgTjBfTWjMI4ddUIJozpuCwq/e3ISaLoXzOAJg2A3KSrVcUq0gbpJ5mEW0oayF0yNGSfOAxw
	VMVFI1bDAvcSJEaaPswK2JMXdWRzFqesYgrN4xo2V2uFGZ17VnTUBLLbM/NB1EZq8mmNTuwuaBKd6
	4dgn+ay+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJuWq-0001pY-Al; Thu, 02 Apr 2020 07:44:44 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJuWn-0001lK-An
 for linux-um@lists.infradead.org; Thu, 02 Apr 2020 07:44:42 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jJuWe-0000zk-E2; Thu, 02 Apr 2020 07:44:32 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jJuWc-0004Bp-1R; Thu, 02 Apr 2020 08:44:32 +0100
Subject: Re: [PATCH] um: add include: memset() and memcpy() are in <string.h>
To: Zach van Rijn <me@zv.io>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <a1f6271e7c72e49fd863efc4b7126be6598fd4f6.camel@zv.io>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <26235042-02c6-04ae-42ec-4d1f393975d8@cambridgegreys.com>
Date: Thu, 2 Apr 2020 08:44:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <a1f6271e7c72e49fd863efc4b7126be6598fd4f6.camel@zv.io>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_004441_376155_E5D0C75D 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 01/04/2020 22:30, Zach van Rijn wrote:
> These two functions are otherwise unknown to the pedantic compiler.
> Include the correct header to enable the build to succeed.
> 
> Signed-off-by: Zach van Rijn <me@zv.io>
> ---
>   arch/um/os-Linux/file.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
> index 26ecbd64c409..044836ad7392 100644
> --- a/arch/um/os-Linux/file.c
> +++ b/arch/um/os-Linux/file.c
> @@ -6,6 +6,7 @@
>   #include <stdio.h>
>   #include <unistd.h>
>   #include <stdlib.h>
> +#include <string.h>
>   #include <errno.h>
>   #include <fcntl.h>
>   #include <signal.h>
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
