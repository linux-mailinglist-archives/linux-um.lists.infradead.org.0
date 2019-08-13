Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223FD8B1DE
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 09:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TE8IWQj9U5cJcN4pecT/konnx+VHuz/NoDoMwFvCqSI=; b=jKVv8GgNGLNDwC
	w4pGSPi22yPv+3Qk9qkhZj5NLH1rPLfX0h8eE7UTv3eYBXo5zutz6woI09wzdVd/SxVlR7kN3rsZf
	7i+8vr3YXSV00TpI7yGg5fSe/HeQwv22d2qCW8Zk3qpRB3VmdoUSmKYpVymH1v6Ki4YNrSTXSrBQo
	bze0Nb3fqbKtiUuHieV9GELcJFCINwa2F2hpqWTzqo41N5zoHlXERb9yOXFiSZWvZywYURRAc6pjV
	EWXbvGKQdcoAp7pegYn3tWX2WLdpZia63012YVWUEKU4DXAA9wdSRhVtcDxq83zuV8snx1kIVhu5a
	1nT+H+4A4dy8wydSW8HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRiP-0001qB-6b; Tue, 13 Aug 2019 07:59:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRiM-0001pi-E5
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 07:59:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id m9so48784318pls.8
 for <linux-um@lists.infradead.org>; Tue, 13 Aug 2019 00:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5R0Mn+kXy6miNBPjF2nukdlARFsEwajrrqyvCbZs0pA=;
 b=ElNxu9XWCw3bi/ATpZFZYjmD1lNIywxKKFS5/SHJ+NwUixjR7oQpJwrCG6C82nHfPy
 YE8W4U4AeTrAMqQ2pXMKDLv0qv25tWwlR4csBdCEP98WPeUFvsBeDL1m4hdGu9A+ggXq
 rIp38mmbymsY1BBKpvxm+hERpjOI6axxwbcZj1V8AikaF+Z1aQ1dWRUa9wjwGG01d9h8
 sKGT9tDrSb5EvJwPrCnDwx2/CHTHsgoyEks8OTr6XOvgVMfyBNDjqNOfEiBRGJ6z8hZW
 ZIB+cqqvARstSDttQQKSBm5mxEfD8wl+hAodt9NBsSLUg9+gEPC8zU5ZICyW930HwyEc
 VCXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5R0Mn+kXy6miNBPjF2nukdlARFsEwajrrqyvCbZs0pA=;
 b=hJKC/RW5BzIQlkQ0PanXS9bqILBY+xNfKSJ7TVmbjI3aLWwBRoWXYAdz9uItwVNBMv
 uDBaOJyG8chTkmTxDBRZ5j1DbTMlaPVpJWMShNTjuMPOE/c3MudaU1ZMrnl0A4h9Hd8r
 6KAuzHM/TkObb+NFHEpXMqIV/8+In3qzN4St4aAxJkDN2x3oYrmJQB+jtZ3nPfjgG+vn
 Cd3QRcRgXBLjQvIM2z9UyTX7+m3HtcZqY/+zm4zEFRLyJjmYdGcEGXQsE8XQQFu48ysO
 S7nZlsC6sBXdH6yWMpp+iyJiAlff156iZKZJaQnMkWNUQNzohbifCMzhdvvW4yABASdZ
 oMhQ==
X-Gm-Message-State: APjAAAUTCW/P+P9Vn+cMxkkVeMHAO3ZezN6QamXYKaDl7+KKTXF0V9q0
 8j+f4dCDiHkd7rbgGj7CjZHL1GHM6fisffhe6XnguQ==
X-Google-Smtp-Source: APXvYqyvbUK5kDHossVyHcMfS13gJpm82JS1lGa4QkU7lNSWK1exa+MkZF0H451Y+v9ozGPzr6jJly+0fJd6rna7v9Y=
X-Received: by 2002:a17:902:169:: with SMTP id
 96mr23827974plb.297.1565683169131; 
 Tue, 13 Aug 2019 00:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-15-brendanhiggins@google.com>
 <20190813043859.661F82054F@mail.kernel.org>
In-Reply-To: <20190813043859.661F82054F@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 13 Aug 2019 00:59:18 -0700
Message-ID: <CAFd5g44wUOhmxr3r+-LR_igePMjtaRrtT5jGdqPJgb0xPdf+Ag@mail.gmail.com>
Subject: Re: [PATCH v12 14/18] kunit: defconfig: add defconfigs for building
 KUnit tests
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_005930_499897_7576B264 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Aug 12, 2019 at 9:39 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 11:24:17)
> > diff --git a/arch/um/configs/kunit_defconfig b/arch/um/configs/kunit_defconfig
> > new file mode 100644
> > index 0000000000000..bfe49689038f1
> > --- /dev/null
> > +++ b/arch/um/configs/kunit_defconfig
> > @@ -0,0 +1,8 @@
> > +CONFIG_OF=y
> > +CONFIG_OF_UNITTEST=y
> > +CONFIG_OF_OVERLAY=y
> > +CONFIG_I2C=y
> > +CONFIG_I2C_MUX=y
> > +CONFIG_KUNIT=y
> > +CONFIG_KUNIT_TEST=y
> > +CONFIG_KUNIT_EXAMPLE_TEST=y
> > diff --git a/tools/testing/kunit/configs/all_tests.config b/tools/testing/kunit/configs/all_tests.config
> > new file mode 100644
> > index 0000000000000..bfe49689038f1
> > --- /dev/null
> > +++ b/tools/testing/kunit/configs/all_tests.config
> > @@ -0,0 +1,8 @@
> > +CONFIG_OF=y
> > +CONFIG_OF_UNITTEST=y
> > +CONFIG_OF_OVERLAY=y
> > +CONFIG_I2C=y
> > +CONFIG_I2C_MUX=y
>
> Are these above config options necessary? I don't think they're part of
> the patch series anymore so it looks odd to enable the OF unittests and
> i2c configs.

Oh whoops, I forgot that we dropped the OF_UNITTEST from this
patchset. Will fix.

> > +CONFIG_KUNIT=y
> > +CONFIG_KUNIT_TEST=y
> > +CONFIG_KUNIT_EXAMPLE_TEST=y

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
