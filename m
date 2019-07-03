Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25D95DE5C
	for <lists+linux-um@lfdr.de>; Wed,  3 Jul 2019 08:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmKzA9HW9tQx64lLKOyaM4klJbuKTuHlbFw/rZN9b/U=; b=t0/AW7ttY0wpt5
	VRnkWZDIezu6VW2OY9eOo1mxFiqd91ffqLbnnwCcu1bE8Yyd1xYRHSfLibIeuaHpZI5Ar8t93afTH
	ShdwtcNdbyDj16kohY7Uq7M9i29che/CHd3bPIHIXwRgBaCawzN9uJP8y/VL20Nu4/phzwSpbcXp5
	VdlavgxP9ZvVIVYKQpNlDW2MESGquR73W6itZtmNMiZPGg82NtnT7jfBpiIldUq5XlZdnCAm2Mwoq
	s/pOGtf8/xZ/KFWxboytFm2lgvCln5QQCrZxQ5MddlfR8NLT4HzI2mmk0UYYXmfeyleq28c6ORHbA
	AGq5YJybXAaFTWg4V9Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiZEU-0003Yv-1v; Wed, 03 Jul 2019 06:59:10 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiZEQ-0003YA-D5
 for linux-um@lists.infradead.org; Wed, 03 Jul 2019 06:59:08 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hiZEI-0007wX-Bk; Wed, 03 Jul 2019 08:58:58 +0200
Message-ID: <cc17f3a1c5af71a2e7f1e94cc7c553a4084293ca.camel@sipsolutions.net>
Subject: Re: [PATCH v3 2/2] arch: um: support time travel mode
From: Johannes Berg <johannes@sipsolutions.net>
To: Richard Weinberger <richard@nod.at>
Date: Wed, 03 Jul 2019 08:58:56 +0200
In-Reply-To: <46402789.25380.1562104450930.JavaMail.zimbra@nod.at>
References: <20190527083427.6293-1-johannes@sipsolutions.net>
 <20190527083427.6293-2-johannes@sipsolutions.net>
 <46402789.25380.1562104450930.JavaMail.zimbra@nod.at>
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_235906_445515_C4E6C0D1 
X-CRM114-Status: GOOD (  14.80  )
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
Cc: j@w1.fi, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-07-02 at 23:54 +0200, Richard Weinberger wrote:
> 
> This breaks the build for CONFIG_UML_TIME_TRAVEL_SUPPORT=n

D'oh. I was sure I tested that, but I guess not on the last version or
something... Sorry.

> What do you think about this followup fixup?
> I committed your patch already to linux-next.
> So, no need to resend. 
> 
> diff --git a/arch/um/include/shared/timer-internal.h b/arch/um/include/shared/timer-internal.h
> index 5ca74f415d52..c15883b30c19 100644
> --- a/arch/um/include/shared/timer-internal.h
> +++ b/arch/um/include/shared/timer-internal.h
> @@ -25,7 +25,7 @@ enum time_travel_timer_mode {
>  #ifdef CONFIG_UML_TIME_TRAVEL_SUPPORT
>  extern enum time_travel_mode time_travel_mode;
>  extern unsigned long long time_travel_time;
> -extern enum time_travel_timer_mode time_travel_timer_mode;
> +extern enum time_travel_timer_mode tt_timer_mode;
>  extern unsigned long long time_travel_timer_expiry;
>  extern unsigned long long time_travel_timer_interval;

Not sure renaming just this one makes sense (vs. the two others
above/below), but your call, I don't really care.

FWIW, my intent (after the comments wrt. ifdefs) had been to do it like
this:

diff --git a/arch/um/include/shared/timer-internal.h
b/arch/um/include/shared/timer-internal.h
index 5ca74f415d52..8574338bf23b 100644
--- a/arch/um/include/shared/timer-internal.h
+++ b/arch/um/include/shared/timer-internal.h
@@ -54,6 +54,8 @@ static inline void time_travel_set_timer(enum
time_travel_timer_mode mode,
 					 unsigned long long expiry)
 {
 }
+
+#define time_travel_timer_mode TT_TMR_DISABLED
 #endif
 
 #endif
diff --git a/arch/um/kernel/process.c b/arch/um/kernel/process.c
index def2091697ca..67c0d1a860e9 100644
--- a/arch/um/kernel/process.c
+++ b/arch/um/kernel/process.c
@@ -213,7 +213,7 @@ static void time_travel_sleep(unsigned long long
duration)
 	if (time_travel_timer_mode != TT_TMR_DISABLED ||
 	    time_travel_timer_expiry < next) {
 		if (time_travel_timer_mode == TT_TMR_ONESHOT)
-			time_travel_timer_mode = TT_TMR_DISABLED;
+			time_travel_set_timer(TT_TMR_DISABLED, 0);
 		/*
 		 * time_travel_time will be adjusted in the timer
 		 * IRQ handler so it works even when the signal

johannes



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
