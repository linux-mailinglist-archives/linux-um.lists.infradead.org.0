Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5630C1836D9
	for <lists+linux-um@lfdr.de>; Thu, 12 Mar 2020 18:05:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSpO0BhdcE7nToKzxra9s2tXr5c3tzHC5eAaXlngztA=; b=cxg/vk7gdU6zKe
	hiR85kRADk5722pKNc1esHXCrpOyM20C8OI6/8qRSDFlI+6RZ4w5wncjTsoSxgrAhtC7QvNPHWAWY
	T/9ZS2SlP34pU++KX3jU4eigLsDTMzgc2IL12FGvv05ErGVtT+xBDXxCgfGSDM7Cucx/aLLh26fpp
	NNYa43XQDbcP6oJY0dB267OlohwquIbLO0YUsCSPcpc5RmXXPnDdJ41ddHTKeAohHzwMpwsPEvbbV
	osVG+O5cIRFBZYpJqpQu11QIZ3qjaOPIv1T2qBlZ6IOdgvEObIdF82JNV8WVIOfYo5zRwA5l+z5Gl
	Uo7Cvjl//i1SrUagz/6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRGl-00022g-3H; Thu, 12 Mar 2020 17:05:15 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRGi-00021u-Dg
 for linux-um@lists.infradead.org; Thu, 12 Mar 2020 17:05:13 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 10:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="236692322"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga008.fm.intel.com with ESMTP; 12 Mar 2020 10:04:54 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jCRGS-0093Lr-CQ; Thu, 12 Mar 2020 19:04:56 +0200
Date: Thu, 12 Mar 2020 19:04:56 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
Subject: Re: [PATCH v2] um: Don't use console_drivers directly
Message-ID: <20200312170456.GG1922688@smile.fi.intel.com>
References: <20200212100259.80438-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212100259.80438-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_100512_515400_7765718D 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Thomas Meyer <thomas@m3y3r.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 12:02:59PM +0200, Andy Shevchenko wrote:
> console_drivers is kind of (semi-)private variable to the console code.
> Direct use of it make us stuck with it being exported here and there.
> Reduce use of console_drivers by replacing it with for_each_console().

Any comments?

> Cc: Thomas Meyer <thomas@m3y3r.de>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> v2: fix condition (we do NOT want to have a console), remove confusing comment
>  arch/um/kernel/kmsg_dump.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/um/kernel/kmsg_dump.c b/arch/um/kernel/kmsg_dump.c
> index 98bdf69e4c2e..e4abac6c9727 100644
> --- a/arch/um/kernel/kmsg_dump.c
> +++ b/arch/um/kernel/kmsg_dump.c
> @@ -9,20 +9,19 @@ static void kmsg_dumper_stdout(struct kmsg_dumper *dumper,
>  				enum kmsg_dump_reason reason)
>  {
>  	static char line[1024];
> -
> +	struct console *con;
>  	size_t len = 0;
> -	bool con_available = false;
>  
>  	/* only dump kmsg when no console is available */
>  	if (!console_trylock())
>  		return;
>  
> -	if (console_drivers != NULL)
> -		con_available = true;
> +	for_each_console(con)
> +		break;
>  
>  	console_unlock();
>  
> -	if (con_available == true)
> +	if (con)
>  		return;
>  
>  	printf("kmsg_dump:\n");
> -- 
> 2.25.0
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
