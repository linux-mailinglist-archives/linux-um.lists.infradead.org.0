Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572E51A44D
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 23:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A0TlfTvnvBGvWDJai3ZvRlD2hid5ifimFlh5BESPLUc=; b=EH03ndEhqZ9f15X5F+mtohyePW
	rIVhei2Y2LQs/++wDJsH9LqdB4Y0CJO9IOKzPW5vTxfnw7sCNj+AB63+Qwo2z7SG3h1KmsuiOldQC
	2xGKwb9yGEwzykVFuxlKn/WFBaEJRKXeOdx/pFnLaKRZZqH7jITR7FAlBPeOd5eATyQQ2UxNfjS1B
	1pxSHB8GWGyMYQnhmoFAD3GLaDAYIN1YYRFvaAvpEc3+/SpIVdpiCRHyRPJxDfwxs6oRVg1TAenaR
	iDS3GWNjkUc1d5jKlyLVxvbhO3XOgd/P9rMlx1+uv/p12s0C7ZVchaR3EAnhXJmHnwYpINJCh7Qk+
	4Gw11rMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPCi2-0006WB-MK; Fri, 10 May 2019 21:05:38 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPChz-0006UB-6R
 for linux-um@lists.infradead.org; Fri, 10 May 2019 21:05:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id g9so3371143plm.6
 for <linux-um@lists.infradead.org>; Fri, 10 May 2019 14:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=bKDY86DQ3W8jTrCX7JTAOvqhYJw5e29RxFbksE/Tm5E=;
 b=ClByEsCJDjCVHeIc+90ps1Fj8itwE3WgKR5kUdmpBCEn0XRD4+vae4F5yS9j6jFewt
 i8EIhmCz9GOc0J8MAK9oo5WNI87DbetO7EoWQmFkjrhZnKZ4hpEC46joMxGiml6HzJn6
 Esp4jJPn0ybvOdsTm9KytSGKplglomfRdTbNfugibupGksfwjDJ7B/5+zwOnz5GXhS+5
 OiBSN99TU65NMtcc0hINGCuApQDz95rvHRCELmdJpbWewZtUafw2OJhO1KjvbJxIOV2E
 o8/DjWywoSrMDvb6uZzjlHBmZJtTYDGx6bIzx/d3I26QP2DnWBbB6fy8tESDC+RQmIHs
 xfJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bKDY86DQ3W8jTrCX7JTAOvqhYJw5e29RxFbksE/Tm5E=;
 b=Pl/GVn/wnd9JwgICX2IAW+oFnsZg9K1kWIVDhA5CNgrZtuutK8q3FtcUbBlQiNPq6+
 EO0TJmwvvlyy7FwTbYqrOut1a8YrJD482cft6FH4XQdvU+TL6+b//G+ADeQn2WZmps55
 rKEnj0BvrKLj6xhYxT6lzAnQvqdWJxbZjmewkQxZ8VEhDadMg/zs1Z0YRJLJPszOvehb
 MF/XzII/+eWIje9SZ8Q+25IvxoZVUlFeQGG0U4rzG+FihPqTh3AgkmYhxNr977x0JPp1
 sMjQflwenTTEGK3PCbK7BbATwlDsv3KO8tAj9imKAA8xHFrh9eBdGG5iyLFL7Qmc/H4N
 koyw==
X-Gm-Message-State: APjAAAWRcZmixqALdquQWeOx+CdRozSqgb661AB9ac783/mxp/5EKoIa
 mMlDMHAJ7nr6s2u3JoHznUs=
X-Google-Smtp-Source: APXvYqywYvbG31SDd1wnXI23JEAmm1Kft3apAyHEzsebGAIN14xMmXaQg0pIdJvJogj74UqlweKbzg==
X-Received: by 2002:a17:902:2d:: with SMTP id 42mr15993810pla.34.1557522329358; 
 Fri, 10 May 2019 14:05:29 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id p2sm7613330pgd.63.2019.05.10.14.05.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 14:05:28 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Theodore Ts'o <tytso@mit.edu>, Greg KH <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 Tim.Bird@sony.com, amir73il@gmail.com, dan.carpenter@oracle.com,
 dan.j.williams@intel.com, daniel@ffwll.ch, jdike@addtoit.com,
 joel@jms.id.au, julia.lawall@lip6.fr, khilman@baylibre.com,
 knut.omang@oracle.com, logang@deltatee.com, mpe@ellerman.id.au,
 pmladek@suse.com, richard@nod.at, rientjes@google.com, rostedt@goodmis.org,
 wfg@linux.intel.com
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com>
 <a09a7e0e-9894-8c1a-34eb-fc482b1759d0@gmail.com>
 <20190509015856.GB7031@mit.edu>
 <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <78e4d46e-6212-9871-51d6-dd2126f39d45@gmail.com>
 <20190510104338.GB6889@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <86ea0fa1-8ce7-c299-3144-c57fc465c891@gmail.com>
Date: Fri, 10 May 2019 14:05:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510104338.GB6889@mit.edu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_140535_242670_B102602A 
X-CRM114-Status: GOOD (  26.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/10/19 3:43 AM, Theodore Ts'o wrote:
> On Thu, May 09, 2019 at 10:11:01PM -0700, Frank Rowand wrote:
>>>> You *can* run in-kernel test using modules; but there is no framework
>>>> for the in-kernel code found in the test modules, which means each of
>>>> the in-kernel code has to create their own in-kernel test
>>>> infrastructure.
>>
>> The kselftest in-kernel tests follow a common pattern.  As such, there
>> is a framework.
> 
> So we may have different definitions of "framework".  In my book, code
> reuse by "cut and paste" does not make a framework.  Could they be
> rewritten to *use* a framework, whether it be KTF or KUnit?  Sure!
> But they are not using a framework *today*.
> 
>> This next two paragraphs you ignored entirely in your reply:
>>
>>> Why create an entire new subsystem (KUnit) when you can add a header
>>> file (and .c code as appropriate) that outputs the proper TAP formatted
>>> results from kselftest kernel test modules?
> 
> And you keep ignoring my main observation, which is that spinning up a
> VM, letting systemd start, mounting a root file system, etc., is all
> unnecessary overhead which takes time.  This is important to me,
> because developer velocity is extremely important if you are doing
> test driven development.

No, I do not "keep ignoring my main observation".  You made that
observation in an email of Thu, 9 May 2019 09:35:51 -0400.  In my
reply to Tim's reply to your email, I wrote:

   "< massive snip >

   I'll reply in more detail to some other earlier messages in this thread
   later.

   This reply is an attempt to return to the intent of my original reply to
   patch 0 of this series."


I have not directly replied to any of your other emails that have made
that observation (I may have replied to other emails that were replies
to such an email of yours, but not in the context of the overhead).
After this email, my next reply will be my delayed response to your
original email about overhead.

And the "mommy, he hit me first" argument does not contribute to a
constructive conversation about a kernel patch submittal.


> Yes, you can manually unload a module, recompile the module, somehow
> get the module back into the VM (perhaps by using virtio-9p), and then
> reloading the module with the in-kernel test code, and the restart the
> test.  BUT: (a) even if it is faster, it requires a lot of manual
> steps, and would be very hard to automate, and (b) if the test code
> ever OOPS or triggers a lockdep warning, you will need to restart the
> VM, and so this involves all of the VM restart overhead, plus trying
> to automate determining when you actually do need to restart the VM
> versus unloading and reloading the module.   It's clunky.

I have mentioned before that the in-kernel kselftest tests can be
run in UML.  You simply select the configure options to build them
into the kernel instead of building them as modules.  Then build
a UML kernel and execute ("boot") the UML kernel.

This is exactly the same as for KUnit.  No more overhead.  No less
overhead.  No more steps.  No fewer steps.


> 
> Being able to do the equivalent of "make && make check" is a really
> big deal.  And "make check" needs to go fast.
> 
> You keep ignore this point, perhaps because you don't care about this
> issue?  Which is fine, and why we may just need to agree to disagree.

No, I agree that fast test execution is useful.


> 
> Cheers,
> 
> 						- Ted
> 
> P.S.  Running scripts is Turing-equivalent, so it's self-evident that
> *anything* you can do with other test frameworks you can somehow do in
> kselftests.  That argument doesn't impress me, and why I do consider
> it quite flippant.  (Heck, /bin/vi is Turing equivalent so we could
> use vi to as a kernel test framework.  Or we could use emacs.  Let's
> not.  :-)

I have not been talking about running scripts, other than to the extent
that _one of the ways_ the in-kernel kselftests can be invoked is via
a script that loads the test module.  The same exact in-kernel test can
instead be built into a UML kernel, as mentioned above.


> The question is whether it is the most best and most efficient way to
> do that testing.  And developer velocity is a really big part of my
> evaluation function when judging whether or a test framework is fit
> for that purpose.
> .
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
