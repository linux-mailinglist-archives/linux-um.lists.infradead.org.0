Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA75DFBAFD
	for <lists+linux-um@lfdr.de>; Wed, 13 Nov 2019 22:41:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fV2+qHaR4Fw1X8+WnLHetnK+RHu2GAEz/+u2S4TR3Dk=; b=rDw2BHfOwoH50n
	QgrUPEeQsUDNHIz9kYOT1oGh5RTdv4mCPGxZzDc4CGDY19XRgKzzDPvs/xckCkm1H0VEx6184XQ8O
	Nvamb3s/HbbYzyj61AWIv6SBF2UuG23Ox9cq84fvneVJckkzHhqXNz77iOP/j3nkIpBEN5C71LqP8
	V9tWBZCJjvuHyEreEkn/qkI4ywnO0wSMvYQlBpeXWBUGLhElJxym6Sxpbs7BfnYbpC6EaVw+XJWop
	sL+VDWBVyLH0s9tP35U/Dsxb1oFJ01DifM9WrMwEO7mbh8ejTOm/p8RhPNP3ItioR7jLa7kYyEDZF
	xW725FWTOAHeYCKYaW1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV0O7-0006UM-Od; Wed, 13 Nov 2019 21:41:19 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV0O4-0006Tc-G8
 for linux-um@lists.infradead.org; Wed, 13 Nov 2019 21:41:18 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MmDAW-1i4i6m3XkG-00i9kJ for <linux-um@lists.infradead.org>; Wed, 13 Nov
 2019 22:41:09 +0100
Received: by mail-qt1-f180.google.com with SMTP id p20so4326575qtq.5
 for <linux-um@lists.infradead.org>; Wed, 13 Nov 2019 13:41:08 -0800 (PST)
X-Gm-Message-State: APjAAAUyCkDoARG3yrqDRIXzyMsu4cGTcG3vY2OXEZD/nBo3hgIAmdfM
 i1bYixHuh6u1a/pMxZmGXQqJCm6Dy+suGkzsqDw=
X-Google-Smtp-Source: APXvYqyjRd+a6foxC3+k9qUEopPf1CRknFxQHbHw9aZuys53MC+zVt0jx9JeruKLHIsAWsaGcA9LllqlMRQxiR5o4ug=
X-Received: by 2002:a37:4f0a:: with SMTP id d10mr4703334qkb.286.1573681267104; 
 Wed, 13 Nov 2019 13:41:07 -0800 (PST)
MIME-Version: 1.0
References: <20191108210236.1296047-1-arnd@arndb.de>
In-Reply-To: <20191108210236.1296047-1-arnd@arndb.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 13 Nov 2019 22:40:50 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1CbDaPqNsOVOuq2UDPSOwzd2U_WEmmXBMwCOhv1=iaSQ@mail.gmail.com>
Message-ID: <CAK8P3a1CbDaPqNsOVOuq2UDPSOwzd2U_WEmmXBMwCOhv1=iaSQ@mail.gmail.com>
Subject: Re: [PATCH 00/23] y2038 cleanups
To: y2038 Mailman List <y2038@lists.linaro.org>
X-Provags-ID: V03:K1:JdybsNfUO87Ryg7h3qiaF5/ldEBWETCxlFTyi/AXScLBMkKKklX
 BwwMfOELjfkFdtzKNQGYSa2FODkJFTxG5f+HKVFH+UoufccgQgSGg+EzUCk8dX9Bmp1njT2
 I4Li51xY/5y13a2E4BC6sb2IVYeCbvjkSn5ZcNipaAD2pwGn5pTYhTyYLBN4oOXIQD3VCf3
 Ne4u7gA528oT9Vqe2zv0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:y3fENWXJeow=:5R8NzMAfd3S+ozWdjpPQcv
 MqydPeJP0JfG5A4QneCB83MklFtKSYBIe7hOQ24CKfJoFv8cbZwzREdPT1xATHaZ/KiJy0eF9
 It6A3S9nAKZJavChjnhwTaHHIu9UiIYkYYX87XcixbUW/2GNbG4bSrF9FHMb2UtY1PaeQkF0N
 qtpgfvot6ImC0fFQLE7RzFDEmhNxLK9J8YFnic9spfXqV6Kn7WVAJ88sPIgUjXtmF2JCdEfpT
 wQpkgUDxEXNhm4y6dS3KduiuO+pexnGM/F64PHQKM6Z42toka72+qfTylB3JLM8hn2vqlqnMc
 uHVfJQEsFqJyhSUN0aBVRWYJg+cF8aI8AMarXeTbM29ISskGQerXuwN0aVfx9ZZjUF4U8MXL3
 YJGn007hMgl+0gkCw3IYAVgUDS8m2MRDl7/Zdu8U5YMOUi90O9EWpM85Jg+X74HWRUt3UzXp8
 Vh1Ux4SZjc6EuNUGpMFpo6loFjmBkc5/K8JMwBpuC3wKE6F5CQkPndflApwZixPmLoeW5MU52
 H+HqlLO6DYRdYbMN8I7XBmrYo19GYlxWnPqmDwAGb8x+K8aTcQvQmn0JFN+K2pOWQ3mJ/PV9e
 Y8JWaoK/lSCNJhwjoWKi9yao8X/aoCBJroT1F0Ff0FH+OT4ynLm9nejoUuCxnSV8z83UZWJFz
 +LZrPUSBUcpS/N6syv6sTUgiF69UcBu8Uhu/L2Q4xSM3p2V1+vlqU5y7dHrMdKFXRzugbZu/u
 qwwG3iPlA1IQ6Vzj9eJ+4kVFqoqsNJpUOf/Rs3wkKc9C6rzl9Mp9PWBvLqMeWD4rJcWa5cZN4
 rzY4Xhti6KWuXQn/YvT4990eotaosFRUgp2xxbgxtnqoXdMorNoqONPlZ+YPsARwSoGM2PZzy
 hz/3pLjBmTyI4wCx4xzQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_134116_832597_1688E434 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: linux-aio <linux-aio@kvack.org>, linux-ia64@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Networking <netdev@vger.kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>,
 sparclinux <sparclinux@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>, Paul Moore <paul@paul-moore.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 the arch/x86 maintainers <x86@kernel.org>, Stephen Smalley <sds@tycho.nsa.gov>,
 SElinux list <selinux@vger.kernel.org>, Jeff Dike <jdike@addtoit.com>,
 alpha <linux-alpha@vger.kernel.org>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, John Stultz <john.stultz@linaro.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Eric Paris <eparis@parisplace.org>,
 Thomas Gleixner <tglx@linutronix.de>, Christian Brauner <christian@brauner.io>,
 Richard Henderson <rth@twiddle.net>,
 christophe leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Parisc List <linux-parisc@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Linux API <linux-api@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Benjamin LaHaise <bcrl@kvack.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>,
 Richard Weinberger <richard@nod.at>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 David Miller <davem@davemloft.net>, Greentime Hu <green.hu@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 10:04 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> This is a series of cleanups for the y2038 work, mostly intended
> for namespace cleaning: the kernel defines the traditional
> time_t, timeval and timespec types that often lead to y2038-unsafe
> code. Even though the unsafe usage is mostly gone from the kernel,
> having the types and associated functions around means that we
> can still grow new users, and that we may be missing conversions
> to safe types that actually matter.
>
> As there is no rush on any of these patches, I would either
> queue them up in linux-next through my y2038 branch, or
> Thomas could add them to the tip tree if he wants.
>
> As mentioned in another series, this is part of a larger
> effort to fix all the remaining bits and pieces that are
> not completed yet from the y2038 conversion, and the full
> set can be found at:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/log/?h=y2038-endgame
>
> Maintainers, please review and provide Acks.
>
> Let me know if you have any opinion on whether we should do
> the include last two patches of this series or not.
>
>      Arnd
>
> Arnd Bergmann (23):
>   y2038: remove CONFIG_64BIT_TIME
>   y2038: add __kernel_old_timespec and __kernel_old_time_t
>   y2038: vdso: change timeval to __kernel_old_timeval
>   y2038: vdso: change timespec to __kernel_old_timespec
>   y2038: vdso: change time_t to __kernel_old_time_t
>   y2038: vdso: nds32: open-code timespec_add_ns()
>   y2038: vdso: powerpc: avoid timespec references
>   y2038: ipc: remove __kernel_time_t reference from headers
>   y2038: stat: avoid 'time_t' in 'struct stat'
>   y2038: uapi: change __kernel_time_t to __kernel_old_time_t
>   y2038: rusage: use __kernel_old_timeval
>   y2038: syscalls: change remaining timeval to __kernel_old_timeval
>   y2038: socket: remove timespec reference in timestamping
>   y2038: make ns_to_compat_timeval use __kernel_old_timeval
>   y2038: elfcore: Use __kernel_old_timeval for process times
>   y2038: timerfd: Use timespec64 internally
>   y2038: time: avoid timespec usage in settimeofday()
>   y2038: itimer: compat handling to itimer.c
>   y2038: use compat_{get,set}_itimer on alpha
>   y2038: move itimer reset into itimer.c
>   y2038: itimer: change implementation to timespec64
>   [RFC] y2038: itimer: use ktime_t internally
>   y2038: allow disabling time32 system calls

I've dropped the "[RFC] y2038: itimer: use ktime_t internally" patch
for the moment,
and added two other patches from other series:

y2038: remove CONFIG_64BIT_TIME
y2038: socket: use __kernel_old_timespec instead of timespec

Tentatively pushed out the patches with the Acks I have received so
far to my y2038 branch on git.kernel.org so it gets included in linux-next.

If I hear no complaints, I'll send a pull request for the merge window,
along with the compat-ioctl series I have already queued up in the same
branch.

    Arnd

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
