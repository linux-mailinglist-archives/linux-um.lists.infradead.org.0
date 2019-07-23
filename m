Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE0870E2A
	for <lists+linux-um@lfdr.de>; Tue, 23 Jul 2019 02:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8j9HoCPJ+MCDgJq5anO0Of0HDXjiIX9oNSSyMh6uXWI=; b=fQV9obONtEmvPb
	8fax5/W/M+u6sHRLYGiuJLte710LV+hCsqkNOQZ+4yXcvwV9hJdxKiQQbGfytAzmt6FcB3NqMIzb6
	wQKyWKKAleGGtnKrV6cNw/NNwVXhh5MNO/YUDK24oAlCsj9eLY+l0X8x1JajV03dL+Zv5BkchuE96
	Wdf3FoREUlcwgrIo1XFf9eF9R9LTiil0DvDBdpLdk8m5DjkC+6s8/uBtUnuhlVGkhqh8CK0kVXmpK
	YvyKlmba8oE4gZyfKxaRjTWTLzAsxxfm95DQ/fF6Oi0dacX/70zdhZHMwXJRw9NcDuEEo5c7uLENz
	8f0Dtz++MIstuaUn5PFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpijM-0005BI-4j; Tue, 23 Jul 2019 00:32:36 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpijI-0005Ag-OM
 for linux-um@lists.infradead.org; Tue, 23 Jul 2019 00:32:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so18446364pgv.10
 for <linux-um@lists.infradead.org>; Mon, 22 Jul 2019 17:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vuvO2vdByXr9tZ4gIUtMWHJb47SWaOs3dPS9JirOd8A=;
 b=Zl9GjnPN0xA37eJPDX7MMY5U59qIMhaH0oHaFDaQC5kc56db6tSm1k92X8vD9olKQv
 OxaZTUgiRL7QcEtCdRCTPLyfWDQhRyOXO/nSFoU6NA2mvCQcdvEZ0WClLYkrEms7tZo/
 izrTbbctUhAN1VB9J0Q7y+pRVPXmJcR9HPRnbtizx6ihsgsakAq/rgha1JCGMsgY2RiH
 PJ1yTUdO8H1C8vedwH16edJ6CisD7/Lc2QkWysnWnCsUClX9aMwTBEN+KsRdmKr24KRk
 pqLlahy+9/ouBHzutT221O182aQu5jXOaH8IgOSQxKXVRStd+1V11liNjuOCoEoDcsOL
 bt9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vuvO2vdByXr9tZ4gIUtMWHJb47SWaOs3dPS9JirOd8A=;
 b=KALgyMISaf3whrHPvGHw3CArasnPjBVFGgc1pJmdvj5txuKZbhfwwK6bCqH1D2BmuV
 euXMfSxetlSNPP8muKF4FoeIk1QSKuduGJDkMKxONrUnOcZhYDKyc2PhHZhD/+i+6eVT
 kvzalNhUTSxugmYsPOyq/Rxh4EscE9f1+T5IJwjK9HoSu7HUkLYZAmvjk5sGdgt5sLKQ
 d+sCKnf2RNhHDChGs3dG2nXQVc9MReo8pWiSi3mRvIQbU7zUTIFGjs60skHn1pc4CK7X
 HwLVH7JBQ33NCd37bY3ku9rZbU/QmT/Huf6JuZGfMliMJmDTOCwzo+jpk0XHfv+9GOcY
 cCJA==
X-Gm-Message-State: APjAAAVaEa4FhKSJjwsfIsXqkLOgVvE0C3c7N20DTo3Y12TtY6kBkJxT
 CCcMY73pKyr/5bJVa6kD7/JLsJlJIziJX/6DuedDFw==
X-Google-Smtp-Source: APXvYqxh+VUvsGh5iLsrxoHbLc3jsob++DVglc3Oa483B1QKCacTy9ml6NDURiDh9l6nBgWwR+AIwjhgcbpU33mL7Pc=
X-Received: by 2002:aa7:9191:: with SMTP id x17mr2893489pfa.23.1563841951086; 
 Mon, 22 Jul 2019 17:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
 <CAFd5g44_axVHNMBzxSURQB_-R+Rif7cZcg7PyZ_SS+5hcy5jZA@mail.gmail.com>
 <20190716175021.9CA412173C@mail.kernel.org>
 <CAFd5g453vXeSUCZenCk_CzJ-8a1ym9RaPo0NVF=FujF9ac-5Ag@mail.gmail.com>
 <20190718175024.C3EC421019@mail.kernel.org>
 <CAFd5g46a7C1+R6ZcE_SkqaYqgrH5Rx3M=X7orFyaMgFLDbeYYA@mail.gmail.com>
 <20190719000834.GA3228@google.com> <20190722200347.261D3218C9@mail.kernel.org>
 <CAFd5g45hdCxEavSxirr0un_uLzo5Z-J4gHRA06qjzcQrTzmjVg@mail.gmail.com>
 <20190722235411.06C1320840@mail.kernel.org>
In-Reply-To: <20190722235411.06C1320840@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 22 Jul 2019 17:32:19 -0700
Message-ID: <CAFd5g46h9XSRfA1H4kZR7u0Eh_F-fgPjoLPzqzLgFTXxeb105g@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_173232_823488_D58ED6A5 
X-CRM114-Status: GOOD (  30.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 4:54 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-07-22 15:30:49)
> > On Mon, Jul 22, 2019 at 1:03 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > >
> > > What's the calling context of the assertions and expectations? I still
> > > don't like the fact that string stream needs to allocate buffers and
> > > throw them into a list somewhere because the calling context matters
> > > there.
> >
> > The calling context is the same as before, which is anywhere.
>
> Ok. That's concerning then.

Yeah. Luis suggested just not supporting the IRQ context until later.
See my later comment.

> > > I'd prefer we just wrote directly to the console/log via printk
> > > instead. That way things are simple because we use the existing
> > > buffering path of printk, but maybe there's some benefit to the string
> > > stream that I don't see? Right now it looks like it builds a string and
> > > then dumps it to printk so I'm sort of lost what the benefit is over
> > > just writing directly with printk.
> >
> > It's just buffering it so the whole string gets printed uninterrupted.
> > If we were to print out piecemeal to printk, couldn't we have another
> > call to printk come in causing it to garble the KUnit message we are
> > in the middle of printing?
>
> Yes, printing piecemeal by calling printk many times could lead to
> interleaving of messages if something else comes in such as an interrupt
> printing something. Printk has some support to hold "records" but I'm
> not sure how that would work here because KERN_CONT talks about only
> being used early on in boot code. I haven't looked at printk in detail
> though so maybe I'm all wrong and KERN_CONT just works?

It says KERN_CONT is not SMP safe, and it isn't supposed to contain
newlines, so it doesn't sound like it does any buffering for you. I
looked at it a while ago and those comments agreed with my
understanding of the code, but I could be wrong.

> Can printk be called once with whatever is in the struct?

Unfortunately, no. That is part of what I was trying to illustrate
with this patch. Most of the messages are deterministic, but
hardcoding all the possible message types would lead to a massive
number of hard coded strings. However, even this would break down for
the mocking formatters. All the different ways a function can be
called are just too complex to encode into a finite set of hard coded
fmt strings.

> Otherwise if
> this is about making printk into a structured log then maybe printk
> isn't the proper solution anyway. Maybe a dev interface should be used
> instead that can handle starting and stopping tests (via ioctl) in
> addition to reading test results, records, etc. with read() and a
> clearing of the records. Then the seqfile API works naturally. All of

Ehhh...I wouldn't mind providing such an interface, but I would really
like to be able to provide the results without having to depend on a
userland doing something to get test results. That has always been a
pretty important goal for me.

> this is a bit premature, but it looks like you're going down the path of
> making something akin to ftrace that stores binary formatted
> assertion/expectation records in a lockless ring buffer that then
> formats those records when the user asks for them.

Like you said, I think it is a bit premature to go that far.

In anycase, I don't see a way to get rid of string_stream, without
significantly sacrificing usability.

> I can imagine someone wanting to write unit tests that check conditions
> from a simulated hardirq context via irq works (a driver mock
> framework?), so this doesn't seem far off.

Yep, I actually presented the first pieces of that in the RFC v1 that
I linked to you earlier in this discussion. I have a more fleshed out
example here:

https://kunit.googlesource.com/linux/+/e10484ad2f9fc7926412ec84739fe105981b4771/drivers/i2c/busses/i2c-aspeed-test.c

I actually already have some people at Google playing around with it.
So yeah, not far off at all! However, in these cases we are not
actually running in the IRQ context (despite the fact that we are
testing IRQ code) because we provide a fake IRQ chip, or some other
fake mechanism that triggers the IRQ. Still, I could see someone
wanting to do it in a non-fake-IRQ context.

Luis' suggestion was just to hold off on the IRQ safe stuff at the
outset, since that is going to require a lot more effort to review. I
know that's kind of the future coding argument again, but maybe the
answer will be to just restrict what features an IRQ user has access
to (maybe just really simple expectations, for example). I mean, we
will probably have to restrict what they are allowed to use anyway.

Luis, do you have any ideas?

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
