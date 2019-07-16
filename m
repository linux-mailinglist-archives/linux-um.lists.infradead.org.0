Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927936ADEA
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 19:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCrp9jl3EbBgTH8vgkdfuLSPlZgivpJAmF9hjjvHiNM=; b=L2zeDS6+lOMHmN
	5WQ86yoaor8DhMmyhvIbXmpyJtNLRfPr4E6wNEj1/4vEagsZc24E0yyCk2f2G7mZ/i/YovwuvYtS6
	bdwqEz5iIUDK4nm+thIbKRQn5O6MaVAimB4Wr6HY1uG+4vtlZ4pRKXnfOBjjs7JPnzSbr+WrMbTza
	+I5he9VeywFEGWjAOwv3tnRa35QcADwqFGXyEgFXLXJ/9MjXufcRpTx/J3Mq50C+dCQjkiUXMO7gp
	LlrPQ1MWUXXCtNlbVJGCp253OnRKUHCWwDRHZ+zjNfg9gYMVNQ6iqa1tDZWtvO04rfnkdMVfAhXob
	ehzXEYy0oU92R3WoTpUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnRas-0000ye-0x; Tue, 16 Jul 2019 17:50:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnRao-0000yC-CS
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 17:50:23 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CA412173C;
 Tue, 16 Jul 2019 17:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563299421;
 bh=G8HZaTkY2j5PHpLqA7tOHBlpXfS88fwdr/i1I0KvhMc=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=SnmjZaJScqEkihvVKGQqkSTD5onJWfK+cHhQQBbW17pnjC+nIb+4uWvnjgWV9lKVf
 RdeeDLVXiDN2OyNKReRvzCItePqhEAfh7wbGzPcKWhCodyowk7MK4OaaP5GrxgXHmA
 SzXYxjU8ExAf2vD0GT0p9eiAqUSs49f1Guip83jU=
MIME-Version: 1.0
In-Reply-To: <CAFd5g44_axVHNMBzxSURQB_-R+Rif7cZcg7PyZ_SS+5hcy5jZA@mail.gmail.com>
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-5-brendanhiggins@google.com>
 <20190715221554.8417320665@mail.kernel.org>
 <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
 <CAFd5g44_axVHNMBzxSURQB_-R+Rif7cZcg7PyZ_SS+5hcy5jZA@mail.gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
User-Agent: alot/0.8.1
Date: Tue, 16 Jul 2019 10:50:20 -0700
Message-Id: <20190716175021.9CA412173C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_105022_463355_E10AA0E2 
X-CRM114-Status: GOOD (  23.65  )
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

Quoting Brendan Higgins (2019-07-16 01:37:34)
> On Tue, Jul 16, 2019 at 12:57 AM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > A `struct kunit_stream` is usually associated with a message that is
> > being built up over time like maybe an expectation; it is meant to
> > capture the idea that we might want to send some information out to
> > the user pertaining to some thing 'X', but we aren't sure that we
> > actually want to send it until 'X' is complete, but do to the nature
> > of 'X' it is easier to start constructing the message before 'X' is
> > complete.
> >
> > Consider a complicated expectation, there might be multiple conditions
> > that satisfy it and multiple conditions which could make it fail. As
> > we start exploring the input to the expectation we gain information
> > that we might want to share back with the user if the expectation were
> > to fail and we might get that information before we are actually sure
> > that the expectation does indeed fail.
> >
> > When we first step into the expectation we immediately know the
> > function name, file name, and line number where we are called and
> > would want to put that information into any message we would send to
> > the user about this expectation. Next, we might want to check a
> > property of the input, it may or may not be enough information on its
> > own for the expectation to fail, but we want to share the result of
> > the property check with the user regardless, BUT only if the
> > expectation as a whole fails.
> >
> > Hence, we can have multiple `struct kunit_stream`s associated with a
> > `struct kunit` active at any given time.

I'm coming back to this now after reading the rest of the patches that
deal with assertions and expectations. It looks like the string stream
is there to hold a few different pieces of information:

 - Line Number
 - File Name
 - Function Name

The above items could be stored in a structure on the stack that then
gets printed and formatted when the expectation or assertion fails. That
would make the whole string stream structure and code unnecessary.

The only hypothetical case where this can't be done is a complicated
assertion or expectation that does more than one check and can't be
written as a function that dumps out what went wrong. Is this a real
problem? Maybe such an assertion should just open code that logic so we
don't have to build up a string for all the other simple cases.

It seems far simpler to get rid of the string stream API and just have a
struct for this.

	struct kunit_fail_msg {
		const char *line;
		const char *file;
		const char *func;
		const char *msg;
	};

Then you can have the assertion macros create this on the stack (with
another macro?).

	#define DEFINE_KUNIT_FAIL_MSG(name, _msg) \
		struct kunit_fail_msg name = { \
			.line =  __LINE__, \
			.file = __FILE__, \
			.func = __func__, \
			.msg = _msg, \
		}

Note: I don't know if the __LINE__ above will use the macro location, so
this probably needs another wrapper to put the right line number there.

I don't want to derail this whole series on this topic, but it seems
like a bunch of code is there to construct this same set of information
over and over again into a buffer a little bit at a time and then throw
it away when nothing fails just because we may want to support the case
where we have some unstructured data to inform the user about.

Why not build in the structured part into the framework (i.e. the struct
above) so that it's always there and then add the string building part
later when we have to?


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
