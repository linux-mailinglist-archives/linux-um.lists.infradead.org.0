Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDFE109552
	for <lists+linux-um@lfdr.de>; Mon, 25 Nov 2019 23:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IngOnzTnY0Vu+E63JjERK2fwBakp1NGxp1PKBrUww8=; b=Y5WgwZLnSFMA1W
	V16wRtWFRGAFfagNjYjN8AEuru69zDvK+e0lW0NSSdj9k7pa2WI2yLcVeAJT4N8g2qZgUcmWPW3dc
	ohw1FibtRhltkZ0iKQesT4nQMvR37JZZnYKVCCLbv1a4SH0mLzqS9S1EBrs6kntQZgUIcp2igAPfF
	AJzUOsAIL1hX9gIV2GAG7Z5z5FmW7nXtRSJAQ8SGue0bHSKU/N1+19RBEQ/elwRUKQRYbfgmSbOXZ
	tqv4joxhNf+GxzfSxtaPPBct7LsYHBFcxAP1siktxtTd7h3dw/aESWpGwTgzesGpDEfk/qpwXLnZR
	gJ4Pr6+yO5f9x1VCtMpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMPd-0007sG-N7; Mon, 25 Nov 2019 22:00:53 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMPV-0007rW-OL
 for linux-um@lists.infradead.org; Mon, 25 Nov 2019 22:00:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id s5so20033813wrw.2
 for <linux-um@lists.infradead.org>; Mon, 25 Nov 2019 14:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pK6K8psgHbpF1pg13+lNb6hLePrayQO5yUnaw8JPsNk=;
 b=CPp6YgKBPDRSzCp+2zR0Axg8HSMv3Gyy3VKemypTsBfcFXTTJV0Stsy40n7TfuSteb
 DZmqtuhOEsAzojncjeS4acrMyXQF+gbH2muS3CLcahuoTJDyTbzvqeXGKUCqrMHSRDeN
 KJ09CPYtdhSTfK8MClRYTppzP3KAahyvlYcicN0JCiRnhVnodAKovg6UDuHjcKMUCwu1
 EwatxWhHlNNAZlkpFHH7nXXLQXU69wk1qp4hSNC2EZ7gnPWZbhqAfRbcaoixkUHTsm0N
 TyBnHzI2y+cPZ1WnhFYJ57HSxj23ezTR6eY5JOEtr9T9FDmWauCSKMvVQKW2IX6Y92n4
 3B0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pK6K8psgHbpF1pg13+lNb6hLePrayQO5yUnaw8JPsNk=;
 b=RAgfvVdZUhWwhyDIfyPKKJTVI7IHvpaoolzk/pjjpzbHs7F1tuJ29DET5TICKCy0IB
 8VaogSLhz1vCwQw+vcnm8Ca4Uh4G3ooiTG5ame7HQRr5MPqmPzk9cnzfT5K0po/d8Iet
 iDKQ6ESeIas37AmkJlOGB4zwBUdv5RCDKCO3JIjKv0dxLmW6p6MXRWB7paWXDm7/pa3R
 OxVpcQKRbKcm7jlMQ78ISD1AmsTS6jtlpdB7Auyh1Ozdz9lmLApFk13Ta5Gkv2Kbbb3x
 /6s6C7P3WoY89xFWqlc4/UeSCp+3GxZfXYHP9PkB1zP0OPTw9Z6ZubJGLfnBvyYxDUHP
 rHHQ==
X-Gm-Message-State: APjAAAUYlaZ+V23jy4tZHAx5SjV1A/nwkS4elTCIxnm8Dme73omUKoVr
 UTWbXKReQAATWBFslGijTUptYLjW555KP1K3jNg=
X-Google-Smtp-Source: APXvYqwSHNXL4y7qfBAV5NDOFC2UjF0y2EvaPOzdDhmZcp8BgX39ca5HaUjb1lE9A3RaUdQTMbR41zf7pBKtuPaj2w4=
X-Received: by 2002:adf:c449:: with SMTP id a9mr32809537wrg.240.1574719244216; 
 Mon, 25 Nov 2019 14:00:44 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573179553.git.thehajime@gmail.com>
 <64a5d6c94d331058331af7d191d2cdbe870d009b.1573179553.git.thehajime@gmail.com>
In-Reply-To: <64a5d6c94d331058331af7d191d2cdbe870d009b.1573179553.git.thehajime@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 25 Nov 2019 23:00:33 +0100
Message-ID: <CAFLxGvw+w+xmput3xMjKPXPn4hj9opbo+gtV6896hhzDUzQNiA@mail.gmail.com>
Subject: Re: [RFC v2 03/37] lkl: architecture skeleton for Linux kernel library
To: Hajime Tazaki <thehajime@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_140050_096469_93D1B80F 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>, Levente Kurusa <levex@linux.com>,
 Matthieu Coudron <mattator@gmail.com>, Conrad Meyer <cem@freebsd.org>,
 Octavian Purdila <tavi.purdila@gmail.com>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Jens Staal <staal1978@gmail.com>,
 Motomu Utsumi <motomuman@gmail.com>, linux-um@lists.infradead.org,
 Akira Moroo <retrage01@gmail.com>, Petros Angelatos <petrosagg@gmail.com>,
 "Edison M . Castro" <edisonmcastro@hotmail.com>, Xiao Jia <xiaoj@google.com>,
 Mark Stillwell <mark@stillwell.me>, linux-kernel-library@freelists.org,
 Patrick Collins <pscollins@google.com>, Pierre-Hugues Husson <phh@phh.me>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Luca Dariz <luca.dariz@gmail.com>, Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 6:03 AM Hajime Tazaki <thehajime@gmail.com> wrote:
>
> From: Octavian Purdila <tavi.purdila@gmail.com>
>
> Adds the LKL Kconfig, vmlinux linker script, basic architecture
> headers and miscellaneous basic functions or stubs such as
> dump_stack(), show_regs() and cpuinfo proc ops.
>
> The headers we introduce in this patch are simple wrappers to the
> asm-generic headers or stubs for things we don't support, such as
> ptrace, DMA, signals, ELF handling and low level processor operations.
>
> The kernel configuration is automatically updated to reflect the
> endianness of the host, 64bit support or the output format for
> vmlinux's linker script. We do this by looking at the ld's default
> output format.
>
> Signed-off-by: Andreas Abel <aabel@google.com>
> Signed-off-by: Conrad Meyer <cem@FreeBSD.org>
> Signed-off-by: Edison M. Castro <edisonmcastro@hotmail.com>
> Signed-off-by: H.K. Jerry Chu <hkchu@google.com>
> Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
> Signed-off-by: Jens Staal <staal1978@gmail.com>
> Signed-off-by: Lai Jiangshan <jiangshanlai@gmail.com>
> Signed-off-by: Levente Kurusa <levex@linux.com>
> Signed-off-by: Luca Dariz <luca.dariz@gmail.com>
> Signed-off-by: Mark Stillwell <mark@stillwell.me>
> Signed-off-by: Matthieu Coudron <mattator@gmail.com>
> Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
> Signed-off-by: Motomu Utsumi <motomuman@gmail.com>
> Signed-off-by: Patrick Collins <pscollins@google.com>
> Signed-off-by: Petros Angelatos <petrosagg@gmail.com>
> Signed-off-by: Pierre-Hugues Husson <phh@phh.me>
> Signed-off-by: Xiao Jia <xiaoj@google.com>
> Signed-off-by: Yuan Liu <liuyuan@google.com>
> Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>

Can we please have this chain cleaned up?
Please see process/submitting-patches.rst.

> ---
>  MAINTAINERS                                |   8 +
>  arch/um/lkl/.gitignore                     |   2 +
>  arch/um/lkl/Kconfig                        |  95 ++++++
>  arch/um/lkl/Kconfig.debug                  |   0
>  arch/um/lkl/configs/lkl_defconfig          |  91 ++++++
>  arch/um/lkl/include/asm/Kbuild             |  80 +++++
>  arch/um/lkl/include/asm/bitsperlong.h      |  11 +
>  arch/um/lkl/include/asm/byteorder.h        |   7 +
>  arch/um/lkl/include/asm/cpu.h              |  14 +
>  arch/um/lkl/include/asm/elf.h              |  15 +
>  arch/um/lkl/include/asm/mutex.h            |   7 +
>  arch/um/lkl/include/asm/processor.h        |  60 ++++
>  arch/um/lkl/include/asm/ptrace.h           |  25 ++
>  arch/um/lkl/include/asm/sched.h            |  23 ++
>  arch/um/lkl/include/asm/syscalls.h         |  18 ++
>  arch/um/lkl/include/asm/syscalls_32.h      |  43 +++
>  arch/um/lkl/include/asm/tlb.h              |  12 +
>  arch/um/lkl/include/asm/uaccess.h          |  64 ++++
>  arch/um/lkl/include/asm/unistd_32.h        |  31 ++
>  arch/um/lkl/include/asm/vmlinux.lds.h      |  14 +
>  arch/um/lkl/include/asm/xor.h              |   9 +
>  arch/um/lkl/include/uapi/asm/Kbuild        |   9 +
>  arch/um/lkl/include/uapi/asm/bitsperlong.h |  13 +
>  arch/um/lkl/include/uapi/asm/byteorder.h   |  11 +
>  arch/um/lkl/include/uapi/asm/siginfo.h     |  11 +
>  arch/um/lkl/include/uapi/asm/swab.h        |  11 +
>  arch/um/lkl/include/uapi/asm/syscalls.h    | 348 +++++++++++++++++++++

I think this is the first big thing which needs a unification.

In UML we try hard to re-use headers from x86.
We also have some headers in arch/x86/um/.

LKL should do the same. At least try hard to avoid duplication.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
