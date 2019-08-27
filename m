Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B269DD28
	for <lists+linux-um@lfdr.de>; Tue, 27 Aug 2019 07:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9jgGaW1e32pzwqXnGhmxfR2UPjVgKcUkZ+RWvAVmAqI=; b=UMBOpjCN+mARkcaEoTWMYTOCB
	ezpGmM+XGzuIEDi1k6aAuVr4nMVeOfZtmH/hzyMbXpWxjsUlgscgyiB3QapynoDDHa72FupcxRks+
	x2geY++4hHBUqauKAOGA5JxuTfJPYGdmSsP9dfMhzEVI9RYDOzHXLvsrbUKo3FaTTwA19rNAW4tey
	6FewMcU9p8JNmOcL8+2FIBPICuBy0an4FsI7nozH5i2l53tnwjg49KHWqkxx6uZKht+QsC6JEb07v
	fwlzMPAwB87GFwjaUCTOItBawsNASOuKOhV1fUZwXqOg2bbSwwU1SUISco2Q/O9dtcTZ1YUwQMWUe
	tYpheVLqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2U24-0005Xe-EF; Tue, 27 Aug 2019 05:28:40 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2U21-0005XK-L3
 for linux-um@lists.infradead.org; Tue, 27 Aug 2019 05:28:39 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i2U20-0000hO-Aq; Tue, 27 Aug 2019 05:28:36 +0000
Received: from [151.251.252.137] (helo=[192.168.65.83])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i2U1x-0008Pp-VF; Tue, 27 Aug 2019 06:28:36 +0100
Subject: Re: [PATCH 2/4] arch: um: avoid using uninitialized regs
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190823104429.11047-1-johannes@sipsolutions.net>
 <20190823104429.11047-2-johannes@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <d1ee048f-8ea6-d618-05a8-f254d1107cb8@kot-begemot.co.uk>
Date: Tue, 27 Aug 2019 06:28:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190823104429.11047-2-johannes@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_222837_824010_F098B027 
X-CRM114-Status: GOOD (  13.11  )
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
> In timer_real_alarm_handler(), regs is only initialized if
> the context argument is non-NULL, also initialize in the
> other case.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   arch/um/os-Linux/signal.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/um/os-Linux/signal.c b/arch/um/os-Linux/signal.c
> index 35d1b2bc00cb..4cd88b5b9006 100644
> --- a/arch/um/os-Linux/signal.c
> +++ b/arch/um/os-Linux/signal.c
> @@ -10,6 +10,7 @@
>   #include <stdarg.h>
>   #include <errno.h>
>   #include <signal.h>
> +#include <string.h>
>   #include <strings.h>
>   #include <as-layout.h>
>   #include <kern_util.h>
> @@ -88,6 +89,8 @@ static void timer_real_alarm_handler(mcontext_t *mc)
>   
>   	if (mc != NULL)
>   		get_regs_from_mc(&regs, mc);
> +	else
> +		memset(&regs, 0, sizeof(regs));
>   	timer_handler(SIGALRM, NULL, &regs);
>   }
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
