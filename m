Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBF3CDD79
	for <lists+linux-um@lfdr.de>; Mon,  7 Oct 2019 10:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjjniEbPAu0t3LkryusDhR7Ik2okoV65zyuaw7wSw40=; b=VpJSFEf3pK+cYs
	Z8HhqiyJ2ZkXar597RYhd9B65vhgnyUeOq5Yykh7SHORrOI+1ulGG3zwy2kBvEKKtTiW16u1D38Na
	qy/Ve1QGwEf/iIKBZgP4RO63O4OFdfeH0ox6CComra7XaqSkRKFIj9V+FBCdvz7JfCIYmxz+IqW6B
	hk3zJ9/+S+fwRYIBsFsNc/lBTH4gZ7Km0m4z7fo+yJE7raX2vcIDg+vfLue/tsfNhn/KUMub5ZmID
	vQ6yLOJ8PeMkwcAFqBvpPpiyuk1wB0p9f7FKsy8z2QhQM33n3fXR8jC/DbhhhkKzCNXGF+gZAz/zr
	Oworz+H9TVVQlSrOSdLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOZp-00062Z-Sr; Mon, 07 Oct 2019 08:41:09 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOZn-00061r-1E
 for linux-um@lists.infradead.org; Mon, 07 Oct 2019 08:41:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id i14so7733068pgt.11
 for <linux-um@lists.infradead.org>; Mon, 07 Oct 2019 01:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d00h7IdnG9Bs/4S91y4kH9nayVR/gCRtlft74BTzy6I=;
 b=AUmIkwxCvC2VEhvpzdAyuNovVm2KMJDpgDWO5MBAsHUd4584+mQuTJYZeAiA+9d8qf
 Cb8CstcWhfdXgmKTT8Jlla+OWOrkQkY1Q6jQNfjMg0AaTBOEx4pAXKvHC9GWvBLdZn5f
 azsN30/RzedzrQSkqzovoBINho5ERfih75S8sqKoNuhZtu7ZJ6mBbxw52wj46VIAfs+0
 /MI6tTyO9gi1ONrL9pd+19m5cKkMzvosoY+gvlO9IBXyVRyQi1ybU6t67GV8aiwd0d0e
 6C9JtrHHYWmRkyPJoTmdFUFF6AQSVURI2bOhzr9RF9ZKtLjjyBGodHKo0R5D8MzKfjXZ
 yRSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d00h7IdnG9Bs/4S91y4kH9nayVR/gCRtlft74BTzy6I=;
 b=PzmfGvPSBQn10oyxg6cNcMUUrcIccuiXrWt2U/kpJDF5Rxzqaofm9aV7+1142U3JZ7
 SCgcBfmoj3urc11IVXDcLgkIUHA/h7UehJ8IRKJuo18vN6HGRAkwMKpCrZbJAxekR+bW
 OJTC5DwdH/QWNyIL35xrZK7GpzH7WBQMLtl4839M2r9JhJWYbKkBEeM2XhSWqMNjBYc0
 ukDBxoWdkyBVMMcg9XqmTdAs1LSaHN5/tzzxiSlmcTDnCud0ELP/sChEMcE1EKr+7Uc0
 Y92teDXJeqE11WfILA/KITCWwLb42GBUAV33c9xUcmY4Y3hsBsSaFw63TBoM4RsxXBbJ
 9xAw==
X-Gm-Message-State: APjAAAUpyrw+QYnZH7cLwVUKW/2leybblRBwenEnWjr1da0PTYkqfp/N
 xFGyGvSMTL4KUHzgGE3F1F20Q7rgzHF/f02DJas6DQ==
X-Google-Smtp-Source: APXvYqwxXGxNWrOtyc6pCGXMSd6S1trXysWwf0BjsGf8IFVQEjIqe/b6qXijaBYnb2AJQF5sarq/ZPYHb1uY+bE9OzQ=
X-Received: by 2002:a17:90a:5d09:: with SMTP id
 s9mr32723780pji.131.1570437665358; 
 Mon, 07 Oct 2019 01:41:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
 <20191004222714.GA107737@google.com>
 <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
 <20191004232955.GC12012@mit.edu>
 <CAFd5g456rBSp177EkYAwsF+KZ0rxJa90mzUpW2M3R7tWbMAh9Q@mail.gmail.com>
 <63e59b0b-b51e-01f4-6359-a134a1f903fd@kernel.org>
 <CAFd5g47wji3T9RFmqBwt+jPY0tb83y46oj_ttOq=rTX_N1Ggyg@mail.gmail.com>
 <544bdfcb-fb35-5008-ec94-8d404a08fd14@kernel.org>
 <CAFd5g467PkfELixpU0JbaepEAAD_ugAA340-uORngC-eXsQQ-g@mail.gmail.com>
 <20191006165436.GA29585@mit.edu>
 <CAHk-=wjcJxypxUOSF-jc=SQKT1CrOoTMyT7soYzbvK3965JmCA@mail.gmail.com>
In-Reply-To: <CAHk-=wjcJxypxUOSF-jc=SQKT1CrOoTMyT7soYzbvK3965JmCA@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 7 Oct 2019 01:40:53 -0700
Message-ID: <CAFd5g45djTX+FaXwn2abve1+6GbtNrv+8EJgDe_TXn1d+pzukA@mail.gmail.com>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_014107_105293_43B690AF 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, shuah <shuah@kernel.org>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Oct 6, 2019 at 10:18 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Sun, Oct 6, 2019 at 9:55 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> >
> > Well, one thing we *can* do is if (a) if we can create a kselftest
> > branch which we know is stable and won't change, and (b) we can get
> > assurances that Linus *will* accept that branch during the next merge
> > window, those subsystems which want to use kself test can simply pull
> > it into their tree.
>
> Yes.
>
> At the same time, I don't think it needs to be even that fancy. Even
> if it's not a stable branch that gets shared between different
> developers, it would be good to just have people do a "let's try this"
> throw-away branch to use the kunit functionality and verify that
> "yeah, this is fairly convenient for ext4".
>
> It doesn't have to be merged in that form, but just confirmation that
> the infrastructure is helpful before it gets merged would be good.

I thought we already had done this satisfactorily.

We have one proof-of-concept test in the branch in the kselftest repo
(proc sysctl test) that went out in the pull request, and we also had
some other tests that were not in the pull request (there is the ext4
timestamp stuff mentioned above, and we also had one against the list
data structure), which we were planning on sending out for review once
Shuah's pull request was accepted. I know the apparmor people also
wrote some tests that they said were useful; however, I have not
coordinated with them on upstreaming their tests. I know of some other
people who are using it, but I don't think the tests are as far along
for upstreaming.

The point is: I thought we had plenty of signal that KUnit would be
useful to have merged into the mainline kernel. I thought the only
reason it was rejected for 5.4 was due to the directory name issue
combined with bad timing.

Please correct me if I missed anything.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
