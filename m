Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA039CD3B7
	for <lists+linux-um@lfdr.de>; Sun,  6 Oct 2019 18:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5r/LnteIkMTxY6awgQjyH9cbes1bU8HIVHQ89U1TA3Q=; b=DhRc/+eE+hksIs
	Vdng6Fsd/HWHkmNAxZSYsl4HgQGHEjzaCzPDu/Tpcht5PbIMBnAjr03pui5RKaGQQ5u1ytq87aYRv
	JEb3MLVd4a2+diqCDpRnDFqrfYpV4PhKIcTHQSq3ZS4489vDEhyJ+02RBnRB+mDDBbdPPgz4eo5DZ
	TDAFE7IN2k/Dc+pyR82R2PpTNcNLqNBOP2xFEVrhFFT1bDIYO9C7cVRl0aBwSl6NW7OdrZUvGzlP0
	kh4b+4ljOJ2SfNk1X97a8345kvyEKuj2EXDUK2t43NWcwhKRIzCPG8PajbqLmlf1a2J/g2USQI3vV
	51SzKIC15xjt7WOwOYQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH9pN-0006u8-OI; Sun, 06 Oct 2019 16:56:13 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH9pK-0006tf-7a
 for linux-um@lists.infradead.org; Sun, 06 Oct 2019 16:56:12 +0000
Received: from callcc.thunk.org (pool-72-93-95-157.bstnma.fios.verizon.net
 [72.93.95.157]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x96GsaNE023214
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 6 Oct 2019 12:54:38 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id A922942088C; Sun,  6 Oct 2019 12:54:36 -0400 (EDT)
Date: Sun, 6 Oct 2019 12:54:36 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20191006165436.GA29585@mit.edu>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g467PkfELixpU0JbaepEAAD_ugAA340-uORngC-eXsQQ-g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_095610_442796_0EB1772B 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, Oct 04, 2019 at 06:18:04PM -0700, Brendan Higgins wrote:
> > Let's talk about current state. Right now kunit is in linux-next and
> > we want to add a few more tests. We will have to coordinate the effort.
> > Once kunit get into mainline, then the need for this coordination goes
> > down.
> 
> Sure, I was just thinking that getting other people to write the tests
> would be better. Since not only is it then useful to someone else, it
> provides the best possible exercise of KUnit.

Well, one thing we *can* do is if (a) if we can create a kselftest
branch which we know is stable and won't change, and (b) we can get
assurances that Linus *will* accept that branch during the next merge
window, those subsystems which want to use kself test can simply pull
it into their tree.

We've done this before in the file system world, when there has been
some common set of changes needed to improve, say, Direct I/O, where
the changes are put into a standalone branch, say, in the xfs tree,
and those file systems which need it as a building block can pull it
into their tree, and then add the changes needed to use those changes
into their file system git tree.  These changes are generally not
terribly controversial, and we've not had to worry about people want
to bikeshed the changes.

There is a risk with doing this of course, which is that if the branch
*is* controversial, or gets bike-shedded for some reason, then Linus
gets upset and any branches which depended on said branch will get
rejected at the next merge window.  Which is the requirement for (a)
and (b) above.  Presumably, the fact that people were unwilling to let
Kunit land during this merge window might will *because* we think more
changes might be pending?

The other thing I suppose I can do is to let the ext4 kunit tests land
in ext4 tree, but with the necessary #ifdef's around things like
"#include <kunit/test.h>" so that the build won't blow up w/o kunit
changes being in the tree that I'm building.  It means I won't be able
to run the tests without creating a test integration branch and
merging in kunit by hand, which will super-annoying, of course.  And
if some of the bike-shedding is in Kunit's interfaces, then that
becomes problematic as well, since any tests that are in ext4.git tree
might change if people want to rename Kunit's publically exported
functions (for example).

> Hey Ted, do you know if that ext4 timestamp test can go in through
> linux-kselftest? It seemed fairly self-contained. Or is that what you
> were saying wouldn't work for you?

Well, I was hoping that we might start creating more tests beyond just
the ext4 timestamp tests....

						- Ted

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
