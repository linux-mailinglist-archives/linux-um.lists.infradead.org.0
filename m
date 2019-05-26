Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E542AC60
	for <lists+linux-um@lfdr.de>; Sun, 26 May 2019 23:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLbQveyjPT61t08ZsjlBcV3SjrF0Ol662R38gdYwr1k=; b=ndygSgie8CVkXI
	dovRuXGQYK1q6Q1XiXuyjC9bUZ6pJhhMuEeBOoOOIS/HqZT5xKud7WAEDPx8tWQOA8SjltBgCTWOZ
	J3IzM+ONbBpNAkLjvupeG9a003MRZ+fNmY1pZ4IYs1wXLkPOXy0VXb87SlnTF0wLUm+TOKY2+uSvK
	R7Gj/y+H6em9mzkH3VGN0kssCzJbcm1LKjHA7pOfjEtOd1UlAZroWrlcKUFG7WhtpLjoWPJpMTXKN
	lsTd95uJ8NvFgEf1LjLRaYWngztQ5xC4xYNy0Dk+AZWl/zYH3sb0TvhnoagpWZQtW+5iFrmKoQ1Zu
	MDqKbUHR1HJgH1KXNkNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV17G-0003AQ-I4; Sun, 26 May 2019 21:55:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV17D-00039v-Fz
 for linux-um@lists.infradead.org; Sun, 26 May 2019 21:55:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id l17so6547849wrm.10
 for <linux-um@lists.infradead.org>; Sun, 26 May 2019 14:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1KLzbknV3DtkGUmq62LEsMMxgw5ipS5Ey6MkcBqOPdo=;
 b=ITtRIcewWlxv5STSsTKlzXU+gkIxjzPI+H8YfpFDU0zFxS5QGzXB0ul+mpXbIV/nrW
 +ySOkDeilt3k4cM+jCHEB+/x+DDZ60t9jax8u6uBChuab7noHpOriQe9rDZJgMAg4Yl2
 XC9cUj8j6GaONsuNzx71z/oxREiZoL+zyaRLizBE/f49WfOE3flXX45AThDVqzTppnp8
 hBj78e1PH1r1ohIZpOyozaetX2bY3GWTHksSM17FcISnj7ACop3qKrj7h6kK/VpoqJXB
 ZxPoMfHMec+A9AYF0szsG12w5x0tmBbwm2mi3x61+B942qX7ELvfPA4zc4QNMMKYjNff
 yYDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1KLzbknV3DtkGUmq62LEsMMxgw5ipS5Ey6MkcBqOPdo=;
 b=Dj9ykYJ3wD/BoeYO8ck84Yx18Xu2qfYrAuTZtcoyLe2Aj46ha6RZLqvjaHdOhhFPas
 X95QNnmfSLcObez7HT9kLBWtzqg7yJYUt6nltFZgYD42+ZJCt+2QC10w/+6WqkgpZQEw
 Toi8PYRIky3zKgIJus3TD7iy/+uo3yB8QJXjaqEc8v/eYjTanRBDrjRL/YUWhXDRRZ4z
 KS47ubLz4DU30FJqD4utqGEdJmfE52j7+PvAegPM23+PWYggqDNyek+pRr2p9fBKqOzb
 OFS3JMwN2ApDgNXRAMskUmVG+KGFrH6oaacFxbrIkKsxNRkwG7okpDXP8XqqIgNmcz3k
 BhZg==
X-Gm-Message-State: APjAAAVRzaf/oUoMXAFdN5P4h4TMow/qB2fSSf7YWJbGukUaOveXXzJ1
 +fJRuhXdyc5olR8PFlwkTWYDHf6K6goNfatihzE=
X-Google-Smtp-Source: APXvYqxZJE+RAr0swstNqK9Qexl5ayhSv9ErC9vZ906+FDPm20lZtl0q5xvEYr8XglPqI43Oe6mcNiv/hhQtc2l/piM=
X-Received: by 2002:a5d:6b12:: with SMTP id v18mr10591547wrw.306.1558907736579; 
 Sun, 26 May 2019 14:55:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190506123939.21091-1-johannes@sipsolutions.net>
 <20190506123939.21091-6-johannes@sipsolutions.net>
In-Reply-To: <20190506123939.21091-6-johannes@sipsolutions.net>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 26 May 2019 23:55:24 +0200
Message-ID: <CAFLxGvza1da-q=XakFimKc-aZd5M9bSxtNZdvLmTz5_Ck1HJ3Q@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arch: um: support virtual time
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_145539_560373_F78EE30E 
X-CRM114-Status: GOOD (  31.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: j@w1.fi, linux-um@lists.infradead.org,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 2:40 PM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> From: Johannes Berg <johannes.berg@intel.com>
>
> Sometimes it can be useful to run with virtual time inside the
> UML instance, for example for testing. For example, some tests
> for the wireless subsystem and userspace are based on hwsim, a
> virtual wireless adapter. Some tests can take a long time to
> run because they e.g. wait for 120 seconds to elapse for some
> regulatory checks. This obviously goes faster if it need not
> actually wait that long, but time inside the test environment
> just "bumps up" when there's nothing to do.
>
> Add a mode - CONFIG_UML_VIRTUAL_TIME_SUPPORT - to support such
> behavior; it needs to be enabled with the "virtual-time" option
> passed to the UML invocation.

I like this feature!
Is "virtual time" a common name for such a mode?
To me "virtual time" reads like a clock that runs with different speed or is in
some other way untangled from the host.
What you have implement is time traveling. ;-)

> With this enabled, the test mentioned above goes from a runtime
> of about 130 seconds (with startup overhead and all) to being
> CPU bound and finishing in 16 seconds (on my slow laptop).
>
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>  arch/um/Kconfig             | 17 ++++++++++
>  arch/um/include/shared/os.h | 14 ++++++++
>  arch/um/kernel/time.c       | 13 +++++++
>  arch/um/os-Linux/time.c     | 68 ++++++++++++++++++++++++++++++++++++-
>  4 files changed, 111 insertions(+), 1 deletion(-)
>
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index ec9711d068b7..71ff7ef3aa0c 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -180,6 +180,23 @@ config SECCOMP
>
>           If unsure, say Y.
>
> +config UML_VIRTUAL_TIME_SUPPORT
> +       bool
> +       prompt "Support virtual time (e.g. for test execution)"
> +       help
> +         Enable this option to support virtual time inside the UML instance,
> +         which means that whenever there's nothing to do it just skips time
> +         forward rather than waiting for any real time to elapse.
> +
> +         Note that this changes behaviour a bit - used CPU time may not always
> +         cause the virtual time to increase unless enough CPU was consumed to
> +         advance the tick (HZ).
> +
> +         Note that to enable the virtual time, you also need to pass
> +         "virtual-time" on the command-line.
> +
> +         It is safe to say Y, but you probably don't need this, so say N.
> +
>  endmenu
>
>  source "arch/um/drivers/Kconfig"
> diff --git a/arch/um/include/shared/os.h b/arch/um/include/shared/os.h
> index 449e71edefaa..a891a5665704 100644
> --- a/arch/um/include/shared/os.h
> +++ b/arch/um/include/shared/os.h
> @@ -257,6 +257,20 @@ extern void os_timer_disable(void);
>  extern void uml_idle_timer(void);
>  extern long long os_persistent_clock_emulation(void);
>  extern long long os_nsecs(void);
> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
> +extern unsigned long long virtual_time;
> +extern unsigned long long timer_expiry;
> +int os_setup_virtual_time(char *str);
> +static inline void os_set_virtual_time_to_timer(void)
> +{
> +       /* ignored if virtual time isn't enabled */
> +       virtual_time = timer_expiry;
> +}
> +#else
> +static inline void os_set_virtual_time_to_timer(void)
> +{
> +}
> +#endif
>
>  /* skas/mem.c */
>  extern long run_syscall_stub(struct mm_id * mm_idp,
> diff --git a/arch/um/kernel/time.c b/arch/um/kernel/time.c
> index 3898119f773e..0ceb7c540d60 100644
> --- a/arch/um/kernel/time.c
> +++ b/arch/um/kernel/time.c
> @@ -19,11 +19,14 @@
>  #include <kern_util.h>
>  #include <os.h>
>  #include <timer-internal.h>
> +#include <shared/init.h>
>
>  void timer_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
>  {
>         unsigned long flags;
>
> +       os_set_virtual_time_to_timer();
> +
>         local_irq_save(flags);
>         do_IRQ(TIMER_IRQ, regs);
>         local_irq_restore(flags);
> @@ -134,3 +137,13 @@ void __init time_init(void)
>         timer_set_signal_handler();
>         late_time_init = um_timer_setup;
>  }
> +
> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
> +__setup("virtual-time", os_setup_virtual_time);
> +__uml_help(os_setup_virtual_time,
> +"virtual-time\n"
> +"    Run the system in virtual time mode, i.e. bump time\n"
> +"    forward when there's nothing to do, rather than waiting\n"
> +"    for real time to elapse. Useful for test execution.\n\n"
> +);
> +#endif
> diff --git a/arch/um/os-Linux/time.c b/arch/um/os-Linux/time.c
> index ea720149f5b8..d37ee59cb936 100644
> --- a/arch/um/os-Linux/time.c
> +++ b/arch/um/os-Linux/time.c
> @@ -15,8 +15,27 @@
>  #include <os.h>
>  #include <string.h>
>  #include <timer-internal.h>
> +#include <generated/autoconf.h>
>
>  static timer_t event_high_res_timer = 0;
> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
> +unsigned long long virtual_time;
> +unsigned long long timer_expiry;
> +static enum {
> +       TMR_DIS,
> +       TMR_ONE,
> +       TMR_INT,
> +} timer_mode;

You set the timer mode in the os_*-functions, this works because the only user
is UML's posix-timer.
Is there a reason why you didn't install most virtual time hooks in
the itimer_* functions?
This feels more natural to me and would keep the os_*-functions
stateless and generic.

> +static bool virtual_time_enabled;
> +
> +int os_setup_virtual_time(char *str)
> +{
> +       virtual_time_enabled = true;
> +       return 1;
> +}
> +#else
> +#define virtual_time_enabled false
> +#endif
>
>  static inline long long timeval_to_ns(const struct timeval *tv)
>  {
> @@ -66,6 +85,11 @@ int os_timer_set_interval(void)
>         if (timer_settime(event_high_res_timer, 0, &its, NULL) == -1)
>                 return -errno;
>
> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
> +       timer_mode = TMR_INT;
> +       timer_expiry = virtual_time + nsec;
> +#endif
>

Can we please have a static inline helper for this?
...to avoid more ifdefs in C files.

>         return 0;
>  }
>
> @@ -81,6 +105,10 @@ int os_timer_one_shot(unsigned long ticks)
>         };
>
>         timer_settime(event_high_res_timer, 0, &its, NULL);
> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
> +       timer_mode = TMR_ONE;
> +       timer_expiry = virtual_time + nsec;
> +#endif

Same.

>         return 0;
>  }
>
> @@ -93,12 +121,20 @@ void os_timer_disable(void)
>
>         memset(&its, 0, sizeof(struct itimerspec));
>         timer_settime(event_high_res_timer, 0, &its, NULL);
> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
> +       timer_mode = TMR_DIS;
> +#endif
>  }

Same.

>  long long os_nsecs(void)
>  {
>         struct timespec ts;
>
> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
> +       if (virtual_time_enabled)
> +               return virtual_time;
> +#endif
>

Do we need the ifdef here?
If CONFIG_UML_VIRTUAL_TIME_SUPPORT is disabled, virtual_time_enabled
should never be non-zero/true.

>         clock_gettime(CLOCK_MONOTONIC,&ts);
>         return timespec_to_ns(&ts);
>  }
> @@ -109,6 +145,10 @@ long long os_nsecs(void)
>   */
>  void os_idle_sleep(unsigned long long nsecs)
>  {
> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
> +       unsigned long long next = virtual_time + nsecs;
> +       struct itimerspec stop = {}, cfg;
> +#endif
>         struct timespec ts = {
>                 .tv_sec  = nsecs / UM_NSEC_PER_SEC,
>                 .tv_nsec = nsecs % UM_NSEC_PER_SEC
> @@ -117,6 +157,32 @@ void os_idle_sleep(unsigned long long nsecs)
>         /*
>          * Relay the signal if clock_nanosleep is interrupted.
>          */
> -       if (clock_nanosleep(CLOCK_MONOTONIC, 0, &ts, NULL))
> +       if (!virtual_time_enabled) {
> +               if (clock_nanosleep(CLOCK_MONOTONIC, 0, &ts, NULL))
> +                       deliver_alarm();
> +               return;
> +       }
> +
> +#ifdef CONFIG_UML_VIRTUAL_TIME_SUPPORT
> +       timer_settime(event_high_res_timer, 0, &stop, &cfg);
> +
> +       if (timer_mode != TMR_DIS && timer_expiry < next) {
> +               if (timer_mode == TMR_ONE)
> +                       timer_mode = TMR_DIS;
> +               /* virtual_time will be adjusted in timer_handler() */
>                 deliver_alarm();
> +               return;
> +       }
> +
> +       virtual_time = next;
> +
> +       if (timer_mode != TMR_DIS) {
> +               unsigned long long remaining = timer_expiry - virtual_time;
> +
> +               cfg.it_value.tv_sec = remaining / UM_NSEC_PER_SEC;
> +               cfg.it_value.tv_nsec = remaining % UM_NSEC_PER_SEC;
> +
> +               timer_settime(event_high_res_timer, 0, &cfg, NULL);
> +       }
> +#endif

Please split the function to get rid of the ifdefs.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
