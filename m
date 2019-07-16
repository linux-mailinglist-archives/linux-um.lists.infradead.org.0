Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F156AF3A
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 20:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVltge9WWJhaCe+vG6nF+4j3WzYx+U+ChuM/IOuPGTY=; b=pUHMWsMboXAiIo
	NsJ2njL/8ug/pNuSDICbRwGYdLYTZtCT4HepmPTMLeKG1J1pO+DYXGfkh7Pxp9aZy6c38982LRIiu
	RUonT4q+ZQKDe2lUA8FtVTlXndqAOLbYrtyFc8VlpZ+VvZn/9zFxStcDlJ73iK5HGyOYQKVL23nl7
	oWCJf9BbIx7xmRP5jFU93M48BCg3UCstwPfXvvfnxtrgmtRARfPoZLl5w6Qd8OzQP780zjDq5y0R0
	klcrZ7ZL63GnnJKBHY31cjWehp+h+g8FM1txdRzOc30xgxNLnELpFAMGIfbNifR14SMEutxj1HtWd
	KwPkSPVfJ3DleYAdMGeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnSYj-0003TI-M6; Tue, 16 Jul 2019 18:52:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnSYg-0003Sm-O9
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 18:52:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id s1so3570724pgr.2
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 11:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9Sc1kdmcO2G1QWedlTtE0HWQNxV/ni4EPFOSD4mvak8=;
 b=ZCyVikwrrrr8sEcxgSZmPCownGxV/MYXa9j9+YIXCmXlRbEQ5VjfXvY6EcfEFY0pDg
 6dohrkhT2K+GARGPKad8XT+z84UGHhs+1Xe2Gr3yLe4RfxNa6azK8YLYA8FUJ+8Rv6+s
 uvS7hFRU5185+p2+YN1LU/ofoZnJQq4EfMM/ZPnOobUk19gIGry+csN0JORk+r8tTrbi
 oUdOxHt9FJy5A/SvDK2g7lqyOVIMdSPer+OI1R5OSvoQyetli09vGD0rchW8OJF1qn6Z
 Z0XcmPsHMRy9jdficyjdT0pE9Mk6Fp36dHk3laDmzAh/MRn5oNKkT6OgTaYUqdocn093
 FUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9Sc1kdmcO2G1QWedlTtE0HWQNxV/ni4EPFOSD4mvak8=;
 b=dne5AgrECEZdsAdiWG9qzh7S8fu2yg1+GKFQAqdRDSyrMEiIcXxZfNMzG4V5umZdEC
 vhYreRLaqddb414lI5CKd/AtOUJRnd4CVB4JgtZBlXmv6hlaTFtr4OlS2lB60xMHrl9R
 lES5zdKuGzdgC6uUEvXdTg1Ae/8hD4eRljquGPOoUDCGOuiu+TSHd68LXr25E52iJg4B
 AAk2FUPRAcvHXImMbsWZ6LSr0etCg07yQXwHPki3aKpiq/bmcw74aKeTxSVAOHDOeQSQ
 GV4yxTh9t0QoIRsdudKRtWs1RnFUShQrc1vdI1qHrJP7aswVtFTmtwR0+x1A1eFEyxUI
 9yDg==
X-Gm-Message-State: APjAAAXFOcF3biB/2EQDrNaJIxvj2Md1wgK20YbuevKysUB5ikQKPxxR
 EovUxYctH3SrTqRMI4t5wlhVLnuSAD117H1ACocmmg==
X-Google-Smtp-Source: APXvYqyvfY7UpJRH7AXfo8+3L9F6UTsOiqoCvfNJ3LqUN5j48+NPSYN6SjLKREysI2CCnCLUFfoeygqKsabLc+vk6aw=
X-Received: by 2002:a63:205f:: with SMTP id r31mr35929294pgm.159.1563303133100; 
 Tue, 16 Jul 2019 11:52:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-5-brendanhiggins@google.com>
 <20190715221554.8417320665@mail.kernel.org>
 <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
 <CAFd5g44_axVHNMBzxSURQB_-R+Rif7cZcg7PyZ_SS+5hcy5jZA@mail.gmail.com>
 <20190716175021.9CA412173C@mail.kernel.org>
In-Reply-To: <20190716175021.9CA412173C@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 16 Jul 2019 11:52:01 -0700
Message-ID: <CAFd5g453vXeSUCZenCk_CzJ-8a1ym9RaPo0NVF=FujF9ac-5Ag@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_115214_812761_747EE5FC 
X-CRM114-Status: GOOD (  36.61  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, Jul 16, 2019 at 10:50 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-07-16 01:37:34)
> > On Tue, Jul 16, 2019 at 12:57 AM Brendan Higgins
> > <brendanhiggins@google.com> wrote:
> > >
> > > A `struct kunit_stream` is usually associated with a message that is
> > > being built up over time like maybe an expectation; it is meant to
> > > capture the idea that we might want to send some information out to
> > > the user pertaining to some thing 'X', but we aren't sure that we
> > > actually want to send it until 'X' is complete, but do to the nature
> > > of 'X' it is easier to start constructing the message before 'X' is
> > > complete.
> > >
> > > Consider a complicated expectation, there might be multiple conditions
> > > that satisfy it and multiple conditions which could make it fail. As
> > > we start exploring the input to the expectation we gain information
> > > that we might want to share back with the user if the expectation were
> > > to fail and we might get that information before we are actually sure
> > > that the expectation does indeed fail.
> > >
> > > When we first step into the expectation we immediately know the
> > > function name, file name, and line number where we are called and
> > > would want to put that information into any message we would send to
> > > the user about this expectation. Next, we might want to check a
> > > property of the input, it may or may not be enough information on its
> > > own for the expectation to fail, but we want to share the result of
> > > the property check with the user regardless, BUT only if the
> > > expectation as a whole fails.
> > >
> > > Hence, we can have multiple `struct kunit_stream`s associated with a
> > > `struct kunit` active at any given time.
>
> I'm coming back to this now after reading the rest of the patches that
> deal with assertions and expectations. It looks like the string stream
> is there to hold a few different pieces of information:
>
>  - Line Number
>  - File Name
>  - Function Name
>
> The above items could be stored in a structure on the stack that then
> gets printed and formatted when the expectation or assertion fails. That
> would make the whole string stream structure and code unnecessary.

Most of the expectations and assertions in this patchset are fairly
simple, and what you are describing would probably work. However, I
have some expectations I plan on adding in later patchsets that make
much more complicated checks.

> The only hypothetical case where this can't be done is a complicated
> assertion or expectation that does more than one check and can't be
> written as a function that dumps out what went wrong. Is this a real
> problem? Maybe such an assertion should just open code that logic so we
> don't have to build up a string for all the other simple cases.

I have some expectations in follow up patchsets for which I created a
set of composable matchers for matching structures and function calls
that by their nature cannot be written as a single function. The
matcher thing is a bit speculative, I know, but for any kind of
function call matching, you need to store a record of functions you
are expecting to have called and then each one needs to have a set of
expectations defined by the user; I don't think there is a way to do
that that doesn't involve having multiple separate functions each
having some information useful to constructing the message.

I know the code in question isn't in this patchset; the function
matching code was in one of the earlier versions of the RFC, but I
dropped it to make this patchset smaller and more manageable. So I get
it if you would like me to drop it and add it back in when I try to
get the function and structure matching stuff in, but I would really
prefer to keep it as is if you don't care too much.

> It seems far simpler to get rid of the string stream API and just have a
> struct for this.
>
>         struct kunit_fail_msg {
>                 const char *line;
>                 const char *file;
>                 const char *func;
>                 const char *msg;
>         };
>
> Then you can have the assertion macros create this on the stack (with
> another macro?).
>
>         #define DEFINE_KUNIT_FAIL_MSG(name, _msg) \
>                 struct kunit_fail_msg name = { \
>                         .line =  __LINE__, \
>                         .file = __FILE__, \
>                         .func = __func__, \
>                         .msg = _msg, \
>                 }
>
> Note: I don't know if the __LINE__ above will use the macro location, so
> this probably needs another wrapper to put the right line number there.

No, that should work. It picks up where the macro ends up being
finally evaluated.

> I don't want to derail this whole series on this topic, but it seems
> like a bunch of code is there to construct this same set of information
> over and over again into a buffer a little bit at a time and then throw
> it away when nothing fails just because we may want to support the case
> where we have some unstructured data to inform the user about.

Yeah, that's fair. I think there are a number of improvements to be
made with how the expectations are defined other than that, but I was
hoping I could do that after this patchset is merged. I just figured
with the kinds of things I would like to do, it would lead to a whole
new round of discussion.

In either case, I think I would still like to use the `struct
kunit_stream` as part of the interface to share the failure message
with the test case runner code in test.c, at least eventually, so that
I only have to have one way to receive data from expectations, but I
think I can do that and still do what you suggest by just constructing
the kunit_stream at the end of expectations where it is feasible.

All in all I agree with what you are saying, but I would rather do it
as a follow up possibly once we have some more code on the table. I
could just see this opening up a whole new can of worms where we
debate about exactly how expectations and assertions work for another
several months, only to rip it all out shortly there after. I know
that's how these things go, but that's my preference.

I can do what you suggest if you feel strongly about it, but I would
prefer to hold off until later. It's your call.

> Why not build in the structured part into the framework (i.e. the struct
> above) so that it's always there and then add the string building part
> later when we have to?

See above comments.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
