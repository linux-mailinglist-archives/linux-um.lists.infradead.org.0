Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A974014777
	for <lists+linux-um@lfdr.de>; Mon,  6 May 2019 11:18:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+vdSE+h8cmE/AhkGQJqtYETyWVw8k0ZkM3aYTllPIw=; b=kXN3h2q5SbShnc
	ozNchp7mqIfg05FsVLQJ72KRgCdQanA6io58DlemcQPVZd1cUz9/3uQmZ8ja7PlLQjT+LBkBoO5be
	0E8gFwJ+tw8m9miY03Kjyn3pfjlRtqY0vrpyFSKVQNvR5g/lhiZ3ZRh4mQJeAlafSSCHfOOIAAx5f
	xM9Nx8Fyit8cuuvZ9/9iVjR/fy7YIpYXS1Rtw09/mqxd7T30H62N1rq9Om+5l9mbFuNotnqls5p7o
	SMw8opvbtnuHizZvT2Dj7ylzyAbd++73wKhYJKGkjaAET/RdZ1++7drjpc3o1AQaXql7WHQhnAFfU
	N3HYaTz3V/VqsbpfzNzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZlS-0003uy-B5; Mon, 06 May 2019 09:18:26 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZlG-0003iH-GX
 for linux-um@lists.infradead.org; Mon, 06 May 2019 09:18:16 +0000
Received: by mail-ot1-x342.google.com with SMTP id b18so10833815otq.3
 for <linux-um@lists.infradead.org>; Mon, 06 May 2019 02:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EuMXXHqqPef2GwgL+nQvKY3dmYnxYLGClh5z++gsDCE=;
 b=sqUiKiFkHuS/zMcsXJp/YVQ9Xvsj9z1z6Qymcl2DruVbxk25BEUbeggocvbWAnhm5w
 zafVtoeptdhmkmQVySQB3JwkXQHS6fLm2/wWTVMXU2RAbc2imQQv9+YkBVvD6ic2JuMI
 1ikTcpdlA9VrSJ94GFL5FOP0BgugrA521QHxv3MHfGRZERmqFxPksbw8JgkSiOXb5kCz
 NhICHik7i/u7iBVQPDnR6rVT2h+P/BC3GpK/7XThzUVtCWPANcl0bPo/9Evg9oejZRXN
 F/kwBaILmSEdHFapwIeGtAxrGfQ7g/4sN7rpo+FU+AipihP/fGSchFlx5sCt7F6gjQZJ
 akeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EuMXXHqqPef2GwgL+nQvKY3dmYnxYLGClh5z++gsDCE=;
 b=T4H3OA5f/9YFEFNNLvvUmWujji8HM3QeD2sR6hfUD+I4qxL6kPeRB+mMG7EsfOKSTj
 vrdhsRdmSAT2hPiX9HvNqC3qMZiFW6F223ulxpUja+SEB/Hvo2+HJwX3KbpZJCw4mNcm
 7nGIMSdiamLA51FVxILpFjhf7JpHkj6rDZekSfR4HqDwta19l2BqsSkrcPE160DZTMWv
 iM69YQZV6BVKPghtEaj1ay6ufpPuUqedX576stqDGBh8U1YfwSoEThuDNLMsQM+WlAjj
 8UW/ImXnOVRanyesC1udZnoaEaFqkzrt7I0VRbivI2rD3VzO5PkzdFeuIdQvtAaXJVD7
 KfmA==
X-Gm-Message-State: APjAAAVLrWXZx/z6URecLHBfJZhTN1w0MQC7NDeF6kHNKrILjb26kNJ8
 nueVX3Uw0fA2EMLgf488Hevofc83SGSEWtbuLrjhvA==
X-Google-Smtp-Source: APXvYqwJ3xWdH/Lcmkx6YRG/BMIY9WxqPyKwUn5ZqoX3PeD8nyMheiZI5T1OFI6UXxsrrwGRwMbiUWxrFpDFumPm0yg=
X-Received: by 2002:a9d:71de:: with SMTP id z30mr15637896otj.113.1557134293178; 
 Mon, 06 May 2019 02:18:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-16-brendanhiggins@google.com>
 <68f88e1c-d40f-9dad-7296-ab2b2303c575@kernel.org>
In-Reply-To: <68f88e1c-d40f-9dad-7296-ab2b2303c575@kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 6 May 2019 02:18:01 -0700
Message-ID: <CAFd5g456XwQV2+iy=0K7AwBc5wbQDRL2DAJgMEsJBLtFdZ5erQ@mail.gmail.com>
Subject: Re: [PATCH v2 15/17] MAINTAINERS: add entry for KUnit the unit
 testing framework
To: shuah <shuah@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_021814_571010_000D1103 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Shuah Khan <skhan@linuxfoundation.org>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 7:38 AM shuah <shuah@kernel.org> wrote:
>
> On 5/1/19 5:01 PM, Brendan Higgins wrote:
> > Add myself as maintainer of KUnit, the Linux kernel's unit testing
> > framework.
> >
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
> >   MAINTAINERS | 10 ++++++++++
> >   1 file changed, 10 insertions(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 5c38f21aee787..c78ae95c56b80 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -8448,6 +8448,16 @@ S:     Maintained
> >   F:  tools/testing/selftests/
> >   F:  Documentation/dev-tools/kselftest*
> >
> > +KERNEL UNIT TESTING FRAMEWORK (KUnit)
> > +M:   Brendan Higgins <brendanhiggins@google.com>
> > +L:   kunit-dev@googlegroups.com
> > +W:   https://google.github.io/kunit-docs/third_party/kernel/docs/
> > +S:   Maintained
> > +F:   Documentation/kunit/
> > +F:   include/kunit/
> > +F:   kunit/
> > +F:   tools/testing/kunit/
> > +
>
> Please add kselftest mailing list to this entry, based on our
> conversation on taking these patches through kselftest tree.

Will do.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
