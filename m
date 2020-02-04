Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023C915213B
	for <lists+linux-um@lfdr.de>; Tue,  4 Feb 2020 20:35:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3vN5KU8AlXSZq61hntLAGk5d4YzhdhGcP6CfBH6wLg=; b=XS82bsKfM46AJs
	XmVOCR1PFfPXoV+KiEhvdk/YAML42myUS21hPTbcAwXqhu2l3Cm+Tzfu0C/GqkXpW64wRQ9w9KpDx
	UMiEGUQxUnc3p5nek8TrEusZutJnDPA5u7VoCxuSTiRAlBnTW0jHrgiFUIXeLK98U0cji+MSAZ0F8
	5iwGqgLKHhuIYBzRgDzTLbwZXopnkl8g17w3Cjucsqa9Y6SRhXH+dgqP7Ph6g2fyywZ+yp2Ram8pf
	Q4BUHZCchufEyIIRcGga2ms3Nt0idHsym8JGLfE/kPm27obmmGd/Ros12aXiQdbEkUVTF/byO64L5
	NTQ+b14oQGtSR5Jjs9CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz3zA-0006tb-Jc; Tue, 04 Feb 2020 19:35:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz3z7-0006sZ-8L
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 19:35:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id z7so1383282pgk.7
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 11:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZBYf/F2Io0atf7tGD69pezEGXYzc+ynKJmxs01qZzAA=;
 b=QOo3HD1vuYYlz+4sD+zhB2tClXMUNBEVMlO7WB2JZ9IV9rmn7SF/rbwkwtEq2KhqH6
 JflMkH64e2XW0chioVXoRklQSjZ1ThVCqfFd4QNQZvy3cCKTKktltJOOJYcsi+dOXsiA
 xyKnNbIPPvpQIbEox4KqyaNXHcxW2y550fV9m69L6uSplE435tmpgX9LGNn5cxycQCX2
 WnL4rVBZyAfqQEJjgaX6r9LnrYU1cW8yz106G9HwDqFdmwyb5weFPXRl0cmTQUDEgiOT
 IuHegvLBA08oEM5t1e51IBhTgVFYRvE/0qHfcPD02u5/ihsaye3NxsNp4XwMhOnq9rty
 pXjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZBYf/F2Io0atf7tGD69pezEGXYzc+ynKJmxs01qZzAA=;
 b=TxOqs3yA7UEfa178hpqKVnJgPxUYqJqTGK9qCb5TzuAkH9vPKaYPZqSRh2UH4vfZQm
 yuQjxri6PqYV+vMmOM54175LDedKQo7O1UHImS265oLcPOuSuIwQg6rNred6l8wbcg7I
 tttkz9yjQRDhu6ykCQ08EeErfwgV8r4HyT2mxCjF2pQ6a1Tx+XQsC7XArU/FtXJj5zmb
 153PCuUkevD5IllVirBrkK9fALSrMNg8NdT68frG/Gy+u3+7jW4z2mBNGbvn2xStM8wW
 lzhZcTSf4pkC+3IikXvBS1oU45e7Ggl3dAYWC60C2rkzNaHFrVeTVA+yEO8nlm1D5dcW
 pMiw==
X-Gm-Message-State: APjAAAV5Z/awD+OrG5U+l1P68F45kYFFkPNTuZwmyoRdOaSDh4Q2xfKA
 J3THS/SmQhn43L/okFUeT3AoSfykUistS41ZrOzulg==
X-Google-Smtp-Source: APXvYqw4q+KWhmmtYLJvBYiGMg4pK4goKHR2pzDq2KQ/ueAn46fzf63AjOWVV2VKJzLV/wvMXo/IxMlPJ94Rwb3Ob+8=
X-Received: by 2002:a63:3754:: with SMTP id g20mr17958855pgn.384.1580844941362; 
 Tue, 04 Feb 2020 11:35:41 -0800 (PST)
MIME-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200204071915.AF32B21582@mail.kernel.org>
In-Reply-To: <20200204071915.AF32B21582@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 4 Feb 2020 11:35:30 -0800
Message-ID: <CAFd5g44ZG+E==gT24w49oKc6nHv4nBQFeipikKxXJH3oHdO99Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] kunit: create a centralized executor to dispatch
 all KUnit tests
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_113545_302389_AE6958D2 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Frank Rowand <frowand.list@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Richard Weinberger <richard@nod.at>,
 Andrew Morton <akpm@linux-foundation.org>,
 Alan Maguire <alan.maguire@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Feb 3, 2020 at 11:19 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2020-01-30 15:08:05)
> > ## TL;DR
> >
> > This patchset adds a centralized executor to dispatch tests rather than
> > relying on late_initcall to schedule each test suite separately along
> > with a couple of new features that depend on it.
>
> Is there any diff from v1 to v2? I don't know what changed, but I see
> that my Reviewed-by tag has been put on everything, so I guess
> everything I said was addressed or discussed in the previous round.

Oh yes, sorry about that. I have gotten a bit lazy in regard to
changing logs. I noticed that a lot of people don't seem to care. I'll
make a note that you do.

Changes since last revision:
- On patch 6/7, I flipped the include order and removed braces from the if
  statements.
- On patch 7/7, I removed the periods from the short descriptions.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
