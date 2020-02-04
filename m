Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEE915225D
	for <lists+linux-um@lfdr.de>; Tue,  4 Feb 2020 23:31:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/eZD9LTAzaKnIFvPTA+Yx2iI91JJSyN7RQLLLOBbSw=; b=d153T4/A7qLDiE
	ap/ZiIMS3WwPzySSrcK16UVY2Nuup4yu0+Bqmz87Up3PDrAeTQpDy4Iv2vzEijsTK3WuF7i/kOAQs
	7afZh9T3wr7/o072N73RfLk91rvOx+OufVIw+Zvdl+rt6bMryolhigIlp/eNaZTAoisnJKx1w8pZZ
	45bANnjZijg9EnnZKjMc3Ynyy8UKaYghdjhZIXJhiAgffRCfV8iduLWctrswMSo1al1syKzgWUIe1
	HndFpNXb0/NgpNCZmePUpqOS6lMRpp7mPT/HaV82RYn84iLAiP/C+VYhAYLGVthnE2+aWqIV+iZtC
	FV2gDvxjkMMDZ3eb+z4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz6ik-000207-9m; Tue, 04 Feb 2020 22:31:02 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz6ih-0001zm-D8
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 22:31:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id y73so89975pfg.2
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 14:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q2uQL/PRw6ZnTDrqiiea6tiCZJLGBQe2LOHyEh5sDJ4=;
 b=t2lvJ5eRV7fNHCyOWIUVU0qCE/DfBdKo5P3ClEetu7j6GGIg2XASjLWPCBjl+34JdE
 6ny6Y50jnfQsvBTWE1bwkdPqA0V8rodl3y1fXWxaInCOxiDPKI5DUt82uL3CnbUIafy9
 p08FhbQrlWgcsmJQvhAt6LDgCuDy0Fw8IFLxqHZAcrgagsyrlNbbkaF/Ii3npSR+IoUI
 7eByhr9nXLvJjCI+LJUlnSG+u4qzSxSKnByGmAj0+1wVSggoDvkGvv2O4f68xPLPiwOn
 Eo9phXx8Duaklg8yw1cjFIKRIWdEeopuCCSX9Kfw4oX4UghVR0PeWwCphaOK3w9JQYsP
 2iuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q2uQL/PRw6ZnTDrqiiea6tiCZJLGBQe2LOHyEh5sDJ4=;
 b=kbM+z/IMlbNLmT7Rep03F1sSQ6AZyYRBjmXP+4fdYsLPDiuGHAHwIs0A3Fl5kFH+QS
 aeYWM5VHTjyroXINQ14s5RozVVXdPrjn2fLMuR9NSJtLzQq3q1xf62ImHzgTRgAOaDHe
 U4YTiHLTLjmOI20+QUPQ71H1nseshzgIzI5MYdRwcvyzITeqyPL7JNX6MaJicSGhjD6Y
 CN0NcDiqw/f2EFmhub9nTL3+zqJckNIaU2uMePikdzOeDSOAzGFMUY0qrwtRcTlbVjWO
 lNnhv3PkodyvgR/pxcHrUKqblwbfNK05HEXZ4T2UDE04At2wY8rc8AWGlmnUc9x7ccHi
 nEMA==
X-Gm-Message-State: APjAAAX8ZhjYCyLekZ+8Gl51P2y0LPT8NlAEbCMXZGqjBevNYCDqNDkS
 V7TzANZPj/sUyBj9lYM8FvUUkfXtw8QbtDF3cugKZw==
X-Google-Smtp-Source: APXvYqwSZaY//8PRrbH3D4/3OyG0Roy306tCq51bwzXFTdTrGyFV7FF3+o89xhSA7oOCZ+Nwi4dbqV2Jsg3SEvbuwuI=
X-Received: by 2002:aa7:8545:: with SMTP id y5mr29917679pfn.185.1580855458475; 
 Tue, 04 Feb 2020 14:30:58 -0800 (PST)
MIME-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-3-brendanhiggins@google.com>
 <e060bdfc-5cdb-fb62-48b0-cc54c7bc72ce@gmail.com>
In-Reply-To: <e060bdfc-5cdb-fb62-48b0-cc54c7bc72ce@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 4 Feb 2020 14:30:47 -0800
Message-ID: <CAFd5g46irbQ7j_DOY+bQPoo1TWjwvu6n9iyQ7abe9pfqydeMYg@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] arch: um: add linker section for KUnit test suites
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_143059_470982_227E4A7C 
X-CRM114-Status: GOOD (  27.49  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Alan Maguire <alan.maguire@oracle.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 1:59 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 1/30/20 5:08 PM, Brendan Higgins wrote:
> > Add a linker section to UML where KUnit can put references to its test
> > suites. This patch is an early step in transitioning to dispatching all
> > KUnit tests from a centralized executor rather than having each as its
> > own separate late_initcall.
>
> All architectures please.

I *am* supporting all architectures with this patchset.

The first patch in this series adds support to all architectures
except UML (admittedly I only tried x86 and ARM, 32 bit and 64 bit for
both, but I am pretty sure someone tried it for POWER and something
else, so maybe I should try it with others before submission). A patch
specific for UML, this patch, was needed because UML is a special
snowflake and has a bunch of special linker scripts that don't make
the change in vmlinux.lds.h (the previous patch) sufficient.

> The early versions of Kunit documented reliance on UML.  Discussion lead to
> the conclusion that real architectures and real hardware would be supported.

I am *very* aware.

I would never intentionally break support for other architectures. I
know it is very important to you, Alan, and others.

> This like this are what make me reluctant to move devicetree unittests to
> KUnit.

Hopefully I can reassure you then:

With Alan as a regular contributor who cares very much about non-UML
architectures, it would be very unlikely for me to accidentally break
support for other architectures without us finding out before a
release.

I also periodically test KUnit on linux-next on x86-64. I have gotten
bugs for other architectures from Arnd Bergmann and one of the m86k
maintainers who seems to play around with it as well.

So yeah, other people care about this too, and I would really not want
to make any of them unhappy.

> Can you please add a section to the KUnit documentation that lists things
> like the expectations, requirements, limitations, etc for a test case that
> is run by KUnit?  Some examples that pop to mind from recent discussions
> and my own experiences:
>
>   - Each test case is invoked after late_init is complete.
>       + Exception: the possible value of being able to run a unit test
>         at a specific runlevel has been expressed.  If an actual unit
>         test can be shown to require running earlier, this restriction
>         will be re-visited.
>
>   - Each test case must be idempotent.  Each test case may be called
>     multiple times, and must generate the same result each time it
>     is called.
>       + Exception 1: a test case can be declared to not be idempotent
>         [[ mechanism TBD ]], in which case KUnit will not call the
>         test case a second time without the kernel rebooting.
>       + Exception 2: hardware may not be deterministic, so a test that
>         always passes or fails when run under UML may not always to
>         so on real hardware.  <--- sentence copied from
>         Documentation/dev-tools/kunit/usage.rst
>           [[ This item and 1st exception do not exist yet, but will exist
>           in some form if the proposed proc filesystem interface is
>           added. ]]
>
>   - KUnit provides a helpful wrapper to simplify building a UML kernel
>     containing the KUnit test cases, booting the UML kernel, and
>     formatting the output from the test cases.  This wrapper MUST NOT
>     be required to run the test cases or to determine a test result.
>     The formatting may provide additional analysis and improve
>     readability of a test result.
>
>   - .... There is more that belongs here, but I'm getting side tracked
>     here, when I'm trying to instead convert devicetree unittests to
>     KUnit and want to get back to that.

Sure, I think that's a great start! Thanks for that. I hope you don't
mind if I copy and paste some of it.

It kind of sounds like you are talking about more of a requirements
doc than the design doc I was imagining in my reply to you on the
cover letter, which is fine. The documentation is primarily for people
other than me, so whatever you and others think is useful, I will do.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
