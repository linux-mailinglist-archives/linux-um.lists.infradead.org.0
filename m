Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0314EEA6
	for <lists+linux-um@lfdr.de>; Fri, 21 Jun 2019 20:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+QDdusRHbRBJ8f8v9TDyAVry5z8FbND6MRgoWdNb0Y=; b=ONM0Yum/tFHl/2
	1Q2LN7vjgVPAy3EujHDqAGKU7q7aA3jNxUXYrtGBDVrrsAmpbKjavIs3vs3kGtHgZOJQTNQaeZcD2
	cy14q6Wchz8vj+kOD2PgWndfTzGXMjXMFTCAoq867T1hOZKxe7wz+wWR5kttCq6PIJebmjkuqZ6QW
	t0WumDQNWZq5+eIJA0AwhsA6QON+9IosdvraJ0w5dX+Yl4xXVe+B27QTwLVuWK/Vtqdl208hUgP8H
	27vwhPdXlQlsM475NeVZwT2Xu54SfgtBvdxpzqN+pik+7cT4/Y+4y9WHhLpCPFs9QMEyZ6eAUSHvw
	KPKK41oAEg2lF2san0Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heO4B-0002q1-J5; Fri, 21 Jun 2019 18:15:15 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heO48-0002p2-LN
 for linux-um@lists.infradead.org; Fri, 21 Jun 2019 18:15:14 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-109.corp.google.com
 [104.133.0.109] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x5LIDgGF021070
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 21 Jun 2019 14:13:44 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 441B9420484; Fri, 21 Jun 2019 14:13:42 -0400 (EDT)
Date: Fri, 21 Jun 2019 14:13:42 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: shuah <shuah@kernel.org>
Subject: Re: [PATCH v5 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190621181342.GA17166@mit.edu>
Mail-Followup-To: Theodore Ts'o <tytso@mit.edu>, shuah <shuah@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com,
 keescook@google.com, kieran.bingham@ideasonboard.com,
 mcgrof@kernel.org, peterz@infradead.org, robh@kernel.org,
 sboyd@kernel.org, yamada.masahiro@socionext.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 kunit-dev@googlegroups.com, linux-doc@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, linux-um@lists.infradead.org,
 Alexander.Levin@microsoft.com, Tim.Bird@sony.com,
 amir73il@gmail.com, dan.carpenter@oracle.com, daniel@ffwll.ch,
 jdike@addtoit.com, joel@jms.id.au, julia.lawall@lip6.fr,
 khilman@baylibre.com, knut.omang@oracle.com, logang@deltatee.com,
 mpe@ellerman.id.au, pmladek@suse.com, rdunlap@infradead.org,
 richard@nod.at, rientjes@google.com, rostedt@goodmis.org,
 wfg@linux.intel.com
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <10feac3e-7621-65e5-fbf0-9c63fcbe09c9@gmail.com>
 <69809117-dcda-160a-ee0a-d1d3b4c5cd8a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69809117-dcda-160a-ee0a-d1d3b4c5cd8a@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_111512_877114_AFAF3604 
X-CRM114-Status: GOOD (  12.88  )
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, Brendan Higgins <brendanhiggins@google.com>,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 yamada.masahiro@socionext.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 robh@kernel.org, linux-nvdimm@lists.01.org, khilman@baylibre.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 08:59:48AM -0600, shuah wrote:
> > > ### But wait! Doesn't kselftest support in kernel testing?!
> > >
> > > ....
> 
> I think I commented on this before. I agree with the statement that
> there is no overlap between Kselftest and KUnit. I would like see this
> removed. Kselftest module support supports use-cases KUnit won't be able
> to. I can build an kernel with Kselftest test modules and use it in the
> filed to load and run tests if I need to debug a problem and get data
> from a system. I can't do that with KUnit.
> 
> In my mind, I am not viewing this as which is better. Kselftest and
> KUnit both have their place in the kernel development process. It isn't
> productive and/or necessary to comparing Kselftest and KUnit without a
> good understanding of the problem spaces for each of these.
>
> I would strongly recommend not making reference to Kselftest and talk
> about what KUnit offers.

Shuah,

Just to recall the history, this section of the FAQ was added to rebut
the ***very*** strong statements that Frank made that there was
overlap between Kselftest and Kunit, and that having too many ways for
kernel developers to do the identical thing was harmful (he said it
was too much of a burden on a kernel developer) --- and this was an
argument for not including Kunit in the upstream kernel.

If we're past that objection, then perhaps this section can be
dropped, but there's a very good reason why it was there.  I wouldn't
Brendan to be accused of ignoring feedback from those who reviewed his
patches.   :-)

						- Ted

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
