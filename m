Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79830B9FFD
	for <lists+linux-um@lfdr.de>; Sun, 22 Sep 2019 01:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLM6YRZ2OL0Kc8YUDgMJ6oln7qCGY12tHUxvd6taBiE=; b=tpyS/7MU9Eq9do
	Cf8EBudiBa4M+8DOi5KwbJexi8r/WTxntTn+UYlzelpeCylzEUPvfCinB6EOqP7X4/Yfy7s1X1Yob
	bCRvlVWpFzj/SrfygYYnTLHhhd9tMNo/Mc6v3WrXf526lQEZn7RbFMg5KTiemQB5VQN2WTchJn/IZ
	hbIZtDILiX0hOa1+id28ZUwMsvZ2ChPbn4nU6gVjPOThHIgcG9oVb/HC3MloTuEA/9qa5jrqx5qSS
	d7hFY5LeG9/wdWvKqxl1eT5lbQStNxdvGaSKlJmG2pIHGahTQqlfTJZhPBRhQS+prlyiyNbSKJ1v8
	0S5s4vTHw8yib5JcJ8Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBpFd-00008y-Fo; Sat, 21 Sep 2019 23:57:17 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBpFY-00008C-Om
 for linux-um@lists.infradead.org; Sat, 21 Sep 2019 23:57:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id y10so3547952plp.2
 for <linux-um@lists.infradead.org>; Sat, 21 Sep 2019 16:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wFxsbjbphTDZBrxMQjimUMRPZiRt8Y19uxPrqCS0lwQ=;
 b=MAsMpA6ZLXzYAVKtPqxG82w0tUPyrA+uHcfCg7hc6qz7k2hbHdGcq7NT0cdLfq+g4s
 7wJu9IXWfNwyX+jChXxRk7MZEjoTHVWGTmhZrPgZM9b6czBdu8xrwQbv0MVcYkLgSAHJ
 fZ4t4PW2w08ZoejFtpBuQ5SN9ZMibWDz/ogKDRRouvCvprvEEvPFvmE1MaLqf77+3mnY
 IDL9FXzq+aVEbo80UAYIqaTTSYKVv7/pNYmuaUd3aNPHjzTNeRhZ7/307J0baxF6gV34
 9KNcCdn2NfqfXfuf+vw352zlFfYx0gnV2qxcCihFpdFNi8EoPClMSqlIzk5cc+i+KnTy
 y+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wFxsbjbphTDZBrxMQjimUMRPZiRt8Y19uxPrqCS0lwQ=;
 b=m8bue09pgkOpzPrPkLM9JWzDGsCvJvEIwTGGjAcX17ZOXULqVZZZWKIEuWdbrwya94
 xzHgkNRnMJlVcZSNfUbSMh4WDS6K4dYaH5KZA9551oBFECBTUPB/8AufqA501bnVT2KN
 1Af++LGXSLgQVirYADBJ4aAv9Ezh5fw16ItVho6BfloJwgFm6GzEoYNrCUi7XoJ1QBEL
 /VpPbhauCgXZ7R/DJm5oT6XGaKj6KusE8zxvp6X+yHqbZmiyWljDBnAoo/S91Bi2w0jC
 de3pRgVfjFam76yJupxHktnc0QQKoAqOeHrFM3zCsF7MqbJRKn8Jfru9/uL4nm6MveXU
 qmFQ==
X-Gm-Message-State: APjAAAUyRBiXbXIT26XphKmLBNopW6c2IdYZ49VilQ1uxn+RFMV2Iwb6
 TEQMx2i7uv6AlScAwMCSJtE=
X-Google-Smtp-Source: APXvYqxZrC0dTyXVuTHwZCXAij6lsQvtDMduKtZPdPjNo1YcMZltAZwoqb9eh/Q+QIkJ8mwqsSGXeQ==
X-Received: by 2002:a17:902:aa03:: with SMTP id
 be3mr25194879plb.84.1569110229927; 
 Sat, 21 Sep 2019 16:57:09 -0700 (PDT)
Received: from [192.168.43.210] (mobile-166-177-248-155.mycingular.net.
 [166.177.248.155])
 by smtp.gmail.com with ESMTPSA id c64sm9618895pfc.19.2019.09.21.16.57.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Sep 2019 16:57:09 -0700 (PDT)
Subject: Re: [RFC v3 18/19] of: unittest: split out a couple of test cases
 from unittest
To: Rob Herring <robh@kernel.org>, Brendan Higgins <brendanhiggins@google.com>
References: <20181128193636.254378-1-brendanhiggins@google.com>
 <20181128193636.254378-19-brendanhiggins@google.com>
 <990bfc7d-dc5e-d8d3-c151-9b321ff2ac10@gmail.com>
 <CAFd5g45tOGgf_sKGYRC=fpnTBKGaG=8frbQdgZ3ZTkQFyTfP5A@mail.gmail.com>
 <88fe0546-7850-5bb4-9673-b1aef2dccb3e@gmail.com>
 <CAFd5g444f-FBq4x3U7BL-EY+bFxP0rsJhJ14=mjOi89PhMkURg@mail.gmail.com>
 <0e311e88-c4d4-e98d-1720-53a04bd526fc@gmail.com>
 <CAFd5g44NTZoSAJPMvXP2xvJgn7m5QoV-KJu2AMrr67+eL+CKrQ@mail.gmail.com>
 <d9f7e000-4cac-a35a-3ff9-60130e12ebea@gmail.com>
 <72cd1c5b-6f68-73ad-c8fd-f3a3268a0529@gmail.com>
 <CAFd5g46UU9wk+F6A5wnKYYtYKmmtv__SaY8eg6v-T9xUjsoxhA@mail.gmail.com>
 <bb5bcd3d-a09a-cfbe-c7fa-16e5eb75b0e4@gmail.com>
 <CAFd5g448xQLOJwVYU5Zmu4+OPWuboiWZPhBvK6au8Pgm5B9haQ@mail.gmail.com>
 <CAL_JsqLxPZ2TyKv3M=a9r4_Vh+aOQRXgETwbBvf7xsBVisZN9w@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <cba984c8-3c2a-91c1-610d-04e35e2172be@gmail.com>
Date: Sat, 21 Sep 2019 16:57:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLxPZ2TyKv3M=a9r4_Vh+aOQRXgETwbBvf7xsBVisZN9w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_165712_847942_4529F745 
X-CRM114-Status: GOOD (  41.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
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
Cc: brakmo@fb.com, dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kselftest@vger.kernel.org, shuah@kernel.org,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Richard Weinberger <richard@nod.at>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Joel Stanley <joel@jms.id.au>, Jeff Dike <jdike@addtoit.com>, "Bird,
 Timothy" <Tim.Bird@sony.com>, Kees Cook <keescook@google.com>,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Dan Williams <dan.j.williams@intel.com>,
 kunit-dev@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Ellerman <mpe@ellerman.id.au>, Joe Perches <joe@perches.com>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 9/20/19 9:57 AM, Rob Herring wrote:
> Following up from LPC discussions...
> 
> On Thu, Mar 21, 2019 at 8:30 PM Brendan Higgins
> <brendanhiggins@google.com> wrote:
>>
>> On Thu, Mar 21, 2019 at 5:22 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>>
>>> On 2/27/19 7:52 PM, Brendan Higgins wrote:
>>>> On Wed, Feb 20, 2019 at 12:45 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>>>>
>>>>> On 2/18/19 2:25 PM, Frank Rowand wrote:
>>>>>> On 2/15/19 2:56 AM, Brendan Higgins wrote:
>>>>>>> On Thu, Feb 14, 2019 at 6:05 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>>>>>>>
>>>>>>>> On 2/14/19 4:56 PM, Brendan Higgins wrote:
>>>>>>>>> On Thu, Feb 14, 2019 at 3:57 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>>>>>>>>>
>>>>>>>>>> On 12/5/18 3:54 PM, Brendan Higgins wrote:
>>>>>>>>>>> On Tue, Dec 4, 2018 at 2:58 AM Frank Rowand <frowand.list@gmail.com> wrote:
>> < snip >
>>>>>
>>>>> In the base version, the order of execution of the test code requires
>>>>> bouncing back and forth between the test functions and the coding of
>>>>> of_test_find_node_by_name_cases[].
>>>>
>>>> You shouldn't need to bounce back and forth because the order in which
>>>> the tests run shouldn't matter.
>>>
>>> If one can't guarantee total independence of all of the tests, with no
>>> side effects, then yes.  But that is not my world.  To make that
>>> guarantee, I would need to be able to run just a single test in an
>>> entire test run.
>>>
>>> I actually want to make side effects possible.  Whether from other
>>> tests or from live kernel code that is accessing the live devicetree.
>>> Any extra stress makes me happier.
>>>
>>> I forget the exact term that has been tossed around, but to me the
>>> devicetree unittests are more like system validation, release tests,
>>> acceptance tests, and stress tests.  Not unit tests in the philosophy
>>> of KUnit.
>>
>> Ah, I understand. I thought that they were actually trying to be unit
>> tests; that pretty much voids this discussion then. Integration tests
>> and end to end tests are valuable as long as that is actually what you
>> are trying to do.
> 
> There's a mixture. There's a whole bunch of tests that are basically
> just testing various DT APIs and use a static DT. Those are all unit
> tests IMO.
> 
> Then there's all the overlay tests Frank has added. I guess some of
> those are not unittests in the strictest sense. Regardless, if we're
> reporting test results, we should align our reporting with what will
> become the rest of the kernel.

The last time I talked to you at lpc, I was still resisting moving the
DT unittests to the kunit framework.  But I think I am on board now.

Brendan agreed to accept a kunit patch from me (when I write it) to enable
the DT unittests to report # of tests run and # of tests passed/failed,
as is currently the case.

Brendan also agreed that null initialization and clean up would be ok
for the DT unittests.  But that he does not want that model to be
frequently used.  (You mention this idea later in the email I am
replying to.)


> 
>>> I do see the value of pure unit tests, and there are rare times that
>>> my devicetree use case might be better served by that approach.  But
>>> if so, it is very easy for me to add a simple pure test when debugging.
>>> My general use case does not map onto this model.
>>
>> Why do you think it is rare that you would actually want unit tests?
> 
> I don't. We should have a unittest (or multiple) for every single DT
> API call and that should be a requirement to add any new APIs.
> 
>> I mean, if you don't get much code churn, then maybe it's not going to
>> provide you a ton of value to immediately go and write a bunch of unit
>> tests right now, but I can't think of a single time where it's hurt.
>> Unit tests, from my experience, are usually the easiest tests to
>> maintain, and the most helpful when I am developing.
>>
>> Maybe I need to understand your use case better.
>>
>>>
>>>
>>>>>
>>>>> In the frank version the order of execution of the test code is obvious.
>>>>
>>>> So I know we were arguing before over whether order *does* matter in
>>>> some of the other test cases (none in the example that you or I
>>>> posted), but wouldn't it be better if the order of execution didn't
>>>> matter? If you don't allow a user to depend on the execution of test
>>>> cases, then arguably these test case dependencies would never form and
>>>> the order wouldn't matter.
>>>
>>> Reality intrudes.  Order does matter.
>>>
>>>
>>>>>
>>>>> It is possible that a test function could be left out of
>>>>> of_test_find_node_by_name_cases[], in error.  This will result in a compile
>>>>> warning (I think warning instead of error, but I have not verified that)
>>>>> so it might be caught or it might be overlooked.
>>>>>
>>>>> The base version is 265 lines.  The frank version is 208 lines, 57 lines
>>>>> less.  Less is better.
>>>>
>>>> I agree that less is better, but there are different kinds of less to
>>>> consider. I prefer less logic in a function to fewer lines overall.
>>>>
>>>> It seems we are in agreement that test cases should be small and
>>>> simple, so I won't dwell on that point any longer. I agree that the
>>>
>>> As a general guide for simple unit tests, sure.
>>>
>>> For my case, no.  Reality intrudes.
>>>
>>> KUnit has a nice architectural view of what a unit test should be.
>>
>> Cool, I am glad you think so! That actually means a lot to me. I was
>> afraid I wasn't conveying the idea properly and that was the root of
>> this debate.
>>
>>>
>>> The existing devicetree "unittests" are not such unit tests.  They
>>> simply share the same name.
>>>
>>> The devicetree unittests do not fit into a clean:
>>>   - initialize
>>>   - do one test
>>>   - clean up
>>> model.
> 
> Initialize being static and clean-up being NULL still fits into this model.
> 
>>> Trying to force them into that model will not work.  The initialize
>>> is not a simple, easy to decompose thing.  And trying to decompose
>>> it can actually make the code more complex and messier.
>>>
>>> Clean up can NOT occur, because part of my test validation is looking
>>> at the state of the device tree after the tests complete, viewed
>>> through the /proc/device-tree/ interface.
> 
> Well, that's pretty ugly to have the test in the kernel and the
> validation in userspace. I can see why you do, but that seems like a
> problem in how those tests are defined and run.

Yes it is ugly.  Any good suggestions on a better solution?


> 
>> Again, if they are not actually intended to be unit tests, then I
>> think that is fine.
>>
>> < snip >
>>
>>>> Compare the test cases for adding of_test_dynamic_basic,
>>>> of_test_dynamic_add_existing_property,
>>>> of_test_dynamic_modify_existing_property, and
>>>> of_test_dynamic_modify_non_existent_property to the originals. My
>>>> version is much longer overall, but I think is still much easier to
>>>> understand. I can say from when I was trying to split this up in the
>>>> first place, it was not obvious what properties were expected to be
>>>> populated as a precondition for a given test case (except the first
>>>> one of course). Whereas, in my version, it is immediately obvious what
>>>> the preconditions are for a test case. I think you can apply this same
>>>> logic to the examples you provided, in frank version, I don't
>>>> immediately know if one test cases does something that is a
>>>> precondition for another test case.
>>>
>>> Yes, that is a real problem in the current code, but easily fixed
>>> with comments.
>>
>> I think it is best when you don't need comments, but in this case, I
>> think I have to agree with you.
>>
>>>
>>>
>>>> My version also makes it easier to run a test case entirely by itself
>>>> which is really valuable for debugging purposes. A common thing that
>>>> happens when you have lots of unit tests is something breaks and lots
>>>> of tests fail. If the test cases are good, there should be just a
>>>> couple (ideally one) test cases that directly assert the violated
>>>> property; those are the test cases you actually want to focus on, the
>>>> rest are noise for the purposes of that breakage. In my version, it is
>>>> much easier to turn off the test cases that you don't care about and
>>>> then focus in on the ones that exercise the violated property.
>>>>
>>>> Now I know that, hermeticity especially, but other features as well
>>>> (test suite summary, error on unused test case function, etc) are not
>>>> actually in KUnit as it is under consideration here. Maybe it would be
>>>> best to save these last two patches (18/19, and 19/19) until I have
>>>> these other features checked in and reconsider them then?
>>>
>>> Thanks for leaving 18/19 and 19/19 off in v4.
>>
>> Sure, no problem. It was pretty clear that it was a waste of both of
>> our times to continue discussing those at this juncture. :-)
>>
>> Do you still want me to try to convert the DT not-exactly-unittest to
>> KUnit? I would kind of prefer (I don't feel *super* strongly about the
>> matter) we don't call it that since I was intending for it to be the
>> flagship initial example, but I certainly don't mind trying to clean
>> this patch up to get it up to snuff. It's really just a question of
>> whether it is worth it to you.
> 
> I still want to see this happen at least for the parts that are
> clearly unit tests. And for the parts that aren't, Frank should move
> them out of of/unittest.c.
> 
> So how to move forward? Convert tests one by one? Take a first swag at
> what are unit tests and aren't?

By the end of lpc I decided that I would go ahead and take a shot at
modifying the DT unittests to use the kunit framework.  So I am
volunteering me to do the work.  This has an additional benefit of
testing whether someone like me can successfully follow the
documentation.

It looked like there was a good chance that kunit would get accepted in
the merge window, so I was going to do the DT unittest work based on
-rc1.  I see that Brenden has submitted a couple more versions after
the merge window opened.  I think that kunit will be stable enough
after -rc1 (even if not yet merged by Linus) that I will be comfortable
doing the work on top of the latest patch series at the close of the
merge window.


> 
> Brendan, do you still have DT unittest patches that work with current kunit?

I never saw a version of the DT unittest patches that worked.  I was watching
and waiting before doing a serious review of the DT unittest portion of the
kunit patch series.

-Frank

> 
> Rob
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
