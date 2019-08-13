Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AB48AEFE
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 07:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quuXyjIEDzkgzAc/ZQrVxWTcBazXZIjIaBKDqhNavf4=; b=VHUcVndt6lyOVg
	rV+VVJsWck/jGy62iDbapHkY8+vvCVYspYCmJEzLh04O/o6le9+ut3ihv9ZsKdNAPa0RNB+M1nehO
	nvYJ6lh9xo80v/Ap69PwK19Y2F1Cc8BJ8BQRqk+d690JpCkEj2MLxYgnzzGeZSkplGqcTePKi31Fe
	Bet8m1rGwHwl0lpXZd68eDUD6zhyDQdxGXjGLK30t/KWD6GwcSCyUvGyDcgdNtyjy4ChXWeoWaOCJ
	7j2IGXtG+GZuVuAszsfneZA69cnBNGMpelB4MlPr9KJ4pCv99E5dlKCijcE4oNRcGlrM/D38kZvx5
	PWNsMYA1LTHn45k/1JZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxPnA-0005Sb-IY; Tue, 13 Aug 2019 05:56:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxPn6-0005S1-NA
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 05:56:18 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA787206C2;
 Tue, 13 Aug 2019 05:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565675775;
 bh=+1m8X1VBJfcfXMxrxr6nTIQlUnVg1cZSUB+Teb53ec4=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=EqLfngCp9rJG/7bhoEPl5NUB9MdmhGlTmUmGoBpVFyaOg/GPk1mA0rcZzq60Wfure
 Kws2pOKryAzgeVKRCPbKt04zRJdCsk27haqddkgygF0TBApKlaPreQfDt9QdDMWRIv
 cjQntDvtzPxrcztEj0KRg1dIjU+K5aGLXe3rSAyg=
MIME-Version: 1.0
In-Reply-To: <CAFd5g44XyQi-oprPcdgx-EPboQYaHY6Ocz8Te6NX2SxV=mVhQA@mail.gmail.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-10-brendanhiggins@google.com>
 <20190813042159.46814206C2@mail.kernel.org>
 <CAFd5g44XyQi-oprPcdgx-EPboQYaHY6Ocz8Te6NX2SxV=mVhQA@mail.gmail.com>
Subject: Re: [PATCH v12 09/18] kunit: test: add support for test abort
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
User-Agent: alot/0.8.1
Date: Mon, 12 Aug 2019 22:56:14 -0700
Message-Id: <20190813055615.CA787206C2@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_225616_801878_FE959332 
X-CRM114-Status: GOOD (  33.96  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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

Quoting Brendan Higgins (2019-08-12 21:57:55)
> On Mon, Aug 12, 2019 at 9:22 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Brendan Higgins (2019-08-12 11:24:12)
> > > diff --git a/include/kunit/test.h b/include/kunit/test.h
> > > index 2625bcfeb19ac..93381f841e09f 100644
> > > --- a/include/kunit/test.h
> > > +++ b/include/kunit/test.h
> > > @@ -176,6 +178,11 @@ struct kunit {
> > >          */
> > >         bool success; /* Read only after test_case finishes! */
> > >         spinlock_t lock; /* Gaurds all mutable test state. */
> > > +       /*
> > > +        * death_test may be both set and unset from multiple threads in a test
> > > +        * case.
> > > +        */
> > > +       bool death_test; /* Protected by lock. */
> > >         /*
> > >          * Because resources is a list that may be updated multiple times (with
> > >          * new resources) from any thread associated with a test case, we must
> > > @@ -184,6 +191,13 @@ struct kunit {
> > >         struct list_head resources; /* Protected by lock. */
> > >  };
> > >
> > > +static inline void kunit_set_death_test(struct kunit *test, bool death_test)
> > > +{
> > > +       spin_lock(&test->lock);
> > > +       test->death_test = death_test;
> > > +       spin_unlock(&test->lock);
> > > +}
> >
> > These getters and setters are using spinlocks again. It doesn't make any
> > sense. It probably needs a rework like was done for the other bool
> > member, success.
> 
> No, this is intentional. death_test can transition from false to true
> and then back to false within the same test. Maybe that deserves a
> comment?

Yes. How does it transition from true to false again?

Either way, having a spinlock around a read/write API doesn't make sense
because it just makes sure that two writes don't overlap, but otherwise
does nothing to keep things synchronized. For example a set to true
after a set to false when the two calls to set true or false aren't
synchronized means they can happen in any order. So I don't see how it
needs a spinlock. The lock needs to be one level higher.

> 
> > > +
> > >  void kunit_init_test(struct kunit *test, const char *name);
> > >
> > >  int kunit_run_tests(struct kunit_suite *suite);
> > > diff --git a/include/kunit/try-catch.h b/include/kunit/try-catch.h
> > > new file mode 100644
> > > index 0000000000000..8a414a9af0b64
> > > --- /dev/null
> > > +++ b/include/kunit/try-catch.h
[...]
> > > +
> > > +/*
> > > + * struct kunit_try_catch - provides a generic way to run code which might fail.
> > > + * @context: used to pass user data to the try and catch functions.
> > > + *
> > > + * kunit_try_catch provides a generic, architecture independent way to execute
> > > + * an arbitrary function of type kunit_try_catch_func_t which may bail out by
> > > + * calling kunit_try_catch_throw(). If kunit_try_catch_throw() is called, @try
> > > + * is stopped at the site of invocation and @catch is catch is called.
> > > + *
> > > + * struct kunit_try_catch provides a generic interface for the functionality
> > > + * needed to implement kunit->abort() which in turn is needed for implementing
> > > + * assertions. Assertions allow stating a precondition for a test simplifying
> > > + * how test cases are written and presented.
> > > + *
> > > + * Assertions are like expectations, except they abort (call
> > > + * kunit_try_catch_throw()) when the specified condition is not met. This is
> > > + * useful when you look at a test case as a logical statement about some piece
> > > + * of code, where assertions are the premises for the test case, and the
> > > + * conclusion is a set of predicates, rather expectations, that must all be
> > > + * true. If your premises are violated, it does not makes sense to continue.
> > > + */
> > > +struct kunit_try_catch {
> > > +       /* private: internal use only. */
> > > +       struct kunit *test;
> > > +       struct completion *try_completion;
> > > +       int try_result;
> > > +       kunit_try_catch_func_t try;
> > > +       kunit_try_catch_func_t catch;
> >
> > Can these other variables be documented in the kernel doc? And should
> > context be marked as 'public'?
> 
> Sure, I can document them.
> 
> But I don't think context should be public; it should only be accessed
> by kunit_try_catch_* functions. context should only be populated by
> *_init, and will be passed into *try and *catch when they are called
> internally.

Ok. Then I guess just document them all but keep them all marked as
private.

> 
> > > + */
> > > +void kunit_generic_try_catch_init(struct kunit_try_catch *try_catch);
> > > +
> > > +#endif /* _KUNIT_TRY_CATCH_H */
> > > diff --git a/kunit/test.c b/kunit/test.c
> > > index e5080a2c6b29c..995cb53fe4ee9 100644
> > > --- a/kunit/test.c
> > > +++ b/kunit/test.c
> > > @@ -158,6 +171,21 @@ static void kunit_fail(struct kunit *test, struct kunit_assert *assert)
> > >         kunit_print_string_stream(test, stream);
> > >  }
> > >
> > > +void __noreturn kunit_abort(struct kunit *test)
> > > +{
> > > +       kunit_set_death_test(test, true);
> > > +
> > > +       kunit_try_catch_throw(&test->try_catch);
> > > +
> > > +       /*
> > > +        * Throw could not abort from test.
> > > +        *
> > > +        * XXX: we should never reach this line! As kunit_try_catch_throw is
> > > +        * marked __noreturn.
> > > +        */
> > > +       WARN_ONCE(true, "Throw could not abort from test!\n");
> >
> > Should this just be a BUG_ON? It's supposedly impossible.
> 
> It should be impossible; it will only reach this line if there is a
> bug in kunit_try_catch_throw. The reason I didn't use BUG_ON was
> because I previously got yelled at for having BUG_ON in this code
> path.
> 
> Nevertheless, I think BUG_ON is more correct, so if you will stand by
> it, then that's what I will do.

Yeah BUG_ON is appropriate here and self documenting so please use it.

> 
> > > +               return;
> > > +       }
> > > +
> > > +       if (kunit_get_death_test(test)) {
> > > +               /*
> > > +                * EXPECTED DEATH: kunit_run_case_internal encountered
> > > +                * anticipated fatal error. Everything should be in a safe
> > > +                * state.
> > > +                */
> > > +               kunit_run_case_cleanup(test, suite);
> > > +       } else {
> > > +               /*
> > > +                * UNEXPECTED DEATH: kunit_run_case_internal encountered an
> > > +                * unanticipated fatal error. We have no idea what the state of
> > > +                * the test case is in.
> > > +                */
> > > +               kunit_handle_test_crash(test, suite, test_case);
> > > +               kunit_set_failure(test);
> >
> > Like was done here.
> 
> Sorry, like what?

Just saying this has braces for the if-else.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
