Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6870B8AC18
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 02:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBMjm8g5R6xfgpiz7clRYO5DLQdjInY25fOMtht0aWU=; b=jySAiQViNtqxsP
	azqguI8mPMPS/Ct3k4I/OBjQkFgx/BRi/jekP2As+gS+MtrdheShDO2vzn3+urnv+XcS/UIBidaBf
	MyCW1VPuQxixtICWz5/WTY1k4MFEYU+kuIqmnjTPRQFJCEUrs2okeuQhHAGLkwSv5DtM4aSOvBElL
	CveXFNfxPU4Q4HsOdaa3rv1WfJeSXL+hmfV6ht2EGgVT7QRX8YiKchAhZoE+Wjre5omhDrrBb/Ry7
	16SvUUhhXNH9J8KrPAS2Z5ieCCgSu6sJrRMl/zwoZTt1+CyAKWRSD5iFWhtVYt2z8U+G/8tRJoodp
	0+tbSd8qluLUKGDAP7hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxKsL-0005hi-1V; Tue, 13 Aug 2019 00:41:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxKsI-0005h6-O0
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 00:41:20 +0000
Received: by mail-pl1-x641.google.com with SMTP id c2so48524486plz.13
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 17:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o2YhU7ZI7zRBNkSqHEOZBShLAkxc14NOfVdnGmm5fKU=;
 b=jtHRbV2jvCMOrug1VL8DlniNesFQqe4mwKTZ3VzgssQ3VQs6b5LtUaNMVZsc5CuJDp
 Iw8whkhdXJ7rcwjGwBhO6bOb4R9HDy3aGxnSkB24MJ9hY0F8GUX42o4R2L5RbO1mHvNQ
 fgfZIIuryuM6MsMlE2FCQsFy9Ko0MwXC35YX0zFHFknsYf9vPZZbgUGmBgAsRIvp4Uqd
 60LKpvXh51SGPv9+hzg4POm9qQcvjpOv0jvCdTcXtAwCmnYW+REf4ctA9Xh3nN2C0Pk2
 Dfg6a9VXk1PXwpLh/pQidSNRP79rt83WW1lNCqDZaP/t4ID/ZKf6fmlxyUwdKcQccRx2
 iAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o2YhU7ZI7zRBNkSqHEOZBShLAkxc14NOfVdnGmm5fKU=;
 b=ZVLX/331QMtY4qGXIlJwdg0lbWgh9jnSelBQJT+iBrL60bhXH4TvnuT/I9o71xwsak
 8CtJwPji1B3vEViMYvcG5Q+2qntHp5A3rrfBQ31j3oneWxdZL8lhSFI22wI2DVz34wYo
 iDLTUG2p1wd3Xeg9bw5uxQ1T5DtZRsm1O7TMazq0aguQvnHmudxrLjN2it06z+XNeNor
 RTZdMrX/Z+GhizjrIqntTUA3FiDD4ltk7q4rt3I53/0Kt77XkCD1S+eCrZSZ0UADkeRM
 nuJw6or2Xx+T5e98lvTBoeMQYLXI5OLjK2DJgs18HhdglJnrsAElIfIx579byPkhh/B5
 RyhQ==
X-Gm-Message-State: APjAAAUZHHoJ4zgvpNWxgfut7s3TmlfKpKJ01ipRa9evhgHTubAEnqzD
 UNMOjNzUwJ4etpBdhrbn6IjaSqzmA0R5/CoV03xvkw==
X-Google-Smtp-Source: APXvYqwMN7m1oxhncwRThnueyB+Cpwr7fkWXdNKhV0HMwJO6gvgJeykiY4kuCkE7DaZ3nG+H6w12tIuXT7ijhEgDApc=
X-Received: by 2002:a17:902:5983:: with SMTP id
 p3mr25962931pli.232.1565656877406; 
 Mon, 12 Aug 2019 17:41:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-4-brendanhiggins@google.com>
 <20190812225520.5A67C206A2@mail.kernel.org>
 <20190812233336.GA224410@google.com>
 <20190812235940.100842063F@mail.kernel.org>
In-Reply-To: <20190812235940.100842063F@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 12 Aug 2019 17:41:05 -0700
Message-ID: <CAFd5g44xciLPBhH_J3zUcY3TedWTijdnWgF055qffF+dAguhPQ@mail.gmail.com>
Subject: Re: [PATCH v12 03/18] kunit: test: add string_stream a std::stream
 like string builder
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_174118_806325_8AE64343 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Aug 12, 2019 at 4:59 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 16:33:36)
> > On Mon, Aug 12, 2019 at 03:55:19PM -0700, Stephen Boyd wrote:
> > > Quoting Brendan Higgins (2019-08-12 11:24:06)
> > > > +void string_stream_clear(struct string_stream *stream)
> > > > +{
> > > > +       struct string_stream_fragment *frag_container, *frag_container_safe;
> > > > +
> > > > +       spin_lock(&stream->lock);
> > > > +       list_for_each_entry_safe(frag_container,
> > > > +                                frag_container_safe,
> > > > +                                &stream->fragments,
> > > > +                                node) {
> > > > +               list_del(&frag_container->node);
> > >
> > > Shouldn't we free the allocation here? Otherwise, if some test is going
> > > to add, add, clear, add, it's going to leak until the test is over?
> >
> > So basically this means I should add a kunit_kfree and
> > kunit_resource_destroy (respective equivalents to devm_kfree, and
> > devres_destroy) and use kunit_kfree here?
> >
>
> Yes, or drop the API entirely? Does anything need this functionality?

Drop the kunit_resource API? I would strongly prefer not to.
string_stream uses it; the expectation stuff uses it via string
stream; some of the tests in this patchset allocate memory as part of
the test setup that uses it. The intention is that we would provide a
kunit_res_* version of many (hopefully eventually most) common
resources required by tests and it would be used in the same way that
the devm_* stuff is.

Nevertheless, I am fine adding the kunit_resource_destroy, etc. I just
wanted to make sure I understood what you were asking.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
