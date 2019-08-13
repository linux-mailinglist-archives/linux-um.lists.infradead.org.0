Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3248AE73
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 07:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQQkqVA/dg2OssFCxav1PKjRNdYjeHr/SsS/GMEScAE=; b=CTWAz8pDDk+QbA
	HxKrOIMyxkOsdzKV3xKk75EZAUuPFuLFDrDISmLyKhKAOZ7tzjnufZ7088dj8wngbIH8wpPf6/cOV
	OXYNV7zmzVsu5DWgGqsCJkWrBWW1n+fXw1PvHbRw5iin9wG2DarE5vZeDSAr+4xLKMVpfFqUy+UjB
	DaGkl6zjwFcaNLKvEcU+zJM6NHSIdOFH1wkZDAnAnle3n0Aiffy3jj3vWp0FRjL4uW++sKXGDxJgk
	lopldCU0Y9MmjQl1OWqCxXgN/q1+/WDxbajFRRl/ditXTWoGOU+bDy7UKvGemxYeIEARuzWRPyMwN
	VWWjvWd8MKA2T7EINBOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOyW-0005zO-Os; Tue, 13 Aug 2019 05:04:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOyT-0005yD-6W
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 05:03:59 +0000
Received: by mail-pl1-x642.google.com with SMTP id c14so48681928plo.0
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 22:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aKOfFTV6VGP5BNUB1Vnarc/F0DL+26vq0829FAbZrqo=;
 b=svgoSdNRxSLsCnnIOc7xbQg9GgF9oKMJ1Zy9kd11vWwaKXoOnKpb4m3E5VD5iVlgYD
 +Q8GW61vmO7pSODND/EU3ySpZFU6zBm/nnzXrEdbXjYeyp0z5HZ4MlPGEFDVamV7AnNt
 YxSzN7MGuqE5YtmeQLv8pM8cwjVoHM11Q7HgFuNs7NBSHTrEDEHtBfVlPMX1tM122Zoh
 /lJWbiyvCy294xIaxGNy1x0QeVRdkekMXrwW6vrlb0zY+yiiNnJIqQVHv78TipzeF0fL
 lbgrIbrBSmtQjgptdFMq0Sq8pSiArBm+sF/Wu+BeNyqHXo/vQXv7UP+JqfWMmgemFjSH
 IU5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aKOfFTV6VGP5BNUB1Vnarc/F0DL+26vq0829FAbZrqo=;
 b=GVlrkDQE8jY1Bw1a1VRYOMI6Y9aQjFVfY3OnMQAmX+vGqc34M41i6i5oxPuV4/wM1A
 pY8cLM2H1Jos6MUsXr62yMsWKm0JNsyHdhdjfUqO57xPQg0oVIh3YLahrzstG1kwfeEF
 /F+FcE9G81jZAm13FzppLz1kjv1GeViCx1B8ptheLrhHw7m1G6g9FFd9U2NvQX6btYma
 UO6uOYSxVsvCq2GhUFQUEtfjosPtMn46HlKF7ZGhQtpMOlCoCahtSHfB1hMRY9DxBvS/
 SmMKdidDFaIe5AtBLc57EU7RQZxYoi+HWjtpEjHh9JrlYXEqS2Xy5tUMPrn6fVa0OkDV
 Z/VQ==
X-Gm-Message-State: APjAAAUWFRDewtF6YiCYONIoV7NlIYWuEmE8mgmL/ylc2oj826a8T6K3
 GYb2UBFiGt3PK41fCYjGDwY+3T2ibunvBwZR8v1hKg==
X-Google-Smtp-Source: APXvYqwgOw9EQ70Umy0oEnQ5G5LCL6qyMyWjnNbSVpHRs20m04I8HxLTnoiIjpuTiP19er8DvO/pyE/cwQSXqDyWk+Y=
X-Received: by 2002:a17:902:5983:: with SMTP id
 p3mr26758654pli.232.1565672634067; 
 Mon, 12 Aug 2019 22:03:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-5-brendanhiggins@google.com>
 <20190812234644.E054D20679@mail.kernel.org>
 <CAFd5g44huOiR9B0H1C2TtiPy63BDuwi_Qpb_exF3zmT3ttV8eg@mail.gmail.com>
 <CAFd5g44GxE-p+Jk_46GYA-WWVHLW7w=yE+K_tbbdiniDfrk-2w@mail.gmail.com>
 <20190813045747.3AF0A206C2@mail.kernel.org>
In-Reply-To: <20190813045747.3AF0A206C2@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 12 Aug 2019 22:03:42 -0700
Message-ID: <CAFd5g47OUymztYcWngDUd10WswVOrO-PTmX+KNF_T=cg_OcJNg@mail.gmail.com>
Subject: Re: [PATCH v12 04/18] kunit: test: add assertion printing library
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_220357_579926_FF607655 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Aug 12, 2019 at 9:57 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 21:27:05)
> > On Mon, Aug 12, 2019 at 4:56 PM Brendan Higgins
> > <brendanhiggins@google.com> wrote:
> > >
> > > On Mon, Aug 12, 2019 at 4:46 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > >
> > > > Quoting Brendan Higgins (2019-08-12 11:24:07)
> > > > > +#define KUNIT_INIT_FAIL_ASSERT_STRUCT(test, type) {                           \
> > > > > +               .assert = KUNIT_INIT_ASSERT_STRUCT(test,                       \
> > > > > +                                                  type,                       \
> > > > > +                                                  kunit_fail_assert_format)   \
> > > >
> > > > This one got indented one too many times?
> > >
> > > Not unless I have been using the wrong formatting for multiline
> > > macros. You can see this commit applied here:
> > > https://kunit.googlesource.com/linux/+/870964da2990920030990dd1ffb647ef408e52df/include/kunit/assert.h#59
> > >
> > > I have test, type, and kunit_fail_assert_format all column aligned (it
> > > just doesn't render nicely in the patch format).
> >
> > Disregard that last comment. I just looked at the line immediately
> > above your comment and thought it looked correct. Sorry about that
> > (you were pointing out that the .assert line looked wrong, correct?).
>
> Yes. .assert is double tabbed?

Yes it is. Sorry about the confusion. Will fix.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
