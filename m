Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894C8159DE3
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 01:19:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+ZfzMkpxH01ItsHr8C16/2bZsfmJwHF3I1sznyXeqA=; b=nDKHrNmec2I3m8
	HA5OhL0v+RiCrm/lM7mH5WxxihvhcqDqA7eiUFru5ROvP0Q3tgMn4CWAUPRGxMyvMm2NU9TQ9WY6N
	viBAdy7F5AG4fCZgTbuBt+cbgol1SnLLn0CGXyjLsjmLw9mDE38hXy63i9gS3ihjq1LQkzFf9vrA5
	dmzE9W7d1FGrnPdI0fPgZxEMwPgpjEHGsbDxW3Xq2qiwshXWRpkkSq1UVzMq7rNVWuYpyHbPlfaue
	VNVXIOYK3m1i8GsP/ev12lwjrkxWIGsa0QnzUyWR6pcY0PSsQojXjrc06l6ANCDtmhY+mg1b2FWma
	5tNNd2Kc2PQgBm2CO/sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1fkm-0008Se-2v; Wed, 12 Feb 2020 00:19:44 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1fkj-0008SH-3O
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 00:19:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id u6so59603wrt.0
 for <linux-um@lists.infradead.org>; Tue, 11 Feb 2020 16:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kG/6VjOjLVBRMvHNzqFl1V+mWBZNEq0jfxDNEBO+YCw=;
 b=GJMJjn1w3gdDQ3kk4o14S7nIKrx+4ZcEeLdHKkS1BmtFDW+zXOP3nZ7/vpXwPe+8YH
 pmIO/HGERTWJd6/u5+EEMtmwmB4AttuvRtF8tU3MM+kxPPBZfMH9umrB5AZRlTWiS/ar
 Xq0DTBJHfoFxtPO1mCqJUYY+Zr7kkzRj4FK1EpS0yyVR13Ouu2bPFEKbVKpBwfUD2CgZ
 W0v3NrqeDxc2yOlyKP1z70/ds9mPI9oWhsDryg9IQWkh4IU6ahB89JXrduD5WRKcNaOR
 BRXMpV8GR2cHVJM6D3YW6k8aDkMkj57paog5ANf5sVCjYyL54XjKG3DRRqNNDXjHD7sX
 nRYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kG/6VjOjLVBRMvHNzqFl1V+mWBZNEq0jfxDNEBO+YCw=;
 b=IFjLeLYmHBETbLC6KXQd49ke8ZHeetKvDsklwRbKXQryDhBtcgBeXjZxjfATeu98KE
 psAq4gxqyeeKaGLHULvWEhHHpQFgpb3sDRmHAVfRsekLKltXdI9dTefak/TZEFJHo8rE
 EliIyRen12LMD6WeWPaeehFSRfOpJjSA6v4iiE9d2aqeEpkBjNZnHdah4J9rgZsVZCYR
 odVtiHTdObIu29eCXkc/bXKFzJ5NzSRa+5ZHe8rMOE9xZ1FYlTFJFLo4TNMP0/LUGGeU
 EYNPxWUr2+Qtm2bDlFPy7u+OSuVRb82WrT5X3a4BYYrQk/759UJ7wsdlr8SMmGZh79bn
 GaUQ==
X-Gm-Message-State: APjAAAWr2293JjmTUsAl2kT+YWYzdqjZXo4qmmVD06udNdgan22qo/s3
 4UjY/eZb1+DVR0rTwZ7J1kwHhgGNJi+sF3hWdHzZ0g==
X-Google-Smtp-Source: APXvYqwebnuoDdC+VPEVnAnlZZgk0DCv5NKE0oWe8tTJeBdLnnzl64tL8UWmX+Tivb2h1zNL6d+iyatKoHq2mXM6bIk=
X-Received: by 2002:adf:81e3:: with SMTP id 90mr10885572wra.23.1581466779084; 
 Tue, 11 Feb 2020 16:19:39 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
 <CACT4Y+b4+5PQvUeeHi=3g0my0WbaRaNEWY3P-MOVJXYSO7U5aA@mail.gmail.com>
In-Reply-To: <CACT4Y+b4+5PQvUeeHi=3g0my0WbaRaNEWY3P-MOVJXYSO7U5aA@mail.gmail.com>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Tue, 11 Feb 2020 16:19:27 -0800
Message-ID: <CAKFsvU+zaY6B_+g=UTpOddKXXgVaKWxH3c8nw6GSLceb1Mg2qA@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Dmitry Vyukov <dvyukov@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_161941_167139_F4F3F178 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 12:53 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> > +void kasan_init(void)
> > +{
> > +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
> > +
> > +       // unpoison the kernel text which is form uml_physmem -> uml_reserved
> > +       kasan_unpoison_shadow((void *)uml_physmem, physmem_size);
> > +
> > +       // unpoison the vmalloc region, which is start_vm -> end_vm
> > +       kasan_unpoison_shadow((void *)start_vm, (end_vm - start_vm + 1));
> > +
> > +       init_task.kasan_depth = 0;
> > +       pr_info("KernelAddressSanitizer initialized\n");
> > +}
>
> Was this tested with stack instrumentation? Stack instrumentation
> changes what shadow is being read/written and when. We don't need to
> get it working right now, but if it does not work it would be nice to
> restrict the setting and leave some comment traces for future
> generations.
If you are referring to KASAN_STACK_ENABLE, I just tested it and it
seems to work fine.

-- 
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
