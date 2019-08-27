Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5203E9DD25
	for <lists+linux-um@lfdr.de>; Tue, 27 Aug 2019 07:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yM+I7qF7egzPRnauyd7BiX/GKu2j1b7bfFS2jdu0afE=; b=rPnpkXUD5575s9rxtUmdmlOIO
	+BT9/xSrb8s2BGq0sV38FKweSeYh3SvxLTJLnWEFA2Os/NSMh1Cgp74d9gKjdtQArTDBfP9rCsMmE
	dTIjN0pqILgnLby50khjQExvsyt9Tf4aQT1cdBTgUeyB6CpH5lodi7qfyBNPGTVl25QPu4y/dju9I
	wk1b6KeJW/KqUalhx+MeYjb2WvC5zJAG9eOoxVR2NPlmeZNjIN5gyIIDFxfdq+X3jpoyykGVo3BHF
	8tjvsOKm6LUUa+74dEKaE5D0/UmY8OnKmrD8lkYe5tA36QJn5QmhxKJTUTZFBVcrA00JimTnRIdFk
	w570zGwIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2U1E-0005W2-6D; Tue, 27 Aug 2019 05:27:48 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2U1B-0005V1-Q9
 for linux-um@lists.infradead.org; Tue, 27 Aug 2019 05:27:47 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i2U19-0000hH-C3; Tue, 27 Aug 2019 05:27:43 +0000
Received: from [151.251.252.137] (helo=[192.168.65.83])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i2U16-0008Ov-QO; Tue, 27 Aug 2019 06:27:43 +0100
Subject: Re: [PATCH 1/4] arch: um: remove sig_info[SIGALRM]
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190823104429.11047-1-johannes@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <4c9cd570-5036-73b5-f23d-3ce67e6f04c6@kot-begemot.co.uk>
Date: Tue, 27 Aug 2019 06:27:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190823104429.11047-1-johannes@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_222745_978953_EC070A22 
X-CRM114-Status: GOOD (  15.50  )
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
> This entry is misleading, the actual signal handler is
> another one that never uses sig_info.
> 
> Also remove the SIGALRM if inside sig_handler() for the
> same reason.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   arch/um/os-Linux/signal.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/um/os-Linux/signal.c b/arch/um/os-Linux/signal.c
> index 75b10235d369..35d1b2bc00cb 100644
> --- a/arch/um/os-Linux/signal.c
> +++ b/arch/um/os-Linux/signal.c
> @@ -26,7 +26,6 @@ void (*sig_info[NSIG])(int, struct siginfo *, struct uml_pt_regs *) = {
>   	[SIGBUS]	= bus_handler,
>   	[SIGSEGV]	= segv_handler,
>   	[SIGIO]		= sigio_handler,
> -	[SIGALRM]	= timer_handler
>   };
>   
>   static void sig_handler_common(int sig, struct siginfo *si, mcontext_t *mc)
> @@ -42,7 +41,7 @@ static void sig_handler_common(int sig, struct siginfo *si, mcontext_t *mc)
>   	}
>   
>   	/* enable signals if sig isn't IRQ signal */
> -	if ((sig != SIGIO) && (sig != SIGWINCH) && (sig != SIGALRM))
> +	if ((sig != SIGIO) && (sig != SIGWINCH))
>   		unblock_signals();
>   
>   	(*sig_info[sig])(sig, si, &r);
>

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>


-- 
Anton R Ivanov

http://www.kot-begemot.co.uk

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
