Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA61173EEB
	for <lists+linux-um@lfdr.de>; Fri, 28 Feb 2020 18:53:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fkKo2GuR3GUGZujn11fLqiCUovxaI9MUEqIXsQOv2A=; b=g0Q65H+TLKyHXU
	fDy+RacsEEHcGpmtUHArUtcAIAzLNabLVXJwCqPfM4EtlU6JEZO0FLnglSK9/8V7pUDU4FjsHFvbW
	bEHxvQ1TNismkPvtLK3EgFa+STEJ/yhYVrV2JTQ5AHqlbk/e+6NLkes9A4cexVE40zwpfA3Mfh4Bx
	ZLWSzox3E6S4YlAi27Y1rre2MqqelJ+f9Jr+yBkF+l8mJSUANLOfNwhvAsMJlno/rqdpqWvVO3/oQ
	E8Ka/fh853CUPsX4f8VTT+kDmfzO9xxeKHmvwYXv8hu+/iIoStnZSXCTUx9w2Rgmf4cWHnzBUhis2
	FBK42HkMnHCJ0CgoOEMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7jpX-0001Oc-12; Fri, 28 Feb 2020 17:53:43 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7jpU-0001Nf-72
 for linux-um@lists.infradead.org; Fri, 28 Feb 2020 17:53:41 +0000
Received: by mail-qk1-x741.google.com with SMTP id q18so3760095qki.10
 for <linux-um@lists.infradead.org>; Fri, 28 Feb 2020 09:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7A81NCRtl/YMUGoXqhguAxYpB741arq6+hyuPYrsxj8=;
 b=sY0DpGEQqcJV+Om5EC5uuAuFwKAdjsRvhCmg7xEn8ttC+eOSqdtl9G7psxfJzUGzyq
 CFgexnJMO3BoZGn/iSzwSiVKiNzwcPPDrFaf2Kub18f4onnWtjyleou7j3D2qhFdanI8
 98t3lMngB6DyG5RzEw7SjgPkXdKjFb3VE9dGVTR5oeAa+IK8b22h9bpLrpLx/BgQzkUe
 Toz5kRGpIoqs7+ZszYosKGlJnWIVNnjOECOmsMnWFqnLNWmKzGIpmPLHE0mrnCM6fr0q
 CIvoVZX6V+zY/5T2ce6U9NoaV0KO+J1Ir2Q/sD+StqT1lsJW9n9C8bqwLC/RPl6XtCpv
 6fyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7A81NCRtl/YMUGoXqhguAxYpB741arq6+hyuPYrsxj8=;
 b=qun5VwUX3u4PglJ101ncFvhS/ub3A2YhN6U55QHjT9UhbE3ypzyP4ueNCXuq2XASa3
 K/rkfqebj/z0wvZXTEJ2/bC+KwSitGXlpwbi3owMTEvfLuO1yK4PAmJW226BBbYG+Dmw
 e6NWwxIlx+ztJP4TAx4y8eWUYfloe4viRjkb+jpD7gfJIpetR4OXdgsBu0JcDTPYhbJh
 9z6ysXP3XYb1jgOpijh2fsiCOAnW7Yw1TaZerlPpiY2qzYgEPO1uM4XoND/v+R7IkkPh
 KQCwxtb4D4lEyUjZd0JRTPWaTsPYu7VBUvC36htXcvGsKxbdZ8bozExeUDeuO0WPSUcu
 OP9A==
X-Gm-Message-State: APjAAAVu05p4d6rpKk3Nrt4mMZT8Hqg0op76ed9Qdj81j2DPbbIEFJsb
 v+KI2mfF9m66YHs6vAPZ90h5gZ7efAP8OBWiu1ND
X-Google-Smtp-Source: APXvYqxuUZyxP1RTj056y0C7X/UxFsJhJD3+Tlwcqh1VF5LE+BUAzmAANREZPS01D5w3HfGzooO7MBqD5Ciibnynh/Y=
X-Received: by 2002:ae9:f301:: with SMTP id p1mr5320690qkg.422.1582912416914; 
 Fri, 28 Feb 2020 09:53:36 -0800 (PST)
MIME-Version: 1.0
References: <20200228012036.15682-1-brendanhiggins@google.com>
 <20200228012036.15682-2-brendanhiggins@google.com>
 <CAFd5g46dVaV18=5mPLTHh06KQ6nDh4Xw4r8PAZDfSXASi=Qpmg@mail.gmail.com>
In-Reply-To: <CAFd5g46dVaV18=5mPLTHh06KQ6nDh4Xw4r8PAZDfSXASi=Qpmg@mail.gmail.com>
From: Iurii Zaikin <yzaikin@google.com>
Date: Fri, 28 Feb 2020 09:53:00 -0800
Message-ID: <CAAXuY3qnButVR4hRQcsUbUsvLFg9cSvxSe15uG82T=j+QSQUqQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] vmlinux.lds.h: add linker section for KUnit test
 suites
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_095340_282490_C0A35947 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Stephen Boyd <sboyd@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Frank Rowand <frowand.list@gmail.com>,
 rppt@linux.ibm.com, Logan Gunthorpe <logang@deltatee.com>,
 Luis Chamberlain <mcgrof@kernel.org>, David Gow <davidgow@google.com>,
 Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Alan Maguire <alan.maguire@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

We went with this alignment precisely because it's the largest that
any supported arch may possibly need. The problem as I understood it
was that the compiler, seeing a bunch of pointers decided to put them
at the memory-access efficient alignment rather than at the section
start. Remember that the section start used to be unaligned for some
reason. Note that the alignment that is a multiple of smaller
alignment is still aligned wrt the smaller alignment, so the compiler
shouldn't need to put the pointers elsewhere.
I wonder if there's a more robust way of forcing the compiler to put
the pointers right at the section start and insert no gaps between
them than playing with alignment.

On Thu, Feb 27, 2020 at 11:22 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Thu, Feb 27, 2020 at 5:20 PM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > Add a linker section where KUnit can put references to its test suites.
> > This patch is the first step in transitioning to dispatching all KUnit
> > tests from a centralized executor rather than having each as its own
> > separate late_initcall.
> >
> > Co-developed-by: Iurii Zaikin <yzaikin@google.com>
> > Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> > ---
> >  include/asm-generic/vmlinux.lds.h | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index e00f41aa8ec4f..99a866f49cb3d 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -856,6 +856,13 @@
> >                 KEEP(*(.con_initcall.init))                             \
> >                 __con_initcall_end = .;
> >
> > +/* Alignment must be consistent with (kunit_suite *) in include/kunit/test.h */
> > +#define KUNIT_TEST_SUITES                                              \
> > +               . = ALIGN(8);                                           \
>
> After posting this, I saw I had gotten an email from 0day[1]. After
> some investigation, I discovered that this 8 byte alignment works for
> x86 64 bit fine, but only *sometimes* for 32 bit. 4 byte alignment
> seems to work in all cases (so far). I am not sure why we went with
> such a large alignment in hindsight. In any case, I should have a
> fixed revision out pretty soon.
>
> > +               __kunit_suites_start = .;                               \
> > +               KEEP(*(.kunit_test_suites))                             \
> > +               __kunit_suites_end = .;
> > +
> >  #ifdef CONFIG_BLK_DEV_INITRD
> >  #define INIT_RAM_FS                                                    \
> >         . = ALIGN(4);                                                   \
> > @@ -1024,6 +1031,7 @@
> >                 INIT_CALLS                                              \
> >                 CON_INITCALL                                            \
> >                 INIT_RAM_FS                                             \
> > +               KUNIT_TEST_SUITES                                       \
> >         }
> >
> >  #define BSS_SECTION(sbss_align, bss_align, stop_align)                 \
> > --
>
> [1] https://lists.01.org/hyperkitty/list/lkp@lists.01.org/thread/4I4UW4OAT63ETMIEUJQTOF3BFTMO6ROD/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
