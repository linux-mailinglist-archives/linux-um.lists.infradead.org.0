Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51F9F5116
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 17:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61qAT0ExyZWQtFwXowfpew54bPVv6XOClAOotVJ9eE0=; b=Bov6g/EyelsyHW
	cEH7hLNOUpaUAJFhbq3b3mpEAWsyJh3moDVkaZ4PsW0Zc2GPbRvgQXHbyLhGjFnvVcXPFSlsmMxMU
	WjbqpgQRvvGsnZcSpe9bMDKRl0He6dudDWEGHHJCcfZP10Mn/ug/6unZ9YIKlKDHLSKa8AQRHyR6U
	LTpneHbs+Kx/a5fPQJm8C7ti3VBl8sUN3cqKb9LdYpt9idgPEByqfhGAahU9RQE7MYKSl+1qZuqMO
	dWcM0vTn08DbcKMZeCe322dOp5XZyFa7nZ1kvraZ+JOEUdj5jvjnRn+X6vEcY7wz1YXex1YaXQvwV
	hCjo3ac/ze1HZNLi/RtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT77y-0005d1-Ma; Fri, 08 Nov 2019 16:28:50 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT77v-0005aI-7v
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 16:28:48 +0000
Received: by mail-lf1-x143.google.com with SMTP id v8so4890903lfa.12
 for <linux-um@lists.infradead.org>; Fri, 08 Nov 2019 08:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g8y3Kv95ejyL7msYqyPIoRMuCM9aKky/CsOCvaHvzKM=;
 b=OFQ83MN4Hmk627ztvJPIKihtIRsS8ZJ3GNTmqGPL14tUmqtruv4K7nmTrdqjRLFkAn
 v66F5LmIzidO2RY0wAc8faHozHlKmYZjXqnWdur1cdgyOYMMPWxMT2qM/13lV7Gll4Nc
 lRCKNQhkBNihdDdl1Z0mCUKrkPWWlSTJj8W9XuLLYhohd1gFs4UlSNvhCs93ZGZd3jBA
 FVTjYbasessxSjfBcyeOLdW+Y8Bd7gD+BB7UCWg2KPTCWA+UwS7+l7bzP+7BahjCAYhI
 nOv6jmxm+6mZbCk5AkWY13lz+e0hU9EGlWVlrK7ojQr4zo4A/XJr3HfWznngkwdMz6Mb
 pEiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g8y3Kv95ejyL7msYqyPIoRMuCM9aKky/CsOCvaHvzKM=;
 b=VBn3NetfAWYt1oKdx11Ur+1bW6rluNEq3VORTbJFneVZxhmEDIPzLmhMw+y0KmeDOW
 rNvQPRNbSVw5JLcYTK0Wv1lHzXZt5mqkYGUIyeJOHWl7nEvEmPvcLwDo08bJcRjT6yp6
 WBYVGkJ0Kt981bXslLVOvB0djSh3zbj7Hk3XUnUgBOm5R49YMuMndyz/+MRcgvGJIfXs
 8W0Tbi6FncvtVHbl8M+IwN2+tlpO7AzaTA4pADPcsK0er2463oEVgixEXvRMS+k52sUI
 kwCCJTtRL8hhSEwU3upUJwm18eZYAUSs8Xl/b/SqklPUVA3mLQ9NTLYTACduMbb8tKXu
 9q7w==
X-Gm-Message-State: APjAAAUfHFh2lRuUdnPSCUywLQnyMacFQ79VVyH+kvDKOHQ9lRpkoV9E
 giS80FEr4Y5YoX7B4jRLFT3J/QbJO140pzjJgB7pHA==
X-Google-Smtp-Source: APXvYqzHzf9qj/gQvrMhsVZj/mUBqCeBT0v/95hThrViwKN4rfJkI0AUVqq0YGCyoYWqoiClXSsdpDtSyx/K8KYU40o=
X-Received: by 2002:a19:ab11:: with SMTP id u17mr7519021lfe.78.1573230521103; 
 Fri, 08 Nov 2019 08:28:41 -0800 (PST)
MIME-Version: 1.0
References: <20191106030542.868541-1-dima@arista.com>
 <20191106092039.GT4131@hirez.programming.kicks-ass.net>
 <10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
 <20191106203440.GH3079@worktop.programming.kicks-ass.net>
In-Reply-To: <20191106203440.GH3079@worktop.programming.kicks-ass.net>
From: Dmitry Safonov <dima@arista.com>
Date: Fri, 8 Nov 2019 16:28:30 +0000
Message-ID: <CAGrbwDRgX1BZoFrVYSXhAeeUKHrB=q3w8jXFPOuRvO7HV4Ciqw@mail.gmail.com>
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_082847_282912_499038A6 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Ben Segall <bsegall@google.com>,
 Guo Ren <guoren@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Matt Turner <mattst88@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Len Brown <len.brown@intel.com>,
 linux-pm@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-um@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Richard Henderson <rth@twiddle.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Mackerras <paulus@samba.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-ia64@vger.kernel.org,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 James Hogan <jhogan@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Vincent Chen <deanbo422@gmail.com>,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-hexagon@vger.kernel.org, Helge Deller <deller@gmx.de>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 linux-m68k@lists.linux-m68k.org, Stafford Horne <shorne@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Tony Luck <tony.luck@intel.com>, Douglas Anderson <dianders@chromium.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Will Deacon <will@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Brian Cain <bcain@codeaurora.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 kgdb-bugreport@lists.sourceforge.net, linux-snps-arc@lists.infradead.org,
 Fenghua Yu <fenghua.yu@intel.com>, Borislav Petkov <bp@alien8.de>,
 Jeff Dike <jdike@addtoit.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, Ley Foon Tan <lftan@altera.com>,
 "David S. Miller" <davem@davemloft.net>, Rich Felker <dalias@libc.org>,
 Petr Mladek <pmladek@suse.com>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Richard Weinberger <richard@nod.at>,
 X86 ML <x86@kernel.org>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Mark Salter <msalter@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Michal Simek <monstr@monstr.eu>, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Jason Wessel <jason.wessel@windriver.com>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 11/6/19 8:34 PM, Peter Zijlstra wrote:
> On Wed, Nov 06, 2019 at 04:27:33PM +0000, Dmitry Safonov wrote:
[..]
>> Sorry, I should have tried to describe better.
>>
>> I'm trying to remove external users of console_loglevel by following
>> reasons:
>
> I suppose since all my machines have 'debug ignore_loglevel
> earlyprintk=serial,ttyS0,115200 console=ttyS0,115200' I don't have this
> experience.

Yeah, I remember you avoid all those functionalities of printk(), fair
enough. On the other side, regular users and I'm betting most of
the non-tuned distributions use /proc/sys/kernel/printk by default.
(Checking on my Arch & Fedora - loglevel 4 from the box)

>> - changing console_loglevel on SMP means that unwanted messages from
>> other CPUs will appear (that have lower log level)
>> - on UMP unwanted messages may appear if the code is preempted while it
>> hasn't set the console_loglevel back to old
>> - rising console_loglevel to print wanted message(s) may not work at all
>> if printk() has being delayed and the console_loglevel is already set
>> back to old value
>
> Sure, frobbing the global console_loglevel is bad.
>
>> I also have patches in wip those needs to print backtrace with specific
>> loglevel (higher when it's critical, lower when it's notice and
>> shouldn't go to serial console).
>
> (everything always should go to serial, serial is awesome :-)

Personally I agree. Unfortunately, here @Arista there are switches (I'm
speaking about the order of thousands at least) those have baud-rate 9600.
It's a bit expensive being elaborate with such setup.

>> Besides on local tests I see hits those have headers (messages like
>> "Backtrace: ") without an actual backtrace and the reverse - a backtrace
>> without a reason for it. It's quite annoying and worth addressing by
>> syncing headers log levels to backtraces.
>
> I suppose I'm surprised there are backtraces that are not important.
> Either badness happened and it needs printing, or the user asked for it
> and it needs printing.
>
> Perhaps we should be removing backtraces if they're not important
> instead of allowing to print them as lower loglevels?

Well, the use-case for lower log-level is that everything goes into logs
(/var/log/dmesg or /var/log/messages whatever rsyslog has settting).

That has it's value:
- after a failure (i.e. panic) messages, those were only signs that
something goes wrong can be seen in logs which can give ideas what has
happened.
- before the failure, those messages go to telemetry and can be
auto-magically processed remotely to take a decision (e.g. balance the
traffic away).

I wish all the information could be gathered in the userspace, but many
existing kernel/driver messages are valuable. A more detailed example is
hung task detector: we want to have the backtrace for a task that is
in uninterruptible state too long, but only in logs as printing on
serial console may lead to holding console lock and watchdog.
Besides customer notifications and investigations, I see the value of such
"bottleneck" warnings during long-running integration tests.

Thanks,
          Dmitry

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
