Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B603CC6F5
	for <lists+linux-um@lfdr.de>; Sat,  5 Oct 2019 02:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/sjtwMTlJw3NY+He36KnbEBn/Vmzo+x/29Rn1LiFi8=; b=DaN0x4v/3Hjh3q
	M+3LBklE5WMluEC7YIpeze5Ez9WBZmMRjNSKodyRp51kEtKf8JH0DzPdFntcI6BAghjUj6oG71fJT
	edT6rHW91r1vNF8+Q/GpTWUGfNrnrUwq/YLbi1ZjrgeRKKXFLo+zzDOHs8XEODdwYIxBjN09HO9VD
	OOVbB3zA8lTnB1MrxlQTZ/zLBs62rgGNR8rHwQPhSl+Bnvh+EMBiz77+kVt7kgSaGpk+n+vpjh8zu
	pXy7ZB2EkCbF7OV+ZV8xIrY1fJh9PvdbC44feUJ+NcICsicJkFFzYBp7msz0knx1X3CaapeT+SKOE
	4iWT3FeBZNEbSSJ8UMsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGY0i-0004jE-Ed; Sat, 05 Oct 2019 00:33:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGY0f-0004if-HC
 for linux-um@lists.infradead.org; Sat, 05 Oct 2019 00:33:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id v4so4868072pff.6
 for <linux-um@lists.infradead.org>; Fri, 04 Oct 2019 17:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D46P+pVFfxgwgDsZx7SQOen52ll2cZjAnqUT3X3NgW0=;
 b=pfJammvnqsEMehjoLkxaDxOUGpDw9sMZZncjKjevQVD06AywjDWgKxI3wf/rjLvej+
 UMstuf7cZplWndCtVzElsJOLS9g3ywukZExpQOCwhcvJdVD/JBab/7OxMaqUq+VMf8uB
 HAlF4ShFAU0DFBIxJWc0azVVvQ3Wy3f/oPQ9fuPzdpvWA0iIdowJ2c5Zbg/9JFOECY68
 O0WE57VT7qGlC8/9NlRmT3cO731/aVh8fcnZ5D//mK4n1CuG+yjNV9JbOBBcB23LSygI
 0TQKj3Hpc++fct7e7Rz4uTtgBBwkQmtKSHbbFGBlPsmvEeBSrzgLlq+QG4ouGMdfYcWZ
 C2hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D46P+pVFfxgwgDsZx7SQOen52ll2cZjAnqUT3X3NgW0=;
 b=gErYZehKtZ2zt4oLuVbwmLaPzl4OJdFHS+gGpgCAUcD3m0B9s5Lg9duo5/3U+GkVVh
 KvfxGLEfGHpcMDn/0heuy8XCqYosZSasZWlLrN4j+W8rag/lZc7saSeaapU/DYeuqwIG
 brccxjQ0OK1dAK8i3VGjW1k5ASyVaFet+amswbSv54Bo91b2y3uYXZd9efW6xLzZ57XQ
 HhfchcpUEFHJGREsgq9c952egOvZV1fLVv3f+fCSmXDiw6Iw3hKYtlkMkWVUnvz5S/vk
 yRQUhb38W1bwVF4iNcojRvDU/0zvEL5YeAQOta1nHPAfXImvBShuvalKSqK+8/ERALSI
 hjZw==
X-Gm-Message-State: APjAAAXqGWwPU8RoX5R2KaBRzDwW7Ndpet5f10EspthcXCflXBi5iZNb
 ch8zm2Dc9n3u3+WeIhlP9LEJqlKETKqtlRulCXkD8A==
X-Google-Smtp-Source: APXvYqw66A3fhEGGLREG4yw4Pr+r6ZvkAOqsm8j0EV5rRDrFLbH6NKzALIarwIy5UgNm5Ny2R6LZT6ifOs8an8aRKWI=
X-Received: by 2002:a63:ba47:: with SMTP id l7mr17994364pgu.201.1570235599104; 
 Fri, 04 Oct 2019 17:33:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20191004213812.GA24644@mit.edu>
 <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
 <20191004222714.GA107737@google.com>
 <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
 <20191004232955.GC12012@mit.edu>
 <CAFd5g456rBSp177EkYAwsF+KZ0rxJa90mzUpW2M3R7tWbMAh9Q@mail.gmail.com>
 <63e59b0b-b51e-01f4-6359-a134a1f903fd@kernel.org>
In-Reply-To: <63e59b0b-b51e-01f4-6359-a134a1f903fd@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 4 Oct 2019 17:33:07 -0700
Message-ID: <CAFd5g47wji3T9RFmqBwt+jPY0tb83y46oj_ttOq=rTX_N1Ggyg@mail.gmail.com>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_173321_597066_A4D7CD05 
X-CRM114-Status: GOOD (  28.21  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
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
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Logan Gunthorpe <logang@deltatee.com>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 4:57 PM shuah <shuah@kernel.org> wrote:
>
> On 10/4/19 5:52 PM, Brendan Higgins wrote:
> > On Fri, Oct 4, 2019 at 4:30 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> >>
> >> On Fri, Oct 04, 2019 at 04:47:09PM -0600, shuah wrote:
> >>>> However, if I encourage arbitrary tests/improvements into my KUnit
> >>>> branch, it further diverges away from torvalds/master, and is more
> >>>> likely that there will be a merge conflict or issue that is not related
> >>>> to the core KUnit changes that will cause the whole thing to be
> >>>> rejected again in v5.5.
> >>>
> >>> The idea is that the new development will happen based on kunit in
> >>> linux-kselftest next. It will work just fine. As we accepts patches,
> >>> they will go on top of kunit that is in linux-next now.
> >>
> >> I don't see how this would work.  If I add unit tests to ext4, they
> >> would be in fs/ext4.  And to the extent that I need to add test mocks
> >> to allow the unit tests to work, they will involve changes to existing
> >> files in fs/ext4.  I can't put them in the ext4.git tree without
> >> pulling in the kunit changes into the ext4 git tree.  And if they ext4
> >> unit tests land in the kunit tree, it would be a receipe for large
> >> numbers of merge conflicts.
> >
> > That's where I was originally coming from.
> >
> > So here's a dumb idea: what if we merged KUnit through the ext4 tree?
> > I imagine that could potentially get very confusing when we go back to
> > sending changes in through the kselftest tree, but at least it means
> > that ext4 can use it in the meantime, which means that it at least
> > gets to be useful to one group of people. Also, since Ted seems pretty
> > keen on using this, I imagine it is much more likely to produce real
> > world, immediately useful tests not written by me (I'm not being lazy,
> > I just think it is better to get other people's experiences other than
> > my own).
> >
>
> That doesn't make sense does it? The tests might not be limited to
> fs/ext4. We might have other sub-systems that add tests.

Well, I have some small isolated examples that I think would probably
work no matter what, so we can get some usage outside of ext4. Also,
if we want to limit the number of tests, then we don't expect to get
much usage outside of ext4 before v5.5 anyway. I just figure, it's
better to make it work for one person than no one, right?

In any case, I admit it is not a great idea. I just thought it had
some interesting advantages over going in through linux-kselftest that
were worth exploring.

> So, we will have to work to make linux-next as the base for new
> development and limit the number of tests to where it will be
> easier work in this mode for 5.5. We can stage the pull requests
> so that kunit lands first followed by tests.

So we are going to encourage maintainers to allow tests in their tree
based on KUnit on the assumption that KUnit will get merged before
there changes? That sounds like a huge burden, not just on us, but on
other maintainers and users.

I think if we are going to allow tests before KUnit is merged, we
should have the tests come in through the same tree as KUnit.

> We have a similar situation with kselftest as well. Sub-systems
> send tests that depend on their tress separately.

Well it is different if the maintainer wants to send the test in
through their tree, right? Otherwise, it won't matter what the state
of linux-next is and it won't matter when linux-kselftest gets merged.
Or am I not understanding you?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
