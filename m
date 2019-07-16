Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A01B6AF5F
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 20:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3MPZ7EhQssDj0pHMdVzFL7eU/yBUdPq+5YPP9LG5s0=; b=ZFJHM28zx+EjFQ
	PwANnovR6m4/WLXMgRaFXIp1PPCsmAEqwcO0mnAEET3ucVrWmmklX12bOYfrEtM3JGxb1ajMgkdth
	0mG+qZdSOx6nM9kUk0hPOXKCpbtm8vk5P0NzGmgIK1xbHL/OymXG8lB8b6oLYWq2KyTgwRgXGqpV9
	m5lY677lYd81n/ETArTrroomsfx6z+8LNLfwoVODZkWeJW9ASNjARwhWfySDjHXG58mzsGXIFJeMy
	IQcd0tnxfez0TT4DH1Lh/in0ufmjieZzELzHSiRw4Zo9p9Qc+A0XD5uLVNSywGe71KWMvN1bO7qQ8
	18HbvXhSosj8ox4zP1/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnScU-00054v-Qf; Tue, 16 Jul 2019 18:56:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnScR-00054G-FS
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 18:56:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so9877875pgl.11
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 11:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZybekRt/woJPUqImfzbAl3ncwjUgoXdjZVOXaEHk8I8=;
 b=j9eLSBzu7vGeOp+9v4PjjMY8Y60gIHirQjt/95JgwPIeMch+f2SZ4m2BcsmqzLNPnA
 y6mKbUvfRgB58Dd24aP06L/LHkjitHNk2jtHnbwOvIcJMeUwKyAY7Zj3rZzVz85nZG+R
 H6nYqq0HtuMcKgj4ph8KvSOJ57XFS8xQJyN4O9EfZBueGH2zgw2CSiJKxHwffHaRiCZU
 F2ZM5rxXlitmIEXm2ndwKKQaLdsI3EeFpaR3+KwtG2rjkMO/QifOGpG1dhcUu5Cz8T3g
 tXwTsXzmF1fc22PaEHeit7cbJ2ZXrz0nkagsUOfmTF+46/GQqdl6HnMMZCq90oDQiUGy
 RAXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZybekRt/woJPUqImfzbAl3ncwjUgoXdjZVOXaEHk8I8=;
 b=M4gibuHeYxBtbT6Hc0thlDSK4EudQmg3B8Az6dvlLg6KYf0zWpzvMhdRFTaIxOFsTS
 c07YNABhKOLGrWFb9QZoS4EUcc+zO2Tg0qy8HI9i8XVQR68M9Hi75cLeP2JRzu/MC/9r
 gYetsRx8bZo11IbDp0fOGxKxH9iQNje4vBsyYEJuPI58aPJrMCGPQQZKqGowbCPtDILg
 NqkiXeA3zZY4N+56/JgzTZAO/CVHOkVPYIVTUEx3bPf9LClQtFUr4y+gQuxmskqlIhk+
 EQfbBEZRPjQmsfU+Nx0SsXzQOXRIIaOKlY6olck8e8yh2OTawPtLw9Qjs4/mwv/FjM8Z
 AFaA==
X-Gm-Message-State: APjAAAWL35Jd9YI7sVmp9GKc6hOdkaIm60qpnn6DKjwOopyYP+ihMCht
 hGlzXpVS1MdTfaDcko8IYQj9K7gYci+XyjNwDfP1dg==
X-Google-Smtp-Source: APXvYqwkl9ifterOK2ove6KXh9jZEcTxm4XlxkMBt5KD+9P3zl/wFtgkQs2T9gGivENnFOevPZS3P3oa9+3ivqemHYQ=
X-Received: by 2002:a63:205f:: with SMTP id r31mr35946123pgm.159.1563303365863; 
 Tue, 16 Jul 2019 11:56:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-4-brendanhiggins@google.com>
 <20190715204356.4E3F92145D@mail.kernel.org>
 <CAFd5g47481sRaez=yEJN4_ghiXZbxayk1Y04tAZpuzPLsmnhKg@mail.gmail.com>
 <20190715220407.0030420665@mail.kernel.org>
 <CAFd5g44bE0F=wq_fOAnxFTtoOyx1dUshhDAkKWr5hX9ipJ4Sxw@mail.gmail.com>
 <CAFd5g47y4vDB2P=EsGN8305LGeQPCTveNs-Jd5-=6K-XKY==CA@mail.gmail.com>
 <20190716153400.5CB182054F@mail.kernel.org>
In-Reply-To: <20190716153400.5CB182054F@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 16 Jul 2019 11:55:54 -0700
Message-ID: <CAFd5g47Nawp7V8=hetgBQWzWqmEyAz1GtWWwMrb9k=CCR33inQ@mail.gmail.com>
Subject: Re: [PATCH v9 03/18] kunit: test: add string_stream a std::stream
 like string builder
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_115607_521148_E9E39DB8 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
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

On Tue, Jul 16, 2019 at 8:34 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-07-15 15:43:20)
> > On Mon, Jul 15, 2019 at 3:11 PM Brendan Higgins
> > <brendanhiggins@google.com> wrote:
> > >
> > > On Mon, Jul 15, 2019 at 3:04 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > >
> > > > Quoting Brendan Higgins (2019-07-15 14:11:50)
> > > > > On Mon, Jul 15, 2019 at 1:43 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > > > >
> > > > > > I also wonder if it would be better to just have a big slop buffer of a
> > > > > > 4K page or something so that we almost never have to allocate anything
> > > > > > with a string_stream and we can just rely on a reader consuming data
> > > > > > while writers are writing. That might work out better, but I don't quite
> > > > > > understand the use case for the string stream.
> > > > >
> > > > > That makes sense, but might that also waste memory since we will
> > > > > almost never need that much memory?
> > > >
> > > > Why do we care? These are unit tests.
> > >
> > > Agreed.
> > >
> > > > Having allocations in here makes
> > > > things more complicated, whereas it would be simpler to have a pointer
> > > > and a spinlock operating on a chunk of memory that gets flushed out
> > > > periodically.
> > >
> > > I am not so sure. I have to have the logic to allocate memory in some
> > > case no matter what (what if I need more memory that my preallocated
> > > chuck?). I think it is simpler to always request an allocation than to
> > > only sometimes request an allocation.
> >
> > Another even simpler alternative might be to just allocate memory
> > using kunit_kmalloc as we need it and just let the kunit_resource code
> > handle cleaning it all up when the test case finishes.
>
> Sure, sounds like a nice way to avoid duplicating similar logic to
> maintain a list of things to free later.

I think I will go that route for now.

> >
> > What do you think?
>
> If you go the allocation route then you'll need to have the flags to
> know what context you're in to allocate appropriately. Does that mean
> all the string operations will now take GFP flags?

We could set the GFP flags in the constructor, store them in a field,
and then just reuse them.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
