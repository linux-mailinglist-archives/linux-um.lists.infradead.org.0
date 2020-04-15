Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC011A991F
	for <lists+linux-um@lfdr.de>; Wed, 15 Apr 2020 11:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4F7tmFr27rOyleg3yaW7S0PfcRyxp4VRDCNmtSmUj+4=; b=RG7GjSD6XEgsQ2x6eFPcARRFw
	Ii475rfLWPr3+kRNfJUeQa1xgAEsKNCMUUWSTJL36roMSHnNgCNqOc5nE7NoH/CZ9I/fJjfcqiK3U
	TNF/MxWXCOfcIyjGmNmXKANkfyp7iWPapFkdvz8rw6SVZwHhYuIbmvP2bJgYzSwRJ2jBxwYPH9XVH
	WXMpkmcF5+DisaDRicHhITRSqfKzPtGsU//JtWsH9/kw4YOkME1oVRcLHEFiEGqGB8hlW5vh9GLx3
	DcoFPc0zRaER2qa/pHWPJyO/G3KU5JpIP9J9G285+v+p9bXz48AOyh5QwwyaRXVjJhbP/ZyClszeU
	4rwcWUlIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeWR-0008BN-0d; Wed, 15 Apr 2020 09:39:55 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeWN-0008AM-4P
 for linux-um@lists.infradead.org; Wed, 15 Apr 2020 09:39:52 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jOeWG-0004b4-2g; Wed, 15 Apr 2020 09:39:44 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jOeW9-0001HK-7n; Wed, 15 Apr 2020 10:39:42 +0100
Subject: Re: [PATCH] um: syscall.c: include <asm/unistd.h>
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20200415095152.85794f817f97.I289cb72f130c19e850d70eacca9e68eb84832600@changeid>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <b7157cb3-ee7d-ac91-c755-ace63d617460@kot-begemot.co.uk>
Date: Wed, 15 Apr 2020 10:39:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415095152.85794f817f97.I289cb72f130c19e850d70eacca9e68eb84832600@changeid>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_023951_172255_250939CC 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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



On 15/04/2020 08:51, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> Without CONFIG_SECCOMP, we don't get this include recursively
> through the existing includes, thus failing the build on not
> having __NR_syscall_max defined. Add the necessary include to
> fix this.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   arch/um/kernel/skas/syscall.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/um/kernel/skas/syscall.c b/arch/um/kernel/skas/syscall.c
> index 0a12d5a09217..3d91f89fd852 100644
> --- a/arch/um/kernel/skas/syscall.c
> +++ b/arch/um/kernel/skas/syscall.c
> @@ -11,6 +11,7 @@
>   #include <sysdep/ptrace_user.h>
>   #include <sysdep/syscalls.h>
>   #include <linux/time-internal.h>
> +#include <asm/unistd.h>
>   
>   void handle_syscall(struct uml_pt_regs *r)
>   {
> 

Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
