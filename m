Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C705E14D27F
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 22:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljigolnVkcwk44WJeKDRkNUfNhSyT1GlUpA8tqdqbZI=; b=GJ1NNPu03GFqNa
	e5++PUvnihDAZz5t/+L32rCQrkK+WlJ7I7Wm0PpwQ5Pe488uYQf/Yiw/ySCWbOljDNi0/yumN7ZLn
	n7lr0oMXd3X1I9WGVfx9I6Kzt5rz+nTQvBdImyyYPqRbpJQWbxR3SzY8zFiyAqVVMkimhbMd8hwzK
	PS5qKgSK/M4zTW+je7OtI3viltO3xk+1g4qu0EPvqpRGFtksRkj4JVqjMmBc2lxrucpZF3zp3aLcE
	C0grwJROLb+kGQ7W5qxWo8JOQfRxxfXsxGFo1b5OEa4ETJNRM8b7lxIX/L4lO6eh6gGo3PKFDeLRg
	kC3SLBWuSuDiYq2m52NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwut1-0002zv-8T; Wed, 29 Jan 2020 21:28:35 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwusx-0002z1-VM
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 21:28:33 +0000
Received: by mail-pj1-x1044.google.com with SMTP id e9so374535pjr.4
 for <linux-um@lists.infradead.org>; Wed, 29 Jan 2020 13:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vO0tQV4IJhlk8aBFMEt3809CgjH5G7hoc7aRguIIMy0=;
 b=QLl43wW5jYmSizLsosfazLIYuM7NJbGdr/SiA5oJT2qpSaQBj7pXlQxRT8aU1/ISJ9
 ASkXWRvsaxiSKEW1LEWAJEQy5lwe4tkWme2r8TnXFMvonsgFb6Zev25Vot2uhzMVNvwI
 zTiruV547KElXr7kfB7iRgCw8OmpIVM3xUiNA1fhf9T1N6OqCKr0ZoamcpyHmSLZx44o
 5RZ9ir93x3/H7zwexGklsjEoczBLSGcdNcxgqqMh3VRSRycI3PjNmIFXaWodV8GhX9dd
 /DIxgqBuntCoJkQpCZOzZ5+eMy2F40P5ziEJLrUKYa3T07fzwtaZ9Kmk0ptSXr0rCl6I
 mxRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vO0tQV4IJhlk8aBFMEt3809CgjH5G7hoc7aRguIIMy0=;
 b=cYMO9OAnsOmVxFlL2mnPhCvckEdYOV0vQvEucPlFkpioOq5VIqqRr0pc4VWDGkSpQW
 8IPJxbXxE3AxcruFfiPyc029fF8NTqFRm/70hN2jnlCJWUnWSJRINfSFMXlhDaZt0hd0
 M+PzFMqg+Xt8bFzqvrVmTTzwCljVHkri6en+8pMb7wvkVvcFQChxPktU6s2S8IhMhVv9
 7QRubFaAxHjuLLgbWxUzCujgz41AVcgJzvp25NUMkqI9AXThm3Q4P2U5+cSYoqOXb6/j
 mANEfJXUc7vNi5//JIAo15NN6f4yTaV7RvvjD221UNMvZur6UFB9BxnGImtODL4zMy6W
 cOZA==
X-Gm-Message-State: APjAAAVU01IVv5bEQcYNzG0FD57Q7K1xPZO+LndHat/A8M3UaxV8q233
 Aq06NNfSEZd+r5SXoCQQci69Jo5iKxge6AGR4GB8ig==
X-Google-Smtp-Source: APXvYqw+JNwlFIqkl3DtdN+LuKSj6eYC2SC+F4syXK+YNUsH4i2fdGvVcZEfrA2FR6fnQA3ixhSzro1FQcVWse+DDRE=
X-Received: by 2002:a17:90a:858a:: with SMTP id
 m10mr1858022pjn.117.1580333310295; 
 Wed, 29 Jan 2020 13:28:30 -0800 (PST)
MIME-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
 <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
 <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
 <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
 <alpine.LRH.2.20.2001291006570.13921@dhcp-10-175-173-43.vpn.oracle.com>
In-Reply-To: <alpine.LRH.2.20.2001291006570.13921@dhcp-10-175-173-43.vpn.oracle.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 29 Jan 2020 13:28:19 -0800
Message-ID: <CAFd5g477pGY7vkYK7qTtstxpCv0NG9=11Nig=kSo1JX8vczRVA@mail.gmail.com>
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch all
 KUnit tests
To: Alan Maguire <alan.maguire@oracle.com>,
 Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_132832_010415_2527050E 
X-CRM114-Status: GOOD (  29.43  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Stephen Boyd <sboyd@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Knut Omang <knut.omang@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, rppt@linux.ibm.com,
 linux-um <linux-um@lists.infradead.org>, Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jan 29, 2020 at 5:07 AM Alan Maguire <alan.maguire@oracle.com> wrote:
>
> On Tue, 28 Jan 2020, Frank Rowand wrote:
>
> > On 1/28/20 1:19 AM, Brendan Higgins wrote:
> > > On Mon, Jan 27, 2020 at 9:40 AM Frank Rowand <frowand.list@gmail.com> wrote:
> > >>
> > >> On 1/23/20 4:40 PM, Brendan Higgins wrote:
> > >>> Sorry for the late reply. I am still catching up from being on vacation.
> > >>>>> On Mon, Jan 6, 2020 at 2:40 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > >>>> It does beg the question if this means kunit is happy to not be a tool
> > >>>> to test pre basic setup stuff (terminology used in init.c, meaning prior
> > >>>> to running all init levels). I suspect this is the case.
> > >>>
> > >>> Not sure. I still haven't seen any cases where this is necessary, so I
> > >>> am not super worried about it. Regardless, I don't think this patchset
> > >>> really changes anything in that regard, we are moving from late_init
> > >>> to after late_init, so it isn't that big of a change for most use
> > >>> cases.
> > >>>
> > >>> Please share if you can think of some things that need to be tested in
> > >>> early init.
> > >>
> > >> I don't have a specific need for this right now.  I had not thought about
> > >> how the current kunit implementation forces all kunit tests to run at a
> > >> specific initcall level before reading this email thread.
> > >>
> > >> I can see the value of being able to have some tests run at different
> > >> initcall levels to verify what functionality is available and working
> > >> at different points in the boot sequence.
> > >
> > > Let's cross that bridge when we get there. It should be fairly easy to
> > > add that functionality.
> >
> > Yes. I just wanted to add the thought to the back of your mind so that
> > it does not get precluded by future changes to the kunit architecture.
> >
> > >
> > >> But more important than early initcall levels, I do not want the
> > >> framework to prevent using or testing code and data that are marked
> > >> as '__init'.  So it is important to retain a way to invoke the tests
> > >> while __init code and data are available, if there is also a change
> > >> to generally invoke the tests later.
> > >
> > > Definitely. For now that still works as long as you don't build KUnit
> > > as a module, but I think Alan's new patches which allow KUnit to be
> > > run at runtime via debugfs could cause some difficulty there. Again,
> >
> > Yes, Alan's patches are part of what triggered me thinking about the
> > issues I raised.
> >
> >
>
> As Brendan says, any such tests probably shouldn't be buildable
> as modules, but I wonder if we need to add some sort of way
> to ensure execution from debugfs is not allowed for such cases?
> Even if a test suite is builtin, it can be executed via debugfs
> in the patches I sent out, allowing suites to be re-run.  Sounds
> like we need a way to control that behaviour based on the
> desired test suite execution environment.

I think that's true.

> Say, for example, the "struct kunit_suite" definitions associated
> with the tests was marked as __initdata; are there any handy macros to
> identify it as being in the __init section? If so, we could simply
> avoid adding a "run" file to the debugfs representation for such
> suites.  Failing that, perhaps we need some sort of flags field
> in "struct kunit_suite" to specify execution environment constraints?

I think the former would be ideal, but the latter is acceptable as
well, assuming neither results in complaints from the compiler (I
guess we will find out for sure once we get a hold of the device tree
KUnit test).

Luis, you mentioned your linker table work might be applicable for
dynamic post boot configuring of dispatching. Do you think this work
could help solve this problem?

For reference, Alan's debugfs code can be found here:

https://lore.kernel.org/linux-kselftest/CAFd5g46657gZ36PaP8Pi999hPPgBU2Kz94nrMspS-AzGwdBF+g@mail.gmail.com/T/#m210cadbeee267e5c5a9253d83b7b7ca723d1f871

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
