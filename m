Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6039D1731B2
	for <lists+linux-um@lfdr.de>; Fri, 28 Feb 2020 08:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzgJ7QFtSdfzJh3mtc0YEkKzMKNGVaU9L5wv/ELo4Vo=; b=Il28Umjb6QLE5P
	5Vs5zQ1oLk0SmwUnqt9Kg4Y4Pb/mrNik4sp3lMopW4TyLMpHYbQCTYr3RLLFrjR3Qn+5/RNDCdkXs
	IL/snEV8Q48MPoRoMSJg3EbOPAwpRMzje+iw6lmvu4vU0afIE3wAUTHTR8NJGvFi9Y08Ydp1B0dKd
	t20mlkMYjpFdeLMpKtkhhj3niW6U3LH6/hcu5SHbA9FPulnVY/yH++FWtMWqdnScXtufM1XsbGNOH
	dQ0Tq/bz8HJrg4XIH6opmmuQDlP/x4ETfUVAJ9PP8C8CypBdDFfGpomuTMA9bTY/c3m9d9rA+MMoG
	ryGApuMnvDYsR6pTXOEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Zz1-0000DS-7P; Fri, 28 Feb 2020 07:22:51 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Zyv-0000CU-TE
 for linux-um@lists.infradead.org; Fri, 28 Feb 2020 07:22:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id p7so897231pli.5
 for <linux-um@lists.infradead.org>; Thu, 27 Feb 2020 23:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s3S+hpLp5sIHa629tQ1zsw+Nl29dkCf3S5rCd+p6od0=;
 b=DqCPFLqaEV3M2s53qW4elKNy8mZ/LySa/GTkoXsaZ38GB0BNEZFMAuIuyfxvFtj/fV
 1g3uI/JWkqGyNoLF4Jt3NsTHuDB+RMx/j7XseHQMBe/Fo4TDmtC3fAXKshQbQFlO4I6m
 cfAb+BHfSIpKCiRExZ/REITPXUg8Ahf6KlY7hUZxYCbDUAGHkv2zb27FSz1461MYHIde
 Wq8p2AhQjWWTUZiXgUSLT2DwWlAOjA4gGIOkWQmdNpR/flJG4LDdvW+y9oOf02bqCy7e
 u7AnfPxh6Lw4KW1xH4BwHLfqkTQUps9lJ6oIgi+BkaAHfCRgVIu3ZC9L0DtHvm+sZdef
 AsMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s3S+hpLp5sIHa629tQ1zsw+Nl29dkCf3S5rCd+p6od0=;
 b=eQ3HdYI/Cm+bfkgNkQbJyXsEp3my5CCqpWnJkmxt31CGUIZtEzaY8qzGahfNjodiBL
 dbOJ8Ygymp3+4BSEU+5FB8FEJIf/IJkulMtIFQ9u6s6q52tjP7Nf5GomFtDkg3YUekGV
 6OgKJIeMn6N49MFiLGgB7VfywwS0VRdWjM2e/liFpWQnDEI4FtUVqOdAnlE1kqx9oqNB
 LPDQqWmm7PJ/R+oxF73K2cQyP5GjA1tWfInyOGYZyGCg1ZajdNWhGHkfAfXU1y+y8oE3
 jycEqJLZ0N+K9arPWcgL6ErndoU5peVOuNxWLkJbAsr7AvCNGa+No4MwAGKK5to+oufk
 ku0g==
X-Gm-Message-State: APjAAAX0nnoovuDF1GTukeOBo9u/UgwQLeGjLjl5oShZiR/uq3GfouW8
 Wy1JOsDICDKjumlambdj33Amuzl+r598HahNuBZhfg==
X-Google-Smtp-Source: APXvYqzfHO2LjscgalGnPNvJuZJRHFvR5JKj+K4ArJrMoTSjQKwCXbbVKSMib1WlxPMb5cTcx8UR195T8BgeHwMobFY=
X-Received: by 2002:a17:902:8ec1:: with SMTP id
 x1mr2808157plo.325.1582874562327; 
 Thu, 27 Feb 2020 23:22:42 -0800 (PST)
MIME-Version: 1.0
References: <20200228012036.15682-1-brendanhiggins@google.com>
 <20200228012036.15682-2-brendanhiggins@google.com>
In-Reply-To: <20200228012036.15682-2-brendanhiggins@google.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 27 Feb 2020 23:22:31 -0800
Message-ID: <CAFd5g46dVaV18=5mPLTHh06KQ6nDh4Xw4r8PAZDfSXASi=Qpmg@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] vmlinux.lds.h: add linker section for KUnit test
 suites
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>, 
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, Arnd Bergmann <arnd@arndb.de>, 
 Kees Cook <keescook@chromium.org>, Shuah Khan <skhan@linuxfoundation.org>, 
 Alan Maguire <alan.maguire@oracle.com>, Iurii Zaikin <yzaikin@google.com>, 
 David Gow <davidgow@google.com>, Andrew Morton <akpm@linux-foundation.org>,
 rppt@linux.ibm.com, Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_232245_967719_E32D53FC 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 5:20 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> Add a linker section where KUnit can put references to its test suites.
> This patch is the first step in transitioning to dispatching all KUnit
> tests from a centralized executor rather than having each as its own
> separate late_initcall.
>
> Co-developed-by: Iurii Zaikin <yzaikin@google.com>
> Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  include/asm-generic/vmlinux.lds.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index e00f41aa8ec4f..99a866f49cb3d 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -856,6 +856,13 @@
>                 KEEP(*(.con_initcall.init))                             \
>                 __con_initcall_end = .;
>
> +/* Alignment must be consistent with (kunit_suite *) in include/kunit/test.h */
> +#define KUNIT_TEST_SUITES                                              \
> +               . = ALIGN(8);                                           \

After posting this, I saw I had gotten an email from 0day[1]. After
some investigation, I discovered that this 8 byte alignment works for
x86 64 bit fine, but only *sometimes* for 32 bit. 4 byte alignment
seems to work in all cases (so far). I am not sure why we went with
such a large alignment in hindsight. In any case, I should have a
fixed revision out pretty soon.

> +               __kunit_suites_start = .;                               \
> +               KEEP(*(.kunit_test_suites))                             \
> +               __kunit_suites_end = .;
> +
>  #ifdef CONFIG_BLK_DEV_INITRD
>  #define INIT_RAM_FS                                                    \
>         . = ALIGN(4);                                                   \
> @@ -1024,6 +1031,7 @@
>                 INIT_CALLS                                              \
>                 CON_INITCALL                                            \
>                 INIT_RAM_FS                                             \
> +               KUNIT_TEST_SUITES                                       \
>         }
>
>  #define BSS_SECTION(sbss_align, bss_align, stop_align)                 \
> --

[1] https://lists.01.org/hyperkitty/list/lkp@lists.01.org/thread/4I4UW4OAT63ETMIEUJQTOF3BFTMO6ROD/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
