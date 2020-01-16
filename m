Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C392D13D66D
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 10:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9GKPkvDO3AT/0CHAkyQlkrTywzBBhVuLc0V+H8v7gs=; b=gnaJyMYOKj2c84
	vqumCXjKeaCUV667FaIE9FSvWAlt0PBQuABn00dYlLvh8Xaqkhj0GOZ/gPiEi28J+WWFJfsL6LS/7
	rA/NDy4xjGRcymxFDYqN9KGbXH5qXwLL49rExw1J9RlLyGGzctLmOg+rio7lPA+NQsfQRnyLqnYEy
	RAwMwyyLF8koF+U9R+clP4XWRdSbV4OV6laZO00hU9U+Rh1znBgHaMBXoEvjW2pkK8IM83eVAbgiH
	hkPO6cP1R1WLBMdVKJyMOk23zp/4fuQd10g3fwOZbw/cv6Ydpe4vlIiPak/85mr4KqrlgkyM6FMKl
	tSwKU86IgBo2cVVK0FgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is19m-0006xo-FC; Thu, 16 Jan 2020 09:09:38 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is19e-0006wm-Kj
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 09:09:36 +0000
Received: by mail-qk1-x741.google.com with SMTP id z14so18432329qkg.9
 for <linux-um@lists.infradead.org>; Thu, 16 Jan 2020 01:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tonFvUx7UkLvzdq6Qt10/rB0wyKCjPpdmSM6EzK1Zgc=;
 b=GTR/LPR5CJCmIb4lPK4juOg3rimqFzGsYxB7ANak6Osq2oyUQOcw0nGc0oI8Pe6JMz
 TaOpHEAk7VKCnvkyuQ3c+ZzbS+saEGPkqVUJ+Uv2oC6AoY6fnsyqAVTS/qSzgTEK9wVQ
 vzUN35lj8aufrykCUGaF6kC7gx2pKkxHKTAIzZaoJ8AZ4j6bJE/VRwIaA8LvUrg8xtBq
 iR0uTxn0JC8oteDlQe+iwlJBdT4TcEz+BgUMF6TDvg+tsN0iWwl7qPZlNZ7XDSP5qLn0
 CR+LNDN0l6r5xtR3T8/ukhoHwdVf0mWjFbPtJP4syd0oYM+XRWlrGnj23nI3PjXOrEDQ
 uf4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tonFvUx7UkLvzdq6Qt10/rB0wyKCjPpdmSM6EzK1Zgc=;
 b=rS7sO50dS+ZUzjo/N67n6UutWvkxIMM8bYVznXzbZ+78douPEr2lda6Nza4fV4AmCa
 HOawTxsP6chg01cW6E02Ox8O5GwVGXEZVqd0VwQy0n2eDiiB25RLLr9kziMP/qccLaUy
 vY4fjJk2lWPiWy0G+77D9bXw1IOt803fG+WK1KuGLGTmgL/96DNDsT7LzedvhO0znK0P
 RM2X37fDKWAlyBVnNRUhv6XeHVUV1jTiwiEnkU+l13gQDWK4Vek4Zs/eYxCAqjKs+1aO
 2SvpemjsPEuE/hACeq5YKt6tf6wuoND9mw1R3kITOYK7/3acTTAKqY+3Hk/eOtB4xPJu
 1anA==
X-Gm-Message-State: APjAAAVyx25sKbQLAlEGj9My3sEAyEbkgHFlD/2BeDbr+viK789rId7o
 O2s48kqhLwQyWu5nAMlarb4211q1F/S1OVu1FTEoIA==
X-Google-Smtp-Source: APXvYqzt2RtQHB+l1Uls8Nh2pJ1jFacFAdBfZtc7vtXiftJc+uLnJiv7M1aeYBEmn3cMvbnA/W1IcAGc0YnWe7raj3s=
X-Received: by 2002:a05:620a:1136:: with SMTP id
 p22mr32318196qkk.8.1579165769218; 
 Thu, 16 Jan 2020 01:09:29 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
In-Reply-To: <20200115182816.33892-1-trishalfonso@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 10:09:17 +0100
Message-ID: <CACT4Y+ahnhTXQPfxcJPEFOA1saAr4xOGY583am8buW7kMJiq8w@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_010930_704567_717EA5C0 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 7:28 PM Patricia Alfonso
<trishalfonso@google.com> wrote:
> diff --git a/arch/um/include/asm/kasan.h b/arch/um/include/asm/kasan.h
> new file mode 100644
> index 000000000000..ca4c43a35d41
> --- /dev/null
> +++ b/arch/um/include/asm/kasan.h
> @@ -0,0 +1,32 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_UM_KASAN_H
> +#define __ASM_UM_KASAN_H
> +
> +#include <linux/init.h>
> +#include <linux/const.h>
> +
> +#define KASAN_SHADOW_OFFSET _AC(CONFIG_KASAN_SHADOW_OFFSET, UL)
> +#ifdef CONFIG_X86_64
> +#define KASAN_SHADOW_SIZE 0x100000000000UL

How was this number computed? Can we replace this with some formula?
I suspect this may be an order of magnitude off. Isn't 0x10000000000 enough?

> +#else
> +#error "KASAN_SHADOW_SIZE is not defined in this sub-architecture"
> +#endif
> +
> +// used in kasan_mem_to_shadow to divide by 8
> +#define KASAN_SHADOW_SCALE_SHIFT 3
> +
> +#define KASAN_SHADOW_START (KASAN_SHADOW_OFFSET)
> +#define KASAN_SHADOW_END (KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
> +
> +#ifdef CONFIG_KASAN
> +void kasan_init(void);
> +void kasan_map_shadow(void);
> +#else
> +static inline void kasan_early_init(void) { }
> +static inline void kasan_init(void) { }
> +#endif /* CONFIG_KASAN */
> +
> +void kasan_map_memory(void *start, unsigned long len);

This better be moved under #ifdef CONFIG_KASAN, it's not defined
otherwise, right?

> +void kasan_unpoison_shadow(const void *address, size_t size);

This is defined by <linux/kasan.h>. It's better to include that file
where you need this function. Or there are some issues with that?

> +
> +#endif /* __ASM_UM_KASAN_H */



> diff --git a/arch/um/kernel/kasan_init_um.c b/arch/um/kernel/kasan_init_um.c
> new file mode 100644
> index 000000000000..2e9a85216fb5
> --- /dev/null
> +++ b/arch/um/kernel/kasan_init_um.c
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <asm/kasan.h>
> +#include <linux/sched.h>
> +#include <linux/sched/task.h>
> +#include <asm/dma.h>
> +#include <as-layout.h>
> +
> +void kasan_init(void)
> +{
> +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
> +
> +       // unpoison the kernel text which is form uml_physmem -> uml_reserved

Why do we need to unpoison _text_? Who is accessing shadow for it? Do
you mean data/bss?
But on a more general point, we just allocated it with mmap, mmap
always gives zeroed memory and asan shadow is specifically arranged so
that 0's mean "good". So I don't think we need to unpoison anything
separately.

What may be more useful is to poison (or better mprotect, unmap, not
mmap) regions that kernel is not supposed to ever touch. One such
region is shadow self-mapping (shadow for shadow), in user-space we
mprotect that region. For KASAN we don't map shadow for user-space
part of VM, but I don't know if UML has such separation. We could also
protect other UML-specific regions if there are any, e.g does anybody
read/write text?


> +       kasan_unpoison_shadow((void *)uml_physmem, physmem_size);
> +
> +       // unpoison the vmalloc region, which is start_vm -> end_vm
> +       kasan_unpoison_shadow((void *)start_vm, (end_vm - start_vm + 1));
> +
> +       init_task.kasan_depth = 0;
> +       pr_info("KernelAddressSanitizer initialized\n");
> +}

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
