Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B41CDD1F
	for <lists+linux-um@lfdr.de>; Mon,  7 Oct 2019 10:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gf1R+/hedBPXEZQNPjJgjfN1TyO5wS5oMUUkcQAI9AQ=; b=s6BxcyriNRtWcg
	lLAUPYYeczRNgz87EKYTeJlF41sDC/edRT6H9BBZNi0aGXvA0t8UzUn2TNq7ZTnFqr5eRowJGFer5
	YxPNhVszY7lHDY2/N1RF3L1Xbl3UamuYhb7ihaIgBi2S9CLXerI4FSPGPHxrB2mK//kabq4guC9dj
	ynRcnqLfDbcCkU/cnnNFqP5zonKV3J1ABVDGku5Crq8dYKpJPoRT5C5hulmOUz0xuBi7jHZqi2Ivt
	EUlWnotpkEKf+RzpJrVZ4lMsNA0mbdUZV0nwWExJ3N5nxe/dTEoRrj2P0wTqPVsTHLW+NnLyFta64
	0GLBA7QELlN107snkUzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOGC-000638-GF; Mon, 07 Oct 2019 08:20:52 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOG9-00061Y-3P
 for linux-um@lists.infradead.org; Mon, 07 Oct 2019 08:20:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id j11so6514239plk.3
 for <linux-um@lists.infradead.org>; Mon, 07 Oct 2019 01:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ote0/C1JReGNWp+FkearLP+n5iZPIKVYgqsUmtRTjFs=;
 b=ucHtKJn0UJ/TfFDX+4FXj4mOFaUq1DsFLZGjyuBNxfgLXveZezTTcBAH3AoBOIOBEU
 9Q68fJQlIZMn6KrlKTDzJpjNG8TqWULiaH2rlCAcf0lZ+nNuMEV+zgZrBiY1Dw9yJ+u+
 CnikzZLmoBcE6hsbUbbZy61X/2MSIy8UU9KMfv7H8WYsp7Inq5RegXOks3+X+J8jqMPm
 hKQmH60pRG9T9rirx2yP0hvm85sKqjotn7r05OGpiU9g/AO8TGbcjQmonzZgKOXmk0sp
 Q/OF6iGuie1Fhf7sgCtf3kcTPs1M9fwLUXXUhWuFlWamP+XzN2k7qw0YD2qXx5TZ+Lra
 z5Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ote0/C1JReGNWp+FkearLP+n5iZPIKVYgqsUmtRTjFs=;
 b=SorrrUu0z4m1LFEY7XAqZqviTLLp3kP7wlwfzLW0BiDYVRMv8eswepPjKEL0Lqnx/+
 VHYRo2NI48gMeif+7Hjl49teuz+0CJD/6wD2zBbiGXrvVjMGGeRDasKnyzFK5PjIp6JS
 rQUvpcODeyLz0DkSnPa8m0LcPXYLajsEeAIknHeagXEjA1QHsjyhOeRfJcRpzPPxqm+U
 qx6TfSzwf3O5l69v341qSW50yA8TF+6QRWEa5IXJMnNeQPO0UB07FUvB/1pMk0SaH0Yq
 vkiG6+iXVw3sVdjx1kD47nQxDkMWODcQ6IEM+iRVNQspVV2lxqFMnk8HumUA2s4Vo4cj
 tXzA==
X-Gm-Message-State: APjAAAWDooMJIw4WO+vTWcTOVd+DJVfX1e5OnydbmAhTw+QBT7EOwX2g
 ybAROlal+qhHyeg1OJC4breBYdSK9R7s46kDaWwelg==
X-Google-Smtp-Source: APXvYqx8Yk5sgQkWXnFQm4/CGRSWyRMpxzmUgLAHY9vWCZW1JOEviLWEyRGwfm5yzonhZdNlXfXkmD5OjjAPHS+whBM=
X-Received: by 2002:a17:902:8f88:: with SMTP id
 z8mr28990175plo.232.1570436445413; 
 Mon, 07 Oct 2019 01:20:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
 <20191004222714.GA107737@google.com>
 <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
 <20191004232955.GC12012@mit.edu>
 <CAFd5g456rBSp177EkYAwsF+KZ0rxJa90mzUpW2M3R7tWbMAh9Q@mail.gmail.com>
 <63e59b0b-b51e-01f4-6359-a134a1f903fd@kernel.org>
 <CAFd5g47wji3T9RFmqBwt+jPY0tb83y46oj_ttOq=rTX_N1Ggyg@mail.gmail.com>
 <544bdfcb-fb35-5008-ec94-8d404a08fd14@kernel.org>
 <CAFd5g467PkfELixpU0JbaepEAAD_ugAA340-uORngC-eXsQQ-g@mail.gmail.com>
 <20191006165436.GA29585@mit.edu>
In-Reply-To: <20191006165436.GA29585@mit.edu>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 7 Oct 2019 01:20:34 -0700
Message-ID: <CAFd5g47XogYaO24fHnRR9wyki_r4oQg0qSWo9kOgnXpyTuJAWw@mail.gmail.com>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: "Theodore Y. Ts'o" <tytso@mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_012049_141661_1681169E 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-nvdimm <linux-nvdimm@lists.01.org>, shuah <shuah@kernel.org>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Logan Gunthorpe <logang@deltatee.com>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Oct 6, 2019 at 9:55 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Fri, Oct 04, 2019 at 06:18:04PM -0700, Brendan Higgins wrote:
> > > Let's talk about current state. Right now kunit is in linux-next and
> > > we want to add a few more tests. We will have to coordinate the effort.
> > > Once kunit get into mainline, then the need for this coordination goes
> > > down.
> >
> > Sure, I was just thinking that getting other people to write the tests
> > would be better. Since not only is it then useful to someone else, it
> > provides the best possible exercise of KUnit.
>
> Well, one thing we *can* do is if (a) if we can create a kselftest
> branch which we know is stable and won't change, and (b) we can get
> assurances that Linus *will* accept that branch during the next merge
> window, those subsystems which want to use kself test can simply pull
> it into their tree.

Yeah, I can't think of any reason that you haven't outlined already
why that might not work, but that seems kind of like circumventing
Linus.

> We've done this before in the file system world, when there has been
> some common set of changes needed to improve, say, Direct I/O, where
> the changes are put into a standalone branch, say, in the xfs tree,
> and those file systems which need it as a building block can pull it
> into their tree, and then add the changes needed to use those changes
> into their file system git tree.  These changes are generally not
> terribly controversial, and we've not had to worry about people want
> to bikeshed the changes.
>
> There is a risk with doing this of course, which is that if the branch
> *is* controversial, or gets bike-shedded for some reason, then Linus
> gets upset and any branches which depended on said branch will get
> rejected at the next merge window.  Which is the requirement for (a)
> and (b) above.  Presumably, the fact that people were unwilling to let
> Kunit land during this merge window might will *because* we think more
> changes might be pending?

My understanding, based on what I have been told, is that we were
simply unlucky with the timing when Linus pulled the branch in the
first week of the 5.4 merge window (Friday), such that once I fixed
the directory naming issue, the updated changes didn't spend enough
time in linux-next. And now with this issue fixed and KUnit back in
linux-next, if nothing interesting happens between now and 5.5, it
will be accepted in the 5.5 merge window. I do not think that anyone
is expecting anymore changes before merging.

Shuah, Linus, is my understanding correct?

> The other thing I suppose I can do is to let the ext4 kunit tests land
> in ext4 tree, but with the necessary #ifdef's around things like
> "#include <kunit/test.h>" so that the build won't blow up w/o kunit
> changes being in the tree that I'm building.  It means I won't be able
> to run the tests without creating a test integration branch and
> merging in kunit by hand, which will super-annoying, of course.  And
> if some of the bike-shedding is in Kunit's interfaces, then that
> becomes problematic as well, since any tests that are in ext4.git tree
> might change if people want to rename Kunit's publically exported
> functions (for example).

Yeah, that seems even worse. I'm sorry to have caused this frustration.

> > Hey Ted, do you know if that ext4 timestamp test can go in through
> > linux-kselftest? It seemed fairly self-contained. Or is that what you
> > were saying wouldn't work for you?
>
> Well, I was hoping that we might start creating more tests beyond just
> the ext4 timestamp tests....

Okay, that's what I thought (and what I hoped) you were saying :-)

I hope we can figure out something that will work for you. Or
otherwise that you won't mind waiting until 5.5.

Sorry

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
