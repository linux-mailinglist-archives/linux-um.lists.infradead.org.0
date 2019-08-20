Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F9796D9C
	for <lists+linux-um@lfdr.de>; Wed, 21 Aug 2019 01:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfskKMteolxENUqElRzNhwrFTFPMeJqo7Ey9aGP+yF4=; b=WqaOL6hc7viQ2L
	pN7Yv/OURXn9qZ/1NlyaTdapJt0CvUyuqwqogJCH+Fb04cW9ljwUuJmnWcFAOHO2hevQPA3SzZB/L
	gctVGISOnJhk/VOIaoL2oTwaJ2W6jRvQ1EoLdvHpv4/ZKnxLanaE8O5TMjEYLqt0CJ0kwc04JOLl7
	ddA3dI7KetXWJKo8EVEOBjgppch6bw793FXMD85w5ADq3ybpbg2rDq0itSsecTX+xYAmIuz725xhh
	YYasQkeT78RuJN8S4WMor3PIyXuwZIXc/Ve/iLe6a+SaBL9IP/FqyaDO7hN4cEuxpcDeUkveMY4PX
	ELVHE8h3M59fTtiioYug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0DTY-0003nb-46; Tue, 20 Aug 2019 23:23:40 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0DTV-0003nE-Uh
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 23:23:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id f19so248711plr.3
 for <linux-um@lists.infradead.org>; Tue, 20 Aug 2019 16:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BgeboBXYdH2mwUYNdA3OBv6wqHBTlo9IT3Q8RNantq8=;
 b=Rni4clsu++7h96C43S+JbBXXkW3gKlVOYt85WpUO9PVUNOQAyZoV9ZeqzedJ1OVMFx
 8rIO1yErMiuPpLQ9sjtVMHG1jFX4fJklQ/PjHt12vwHBikcFbmL+JH4XebCtdX0yR6Ne
 /Ku/wtLkEaRcfVrBLNhoOWWl506znCj2wEM8/+jrC4flwkKt3STFQoP7x3bxbt5r7719
 hdp/sy/7uU7ZgdFgwJ1AO9EAvZQT6mQ9FyOhMFksTEDFwGUKQRR3mFtVrfEUr8Q5ksgi
 nF8kmhxSBCnQuM25k/D9rldBfN5XmkaaeL1KNxMPXXyinqbNL7GUBH09SVaM/WlOuE59
 VQIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BgeboBXYdH2mwUYNdA3OBv6wqHBTlo9IT3Q8RNantq8=;
 b=GKCHpI9PpDFHzlpuVOTeenFyHGdFpUiGZPhPqknaqliKObbYptUaxdSn7kHsvSA83m
 NS4LXcfwvP0dh2XKQbiMkJfx2WgMYJBgc/FRlpghENC5QY1cZF86gfxjA2h+cg9X1nvj
 yw52MxG6ZPtlGLHvIuxzyGLtJzVdQusn9jjM0FEewvg0IFXoTPuDA7utqosVnrGXcMM/
 IH2hSKaZmiTuaCJMVSYHntBlQ8ebbsJMmlLu2msjw6Uqt+wBIyPGfyttS8IuAm4W7Ce9
 VQKtObrgpOQmlYMHLix9QuDb4LOgOFNEtJWRcFqZSFySOG86Reu6ToLfQWn0AeOY7XXT
 eaMQ==
X-Gm-Message-State: APjAAAXrf1Zm9LaSMOQ6hmy2wMsuAYuYHlZPEuhwaE+KLkNiHMM9ncXE
 bCBTaJcJ2QjuzpjwiiFfuU06yIszK6nclTrbRP18TQ==
X-Google-Smtp-Source: APXvYqxXREKtyoSmqThzifpm0xupcZJncgCG4zF1cdnP+ZHsoxUg77sjBGnyRvdHt5/5lrCrktItt1lg4/mEcxF/N4g=
X-Received: by 2002:a17:902:7049:: with SMTP id
 h9mr31488817plt.232.1566343416854; 
 Tue, 20 Aug 2019 16:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190814055108.214253-1-brendanhiggins@google.com>
 <5b880f49-0213-1a6e-9c9f-153e6ab91eeb@kernel.org>
 <20190820182450.GA38078@google.com>
 <e8eaf28e-75df-c966-809a-2e3631353cc9@kernel.org>
 <CAFd5g44JT_KQ+OxjVdG0qMWuaEB0Zq5x=r6tLsqJdncwZ_zbGA@mail.gmail.com>
In-Reply-To: <CAFd5g44JT_KQ+OxjVdG0qMWuaEB0Zq5x=r6tLsqJdncwZ_zbGA@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 20 Aug 2019 16:23:25 -0700
Message-ID: <CAFd5g44aO40G7Wc-51EPyhWZgosN4ZHwwSjKe7CU_vi2OD7eKA@mail.gmail.com>
Subject: Re: [PATCH v13 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_162337_993681_B87169C3 
X-CRM114-Status: GOOD (  21.01  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 2:26 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Tue, Aug 20, 2019 at 12:08 PM shuah <shuah@kernel.org> wrote:
> >
> > On 8/20/19 12:24 PM, Brendan Higgins wrote:
> > > On Tue, Aug 20, 2019 at 11:24:45AM -0600, shuah wrote:
> > >> On 8/13/19 11:50 PM, Brendan Higgins wrote:
> > >>> ## TL;DR
> > >>>
> > >>> This revision addresses comments from Stephen and Bjorn Helgaas. Most
> > >>> changes are pretty minor stuff that doesn't affect the API in anyway.
> > >>> One significant change, however, is that I added support for freeing
> > >>> kunit_resource managed resources before the test case is finished via
> > >>> kunit_resource_destroy(). Additionally, Bjorn pointed out that I broke
> > >>> KUnit on certain configurations (like the default one for x86, whoops).
> > >>>
> > >>> Based on Stephen's feedback on the previous change, I think we are
> > >>> pretty close. I am not expecting any significant changes from here on
> > >>> out.
> > >>>
> > >>
> > >> Hi Brendan,
> > >>
> > >> I found checkpatch errors in one or two patches. Can you fix those and
> > >> send v14.
> > >
> > > Hi Shuah,
> > >
> > > Are you refering to the following errors?
> > >
> > > ERROR: Macros with complex values should be enclosed in parentheses
> > > #144: FILE: include/kunit/test.h:456:
> > > +#define KUNIT_BINARY_CLASS \
> > > +       kunit_binary_assert, KUNIT_INIT_BINARY_ASSERT_STRUCT
> > >
> > > ERROR: Macros with complex values should be enclosed in parentheses
> > > #146: FILE: include/kunit/test.h:458:
> > > +#define KUNIT_BINARY_PTR_CLASS \
> > > +       kunit_binary_ptr_assert, KUNIT_INIT_BINARY_PTR_ASSERT_STRUCT
> > >
> > > These values should *not* be in parentheses. I am guessing checkpatch is
> > > getting confused and thinks that these are complex expressions, when
> > > they are not.
> > >
> > > I ignored the errors since I figured checkpatch was complaining
> > > erroneously.
> > >
> > > I could refactor the code to remove these macros entirely, but I think
> > > the code is cleaner with them.
> > >
> >
> > Please do. I am not veru sure what value these macros add.
>
> Alright, I will have something for you later today.

I just sent a new revision with the fix.

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
