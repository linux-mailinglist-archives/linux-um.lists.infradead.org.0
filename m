Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D2F14A92B
	for <lists+linux-um@lfdr.de>; Mon, 27 Jan 2020 18:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEb5xKyEgEusO75x8E2nGffCIpwTYvAuuwNQkGWjKeM=; b=b49EUIUjiRXEnl
	e5eg/3XC3l81ttg/HAazbqDELcJS+DnBmXAiFNH/vpNW99uoSmb06Rbjkw68w3Wc/qQw9+FtMq8L0
	fn4khnGpOcYOXVFoiDX5pYB1UiVAYJlkDejY+6XlohL4JnJCLyzPfimdEtOQkobZaRbSBUysUpMc6
	wxuUQ4vFxR5tsOL76D3TeA0vJUTSSWX/XSCFZOGkGlZtAnuFMKiR50Z9vivh1V8DIPyfP4DHVZaqD
	ebT75nmtWyhGFuHs2HxJmhuxoqrC0WLUD5/jSRBf+MVL7sygnmUH89SnMdgQBiWHIh4XyhO3/XbUE
	9+Vi3bEBgZtldTqm7b5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8Mv-0003r5-DC; Mon, 27 Jan 2020 17:40:13 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8Mr-0003S7-Dq
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 17:40:11 +0000
Received: by mail-yb1-xb44.google.com with SMTP id f136so5287660ybg.11
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 09:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j9dC9atddjwhmNiTvc6WPJRfCurkBqs6BV53aCM4Bwc=;
 b=OrtXl6vij+Mbbk4wgtpwcJXca/uvZU7TKn+2pkoyMcKjgxpuh2k1xmdOgMDcDz6Xzn
 r5+GCjwi0ZAcryu0kzX/sXeiysftIbg+7bO25SXytmKDYr+YC7Sp5CD/dZdCGTcIVzM9
 8w5+OYfBgXbuhvP4tkeZZ1AAWStIu4kMlJc61MsCDGoX6zALzdZvK+dxVCuxbFl3N/o8
 7efinvTJn+63gLV07aybHUXkRVdVEyTMuGHEhNPASKHMJEQnqRIUY1Cx8QWLOj6qvQRi
 ozEuuFUkidSXE4/1QLJiDTjg48GhIvC1brJO18GLHSFi9pzZ3aNxoVm9oTAzAbz/Hf44
 sGeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j9dC9atddjwhmNiTvc6WPJRfCurkBqs6BV53aCM4Bwc=;
 b=dxHpKl9ZYFEHBESbsCRO1QvrdPEPIvlNn77MFi8sgB/vl/nM8PmXfchwqn8o73cSxm
 QW2T0y5L70jlLjBw/EulgNqjCo3xVeGOWHcyQ1PU5GnNRHWuTmE+HICPwjG6twAsbo5h
 qzBS72iyU3UoPjjgPsxJJ/lqMNyoQrWeiXX/HRapwpuZNozhFqNt2JmbT1x3QZwfsA0W
 72SPa9CvT1IisNkYjqDtLn69rPBkfeT7hFBS5mkRVuQBQocsq0U51tEiBX50oKJzV+nm
 asPye+JB2ILwYsZ4PPzF1dEvTYURgavcXStRu6iDXFVDZVG6E6EG9fE/mC4E9nSFPPHk
 HKqQ==
X-Gm-Message-State: APjAAAUwIeAmRiUk0kE7BYEek/CnnXM5jqnm9jmSOlnjZHDtHsL+8l3T
 nRcaI/ZO3ZL0HeTLleosF/U=
X-Google-Smtp-Source: APXvYqy9464eXN+V1ydj3j8IcHLXt6BT+/2InNbiB1P1ib719zO2q2+7fx+heaO7zSVOWbuO4nBJnA==
X-Received: by 2002:a25:cec6:: with SMTP id x189mr12435848ybe.64.1580146807848; 
 Mon, 27 Jan 2020 09:40:07 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id 63sm2445716ywg.96.2020.01.27.09.40.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Jan 2020 09:40:07 -0800 (PST)
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch all
 KUnit tests
To: Brendan Higgins <brendanhiggins@google.com>,
 Luis Chamberlain <mcgrof@kernel.org>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
Date: Mon, 27 Jan 2020 11:40:06 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_094009_513635_8FF559F5 
X-CRM114-Status: GOOD (  36.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Stephen Boyd <sboyd@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Knut Omang <knut.omang@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, rppt@linux.ibm.com,
 linux-um <linux-um@lists.infradead.org>, Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Alan Maguire <alan.maguire@oracle.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 1/23/20 4:40 PM, Brendan Higgins wrote:
> Sorry for the late reply. I am still catching up from being on vacation.
> 
> On Mon, Jan 6, 2020 at 2:40 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>>
>> On Mon, Dec 16, 2019 at 02:05:49PM -0800, Brendan Higgins wrote:
>>> ## TL;DR
>>>
>>> This patchset adds a centralized executor to dispatch tests rather than
>>> relying on late_initcall to schedule each test suite separately along
>>> with a couple of new features that depend on it.
>>>
>>> ## What am I trying to do?
>>>
>>> Conceptually, I am trying to provide a mechanism by which test suites
>>> can be grouped together so that they can be reasoned about collectively.
>>> The last two patches in this series add features which depend on this:
>>>
>>> RFC 5/6 Prints out a test plan right before KUnit tests are run[1]; this
>>>         is valuable because it makes it possible for a test harness to
>>>         detect whether the number of tests run matches the number of
>>>         tests expected to be run, ensuring that no tests silently
>>>         failed.
>>>
>>> RFC 6/6 Add a new kernel command-line option which allows the user to
>>>         specify that the kernel poweroff, halt, or reboot after
>>>         completing all KUnit tests; this is very handy for running KUnit
>>>         tests on UML or a VM so that the UML/VM process exits cleanly
>>>         immediately after running all tests without needing a special
>>>         initramfs.
>>
>> The approach seems sensible to me given that it separates from a
>> semantics perspective kernel subsystem init work from *testing*, and
>> so we are sure we'd run the *test* stuff *after* all subsystem init
>> stuff.
> 
> Cool, I thought you would find this interesting.
> 
>> Dispatching, however is still immediate, and with a bit of work, this
>> dispatcher could be configurable to run at an arbirary time after boot.
>> If there are not immediate use cases for that though, then I suppose
>> this is not a requirement for the dispatcher. But since there exists
>> another modular test framework with its own dispatcher and it seems the
>> goal is to merge the work long term, this might preempt the requirement
>> to define how and when we can dispatch tests post boot.
>>
>> And, if we're going to do that, I can suggest that a data structure
>> instead of just a function init call be used to describe tests to be
>> placed into an ELF section. With my linker table work this would be
>> easy, I define section ranges for code describing only executable
>> routines, but it defines linker tables for when a component in the
>> kernel would define a data structure, part of which can be a callback.
>> Such data structure stuffed into an ELF section could allow dynamic
>> configuration of the dipsatching, even post boot.
> 
> The linker table work does sound interesting. Do you have a link?
> 
> I was thinking about dynamic dispatching, actually. I thought it would
> be handy to be able to build all tests into a single kernel and then
> run different tests on different invocations.
> 
> Also, for post boot dynamic dispatching, you should check out Alan's
> debugfs patches:
> 
> https://lore.kernel.org/linux-kselftest/CAFd5g46657gZ36PaP8Pi999hPPgBU2Kz94nrMspS-AzGwdBF+g@mail.gmail.com/T/#m210cadbeee267e5c5a9253d83b7b7ca723d1f871
> 
> They look pretty handy!
> 
>> I think this is a good stepping stone forward then, and to allow
>> dynamic configuration of the dispatcher could mean eventual extensions
>> to kunit's init stuff to stuff init calls into a data structure which
>> can then allow configuration of the dispatching. One benefit that the
>> linker table work *may* be able to help here with is that it allows
>> an easy way to create kunit specific ordering, at linker time.
>> There is also an example of addressing / generalizing dynamic / run time
>> changes of ordering, by using the x86 IOMMU initialization as an
>> example case. We don't have an easy way to do this today, but if kunit
>> could benefit from such framework, it'd be another use case for
>> the linker table work. That is, the ability to easilly allow
>> dynamically modifying run time ordering of code through ELF sections.
>>
>>> In addition, by dispatching tests from a single location, we can
>>> guarantee that all KUnit tests run after late_init is complete, which
>>> was a concern during the initial KUnit patchset review (this has not
>>> been a problem in practice, but resolving with certainty is nevertheless
>>> desirable).
>>
>> Indeed, the concern is just a real semantics limitations. With the tests
>> *always* running after all subsystem init stuff, we know we'd have a
>> real full kernel ready.
> 
> Yep.
> 
>> It does beg the question if this means kunit is happy to not be a tool
>> to test pre basic setup stuff (terminology used in init.c, meaning prior
>> to running all init levels). I suspect this is the case.
> 
> Not sure. I still haven't seen any cases where this is necessary, so I
> am not super worried about it. Regardless, I don't think this patchset
> really changes anything in that regard, we are moving from late_init
> to after late_init, so it isn't that big of a change for most use
> cases.
> 
> Please share if you can think of some things that need to be tested in
> early init.

I don't have a specific need for this right now.  I had not thought about
how the current kunit implementation forces all kunit tests to run at a
specific initcall level before reading this email thread.

I can see the value of being able to have some tests run at different
initcall levels to verify what functionality is available and working
at different points in the boot sequence.

But more important than early initcall levels, I do not want the
framework to prevent using or testing code and data that are marked
as '__init'.  So it is important to retain a way to invoke the tests
while __init code and data are available, if there is also a change
to generally invoke the tests later.

-Frank

> 
>>> Other use cases for this exist, but the above features should provide an
>>> idea of the value that this could provide.
>>>
>>> ## What work remains to be done?
>>>
>>> These patches were based on patches in our non-upstream branch[2], so we
>>> have a pretty good idea that they are useable as presented;
>>> nevertheless, some of the changes done in this patchset could
>>> *definitely* use some review by subsystem experts (linker scripts, init,
>>> etc), and will likely change a lot after getting feedback.
>>>
>>> The biggest thing that I know will require additional attention is
>>> integrating this patchset with the KUnit module support patchset[3]. I
>>> have not even attempted to build these patches on top of the module
>>> support patches as I would like to get people's initial thoughts first
>>> (especially Alan's :-) ). I think that making these patches work with
>>> module support should be fairly straight forward, nevertheless.
>>
>> Modules just have their own sections too. That's all. So it'd be a
>> matter of extending the linker script for modules too. But a module's
>> init is different than the core kernel's for vmlinux.
> 
> Truth. It seems as though Alan has already fixed this for me, however.
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
