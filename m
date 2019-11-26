Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB62109D25
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 12:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWZlK9oNg34cDKBd0JobL79SDrFhPk4oi9+fNco0urg=; b=VMnylAAHTxKAv/
	AWrxORyQzTEranpUIlAqhO9f/JBnH0xVEAov4GBmJVVL1rqH3ahGjv+FIMWzXLdYwjUCHAzKN3vZI
	nvSO53jKDtklNEXGc03WQabcQahn9ev6rNjlhrIqGBQDjlVrRE/V3SnyxzrMsCe2kiD96Mk/MHUvj
	b9B0pu0vWroHHOCjtFXags7/VRH8aInmXRLBKd7YGSajulUgIGkoQRH3zoHkIceLV8oELLyKDNkFj
	NjsrALKvTRx545iJO5sZZMvaOA+KbgZ2AWvvGjT6/9FN3Uhk0CrOdFuQq3gZAfC8L4y3sewZZNh5m
	ll1jpCeF2/F8Fg/lMDbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZZFH-0002Xb-7h; Tue, 26 Nov 2019 11:43:03 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZZFC-0001jH-WD
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 11:43:00 +0000
Received: by mail-io1-xd44.google.com with SMTP id z26so16646743iot.8
 for <linux-um@lists.infradead.org>; Tue, 26 Nov 2019 03:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9JaD96opbere8Q+VrxaKwBqlMYw1qX0LjSUWhBKyJHk=;
 b=IDBnzDADpK/kmCZd2fMouJsFOsmmXqQAADOrrlSmLybxTw9JQGhI/D9vtk15J++UvO
 X8yJT9EDngTuOR1JD9GHUmcNqTwsIaAzRZmwa6Pm0z53nu11aC+zo2zuGmxWpWFREOA2
 3RXeNcfl43oizttoDMCsxFvc2G7BBOwKwNjq1O2epU6FOwiT36Gt8/69yzVU4eTDKvUu
 qXda9+oOq+WBzAcx0SMnNLf6bKM2xLFtD7vF1o5EVcFLPcUDl3d4QvvbCT+w/Wd05r4Q
 jK+SHFmWb/Qw2rPlgzzfcusFQs2zz+CuSEatWRWMz3y0RLuRFg8yy6G6DKocqKv7v2e7
 RW2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9JaD96opbere8Q+VrxaKwBqlMYw1qX0LjSUWhBKyJHk=;
 b=pd5uaaUE09ux8dySwZM30KMFlsuEBvhAB+XZMqw67Kjw5nFSJt/HpprEztjxk0FR7j
 dzLQo3kYDjK1c0aTfT4L0BcCIjMV1K6e5KIJ+M5XXzzClv/fotF437O8Lghj5BTeineT
 S+cjdbxVQPSSKJcKaxiPuXQaCJrEgE+dZGNv6g+HXMO+bxXUrpZ2Of7C7PW7RZaIeuxa
 4Ztb8l+WGjf9nDH1O4wPG8AdTjEN8spaAxMrkjfVYpzRU6D8oEb/b4uZEt+HAoRmozvB
 0N3JxOxI6snlyjlnejsJG488yFWdvpP3DZ9UBnj9CkENzCbkfR41yK/xrxm/hvTEBbkh
 m78A==
X-Gm-Message-State: APjAAAVaBjSa96ZkF68KHNtz6aF1HfuDApWm6ogXwaDpCyBJcxe2n+bo
 5wYEuKdVQeZ/UJqzt/klQ+5fwTvSXILazCAiqqM=
X-Google-Smtp-Source: APXvYqyV6WzYl1t4cUDTlCPwtRIKzZuWPiW1cHiYJrqKSnCP7xu903AbHRJruDnhI0se4N1URMQGH8svU5c3Rf+Lm6k=
X-Received: by 2002:a02:b793:: with SMTP id f19mr31495947jam.43.1574768574210; 
 Tue, 26 Nov 2019 03:42:54 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573179553.git.thehajime@gmail.com>
 <64a5d6c94d331058331af7d191d2cdbe870d009b.1573179553.git.thehajime@gmail.com>
 <CAFLxGvw+w+xmput3xMjKPXPn4hj9opbo+gtV6896hhzDUzQNiA@mail.gmail.com>
In-Reply-To: <CAFLxGvw+w+xmput3xMjKPXPn4hj9opbo+gtV6896hhzDUzQNiA@mail.gmail.com>
From: Octavian Purdila <tavi.purdila@gmail.com>
Date: Tue, 26 Nov 2019 13:42:43 +0200
Message-ID: <CAMoF9u2g2+_qjfAKh3jD-PSEBhwBVBLDvEEa8Sawutp4fQaYNw@mail.gmail.com>
Subject: Re: [RFC v2 03/37] lkl: architecture skeleton for Linux kernel library
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_034259_055391_084E1E69 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tavi.purdila[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Lai Jiangshan <jiangshanlai@gmail.com>, Jens Staal <staal1978@gmail.com>,
 Motomu Utsumi <motomuman@gmail.com>, linux-um <linux-um@lists.infradead.org>,
 Akira Moroo <retrage01@gmail.com>, Petros Angelatos <petrosagg@gmail.com>,
 Yuan Liu <liuyuan@google.com>, Xiao Jia <xiaoj@google.com>,
 Mark Stillwell <mark@stillwell.me>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 "Edison M . Castro" <edisonmcastro@hotmail.com>,
 Patrick Collins <pscollins@google.com>, Pierre-Hugues Husson <phh@phh.me>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Luca Dariz <luca.dariz@gmail.com>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 12:00 AM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Fri, Nov 8, 2019 at 6:03 AM Hajime Tazaki <thehajime@gmail.com> wrote:
> >
> > From: Octavian Purdila <tavi.purdila@gmail.com>
> >
> > Adds the LKL Kconfig, vmlinux linker script, basic architecture
> > headers and miscellaneous basic functions or stubs such as
> > dump_stack(), show_regs() and cpuinfo proc ops.
> >
> > The headers we introduce in this patch are simple wrappers to the
> > asm-generic headers or stubs for things we don't support, such as
> > ptrace, DMA, signals, ELF handling and low level processor operations.
> >
> > The kernel configuration is automatically updated to reflect the
> > endianness of the host, 64bit support or the output format for
> > vmlinux's linker script. We do this by looking at the ld's default
> > output format.
> >
> > Signed-off-by: Andreas Abel <aabel@google.com>
> > Signed-off-by: Conrad Meyer <cem@FreeBSD.org>
> > Signed-off-by: Edison M. Castro <edisonmcastro@hotmail.com>
> > Signed-off-by: H.K. Jerry Chu <hkchu@google.com>
> > Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
> > Signed-off-by: Jens Staal <staal1978@gmail.com>
> > Signed-off-by: Lai Jiangshan <jiangshanlai@gmail.com>
> > Signed-off-by: Levente Kurusa <levex@linux.com>
> > Signed-off-by: Luca Dariz <luca.dariz@gmail.com>
> > Signed-off-by: Mark Stillwell <mark@stillwell.me>
> > Signed-off-by: Matthieu Coudron <mattator@gmail.com>
> > Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
> > Signed-off-by: Motomu Utsumi <motomuman@gmail.com>
> > Signed-off-by: Patrick Collins <pscollins@google.com>
> > Signed-off-by: Petros Angelatos <petrosagg@gmail.com>
> > Signed-off-by: Pierre-Hugues Husson <phh@phh.me>
> > Signed-off-by: Xiao Jia <xiaoj@google.com>
> > Signed-off-by: Yuan Liu <liuyuan@google.com>
> > Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
>
> Can we please have this chain cleaned up?
> Please see process/submitting-patches.rst.
>
> > ---
> >  MAINTAINERS                                |   8 +
> >  arch/um/lkl/.gitignore                     |   2 +
> >  arch/um/lkl/Kconfig                        |  95 ++++++
> >  arch/um/lkl/Kconfig.debug                  |   0
> >  arch/um/lkl/configs/lkl_defconfig          |  91 ++++++
> >  arch/um/lkl/include/asm/Kbuild             |  80 +++++
> >  arch/um/lkl/include/asm/bitsperlong.h      |  11 +
> >  arch/um/lkl/include/asm/byteorder.h        |   7 +
> >  arch/um/lkl/include/asm/cpu.h              |  14 +
> >  arch/um/lkl/include/asm/elf.h              |  15 +
> >  arch/um/lkl/include/asm/mutex.h            |   7 +
> >  arch/um/lkl/include/asm/processor.h        |  60 ++++
> >  arch/um/lkl/include/asm/ptrace.h           |  25 ++
> >  arch/um/lkl/include/asm/sched.h            |  23 ++
> >  arch/um/lkl/include/asm/syscalls.h         |  18 ++
> >  arch/um/lkl/include/asm/syscalls_32.h      |  43 +++
> >  arch/um/lkl/include/asm/tlb.h              |  12 +
> >  arch/um/lkl/include/asm/uaccess.h          |  64 ++++
> >  arch/um/lkl/include/asm/unistd_32.h        |  31 ++
> >  arch/um/lkl/include/asm/vmlinux.lds.h      |  14 +
> >  arch/um/lkl/include/asm/xor.h              |   9 +
> >  arch/um/lkl/include/uapi/asm/Kbuild        |   9 +
> >  arch/um/lkl/include/uapi/asm/bitsperlong.h |  13 +
> >  arch/um/lkl/include/uapi/asm/byteorder.h   |  11 +
> >  arch/um/lkl/include/uapi/asm/siginfo.h     |  11 +
> >  arch/um/lkl/include/uapi/asm/swab.h        |  11 +
> >  arch/um/lkl/include/uapi/asm/syscalls.h    | 348 +++++++++++++++++++++
>
> I think this is the first big thing which needs a unification.
>
> In UML we try hard to re-use headers from x86.
> We also have some headers in arch/x86/um/.
>
> LKL should do the same. At least try hard to avoid duplication.
>

In LKL we tried to avoid coupling the kernel build part to a
particular architecture, to make it easier to port it (to different
arches, but as well to other OSes or special environments [1][2]).
That is the main reason for having two build steps, one for kernel
proper, and one for the host. That is why the host part was placed
into tools/lkl to make it clear that is not part of the kernel proper.

I think this is one of the biggest differences between UML and LKL and
it would be helpful to get feedback of what people think of a
potential similar split for UML.

[1] https://www.haiku-os.org/blog/lucian/2010-07-08_booting_lkl_inside_haiku/
[2] https://github.com/lkl/lkl-ntk-driver-poc

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
