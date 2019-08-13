Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292308AE42
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 06:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Za9PeCHn/FByGDlQ4888YAj2xLeXE2MtcJlUQyUgtKM=; b=G97D5iFHteX7HT
	uP5xDQccaAoE/qFBcHPQkSyBTE+T6UcamSnxk01rZSjVqN59sToBzn82tK1irUjssLBOvJmPoRHyk
	hQ3I0F4YDHpMn+rrflo+cV4miIdFbr6h30DWuM/tr8Cyi7r6t86WG/EEPG8giDh98gdE7NJu4QYZl
	FVqfromA7pVUxRAi/+wm8cGI9nfkq1764mP9I7r5ZYp1DcZtvM50H1o3WbDzbmqnUoqfjLQbyHeqO
	V3Rh2hv4oxo+JGKEoLiNOF75wicHzPz7s/hsDfrDxyHmRsazUfm3U5lxxsUYMZmsm90IfiaQqvlJU
	SGlpbOLJ7kVIBJJlah6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOsY-0004W1-DF; Tue, 13 Aug 2019 04:57:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOsV-0004Vc-O1
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 04:57:49 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AF0A206C2;
 Tue, 13 Aug 2019 04:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565672267;
 bh=DYjr3iNqzIZZG76leV1s359ko+TvTUQm8spLagGHMHw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=BTwdTrkEp8drYKqfL8D9Ky5nkPDptSWvvGIAlm2zBb2UDU+0TVgv2y5RV+T+uAhfY
 tWPKzKIXLNFpV9AmAXD2trHaopP6q/JkL76VTk8Nk5HLsR0pl5LlSlCExSkq+YZ59Z
 pYb/52F6++Rtk7YAqglHez91WgCEV0yvDG9bHKxs=
MIME-Version: 1.0
In-Reply-To: <CAFd5g44GxE-p+Jk_46GYA-WWVHLW7w=yE+K_tbbdiniDfrk-2w@mail.gmail.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-5-brendanhiggins@google.com>
 <20190812234644.E054D20679@mail.kernel.org>
 <CAFd5g44huOiR9B0H1C2TtiPy63BDuwi_Qpb_exF3zmT3ttV8eg@mail.gmail.com>
 <CAFd5g44GxE-p+Jk_46GYA-WWVHLW7w=yE+K_tbbdiniDfrk-2w@mail.gmail.com>
Subject: Re: [PATCH v12 04/18] kunit: test: add assertion printing library
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
User-Agent: alot/0.8.1
Date: Mon, 12 Aug 2019 21:57:46 -0700
Message-Id: <20190813045747.3AF0A206C2@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_215747_842016_BFDFF7CD 
X-CRM114-Status: GOOD (  10.75  )
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

Quoting Brendan Higgins (2019-08-12 21:27:05)
> On Mon, Aug 12, 2019 at 4:56 PM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > On Mon, Aug 12, 2019 at 4:46 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Brendan Higgins (2019-08-12 11:24:07)
> > > > +#define KUNIT_INIT_FAIL_ASSERT_STRUCT(test, type) {                           \
> > > > +               .assert = KUNIT_INIT_ASSERT_STRUCT(test,                       \
> > > > +                                                  type,                       \
> > > > +                                                  kunit_fail_assert_format)   \
> > >
> > > This one got indented one too many times?
> >
> > Not unless I have been using the wrong formatting for multiline
> > macros. You can see this commit applied here:
> > https://kunit.googlesource.com/linux/+/870964da2990920030990dd1ffb647ef408e52df/include/kunit/assert.h#59
> >
> > I have test, type, and kunit_fail_assert_format all column aligned (it
> > just doesn't render nicely in the patch format).
> 
> Disregard that last comment. I just looked at the line immediately
> above your comment and thought it looked correct. Sorry about that
> (you were pointing out that the .assert line looked wrong, correct?).

Yes. .assert is double tabbed?


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
