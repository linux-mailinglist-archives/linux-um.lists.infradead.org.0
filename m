Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9775D12DB1
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 14:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rK3IYkhXsT3WlaP+YeHegzuzYMocdB0gvG5bnZ2JWOY=; b=RB733bg121U8t4
	tA9pKO98YONLsN42w4AOdqOJHn9hPyD//N8Zt3AUqdlJBwpknV1MLokaZ8yd6o0ziLYiJEJevwJMx
	//JNUwWBDCpqXiZxKHaVtGV3zJEHUFgTObTBSIi3Z5cWHG4KjqJW572UsQTp6W3aSC1CYoKiZ+2vK
	A/l1eK4WYqoZTI71ovX9sAqhYUwoGWB7N0ooPNDj6XBTdFUpMt25V+M68WGL2x/n9vlNRmpM0IoFk
	+ik1uQPbYmCZItzyK28gYzNbdXpmzTP0wTDcgVoAmtGYOwzBnd3zAv6QrjvUOIYsEYi+zeeAD/yS7
	Ic1q/++lwA81+SxpBTIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXNx-0005tS-AA; Fri, 03 May 2019 12:33:53 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXNt-0005t1-UR
 for linux-um@lists.infradead.org; Fri, 03 May 2019 12:33:51 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=[172.20.29.49])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hMXNQ-0007dH-Hy; Fri, 03 May 2019 06:33:22 -0600
To: Brendan Higgins <brendanhiggins@google.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-9-brendanhiggins@google.com>
 <0a605543-477a-1854-eb35-6e586606889b@deltatee.com>
 <CAFd5g47hxAd=+72xbPJbWPdZCXRXmtLpsGhUh=zc7MSwfcaGJQ@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <b2379db6-634a-001e-6f67-37427d8a2666@deltatee.com>
Date: Fri, 3 May 2019 06:33:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAFd5g47hxAd=+72xbPJbWPdZCXRXmtLpsGhUh=zc7MSwfcaGJQ@mail.gmail.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 173.228.226.134
X-SA-Exim-Rcpt-To: wfg@linux.intel.com, rostedt@goodmis.org,
 rientjes@google.com, richard@nod.at, pmladek@suse.com, mpe@ellerman.id.au,
 knut.omang@oracle.com, khilman@baylibre.com, julia.lawall@lip6.fr,
 joel@jms.id.au, jdike@addtoit.com, daniel@ffwll.ch, dan.j.williams@intel.com,
 dan.carpenter@oracle.com, amir73il@gmail.com, Tim.Bird@sony.com,
 Alexander.Levin@microsoft.com, linux-um@lists.infradead.org,
 linux-nvdimm@lists.01.org, linux-kselftest@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org,
 kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, shuah@kernel.org, sboyd@kernel.org,
 robh@kernel.org, mcgrof@kernel.org, kieran.bingham@ideasonboard.com,
 keescook@google.com, gregkh@linuxfoundation.org, frowand.list@gmail.com,
 brendanhiggins@google.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 08/17] kunit: test: add support for test abort
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_053350_034043_29F73AAA 
X-CRM114-Status: GOOD (  31.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 shuah@kernel.org, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 2019-05-03 12:48 a.m., Brendan Higgins wrote:
> On Thu, May 2, 2019 at 8:15 PM Logan Gunthorpe <logang@deltatee.com> wrote:
>> On 2019-05-01 5:01 p.m., Brendan Higgins wrote:
>>> +/*
>>> + * struct kunit_try_catch - provides a generic way to run code which might fail.
>>> + * @context: used to pass user data to the try and catch functions.
>>> + *
>>> + * kunit_try_catch provides a generic, architecture independent way to execute
>>> + * an arbitrary function of type kunit_try_catch_func_t which may bail out by
>>> + * calling kunit_try_catch_throw(). If kunit_try_catch_throw() is called, @try
>>> + * is stopped at the site of invocation and @catch is catch is called.
>>
>> I found some of the C++ comparisons in this series a bit distasteful but
>> wasn't going to say anything until I saw the try catch.... But looking
>> into the implementation it's just a thread that can exit early which
>> seems fine to me. Just a poor choice of name I guess...
> 
> Guilty as charged (I have a long history with C++, sorry). Would you
> prefer I changed the name? I just figured that try-catch is a commonly
> understood pattern that describes exactly what I am doing.

It is a commonly understood pattern, but I don't think it's what the
code is doing. Try-catch cleans up an entire stack and allows each level
of the stack to apply local cleanup. This implementation simply exits a
thread and has none of that complexity. To me, it seems like an odd
abstraction here as it's really just a test runner that can exit early
(though I haven't seen the follow-up UML implementation).

I would prefer to see this cleaned up such that the abstraction matches
more what's going on but I don't feel that strongly about it so I'll
leave it up to you to figure out what's best unless other reviewers have
stronger opinions.

>>
>> [snip]
>>
>>> +static void __noreturn kunit_abort(struct kunit *test)
>>> +{
>>> +     kunit_set_death_test(test, true);
>>> +
>>> +     kunit_try_catch_throw(&test->try_catch);
>>> +
>>> +     /*
>>> +      * Throw could not abort from test.
>>> +      *
>>> +      * XXX: we should never reach this line! As kunit_try_catch_throw is
>>> +      * marked __noreturn.
>>> +      */
>>> +     WARN_ONCE(true, "Throw could not abort from test!\n");
>>> +}
>>> +
>>>  int kunit_init_test(struct kunit *test, const char *name)
>>>  {
>>>       spin_lock_init(&test->lock);
>>> @@ -77,6 +103,7 @@ int kunit_init_test(struct kunit *test, const char *name)
>>>       test->name = name;
>>>       test->vprintk = kunit_vprintk;
>>>       test->fail = kunit_fail;
>>> +     test->abort = kunit_abort;
>>
>> There are a number of these function pointers which seem to be pointless
>> to me as you only ever set them to one function. Just call the function
>> directly. As it is, it is an unnecessary indirection for someone reading
>> the code. If and when you have multiple implementations of the function
>> then add the pointer. Don't assume you're going to need it later on and
>> add all this maintenance burden if you never use it..
> 
> Ah, yes, Frank (and probably others) previously asked me to remove
> unnecessary method pointers; I removed all the totally unused ones. As
> for these, I don't use them in this patchset, but I use them in my
> patchsets that will follow up this one. These in particular are
> present so that they can be mocked out for testing.

Adding indirection and function pointers solely for the purpose of
mocking out while testing doesn't sit well with me and I don't think it
should be a pattern that's encouraged. Adding extra complexity like this
to a design to make it unit-testable doesn't seem like something that
makes sense in kernel code. Especially given that indirect calls are
more expensive in the age of spectre.

Also, mocking these particular functions seems like it's an artifact of
how you've designed the try/catch abstraction. If the abstraction was
more around an abort-able test runner then it doesn't make sense to need
to mock out the abort/fail functions as you will be testing overly
generic features of something that don't seem necessary to the
implementation.

>>
>> [snip]
>>
>>> +void kunit_generic_try_catch_init(struct kunit_try_catch *try_catch)
>>> +{
>>> +     try_catch->run = kunit_generic_run_try_catch;
>>> +     try_catch->throw = kunit_generic_throw;
>>> +}
>>
>> Same here. There's only one implementation of try_catch and I can't
>> really see any sensible justification for another implementation. Even
>> if there is, add the indirection when the second implementation is
>> added. This isn't C++ and we don't need to make everything a "method".
> 
> These methods are for a UML specific implementation in a follow up
> patchset, which is needed for some features like crash recovery, death
> tests, and removes dependence on kthreads.
> 
> I know this probably sounds like premature complexity. Arguably it is
> in hindsight, but I wrote those features before I pulled out these
> interfaces (they were actually both originally in this patchset, but I
> dropped them to make this patchset easier to review). I can remove
> these methods and add them back in when I actually use them in the
> follow up patchsets if you prefer.

Yes, remove them now and add them back when you use them in follow-up
patches. If reviewers find problems with the follow-up patches or have a
better suggestion on how to do what ever it is you are doing, then you
just have this unnecessary code and there's wasted developer time and
review bandwidth that will need to be spent cleaning it up.

Thanks,

Logan

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
