Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8C9152FD
	for <lists+linux-um@lfdr.de>; Mon,  6 May 2019 19:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhPoCeDrBSqWh6llBXMPsz+jdDTB57/wgI9K2uA81yY=; b=sOyBm7p06ShbHu
	JOB7JTielxOOkawjp94lNSx3sUzJtlAsK+kxQoA2h7nuTP2jsh+h7W1UOtIvIudEFZYpwz/O9SJrR
	2ns9Nrf6tSKELti3LTk+kcw6U0wv1iAozpGIqjWhVz7oMww6kUfSY+9kNLMEaULoEg7MZplAsrcxQ
	NGrZE+vMB76PAEkHJMi3JZffllpeEcmVo4qyIM3oDXmsKSa8yyCxpFJmrUY6tkvXnOntDhcMOP9uX
	Fa3vTUn50QzkczoehZWHSpmLbG2+NsDufq/gQZ2NxNLeeRdlaa+IM/8qBEDySyKVr7AtVe4Pp7Vjp
	uMl5VBczpRYfZZLboURg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhex-0005HG-Ag; Mon, 06 May 2019 17:44:15 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhet-0005G1-Sh
 for linux-um@lists.infradead.org; Mon, 06 May 2019 17:44:13 +0000
Received: by mail-vs1-xe42.google.com with SMTP id r62so1867798vsc.9
 for <linux-um@lists.infradead.org>; Mon, 06 May 2019 10:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OeGgjZBJ9uWD1pdsX/+zOfgOjAibZGBp9WPaU0eToUc=;
 b=m4Zw2fBY+VMLzhBfTBbz4Dtlq0Cc6l6MqEwoJ7YTjrYPzeO8QeIYW3yIFLyCL117Kt
 axxocOSPh/a+gWkz5TWdPKqb2BPRt/jtybJOfLKxxemlLxpId3LZKDrEsHYJlkXqRfwz
 fCTrKPtDSaBjY4auU4otyGauXVMtlpMTLmviNmwp8xF+tgZuQMZPsaKxN5HR6oBL5vv2
 Zb040i1FzkyXpGkN4I4IP7WFVE6iEZwE10S2R1vSIzVYWL40r/PqrLJElx8kQUpZMdyS
 9343jPbZPHbXIDd2SJlyBmLnUf59HZ8PtlBE/IOAyuF/EUfnmI/1F3+fvCafLr94a9B9
 gs7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OeGgjZBJ9uWD1pdsX/+zOfgOjAibZGBp9WPaU0eToUc=;
 b=ctTODkREprBd2hDDQSqlKP2b/Gwl8tyN2ZVtHzbXKgcrY6K4s4WIqXqKWhEmXEL03Z
 9pSV5QFvXsCwkoz4kIv/txFpjdwq2NXpNoyxUhF+xvNvjuUw15FuF79cA1xFhmyw7vrs
 AeHkecY0JCIaHxOM1RWbE0tgQlAidPjls8SuguHVPNmFjMvGH/wzwFg2efOMabcUzEtx
 FuCQe+C+ORVOw9jxW2BTgVxdKCRS+XfymG5/BYZDkyYZ+IyeVXvNnSE5oZN9knHP2b3R
 LG/r20xOOruuiNY1Gyg7ivw+ZjlU01QhDGG22FqvgGL03vuOUeK9NsBsyCOPsFFB4RKS
 uOKQ==
X-Gm-Message-State: APjAAAV2PUHSU7AEYPQuywpkE8Ef+mpYi3cORh2kjkU5h1psDZVZkQAl
 /Bm+9Dhnn8FbIy/FV1gxzxGMey9AdwJoAMfrI934AQ==
X-Google-Smtp-Source: APXvYqxj9ho/3KigVFISlPQqfamyJ4vl1xCgP8i9j8q0ibA/ApDLHmmjNXKUf72ouvJJD/44drdXvLamKur++kGc2Rs=
X-Received: by 2002:a67:dd95:: with SMTP id i21mr8883021vsk.48.1557164647231; 
 Mon, 06 May 2019 10:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-13-brendanhiggins@google.com>
 <20190502110220.GD12416@kroah.com>
 <CAFd5g47t=EdLKFCT=CnPkrM2z0nDVo24Gz4j0VxFOJbARP37Lg@mail.gmail.com>
 <a49c5088-a821-210c-66de-f422536f5b01@gmail.com>
 <CAFd5g44iWRchQKdJYtjRtPY6e-6e0eXpKXXsx5Ooi6sWE474KA@mail.gmail.com>
 <1a5f3c44-9fa9-d423-66bf-45255a90c468@gmail.com>
 <CAFd5g45RYm+zfdJXnyp2KZZH5ojfOzy++aq+4zBeE5VDu6WgEw@mail.gmail.com>
 <052fa196-4ea9-8384-79b7-fe6bacc0ee82@gmail.com>
 <CAFd5g47aY-CL+d7DfiyTidY4aAVY+eg1TM1UJ4nYqKSfHOi-0w@mail.gmail.com>
 <63f63c7c-6185-5e64-b338-6a5e7fb9e27c@gmail.com>
In-Reply-To: <63f63c7c-6185-5e64-b338-6a5e7fb9e27c@gmail.com>
From: Kees Cook <keescook@google.com>
Date: Mon, 6 May 2019 10:43:55 -0700
Message-ID: <CAGXu5jJpp2HyEWMtAde+VUt=9ni3HRu69NM4rUQJu4kBrnx9Kw@mail.gmail.com>
Subject: Re: [PATCH v2 12/17] kunit: tool: add Python wrappers for running
 KUnit tests
To: Frank Rowand <frowand.list@gmail.com>,
 Brendan Higgins <brendanhiggins@google.com>, Shuah Khan <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_104411_930367_A0D211B5 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rob Herring <robh@kernel.org>, linux-nvdimm <linux-nvdimm@lists.01.org>,
 Kevin Hilman <khilman@baylibre.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, May 5, 2019 at 5:19 PM Frank Rowand <frowand.list@gmail.com> wrote:
> You can see the full version 14 document in the submitter's repo:
>
>   $ git clone https://github.com/isaacs/testanything.github.io.git
>   $ cd testanything.github.io
>   $ git checkout tap14
>   $ ls tap-version-14-specification.md
>
> My understanding is the the version 14 specification is not trying to
> add new features, but instead capture what is already implemented in
> the wild.

Oh! I didn't know about the work on TAP 14. I'll go read through this.

> > ## Here is what I propose for this patchset:
> >
> >  - Print out test number range at the beginning of each test suite.
> >  - Print out log lines as soon as they happen as diagnostics.
> >  - Print out the lines that state whether a test passes or fails as a
> > ok/not ok line.
> >
> > This would be technically conforming with TAP13 and is consistent with
> > what some kselftests have done.

This is what I fixed kselftest to actually do (it wasn't doing correct
TAP13), and Shuah is testing the series now:
https://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest.git/log/?h=ksft-tap-refactor

I'll go read TAP 14 now...

-- 
Kees Cook

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
