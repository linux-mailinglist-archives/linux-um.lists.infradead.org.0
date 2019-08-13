Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8942F8AE5E
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 07:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5X1CTAbRGoo9Oan9nszLkAtvi8T7DQRwB0/S8UyE7cY=; b=Iwfb0qS7h+zha4
	PbWKYzGGtiEBffzA1IQbdy5yYqN7LCfFe4s+7Czd1PyEDsiJvDf0nj/GpG91TMWF9a2sxSm5hn+Zd
	oJrs/UFHVPh3a5en8H2y9gnJHWE0H6JgDLiU3+wf+UjwpZPl54hba8cEoiIfFdUcPWE7WpT1XIgEw
	RuVIA4ito6X0U26X00qYA4vJV6/mDPqVSoU4NSyLzT4nhAH055IjuBp/rbpO1KvAXukInNFdn1XbW
	4MV7mtk8EfkA6sHzYHRgSme7jbpP7pcvyYgvX3LEDk9Tkgb5dbUkvq1oc4pH1iNOYnpliBi03VK3l
	9WBXS4yaCU2/0hwDdFXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOwj-0005rt-7P; Tue, 13 Aug 2019 05:02:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOwg-0005rY-T0
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 05:02:08 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A49C206C2;
 Tue, 13 Aug 2019 05:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565672526;
 bh=VlB5crXiwSSXpj9OJzMKtvlRZYtABRaxOaHE9tvmNvQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=CWjDW5KmpM1E7Bx+UYTB4tyPDejc2fEUptE5IcAkuGvU7mUfDgTAAhTueY0gTM5ZJ
 Lf7aINsUW0IO9cUIA9NGU6yHEm7BhE7QOER+LlRbYnrOJlgvwyaBWpzcuKPKNq9Pqu
 6jAUm8V4d6UWvUCRS3+itnRHBDP2BfyVmt1mXiAY=
MIME-Version: 1.0
In-Reply-To: <20190813003352.GA235915@google.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-6-brendanhiggins@google.com>
 <20190812235701.533E82063F@mail.kernel.org>
 <20190813003352.GA235915@google.com>
Subject: Re: [PATCH v12 05/18] kunit: test: add the concept of expectations
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
User-Agent: alot/0.8.1
Date: Mon, 12 Aug 2019 22:02:05 -0700
Message-Id: <20190813050206.2A49C206C2@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_220206_981207_7523175D 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-08-12 17:33:52)
> On Mon, Aug 12, 2019 at 04:57:00PM -0700, Stephen Boyd wrote:
> > Quoting Brendan Higgins (2019-08-12 11:24:08)
> > > + */
> > > +#define KUNIT_EXPECT_TRUE(test, condition) \
> > > +               KUNIT_TRUE_ASSERTION(test, KUNIT_EXPECTATION, condition)
> > 
> > A lot of these macros seem double indented.
> 
> In a case you pointed out in the preceding patch, I was just keeping the
> arguments column aligned.
> 
> In this case I am just indenting two tabs for a line continuation. I
> thought I found other instances in the kernel that did this early on
> (and that's also what the Linux kernel vim plugin wanted me to do).
> After a couple of spot checks, it seems like one tab for this kind of
> line continuation seems more common. I personally don't feel strongly
> about any particular version. I just want to know now what the correct
> indentation is for macros before I go through and change them all.
> 
> I think there are three cases:
> 
> #define macro0(param0, param1) \
>                 a_really_long_macro(...)
> 
> In this first case, I use two tabs for the first indent, I think you are
> telling me this should be one tab.

Yes. Should be one.

> 
> #define macro1(param0, param1) {                                               \
>         statement_in_a_block0;                                                 \
>         statement_in_a_block1;                                                 \
>         ...                                                                    \
> }
> 
> In this case, every line is in a block and is indented as it would be in
> a function body. I think you are okay with this, and now that I am
> thinking about it, what I think you are proposing for macro0 will make
> these two cases more consistent.
> 
> #define macro2(param0,                                                         \
>                param1,                                                         \
>                param2,                                                         \
>                param3,                                                         \
>                ...,                                                            \
>                paramn) ...                                                     \
> 
> In this last case, the body would be indented as in macro0, or macro1,
> but the parameters passed into the macro are column aligned, consistent
> with one of the acceptable ways of formatting function parameters that
> don't fit on a single line.
> 
> In all cases, I put 1 space in between the closing parameter paren and
> the line continuation `\`, if only one `\` is needed. Otherwise, I align
> all the `\s` to the 80th column. Is this okay, or would you prefer that
> I align them all to the 80th column, or something else?
> 

This all sounds fine and I'm not nitpicking this style. Just the double
tabs making lines longer than required.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
