Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 833DF5A664
	for <lists+linux-um@lfdr.de>; Fri, 28 Jun 2019 23:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjhZ58ie5M5opOkfOrMXwaTUkRcAvpy7KLSvnGaANlw=; b=RSIT2VTLKun+9S
	nCZXN6qiMgIKcVr0qmwyuUJy+n/CwmH2Wvb/nVhLFr/7jruJKRNiUwEu10B/KmD+lKmQYeF3HqCjV
	bn+TMxLCOXnju0tn4TLz15H+JD/BVcxtsOxahUx36nS2rX7lr69QPCaapTkWMzKqXALnmwVDWOUFl
	Flsklk38QhkyBbXJphSVvvJRAAcJuYBKQmVgkqzwxBlbHnJPcpIsmVAsFMhpLeeOi/r1H06WvuVsw
	phHlaM2hMDKPR3hsxySPkW2eemUXug2Xvmz4zUrhAyIQjSB3W3IIP4QEvJqDim0TD7UqhvjyZOCAf
	P8g3QmuXASVfVZ9jmrJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgyYs-0005sg-0R; Fri, 28 Jun 2019 21:37:38 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgyYp-0005s7-1m
 for linux-um@lists.infradead.org; Fri, 28 Jun 2019 21:37:36 +0000
Received: by mail-pl1-f193.google.com with SMTP id bh12so3937637plb.4
 for <linux-um@lists.infradead.org>; Fri, 28 Jun 2019 14:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JgAuNdeYgPOaJAXJWPitQxb9O77ltQQoo3H5OkHlS/c=;
 b=mfxYcANAYSSziPlIgddoKhknLgTon4Pe9fr45kizYpNqAORuyNZNPQbB+ZX/7KC36r
 NTLbgYvRfiilV48fJHHYy6cVR4awlebwmo8AL+XNRWMwB+rxoca+PhaQqnftSznPtAjU
 oLqWNFkVdMP0Xq7ncMIdPK3MEbbSOxNI1MP55tFlp7+pyVbhfcuzatcUtldd7Oxl2rrC
 lMUnDBziDtpDYiwo/x09ZOFo6yq9xGlZvMZkxZA9kqjFWOkTWZxlAeMmzpdBEaNkfIiY
 5tL5SSMzH2MCNqfmzwjddKA5EDQ1t9QWRZxfCRHCFSy9LPPOqtokfqSlN2GcNymd3F6T
 rXyw==
X-Gm-Message-State: APjAAAWvO3Y64bZ1LTQ7Fw9Lrae6WoxbbIo5jgoBJaKrpXwvf4b3MWzW
 6gDgdhCSjogqHG1vAXqVtGORrUspbBE=
X-Google-Smtp-Source: APXvYqy5ELfDL2fyyn/y9lJ8x6ZZyU+/eE48fR92CyznGhgcBuNDCxdNuVcUesc0a2YsMUSVisIbkg==
X-Received: by 2002:a17:902:a60d:: with SMTP id
 u13mr6000172plq.144.1561757853454; 
 Fri, 28 Jun 2019 14:37:33 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id b15sm3215119pfi.141.2019.06.28.14.37.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 14:37:32 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 8049D402AC; Fri, 28 Jun 2019 21:37:31 +0000 (UTC)
Date: Fri, 28 Jun 2019 21:37:31 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>,
 Dominik Brodowski <linux@dominikbrodowski.net>
Subject: Re: [PATCH v5 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
Message-ID: <20190628213731.GJ19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-18-brendanhiggins@google.com>
 <20190626021744.GU19023@42.do-not-panic.com>
 <CAAXuY3p+kVhjQ4LYtzormqVcH2vKu1abc_K9Z0XY=JX=bp8NcQ@mail.gmail.com>
 <20190627061021.GE19023@42.do-not-panic.com>
 <CAFd5g45VJ9yfuESUc=E0ydJyN+mk1b1kyHSCYvO2x9KPC7+3GQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g45VJ9yfuESUc=E0ydJyN+mk1b1kyHSCYvO2x9KPC7+3GQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_143735_100328_E8CD067A 
X-CRM114-Status: GOOD (  33.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
 David Rientjes <rientjes@google.com>, Iurii Zaikin <yzaikin@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Joel Stanley <joel@jms.id.au>, devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, Kees Cook <keescook@google.com>,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Josh Poimboeuf <jpoimboe@redhat.com>,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-api@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 01:01:54AM -0700, Brendan Higgins wrote:
> On Wed, Jun 26, 2019 at 11:10 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> >
> > On Wed, Jun 26, 2019 at 09:07:43PM -0700, Iurii Zaikin wrote:
> > > On Tue, Jun 25, 2019 at 7:17 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > > > > +static void sysctl_test_dointvec_table_maxlen_unset(struct kunit *test)
> > > > > +{
> > > > > +     struct ctl_table table = {
> > > > > +             .procname = "foo",
> > > > > +             .data           = &test_data.int_0001,
> > > > > +             .maxlen         = 0,
> > > > > +             .mode           = 0644,
> > > > > +             .proc_handler   = proc_dointvec,
> > > > > +             .extra1         = &i_zero,
> > > > > +             .extra2         = &i_one_hundred,
> > > > > +     };
> > > > > +     void  *buffer = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > > > +     size_t len;
> > > > > +     loff_t pos;
> > > > > +
> > > > > +     len = 1234;
> > > > > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 0, buffer, &len, &pos));
> > > > > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > > > > +     len = 1234;
> > > > > +     KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, buffer, &len, &pos));
> > > > > +     KUNIT_EXPECT_EQ(test, (size_t)0, len);
> > > > > +}
> > > >
> > > > In a way this is also testing for general kernel API changes. This is and the
> > > > last one were good examples. So this is not just testing functionality
> > > > here. There is no wrong or write answer if 0 or -EINVAL was returned
> > > > other than the fact that we have been doing this for years.
> > > >
> > > > Its a perhaps small but important difference for some of these tests.  I
> > > > *do* think its worth clarifying through documentation which ones are
> > > > testing for API consistency Vs proper correctness.
> > >
> > > You make a good point that the test codifies the existing behavior of
> > > the function in lieu of formal documentation.  However, the test cases
> > > were derived from examining the source code of the function under test
> > > and attempting to cover all branches. The assertions were added only
> > > for the values that appeared to be set deliberately in the
> > > implementation. And it makes sense to me to test that the code does
> > > exactly what the implementation author intended.
> >
> > I'm not arguing against adding them. I'm suggesting that it is different
> > to test for API than for correctness of intended functionality, and
> > it would be wise to make it clear which test cases are for API and which
> > for correctness.
> 
> I see later on that some of the API stuff you are talking about is
> public APIs from the standpoint of user (outside of LInux) visible.

Right, UAPI.

> To
> be clear, is that what you mean by public APIs throughout, or would
> you distinguish between correctness tests, internal API tests, and
> external API tests?

I would definitely recommend distingishing between all of these.
Kernel API (or just call it API), UAPI, and correctness.

> > This will come up later for other kunit tests and it would be great
> > to set precendent so that other kunit tests can follow similar
> > practices to ensure its clear what is API realted Vs correctness of
> > intended functionality.
> >
> > In fact, I'm not yet sure if its possible to test public kernel API to
> > userspace with kunit, but if it is possible... well, that could make
> > linux-api folks happy as they could enable us to codify interpreation of
> > what is expected into kunit test cases, and we'd ensure that the
> > codified interpretation is not only documented in man pages but also
> > through formal kunit test cases.
> >
> > A regression in linux-api then could be formalized through a proper
> > kunit tests case. And if an API evolves, it would force developers to
> > update the respective kunit which codifies that contract.
> 
> Yep, I think that is long term hope. Some of the file system interface
> stuff that requires a filesystem to be mounted somewhere might get a
> little weird/difficult, but I suspect we should be able to do it
> eventually. I mean it's all just C code right? Should mostly boil down
> to someone figuring out how to do it the first time.

There used to be hacks in the kernel the call syscalls in a few places.
This was cleaned up and addressed via Dominik Brodowski's series last
year in March:

http://lkml.kernel.org/r/20180325162527.GA17492@light.dominikbrodowski.net

An example commit: d300b610812f3 ("kernel: use kernel_wait4() instead of
sys_wait4()").

So it would seem the work is done, and you'd just have to use the
respective exposed kernel_syscallname() calls, or add some if you
want to test a specific syscall in kernel space.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
