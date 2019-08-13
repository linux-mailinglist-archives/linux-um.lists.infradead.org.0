Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F1B8B17C
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 09:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtEa0H3VRSrPPYCIYJfk1NQts/S54LunMTZXkWZhGuw=; b=e9VIyZa+VNPW39
	ZSNvJn1J7PInd8BEvuGgSf+Y+knYZeobhm+1NWTYsYb9Mj8vPx1eTzfCQv/jnEzJgTUNww6AJ/uMy
	DvmjewqYGih9yKbziyk9Z2COKjAa0G66ndPcHG1Jph3cGGQ6BdDs5poQYw9DOBfGSi8eHhvNk53sh
	OIqLQRKNkPef/vAUgKDeiRbsoq2jsVwZo2AAWHaohYp1bG7dWRBwEU7E+wO7dIYJxqyJ3dLmNE+GL
	T67DDFIyxcbBUVTGJ0SCwTJ2QUVZeDkIk3mY/xHv2DYxFGf4Hynd6dZYF1mCphkh25B7XUSpxEB/r
	c0QDGXqf59lSMxIeCNfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRcm-0000Ez-BA; Tue, 13 Aug 2019 07:53:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRcj-0000EL-JZ
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 07:53:42 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so10018925pgn.0
 for <linux-um@lists.infradead.org>; Tue, 13 Aug 2019 00:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1w6tEv+UsY5F/hdJoPjOc+8EZA8fHnLVH5Ee68+K+14=;
 b=nVz7SRzwhp+sIStWQOhdw7+eMounsWwWY4b9W+H2splMtvxXWG/v8uX0oyrPhi9Pc/
 DbYNbNpkCoegNiTUpPMiXg34BXPrPJrAjoIA7DyPnMkZHZfSastxpDXvu6zpEH76cIXz
 2ipKiw0wJIDxWMLZyrA5y40OVaB5InZkV31euGDTlfUD9NGVPd2AdaFiZI2HUpl+1Z71
 eZE6OVlRYXpa7v0Ieb0+s2HPAU8hcA299XGRboiSsBb0Wz4QiBbaFXHTBKHp4dwxoDYm
 Lyn/gNUB2QMFaYgVWF7lBw/U70QsznbaxSpwZOVQK35ds3v4ks7lmHH71KHdUCsOoz7q
 RS4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1w6tEv+UsY5F/hdJoPjOc+8EZA8fHnLVH5Ee68+K+14=;
 b=Sx6F0ANO5q9wL7qHJ8a3oecdH10fVQlL49SQuks2b+Pj26q9wXK6Ctmhj0+I/Gy4w4
 ytKGxX0R9ois1IMalkjEWVEieykarKV9DtUKXxX9r/9ajCNrMMPCNUNtAk/CU4cLzbSm
 FgHyjIZiOzqToIqpB7xe2C5f373FkolXCv6FC8Xm7IxsxJPqdOdY+UIwRxznWDvBmgfK
 RmY7PZzmK9LNGXzvqxHU2poRp2TzKJwDxKqStFxloRLX1rbxr+hJiMMSpl44g/D6AaYV
 DQbVu4b93qIL1mECLHrZjG3W0TppUOoJBPcFUPkD0P+3XZkFscSF2Kiy+d3HSs3QXNQG
 863g==
X-Gm-Message-State: APjAAAW3yfvgc72ly9jI8ze0/utngF7A78vb2q+SDnSlSx0e1XLcDTCV
 FWvy/icgDXxfISoyDRMsuKKoNGEBFH/sbkEG2eRNjg==
X-Google-Smtp-Source: APXvYqwRt249N6Nnc3lDOtyH2RE286o2POCGTN4Y9Dd+KQhTUzxvnzvxmCpITQmOohY+Myh1tvYfqlbmJVebyc0CKlY=
X-Received: by 2002:a63:b919:: with SMTP id z25mr33087981pge.201.1565682820534; 
 Tue, 13 Aug 2019 00:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-11-brendanhiggins@google.com>
 <20190813042455.4A04320644@mail.kernel.org>
 <CAFd5g46LHq1sQaio2Vj5jt54YN-Y2HuCT8FbALQhJoekkYJ-uQ@mail.gmail.com>
 <20190813055707.8B2BB206C2@mail.kernel.org>
In-Reply-To: <20190813055707.8B2BB206C2@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 13 Aug 2019 00:53:28 -0700
Message-ID: <CAFd5g45rLTB965BX24DKFauumbdbn=m4kxtzgwr_4uj66Vmzmw@mail.gmail.com>
Subject: Re: [PATCH v12 10/18] kunit: test: add tests for kunit test abort
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_005341_674363_2560AA74 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

On Mon, Aug 12, 2019 at 10:57 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 22:06:04)
> > On Mon, Aug 12, 2019 at 9:24 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Brendan Higgins (2019-08-12 11:24:13)
> > > > +
> > > > +static int kunit_try_catch_test_init(struct kunit *test)
> > > > +{
> > > > +       struct kunit_try_catch_test_context *ctx;
> > > > +
> > > > +       ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
> > >
> > > Can this fail? Should return -ENOMEM in that case?
> >
> > Yes, I should do that.
>
> Looks like it's asserted to not be an error. If it's pushed into the API
> then there's nothing to do here, and you can have my reviewed-by on this
> patch.
>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>

Cool, thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
