Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2F0176435
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 20:45:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMXsf7bydh1YVRRxw3SfEZra+SVIF43pGxv8RQPYnQ0=; b=VM6OjOOQEBnKhQ
	odjLyy2kbqZVTFPqbJqkFAYOVSE7qj9ANsKytXeDXHDL7NrEzyMIN214mpX+/hnbo8MsA7wdZP1nT
	gW8ZC3aF74hV8Ey/Tcgn8v81nN1scuuGyL13EzczVscOuqtVnc3evNSdAi7tQSqXkDZHuZV1fHCPJ
	+wlwzjPF3Kh66tsfBzvS9Kq5rVvtTXyf4gTMBNl7OOhS6JBw2XawcJNyF//Yvjo+xnBbwy2pMyKSg
	OXb5+BuLqbjAb7RyInNGzSRoguK/nXq2nf43SIHYgZtVYW04A/FM41QsFnmdwFDYFWGFVVww5gRZG
	5mPA9vSPHZaGicwsisEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8r09-0000GR-LM; Mon, 02 Mar 2020 19:45:17 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8r05-0000Fr-Op
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 19:45:15 +0000
Received: by mail-pf1-f194.google.com with SMTP id s1so204736pfh.10
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 11:45:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zv01SEUeCJ59DbCUMYh/kAHbXD3GWjSPFMrk4H/TzUU=;
 b=te4JMjuSQjmd87188Pq02n/H4cgJeySw9AAGASFoBtY8c5LaIBy0rgo/bPpMcLmx2p
 DTR+embZGpjhJvGWQiIgNySvuUI8RupfJOQ2NA0mFAFT4nnENOq4hpf5vkO3B+DV48Ch
 MayLWmW89JHTaBdxqOCFreUPqHKns9KWBT5saqdb5rvqhB44FpaA/vQCGyE0klDkIk81
 3jbE73aX3wwn12SImBYHIRnNuui+UpBc4SMqBigDInwgC94E1W9cGJ+sYqAUv8CltLQ+
 /VjYoTFMmVMP0hIGM8t1R1b7H1Xiu8Znck+1rccXwoVGQp9YUxq9MDHJyRZOFcDrg1vn
 JZng==
X-Gm-Message-State: ANhLgQ0jCRQpJYGlmJS8bXa5Xghc5RLQF49yFX435r1FeaJ56UWwi/UH
 qtbfsfjyOMHrchPJ28iJnis=
X-Google-Smtp-Source: ADFU+vsMDX1gP7FI7WhGs7DHxMv8C1GXDd1iWXtobLWN0ui4VcoCkASmipk8Z+H2vian4+OAyRRrKQ==
X-Received: by 2002:a63:7207:: with SMTP id n7mr454669pgc.253.1583178312655;
 Mon, 02 Mar 2020 11:45:12 -0800 (PST)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id h13sm52586pjc.9.2020.03.02.11.45.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 11:45:11 -0800 (PST)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 490A24035F; Mon,  2 Mar 2020 19:45:09 +0000 (UTC)
Date: Mon, 2 Mar 2020 19:45:09 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, g@42.do-not-panic.com
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch
 all KUnit tests
Message-ID: <20200302194509.GD11244@42.do-not-panic.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
 <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
 <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
 <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
 <alpine.LRH.2.20.2001291006570.13921@dhcp-10-175-173-43.vpn.oracle.com>
 <CAFd5g477pGY7vkYK7qTtstxpCv0NG9=11Nig=kSo1JX8vczRVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g477pGY7vkYK7qTtstxpCv0NG9=11Nig=kSo1JX8vczRVA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_114513_815140_99E187F7 
X-CRM114-Status: GOOD (  35.86  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Stephen Boyd <sboyd@kernel.org>,
 Alan Maguire <alan.maguire@oracle.com>, Jeff Dike <jdike@addtoit.com>,
 Shuah Khan <skhan@linuxfoundation.org>, Knut Omang <knut.omang@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, rppt@linux.ibm.com,
 linux-um <linux-um@lists.infradead.org>, Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Richard Weinberger <richard@nod.at>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jan 29, 2020 at 01:28:19PM -0800, Brendan Higgins wrote:
> On Wed, Jan 29, 2020 at 5:07 AM Alan Maguire <alan.maguire@oracle.com> wrote:
> >
> > On Tue, 28 Jan 2020, Frank Rowand wrote:
> >
> > > On 1/28/20 1:19 AM, Brendan Higgins wrote:
> > > > On Mon, Jan 27, 2020 at 9:40 AM Frank Rowand <frowand.list@gmail.com> wrote:
> > > >>
> > > >> On 1/23/20 4:40 PM, Brendan Higgins wrote:
> > > >>> Sorry for the late reply. I am still catching up from being on vacation.
> > > >>>>> On Mon, Jan 6, 2020 at 2:40 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > > >>>> It does beg the question if this means kunit is happy to not be a tool
> > > >>>> to test pre basic setup stuff (terminology used in init.c, meaning prior
> > > >>>> to running all init levels). I suspect this is the case.
> > > >>>
> > > >>> Not sure. I still haven't seen any cases where this is necessary, so I
> > > >>> am not super worried about it. Regardless, I don't think this patchset
> > > >>> really changes anything in that regard, we are moving from late_init
> > > >>> to after late_init, so it isn't that big of a change for most use
> > > >>> cases.
> > > >>>
> > > >>> Please share if you can think of some things that need to be tested in
> > > >>> early init.
> > > >>
> > > >> I don't have a specific need for this right now.  I had not thought about
> > > >> how the current kunit implementation forces all kunit tests to run at a
> > > >> specific initcall level before reading this email thread.
> > > >>
> > > >> I can see the value of being able to have some tests run at different
> > > >> initcall levels to verify what functionality is available and working
> > > >> at different points in the boot sequence.
> > > >
> > > > Let's cross that bridge when we get there. It should be fairly easy to
> > > > add that functionality.
> > >
> > > Yes. I just wanted to add the thought to the back of your mind so that
> > > it does not get precluded by future changes to the kunit architecture.
> > >
> > > >
> > > >> But more important than early initcall levels, I do not want the
> > > >> framework to prevent using or testing code and data that are marked
> > > >> as '__init'.  So it is important to retain a way to invoke the tests
> > > >> while __init code and data are available, if there is also a change
> > > >> to generally invoke the tests later.
> > > >
> > > > Definitely. For now that still works as long as you don't build KUnit
> > > > as a module, but I think Alan's new patches which allow KUnit to be
> > > > run at runtime via debugfs could cause some difficulty there. Again,
> > >
> > > Yes, Alan's patches are part of what triggered me thinking about the
> > > issues I raised.
> > >
> > >
> >
> > As Brendan says, any such tests probably shouldn't be buildable
> > as modules, but I wonder if we need to add some sort of way
> > to ensure execution from debugfs is not allowed for such cases?

The kernel's linker will ensure this doesn't happen by default, ie
__init data called from non __init code gets a complaint at linker
time today.

*Iff* you are sure the code is proper, you *whitelist* it by adding the
__ref tag to it.

> > Even if a test suite is builtin, it can be executed via debugfs
> > in the patches I sent out, allowing suites to be re-run.  Sounds
> > like we need a way to control that behaviour based on the
> > desired test suite execution environment.
> 
> I think that's true.
> 
> > Say, for example, the "struct kunit_suite" definitions associated
> > with the tests was marked as __initdata; are there any handy macros to
> > identify it as being in the __init section? If so, we could simply
> > avoid adding a "run" file to the debugfs representation for such
> > suites.

> > Failing that, perhaps we need some sort of flags field
> > in "struct kunit_suite" to specify execution environment constraints?
> 
> I think the former would be ideal, but the latter is acceptable as
> well, assuming neither results in complaints from the compiler (I
> guess we will find out for sure once we get a hold of the device tree
> KUnit test).

I'd split out tests in two different arrays, one with __init or
__initdata  one without. Likewise two dispatches, one for init and
one for non-init data.

> Luis, you mentioned your linker table work might be applicable for
> dynamic post boot configuring of dispatching. Do you think this work
> could help solve this problem?

The Linux kernel table / section ranges code helps aggregate data into
ELF sections in a generic way, that is, hacks we have been doing over
years into a generic way.

So it would be easier to read and implement. For instance see how in
this commit the intent/goal of kprobe blacklists is a bit easier to
read:

https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.git/commit/?h=20170620-linker-tables-v8&id=b2662efa7c6a3c436961c07fa3082e8640f0e352

In particular DEFINE_LINKTABLE_INIT_DATA() use. I think Youd' want to
use DEFINE_LINKTABLE_INIT_DATA() for code which you want to use to
dispatch on init and and a DEFINE_LINKTABLE_DATA() for non-init code.

If a dynamic dispatcher is used you'd opt out of the using for instance
linktable_for_each() and instead use the data structure defined for
however you want to disaptch your run time.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
