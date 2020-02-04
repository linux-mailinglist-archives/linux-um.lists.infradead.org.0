Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC276152267
	for <lists+linux-um@lfdr.de>; Tue,  4 Feb 2020 23:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=896maoxVqAgbMOd2+F0LRvwD6v+4+MWbk5XFSBqfPjU=; b=uEpfbzHdx3RzR6
	RCIrB12TGGlJ2nTcFFsroAjdm+EruaS+2S8AFwYpaMfq3JXiq2OxU9tU9pwdWqa4o8It9+ViiaThu
	SoipuqPwJVArCNqVrHQqq0lTB68jNRFowHIDY2PhLowsUFC71zg2uO3vHBXc+ghmXZZhJLqfebEXb
	j2cPWdsB7KZ8uP031GjQVn493rSgb6wxF6rAk8LeVtfnIhDUM4UJ7sGIuliNGJsoKYwPTUovtUWwK
	9+Gjhixn02kwmFCwlClM8EAj//oqv6FVdZ7iDMZpyGCO/6ZaOmZA2ByuGQvXZ21WfA2wrPLKfcv2+
	23EON3n+13crK/t2nkPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz6nH-0003VV-Md; Tue, 04 Feb 2020 22:35:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz6nE-0003Uj-T0
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 22:35:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id p11so7883572plq.10
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 14:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wW0tjd+cBxeR6/lhPUUjx0fEpBoP1LYYTT0FsIiI1ho=;
 b=icGZp+gWX8+ra8EaRzj0omZeGdmp0NxlbomRJ1M8RaU/WQNP+zqgYuJZSPFcaiWcnZ
 2pCWkyEpTMGGCi9alcZbNMp01PJ6HAZzwmE6trVB6wWJfukGW4fmAYtsgfiXedtOqqRT
 bmFSWApPulYRdVfiU3CIZn8jePJi3U2HzSVo++6ZSgzVHry0vhZ3v1h/qeuxOx83W3He
 S2QBe7oA9erOEncvfIOndMP6l3GHqBJB+9L+ElZ0vc5VnS5GueU9EJ3BnmcLAsA1zQb2
 zG+yXK+320g1OiPoDFO6spKz5/W1GSM7NskP7wp/j9iQ7LQ71cVXLbv42DtWh8/5ZB7g
 33Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wW0tjd+cBxeR6/lhPUUjx0fEpBoP1LYYTT0FsIiI1ho=;
 b=mAj4NvLXr5s3N3m+pu9lR/FY9CszNTCwUzdxsdakWJk8ycYWvYIn+uxm7Rs5TzG+wh
 gTOCZYw/Yb6/fvjxoKUbg9xzNhIMaRMlieNEnTjQpcKsf9BLkXbKknMhwi+o+X0hsMEa
 EnoCJjWJoH8ITX9WAbWTvuFCh8VKzvtuewDtcykf51YRHqVzkWXe5396+N/Gxx5HaTUb
 eCXKicY9VM/bXCpw1j2MzkUVafU65JzVI5O+GtFkoZacLKxQGm2siQVYnc19GoHUWWat
 smCCuX/QHVw5bbqwon2uv+msL7yDNsavNr1sd8tcOUEHRzJXmH5xN/dXO8UKOMj8C7vp
 2BYA==
X-Gm-Message-State: APjAAAVyt98RT10XUOue2hC0u0A9+CS53kKpf7xqd3FQDeKP7zwQbeRV
 Q+Eg8cvGB0nGxLjOgegIVPF5cqzh+1c6X0wgUXPeHA==
X-Google-Smtp-Source: APXvYqy0w6xoiM6E9N7yfGOvN2yylEfVSD+LT3cHC469AG7ZzC1NJLwbAZS26Rmu1su+jZ8vZlXD5Lh2v7ZgeQA4us4=
X-Received: by 2002:a17:902:fe8d:: with SMTP id
 x13mr32717392plm.232.1580855739838; 
 Tue, 04 Feb 2020 14:35:39 -0800 (PST)
MIME-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-4-brendanhiggins@google.com>
 <11977708-bb18-e322-db7a-9f21d7cdec54@gmail.com>
In-Reply-To: <11977708-bb18-e322-db7a-9f21d7cdec54@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 4 Feb 2020 14:35:28 -0800
Message-ID: <CAFd5g47d3=drrSAOMpn_BOf8Gw94mfdJ6NrmroRf4a__=PCEWg@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] kunit: test: create a single centralized executor
 for all tests
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_143540_961992_31009CA3 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Alan Maguire <alan.maguire@oracle.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 2:27 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 1/30/20 5:08 PM, Brendan Higgins wrote:
> > From: Alan Maguire <alan.maguire@oracle.com>
> >
> > Add a centralized executor to dispatch tests rather than relying on
> > late_initcall to schedule each test suite separately.  Centralized
> > execution is for built-in tests only; modules will execute tests
> > when loaded.
> >
> > Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> > Co-developed-by: Iurii Zaikin <yzaikin@google.com>
> > Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> > Co-developed-by: Brendan Higgins <brendanhiggins@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> > ---
> >  include/kunit/test.h | 73 +++++++++++++++++++++++++++-----------------
> >  lib/kunit/Makefile   |  3 +-
> >  lib/kunit/executor.c | 36 ++++++++++++++++++++++
> >  3 files changed, 83 insertions(+), 29 deletions(-)
> >  create mode 100644 lib/kunit/executor.c
> >
> > diff --git a/include/kunit/test.h b/include/kunit/test.h
> > index 2dfb550c6723a..8a02f93a6b505 100644
> > --- a/include/kunit/test.h
> > +++ b/include/kunit/test.h
>
> The following fragment does not match the test.h in Linux 5.5 or 5.4-rc1 (as one
> possible earlier version).  And we are not to Linux 5.5-rc1 yet.  (Simple way
> to check for the mis-match - 5.5 has kunit_test_suite() instead of
> kunit_test_suites().)
>
> I know that there is an alternate tree where some of the development occurs.
> Can you please add a link in MAINTAINERS?  And please note (at least in
> patch 0) what tree the series is developed against?

Yep, I was planning on sending an update to the MAINTAINERS with that
and some other updates soon.

In future revisions, I will put a link to the tree I developed
against. In the meantime, we send pull-requests from here:

https://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest.git/log/?h=kunit

And that is what I used as my development base for this series.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
