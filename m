Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD86F71BF7
	for <lists+linux-um@lfdr.de>; Tue, 23 Jul 2019 17:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/QtiU20rkUCxynzr5ttGOqfpyf7hHMqJXF8GvwyCuQ=; b=QzUM1s3YHPCFCk
	AKpNoAa0FAsALw0acPgFfuoCSjtikPG9xKFhQBeG6ndWVNKz5T9aM9pMZETfb0Ef3b01d3WLhpvSw
	hz4mSga4ddN/odHOcljBPpeBDUbrKZRZa+iABr1qFUxHHDyE3HonxC+AopJZR3+xA/2OMs6qtwFNq
	FWaaQkDTIZWjJusUg+0JxJdNO4WAJ9rbAKcXq3pcV78SY+TA+g0D8WWpqhABZiSPw/eVFXuQOOFcL
	XqIgBdIpm9V4MwtrmxO6Ho2CtQO09ATDxpEWQYxRlC7gQQXk934lI3mWjtdM4PVqfVg444CRmZSNW
	UC1kIWjvfMBRzMgfmlKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwtQ-0007G3-LX; Tue, 23 Jul 2019 15:39:56 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwtM-0007FO-Gf
 for linux-um@lists.infradead.org; Tue, 23 Jul 2019 15:39:54 +0000
Received: by mail-oi1-f195.google.com with SMTP id m202so32633365oig.6
 for <linux-um@lists.infradead.org>; Tue, 23 Jul 2019 08:39:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3LRI5UFjq44LBBsGkyZn0c1iwjTBwJ4UTljGvj/dw6Y=;
 b=BrvffUiYuG587HF42IS6Ay67Ey/STVaRphzq5LLw1uUhxrGjAujEWYq0Nfe7GC+BUA
 ndjkxBgIDzelCN+q30w85LGowGILnvMuGFGSHGeBj5L8xlifyQpbvgSPHWBqfK5fe9y9
 j1mhJhaaWgaRr3XQDRruAJ7QHUX1A589KlrwvsLm12z5CD2t3kN4uHEY1kydJA58O5CX
 GQibqx384YZBnmCZ/utRJv6bPi6Nzi6kQITYcoZRUcayaYWxoIVUkGs1w0yAel9yp6uq
 z+n5KZeDQvOZxC1m+911sBDpU/DJPiXlERvvOH1xATQ+KeIcbYxK/+CD+l29BN30U0u5
 LH3Q==
X-Gm-Message-State: APjAAAV/3WScpSK8vpjIK3DY57c9l2fTCOtNAPqMvoo007CcSfXxcyKZ
 wu3o5zRdojUvfh5IlOxHJGXw5nHuh9TrHwDhcFs=
X-Google-Smtp-Source: APXvYqwCaeRX0/ukewQLWY9NtFhKzlFerKVFsRpBXybOEA8aU+bcGmK/xxtuS8ZeOR85kl+PHrPdml7b97UouubKPrk=
X-Received: by 2002:aca:bd43:: with SMTP id n64mr34013805oif.148.1563896390666; 
 Tue, 23 Jul 2019 08:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190723080441.19110-1-geert@linux-m68k.org>
In-Reply-To: <20190723080441.19110-1-geert@linux-m68k.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Jul 2019 17:39:39 +0200
Message-ID: <CAMuHMdVuVqXnW8SEnpcbvh8agYvPh775rv9tmV9kGUa6Q2wcwA@mail.gmail.com>
Subject: Re: Build regressions/improvements in v5.3-rc1
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_083952_551215_82C79F9F 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, linux-um@lists.infradead.org,
 linux-mips@vger.kernel.org, Parisc List <linux-parisc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 5:22 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> Below is the list of build error/warning regressions/improvements in
> v5.3-rc1[1] compared to v5.2[2].

> [1] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/5f9e832c137075045d15cd6899ab0505cfb2ca4b/ (241 out of 242 configs)
> [2] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/0ecfebd2b52404ae0c54a878c872bb93363ada36/ (all 242 configs)
>
>
> *** ERRORS ***
>
> 11 error regressions:
>   + /kisskb/src/drivers/misc/lkdtm/bugs.c: error: 'X86_CR4_SMEP' undeclared (first use in this function):  => 281:13
>   + /kisskb/src/drivers/misc/lkdtm/bugs.c: error: implicit declaration of function 'native_read_cr4' [-Werror=implicit-function-declaration]:  => 279:8
>   + /kisskb/src/drivers/misc/lkdtm/bugs.c: error: implicit declaration of function 'native_write_cr4' [-Werror=implicit-function-declaration]:  => 288:2

um-all{mod,yes}config

>   + /kisskb/src/drivers/net/wireless/intel/iwlwifi/fw/dbg.c: error: call to '__compiletime_assert_2446' declared with attribute error: BUILD_BUG_ON failed: err_str[sizeof(err_str) - 2] != '\n':  => 2445:3
>   + /kisskb/src/drivers/net/wireless/intel/iwlwifi/fw/dbg.c: error: call to '__compiletime_assert_2452' declared with attribute error: BUILD_BUG_ON failed: err_str[sizeof(err_str) - 2] != '\n':  => 2451:3
>   + /kisskb/src/drivers/net/wireless/intel/iwlwifi/fw/dbg.c: error: call to '__compiletime_assert_2790' declared with attribute error: BUILD_BUG_ON failed: invalid_ap_str[sizeof(invalid_ap_str) - 2] != '\n':  => 2789:5
>   + /kisskb/src/drivers/net/wireless/intel/iwlwifi/fw/dbg.c: error: call to '__compiletime_assert_2801' declared with attribute error: BUILD_BUG_ON failed: invalid_ap_str[sizeof(invalid_ap_str) - 2] != '\n':  => 2800:5

powerpc-all{mod,yes}config{,+64K_PAGES}
mips-allmodconfig

>   + /kisskb/src/include/linux/kprobes.h: error: implicit declaration of function 'kprobe_fault_handler'; did you mean 'kprobe_page_fault'? [-Werror=implicit-function-declaration]:  => 477:9

parisc-allmodconfig

>   + /kisskb/src/mm/hmm.c: error: implicit declaration of function 'pud_pfn' [-Werror=implicit-function-declaration]:  => 753:3, 753:9
>   + /kisskb/src/mm/hmm.c: error: implicit declaration of function 'pud_pfn'; did you mean 'pte_pfn'? [-Werror=implicit-function-declaration]:  => 753:9

ppc64_book3e_allmodconfig
um-all{mod,yes}config

>   + error: "vmf_insert_mixed" [drivers/gpu/drm/exynos/exynosdrm.ko] undefined!:  => N/A

sh-all{mod,yes}config (fix available)


Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
