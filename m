Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED737EDAD
	for <lists+linux-um@lfdr.de>; Fri,  2 Aug 2019 09:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLd2ppNTw8rG24HPXNR7p9kqrUfTOYHNzRfXFsP61b4=; b=PeY32yGXG6pntw
	Jwv41LGC0zdcVb7nlmYNWxy1NSf3FTznw5UXN5og8ugAY9AmT4Oit4t1SIf3U9lzW4A5n1IdWKQaO
	551A/Q2G73YtgRGSOsvKM4IZf7z0gD2o5S/4GoPlPj2b0ID2O+DoOzuDGo4HcpSlcuPZW7B0dORRO
	0MK7OyFNjW7VTsUkm8zsP/sI6rluY2gh1CD1OLUSUAqZnmDizqrgrj0QSk60Wc4kr02GEgNWv70O4
	i8eGNU6SpasEIivfy0Bl3dDWo6CAVqsePB5ubftZZeNT+RQWHWTPzvbFLaNxe4wMU6lDuogaphRZt
	v9fcsEtJn9+qzXkbcl8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htS96-0007UN-Kf; Fri, 02 Aug 2019 07:38:36 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htS92-0007OR-Dp
 for linux-um@lists.infradead.org; Fri, 02 Aug 2019 07:38:34 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1htS8S-0005sF-R0; Fri, 02 Aug 2019 09:37:56 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
References: <20190716175021.9CA412173C@mail.kernel.org>
 <CAFd5g453vXeSUCZenCk_CzJ-8a1ym9RaPo0NVF=FujF9ac-5Ag@mail.gmail.com>
 <20190718175024.C3EC421019@mail.kernel.org>
 <CAFd5g46a7C1+R6ZcE_SkqaYqgrH5Rx3M=X7orFyaMgFLDbeYYA@mail.gmail.com>
 <20190719000834.GA3228@google.com>
 <20190722200347.261D3218C9@mail.kernel.org>
 <CAFd5g45hdCxEavSxirr0un_uLzo5Z-J4gHRA06qjzcQrTzmjVg@mail.gmail.com>
 <20190722235411.06C1320840@mail.kernel.org>
 <20190724073125.xyzfywctrcvg6fmh@pathway.suse.cz>
 <CAFd5g47v3Mr4GEGOjqyYy9Jwwm+ow7ypbu9j88rxEN06QCzdxQ@mail.gmail.com>
 <20190726083148.d4gf57w2nt5k7t6n@pathway.suse.cz>
 <CAFd5g46iAhDZ5C_chi7oYLVOkwcoj6+0nw+kPWuXhqWwWKd9jA@mail.gmail.com>
Date: Fri, 02 Aug 2019 09:37:53 +0200
In-Reply-To: <CAFd5g46iAhDZ5C_chi7oYLVOkwcoj6+0nw+kPWuXhqWwWKd9jA@mail.gmail.com>
 (Brendan Higgins's message of "Thu, 1 Aug 2019 11:55:20 -0700")
Message-ID: <871ry4yq3y.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_003832_691971_26A5EE6A 
X-CRM114-Status: GOOD (  28.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Timothy Bird <Tim.Bird@sony.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Kevin Hilman <khilman@baylibre.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Petr Mladek <pmladek@suse.com>, linux-kbuild <linux-kbuild@vger.kernel.org>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 2019-08-01, Brendan Higgins <brendanhiggins@google.com> wrote:
> On Fri, Jul 26, 2019 at 1:31 AM Petr Mladek <pmladek@suse.com> wrote:
>> On Thu 2019-07-25 13:21:12, Brendan Higgins wrote:
>>> On Wed, Jul 24, 2019 at 12:31 AM Petr Mladek <pmladek@suse.com> wrote:
>>>> On Mon 2019-07-22 16:54:10, Stephen Boyd wrote:
>>>>> Quoting Brendan Higgins (2019-07-22 15:30:49)
>>>>>> On Mon, Jul 22, 2019 at 1:03 PM Stephen Boyd <sboyd@kernel.org> wrote:
>>>>>>> What's the calling context of the assertions and expectations? I
>>>>>>> still don't like the fact that string stream needs to allocate
>>>>>>> buffers and throw them into a list somewhere because the calling
>>>>>>> context matters there.
>>>>>>
>>>>>> The calling context is the same as before, which is anywhere.
>>>>>
>>>>> Ok. That's concerning then.
>>>>>
>>>>>>> I'd prefer we just wrote directly to the console/log via printk
>>>>>>> instead. That way things are simple because we use the existing
>>>>>>> buffering path of printk, but maybe there's some benefit to the
>>>>>>> string stream that I don't see? Right now it looks like it
>>>>>>> builds a string and then dumps it to printk so I'm sort of lost
>>>>>>> what the benefit is over just writing directly with printk.
>>>>>>
>>>>>> It's just buffering it so the whole string gets printed
>>>>>> uninterrupted.  If we were to print out piecemeal to printk,
>>>>>> couldn't we have another call to printk come in causing it to
>>>>>> garble the KUnit message we are in the middle of printing?
>>>>>
>>>>> Yes, printing piecemeal by calling printk many times could lead to
>>>>> interleaving of messages if something else comes in such as an
>>>>> interrupt printing something. Printk has some support to hold
>>>>> "records" but I'm not sure how that would work here because
>>>>> KERN_CONT talks about only being used early on in boot code. I
>>>>> haven't looked at printk in detail though so maybe I'm all wrong
>>>>> and KERN_CONT just works?
>>>>
>>>> KERN_CONT does not guarantee that the message will get printed
>>>> together. The pieces get interleaved with messages printed in
>>>> parallel.
>>>>
>>>> Note that KERN_CONT was originally really meant to be used only
>>>> during boot. It was later used more widely and ended in the best
>>>> effort category.
>>>>
>>>> There were several attempts to make it more reliable. But it was
>>>> always either too complicated or error prone or both.
>>>>
>>>> You need to use your own buffering if you rely want perfect output.
>>>> The question is if it is really worth the complexity. Also note
>>>> that any buffering reduces the chance that the messages will reach
>>>> the console.
>>>
>>> Seems like that settles it then. Thanks!
>>>
>>>> BTW: There is a work in progress on a lockless printk ring buffer.
>>>> It will make printk() more secure regarding deadlocks. But it might
>>>> make transparent handling of continuous lines even more tricky.
>>>>
>>>> I guess that local buffering, before calling printk(), will be
>>>> even more important then. Well, it might really force us to create
>>>> an API for it.
>>>
>>> Cool! Can you CC me on that discussion?
>>
>> Adding John Oggness into CC.
>>
>> John, please CC Brendan Higgins on the patchsets eventually switching
>> printk() into the lockless buffer. The test framework is going to
>> do its own buffering to keep the related messages together.
>>
>> The lockless ringbuffer might make handling of related (partial)
>> lines worse or better. It might justify KUnit's extra buffering
>> or it might allow to get rid of it.
>
> Thanks for CC'ing me on the printk ringbuffer thread. It looks like it
> actually probably won't affect my needs for KUnit logging. The biggest
> reason I need some sort of buffering system is to be able to compose
> messages piece meal into a single message that will be printed out to
> the user as a single message with no messages from other printk
> callers printed out in the middle of mine.

printk has this same requirement for its CONT messages. You can read
about how I propose to implement that here[0], using a separate prb
ringbuffer for buffered storage until all the pieces are available.

It is not my goal that multiple subsystems start making use of the prb
ringbuffer. However, its features can be attractive if you don't want to
worry about multiple writers/readers or context (including NMI). Before
writing "yet another ringbuffer" [1] it might be worth the effort to at
least see if one of the existing implementations can work (or be
extended to work) for you.

John Ogness

[0] https://lkml.kernel.org/r/87imt2bl0k.fsf@linutronix.de
[1] https://lwn.net/Articles/789603/

> The prb does look interesting; however, it appears that to get the
> semantics that I need, I would have to put my entire message in a
> single data block and would consequently need to know the size of my
> message a priori, which is problematic. Consequently, it seems as
> though I will probably need to compose my entire message using my own
> buffering system.
>
>>>> Note that stroring the messages into the printk log is basically
>>>> safe in any context. It uses temporary per-CPU buffers for
>>>> recursive messages and in NMI. The only problem is panic() when
>>>> some CPU gets stuck with the lock taken. This will get solved by
>>>> the lockless ringbuffer. Also the temporary buffers will not be
>>>> necessary any longer.
>>>
>>> Sure, I think Stephen's concern is all the supporting code that is
>>> involved. Not printk specifically. It just means a lot more of KUnit
>>> has to be IRQ safe.
>>
>> I see.
>>
>> BTW: I wonder if KUnit could reuse the existing seq_buf
>> implementation for buffering messages.
>>
>> I am sorry if it has already been proposed and rejected for some
>> reason. I might have missed it. Feel free to just point me to
>> same older mail.
>
> Yeah, we discussed it briefly here:
>
> https://lkml.org/lkml/2019/5/17/497
>
> Looks like I forgot to include my reasoning in the commit text, sorry
> about that.
>
>>>> Much bigger problems are with consoles. There are many of them. It
>>>> means a lot of code and more locks involved, including scheduler
>>>> locks. Note that console lock is a semaphore.
>>>
>>> That shouldn't affect us though, right? As long as we continue to
>>> use the printk interface?
>>
>> I guess that it should not affect KUnit.
>>
>> The only problem might be if the testing framework calls printk()
>> inside scheduler or console code. And only when the tested code
>> uses the same locks that will be used by the called printk().
>
> Yeah, well printk will not be our only problem in those instances.
>
>> To be honest I do not fully understand KUnit design. I am not
>> completely sure how the tested code is isolated from the running
>> system. Namely, I do not know if the tested code shares
>> the same locks with the system running the test.
>
> No worries, I don't expect printk to be the hang up in those cases. It
> sounds like KUnit has a long way to evolve before printk is going to
> be a limitation.
>
> Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
