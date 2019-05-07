Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DAF16D27
	for <lists+linux-um@lfdr.de>; Tue,  7 May 2019 23:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLiFI3acEcJjZF3cD71gGeCuX9XZ77JLODtDidhTM6Q=; b=sQEyysTv41gEKD
	dpElrjRUCw/fDzR+9RJn/fYSnQzaDsWlCNa+IKG0UnXnxcd9ew5V00LsYghb4Ee66vGKGByvJEpbm
	iJiSq+FZXCwc+hyVm4CQ9DFWCiw9pmyHGattYOfl5wP/8yN9ShLaoRcwaF1fJx03dFZ+E5+9q1fsH
	IdBpkK1pE9mt8Gu2EtFyhni7zubCGxDDvC3m7TmVpZ0YImKdT+8fYkqMNgDnCYYVY0EvEubD3P4mN
	3l5kKXgskqgstpxXu5Ega7pBtDt3v9N0SH/QcVPfk6o1PHSeSTAx//kkzD3XfeRwh1dBWtkkob2zk
	/Hc+gum/l/xO4OdcDSuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO7by-0007h4-RM; Tue, 07 May 2019 21:26:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO7bv-0007gO-Eq
 for linux-um@lists.infradead.org; Tue, 07 May 2019 21:26:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id m20so458767wmg.1
 for <linux-um@lists.infradead.org>; Tue, 07 May 2019 14:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CpS0acp3uuHexCCxmfsBcp2LVHuqUmGr+AfC8n1/nG8=;
 b=LeeclIpSD2O+PfBGCoM+AsjKIueYP8u5J7Mh2a3qOtWoBkv9uMFrZ9g62I5pKh5ZvB
 f7UQJ/g7mzm6UqS/+zBGs6H1CK+HLlO8U6el1hOzltMHIlUOHo4f1xM3fPvAum4D5J5i
 6q8toThV1tjYHsb0Tb3P3jCrftHIuN9Kj7+Jq8IVTjv4efgoxhHdvGOsgbLkqa+Jl8YK
 P6olw2AF91FiaKGxzHpMdwSJzBNChaEFUnKAcPQagIZrkATn4rVAqwIlea7wjq7l1/WJ
 4/3YqmZW16fTi5J+PaDqIk3XiHmIe4X6Ba/zSkGGv+o7QcFoYjZmWxhb3moGMO5GmjSZ
 44bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CpS0acp3uuHexCCxmfsBcp2LVHuqUmGr+AfC8n1/nG8=;
 b=ujmvLDREOcWYyEMUZzLGFfFIdbc2UmK99FlKBk6bAZYYnsoxUKC+776dBnvA0QSbvg
 RRU1KQgNKvXhAm/G7xR6Hw2jhhjaRGcEDtKNo2IbYu8iCt9bupzRoV4aSsBdCtTi8K7O
 9SMaL3WNPreE0TmoWTEBMIX1fUXVE0oF7PRWwHbQxY0a/rGBlUxNH5C/xSYHTR7iG+sd
 hE0cHJFn5QwaocXcDudGXvurx1lk7TAJ6MmOeAqggJBtl1MkVdof4T9WsD1wgtebOm6h
 8BW4+HuwFKJDoe86VjYtfSBBOU3OANOwjJRegnjHhyc111F3v70cpblqdROHYJG+jlL3
 zdoA==
X-Gm-Message-State: APjAAAW+uuhw95Lk+AFfosCJlVNtKgGWQ+2sNipX2pCe8EMl22ggGjBl
 WldcJaytghX1+F0zpBKtr0ywTRAdjZIRdQ3ZEjI=
X-Google-Smtp-Source: APXvYqybBltjIktuaOWmGdahqcOnGayFyfWkyFiOAnKhh4NUIe41ZYMKvyCKjLJoxum3IrCr+iks53pYmOrWFbj/oEo=
X-Received: by 2002:a1c:2dd2:: with SMTP id t201mr381826wmt.10.1557264409469; 
 Tue, 07 May 2019 14:26:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
In-Reply-To: <20190411094944.12245-5-brgl@bgdev.pl>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 7 May 2019 23:26:38 +0200
Message-ID: <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_142651_499260_F4B923A0 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Apr 11, 2019 at 11:50 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> Setting a chip for an interrupt marks it as allocated. Since UM doesn't
> support dynamic interrupt numbers (yet), it means we cannot simply
> increase NR_IRQS and then use the free irqs between LAST_IRQ and NR_IRQS
> with gpio-mockup or iio testing drivers as irq_alloc_descs() will fail
> after not being able to neither find an unallocated range of interrupts
> nor expand the range.
>
> Only call irq_set_chip_and_handler() for irqs until LAST_IRQ.
>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Reviewed-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Just noticed that this triggers the following errors while bootup:
Trying to reregister IRQ 11 FD 8 TYPE 0 ID           (null)
write_sigio_irq : um_request_irq failed, err = -16
Trying to reregister IRQ 11 FD 8 TYPE 0 ID           (null)
write_sigio_irq : um_request_irq failed, err = -16
VFS: Mounted root (hostfs filesystem) readonly on

Can you please check?
This patch is already queued in -next. So we need to decide whether to
revert or fix it now.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
