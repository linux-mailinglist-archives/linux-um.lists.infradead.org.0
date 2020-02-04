Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383621522F5
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 00:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vddB/xBHgMlTwjEqb/mNVsMO8eSrW5p627tWYxAgonY=; b=h/y6G5K40qDVU+
	KCK1XGMhUQpjmQzE/bu8mWYNzNVeJS/zKSofQFzrzcAclsc6ki7tRvaEDIo8phLk/35nqdJaAR/v0
	8+XQKCT93CV6aQq1m3FbDdVXd4H3DMtVMoXd9WfzWNW4B888mCU7qQtM/ST0eFu330zDDcTNJ7pcp
	bBk2ZmlbhJNKct+QUdSw6UzI1c+24WAsd/39JSivXpv23yTmuJ3aqAB8ih7SBRAnyN8Ol97oeI0Ob
	eYxGWO6QQWnU9gJkjYNfhVEqOvAYdZVtnRbmiH3WGdWtCjgaTWXI/ADQZsdy/11y2gEWEr8JaAknY
	DwGqsp4HIBHr4m0hdcoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7RV-0003tf-NJ; Tue, 04 Feb 2020 23:17:17 +0000
Received: from mail-yw1-xc34.google.com ([2607:f8b0:4864:20::c34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7RT-0003t6-7W
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 23:17:16 +0000
Received: by mail-yw1-xc34.google.com with SMTP id l22so584800ywc.8
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 15:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YdkJ2HHqkFeV4MfBlikH3/s69MOb8K9EarZU9wY8Wfo=;
 b=GgU6iCvG42Zqnm59Ohy4IAYVurS/XyB11MQ7DZ5ABPgTHF/mRAAlXksAMQPXiptV5Z
 M+TyJvm0YNYFEtpYN1JyRmRobbIlvNOB6Q2hKnJCx8Jc6RQS9mceFuyj88XzV8w2eLYw
 XS2170EWXX9NHuVWUPGt3Rw5eZGYjLhscAM7ctNuyrygyqMBq9WQwOF6XViU3sCql/Tm
 ouRXrVlhOhaQTgmmILkApEOZmx4OebkacXZzk7A4IkyCSjSl1B1jSMO2SjWoSuPNHq2h
 68YCUBmZo0eYkJE6GmWStK4vAtFq/2DkkAXQllhtIBNw4KwS8fo+Ic/WZ32x3tyBRnEm
 Oihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YdkJ2HHqkFeV4MfBlikH3/s69MOb8K9EarZU9wY8Wfo=;
 b=aFPy4hswEWFbfrfaxtv1fNBniSmBzSt8/RpriU+hS+0ITUM09F4bBw8MhgB96SezAe
 bDiJHQ7//47kDjL8oHNt8arqyRt1ce7KzvobkenjOjiOOBVNYkzwDVsBINw/BrHbX/l1
 CggHaFp9SpondFqeA/fbDZJ0P9mnhdWj/YL3Ta/dkthcBzfZ+s4TPLtKBnPPSCWui7tq
 sOLwcJzqzVj1zTRFpcTfHKPoCKEPnetvVMsaWcDw6c9J+VY/5XQCwMeVdoG+yZzddc1Q
 VTodDMXOqCVZl46d4xGmD/4jEOB5ADu6f1AkteezV8gupG5Bz04Sjw8eyB1w+GaEUQB/
 zHag==
X-Gm-Message-State: APjAAAVP+rmZHNsCtf9BwRbuBaCf8zaGqXja4Y1MgYjFylmd2G0rQjwt
 QPxbmyZmRITewf15+BfKMP0=
X-Google-Smtp-Source: APXvYqwT9wwXLR/3DoaUcImGoKvAUaPC2hvqP+ba1hWptBKiDXitI2/2JMF0e416IAJbgP6bR07QSA==
X-Received: by 2002:a05:6902:725:: with SMTP id
 l5mr19608845ybt.91.1580858233993; 
 Tue, 04 Feb 2020 15:17:13 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id w128sm10582615ywf.72.2020.02.04.15.17.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Feb 2020 15:17:13 -0800 (PST)
Subject: Re: [PATCH v2 2/7] arch: um: add linker section for KUnit test suites
To: Brendan Higgins <brendanhiggins@google.com>
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-3-brendanhiggins@google.com>
 <e060bdfc-5cdb-fb62-48b0-cc54c7bc72ce@gmail.com>
 <CAFd5g46irbQ7j_DOY+bQPoo1TWjwvu6n9iyQ7abe9pfqydeMYg@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <1da1538d-2e4c-0ed0-5fae-6f9033230c46@gmail.com>
Date: Tue, 4 Feb 2020 17:17:12 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g46irbQ7j_DOY+bQPoo1TWjwvu6n9iyQ7abe9pfqydeMYg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_151715_273438_1A41B849 
X-CRM114-Status: GOOD (  32.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c34 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 2/4/20 4:30 PM, Brendan Higgins wrote:
> On Tue, Feb 4, 2020 at 1:59 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>
>> On 1/30/20 5:08 PM, Brendan Higgins wrote:
>>> Add a linker section to UML where KUnit can put references to its test
>>> suites. This patch is an early step in transitioning to dispatching all
>>> KUnit tests from a centralized executor rather than having each as its
>>> own separate late_initcall.
>>
>> All architectures please.
> 
> I *am* supporting all architectures with this patchset.
> 
> The first patch in this series adds support to all architectures
> except UML (admittedly I only tried x86 and ARM, 32 bit and 64 bit for

Right you are.  My mind did not span from patch 1 to patch 2. Apologies for
the noise.


> both, but I am pretty sure someone tried it for POWER and something
> else, so maybe I should try it with others before submission). A patch
> specific for UML, this patch, was needed because UML is a special
> snowflake and has a bunch of special linker scripts that don't make
> the change in vmlinux.lds.h (the previous patch) sufficient.
> 
>> The early versions of Kunit documented reliance on UML.  Discussion lead to
>> the conclusion that real architectures and real hardware would be supported.
> 
> I am *very* aware.
> 
> I would never intentionally break support for other architectures. I
> know it is very important to you, Alan, and others.
> 
>> This like this are what make me reluctant to move devicetree unittests to
>> KUnit.
> 
> Hopefully I can reassure you then:
> 
> With Alan as a regular contributor who cares very much about non-UML
> architectures, it would be very unlikely for me to accidentally break
> support for other architectures without us finding out before a
> release.
> 
> I also periodically test KUnit on linux-next on x86-64. I have gotten
> bugs for other architectures from Arnd Bergmann and one of the m86k
> maintainers who seems to play around with it as well.
> 
> So yeah, other people care about this too, and I would really not want
> to make any of them unhappy.

Thanks for the extra reassurance.


> 
>> Can you please add a section to the KUnit documentation that lists things
>> like the expectations, requirements, limitations, etc for a test case that
>> is run by KUnit?  Some examples that pop to mind from recent discussions
>> and my own experiences:
>>
>>   - Each test case is invoked after late_init is complete.
>>       + Exception: the possible value of being able to run a unit test
>>         at a specific runlevel has been expressed.  If an actual unit
>>         test can be shown to require running earlier, this restriction
>>         will be re-visited.
>>
>>   - Each test case must be idempotent.  Each test case may be called
>>     multiple times, and must generate the same result each time it
>>     is called.
>>       + Exception 1: a test case can be declared to not be idempotent
>>         [[ mechanism TBD ]], in which case KUnit will not call the
>>         test case a second time without the kernel rebooting.
>>       + Exception 2: hardware may not be deterministic, so a test that
>>         always passes or fails when run under UML may not always to
>>         so on real hardware.  <--- sentence copied from
>>         Documentation/dev-tools/kunit/usage.rst
>>           [[ This item and 1st exception do not exist yet, but will exist
>>           in some form if the proposed proc filesystem interface is
>>           added. ]]
>>
>>   - KUnit provides a helpful wrapper to simplify building a UML kernel
>>     containing the KUnit test cases, booting the UML kernel, and
>>     formatting the output from the test cases.  This wrapper MUST NOT
>>     be required to run the test cases or to determine a test result.
>>     The formatting may provide additional analysis and improve
>>     readability of a test result.
>>
>>   - .... There is more that belongs here, but I'm getting side tracked
>>     here, when I'm trying to instead convert devicetree unittests to
>>     KUnit and want to get back to that.
> 
> Sure, I think that's a great start! Thanks for that. I hope you don't
> mind if I copy and paste some of it.

Please do.  And no need to credit me.


> It kind of sounds like you are talking about more of a requirements
> doc than the design doc I was imagining in my reply to you on the
> cover letter, which is fine. The documentation is primarily for people
> other than me, so whatever you and others think is useful, I will do.
> 

I wasn't really sure what to label it as.  My inspiration was based
a little bit on reading through the Linux 5.5 KUnit source and
documentation, and trying to understand the expectations of the
KUnit framework and what the test cases have to either obey or
can expect.

I think there is a lot of history that you know, but is only visible
to test implementors if they read through the past couple of years
email threads.

-Frank

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
