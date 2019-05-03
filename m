Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C51127FD
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 08:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6+2BpScqFO2/CcI0YwLP0KufmpCNS8c2w0CGNJfdxc=; b=G//oZk2Egqzz0t
	wyM+t5qf4OaijyXgwEsEQfpUAXM4wEUfTSRdfxzVVlPIQxf3BuB5Fv6ANyvr0+Ty9GF8jB/oOQkvf
	RZyFouw04eSWOSuAVvj7a4f5ECdvuypFrGVPTmnKktVek4VIxe1vL6q+Rbe4jAdoJyCDME/5RzDl2
	M6dru7hpaNoWc80r+GMwHx4ODKSeJ0WZwNnVaGu3foyuSZxu8JO/S/3V1WGDR65osnoiT5pfcp8Hh
	renMVM8P3pRXs8fr87Vm7mFYrMa29SBDI/JavGYqJP0CsSLjywVae6PyTj4SWNFhhdPWWvO+lJqE8
	9BtrxtFHIthkiuKA/AVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMS02-0000NN-A8; Fri, 03 May 2019 06:48:50 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMRzz-0000MQ-7o
 for linux-um@lists.infradead.org; Fri, 03 May 2019 06:48:48 +0000
Received: by mail-ot1-x342.google.com with SMTP id n15so4423878ota.1
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 23:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B/vgrL6mFJjbubEtdk9xy4dCVOTfDfNigFjtHMJz6Hg=;
 b=BWFlXcxdKPCg7HeydPM9nymqdJaKu5v0FhgYXNSsx2wC9FgZ6BWl9owIL4tp34RHzV
 0O2CI2x3Gf2dd6TLPVl+UCJIuR6ugbJgNiJ5ahKuIYIQ+IA6TXvM7s76WSfiT5u9UOjU
 BAmfjJWmXXmLvLfanifCHtnmcT9eQgxYIv2/nMEQ/h+Jh7SQ4Wq8KAXXS2vmQSRvUjv3
 lY5jQIBJ2XBRYHgExTQbP6djFMEjOYOf+5XNpdQj+/aplIkBZPZ/tX1ygb8a9ZyYzeEG
 YiV5A2XgkK4p5mdxg0WTkGqiAuXfNRl77gHQcoJRclt/bqm0TtNUGFDJL3udF8SKeGs/
 dUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B/vgrL6mFJjbubEtdk9xy4dCVOTfDfNigFjtHMJz6Hg=;
 b=Hg/pTFCh9No8ChgjNjw4F4z5T1hJdqEVYen1yi/qYyNGHlYQeFjc62R7l+qiTf5eKl
 aTAjz035zibA+8YbAdgZ0WU3P0sncRtMl/t/K6HrI0/+teoYW1BtwM9jVBZ5vz2eUzRf
 DUcmi3PQqccNao6HDv3OLUUJwakimCl34Vv7rgfdc0CElyPo1Ib2+EMywiOsUYKwEptg
 Ka1ttg8RPD/PAL4/xqZoUf96CfNbjKvPxMT2ew8Uw2lIMx9hCJsyFPbdWpNAISFXW4Jc
 bkA4Iaxr4TCzmIej+kj72kEPJLCQxkS5bNami3XCoPfejFMS79duxPIZF/mJmW7dZdiA
 5aVA==
X-Gm-Message-State: APjAAAV+c/vSzMmsKEq0JySavuFx3fnXDd2JGZIi/+NazGM6bQv0hFJz
 cVnGC2RwsXX0Oihs3DVBqIFr8VMmJCF8UhgETUmOMQ==
X-Google-Smtp-Source: APXvYqyPne+GcGg5xCp23Lwb83V334Sd3k9K4ces08vt/qj/xTxzgyMfUgwlwCqUT5AUGkcD/SfnjL8zKAwKDrfcpHY=
X-Received: by 2002:a9d:5cc3:: with SMTP id r3mr5382470oti.338.1556866121691; 
 Thu, 02 May 2019 23:48:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-9-brendanhiggins@google.com>
 <0a605543-477a-1854-eb35-6e586606889b@deltatee.com>
In-Reply-To: <0a605543-477a-1854-eb35-6e586606889b@deltatee.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 23:48:30 -0700
Message-ID: <CAFd5g47hxAd=+72xbPJbWPdZCXRXmtLpsGhUh=zc7MSwfcaGJQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/17] kunit: test: add support for test abort
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_234847_285294_B60F4656 
X-CRM114-Status: GOOD (  25.23  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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

On Thu, May 2, 2019 at 8:15 PM Logan Gunthorpe <logang@deltatee.com> wrote:
>
>
>
> On 2019-05-01 5:01 p.m., Brendan Higgins wrote:
> > +/*
> > + * struct kunit_try_catch - provides a generic way to run code which might fail.
> > + * @context: used to pass user data to the try and catch functions.
> > + *
> > + * kunit_try_catch provides a generic, architecture independent way to execute
> > + * an arbitrary function of type kunit_try_catch_func_t which may bail out by
> > + * calling kunit_try_catch_throw(). If kunit_try_catch_throw() is called, @try
> > + * is stopped at the site of invocation and @catch is catch is called.
>
> I found some of the C++ comparisons in this series a bit distasteful but
> wasn't going to say anything until I saw the try catch.... But looking
> into the implementation it's just a thread that can exit early which
> seems fine to me. Just a poor choice of name I guess...

Guilty as charged (I have a long history with C++, sorry). Would you
prefer I changed the name? I just figured that try-catch is a commonly
understood pattern that describes exactly what I am doing.

>
> [snip]
>
> > +static void __noreturn kunit_abort(struct kunit *test)
> > +{
> > +     kunit_set_death_test(test, true);
> > +
> > +     kunit_try_catch_throw(&test->try_catch);
> > +
> > +     /*
> > +      * Throw could not abort from test.
> > +      *
> > +      * XXX: we should never reach this line! As kunit_try_catch_throw is
> > +      * marked __noreturn.
> > +      */
> > +     WARN_ONCE(true, "Throw could not abort from test!\n");
> > +}
> > +
> >  int kunit_init_test(struct kunit *test, const char *name)
> >  {
> >       spin_lock_init(&test->lock);
> > @@ -77,6 +103,7 @@ int kunit_init_test(struct kunit *test, const char *name)
> >       test->name = name;
> >       test->vprintk = kunit_vprintk;
> >       test->fail = kunit_fail;
> > +     test->abort = kunit_abort;
>
> There are a number of these function pointers which seem to be pointless
> to me as you only ever set them to one function. Just call the function
> directly. As it is, it is an unnecessary indirection for someone reading
> the code. If and when you have multiple implementations of the function
> then add the pointer. Don't assume you're going to need it later on and
> add all this maintenance burden if you never use it..

Ah, yes, Frank (and probably others) previously asked me to remove
unnecessary method pointers; I removed all the totally unused ones. As
for these, I don't use them in this patchset, but I use them in my
patchsets that will follow up this one. These in particular are
present so that they can be mocked out for testing.

>
> [snip]
>
> > +void kunit_generic_try_catch_init(struct kunit_try_catch *try_catch)
> > +{
> > +     try_catch->run = kunit_generic_run_try_catch;
> > +     try_catch->throw = kunit_generic_throw;
> > +}
>
> Same here. There's only one implementation of try_catch and I can't
> really see any sensible justification for another implementation. Even
> if there is, add the indirection when the second implementation is
> added. This isn't C++ and we don't need to make everything a "method".

These methods are for a UML specific implementation in a follow up
patchset, which is needed for some features like crash recovery, death
tests, and removes dependence on kthreads.

I know this probably sounds like premature complexity. Arguably it is
in hindsight, but I wrote those features before I pulled out these
interfaces (they were actually both originally in this patchset, but I
dropped them to make this patchset easier to review). I can remove
these methods and add them back in when I actually use them in the
follow up patchsets if you prefer.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
