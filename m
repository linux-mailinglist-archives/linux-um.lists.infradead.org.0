Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B946FA1B5F
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 15:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRAGerYadq8Pi+qOr4SGfyHhx10ucxU4MXpEQO+vt4w=; b=Zv7DEnqyKFAQzs
	3k3/ydaFMHrFVigd71HH2Quci2zr8szxDUpR8YWqtksk+gmCk6Nlvg/H6B+CZr3LzHinm5I+jxcdW
	mcYReCMsB7emVH27ZTy0EEPYJt6A3d7bu2rZayrddz2uuSpwaCqOU8tRb8kE7oEjl1mVe1K3UL652
	GGU87fAsg7t55V613DrRCeWHDBgmGJNAFSv46zQ2oO8R70ZUtkSyomaJ+4BbU+f98QWEzBiWdR1iV
	r9TvQO6tJx2zuJkk9QmEzdUMm9mDTYk6DLI5yDFEkWnACqV5A4xQVhOTI1nR3xxvo+O3kQLB8ukEk
	4rttkcWP3GmfL0XYeq1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KRl-0000P1-M8; Thu, 29 Aug 2019 13:26:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KRh-0000O7-Mq
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 13:26:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id g7so3456818wrx.2
 for <linux-um@lists.infradead.org>; Thu, 29 Aug 2019 06:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+EbL5uHbRaVZhglSvt8d9cCBpYh3f0wExzjkbbLSM48=;
 b=aMPzG8UiwryTNNROE2Pc5seW3OriPSofsehPzdqbZaSQ78UDPkyihO1ob7/Q311TJM
 MaNZBWtX9/Orur7cKwBSvtl4IdQXKTyxQUdn+ke8IItrjxiZML8qgtWHVmtmgHBdZ8ZV
 9lrGqsHetZpqofuJDs39gdBiPapRscYw9uHw1wRy8tKq22RrcHHoO1UyHpNlpMjNKe4h
 YrGHT0rZoqcmaGCNhounO18RTffv9S2SaE4y6dBmAKlXlP2j/s2amVsg7T/MIkL2D6rq
 RlgPRvaEyTYZI5Uqdtp3wNibTKhrABkxegVyJY8DSw7C9AAD8thlpaTQWBoZ6qd3QqeK
 M5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+EbL5uHbRaVZhglSvt8d9cCBpYh3f0wExzjkbbLSM48=;
 b=Y7FHtEnpEfTGh6RIsDKlpQrTq47QX013436BC04PDgCKwb0k5Ki1OMTjBIcbuyOOBi
 zNQi4SqIDpsKnUQkaglBCilZJzX5+6eNAcO1mkHp0fTeuDfHJSAROwzCMCJj4QU4DL7c
 4VyFMsQKhDjcr7ixwJ3kpNPBouWvf1k7ykcGkdS7T8SOOrEr81g1t0BheoeQWvqSk4z1
 MJk3L04JrjRInhHOQIjwBuiotuUsdW8AstiokKPwHJsps4GpbG7KQ1UdNFbfB7Kineba
 Lgo9xebblgjbKmTMb74ubQqmPsQVhJx5e6bRZl0PNo+j15Ou9qcjfR24noKwlkXHSHSS
 165g==
X-Gm-Message-State: APjAAAWutoGeev3x706lPmAluRvrMKKRTYoTj4VdywvXZ/cAQCaK1BLT
 2f1U2TbrBD+LEAlMkBl5NOV3O2ryvB3WdyYtqZY=
X-Google-Smtp-Source: APXvYqxyXrxfpcFmjRjxuGmQZmmAdSnbq57OS2LBtTHGUqD79wm5itgipY4dVl2ztoQM+IcF7IBYxH1nWxwJTKulRes=
X-Received: by 2002:a5d:6987:: with SMTP id g7mr3690087wru.306.1567085196168; 
 Thu, 29 Aug 2019 06:26:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190828204609.02a7ff70@TheDarkness>
In-Reply-To: <20190828204609.02a7ff70@TheDarkness>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 29 Aug 2019 15:26:24 +0200
Message-ID: <CAFLxGvyiviQxr_Bj57ibTU4DQ1H5wQC4DE5DNFBtAFoohcgbsg@mail.gmail.com>
Subject: Re: [PATCH] um: Rewrite host RNG driver.
To: Alexander Neville <dark@volatile.bz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_062637_774901_A09974D5 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>, linux-um@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 3:45 AM Alexander Neville <dark@volatile.bz> wrote:
>
> The old driver had a bug that would cause it to outright stop working if
> the host's /dev/random were to block. Instead of trying to track down
> the cause of said bug, rewriting it from scratch turned out to be a much
> better option as it came with a few benefits:
>
>  - The new driver properly registers itself as an hardware RNG.
>
>  - The code is simpler and therefore easier to maintain.
>
>  - It serves as a minimal example of writing a hardware RNG driver.
>
> I also edited the Kconfig symbol to bring it up to more modern
> standards.

So, you removed -EAGAIN handling, made everything synchronous,
and changed the interface.
I'm not sure if this really a much better option.

Rewriting the driver in a modern manner is a good thing, but throwing the
old one way with a little hand weaving just because of a unspecified issue
is a little harsh.
Can you at lest provide more infos what problem you're facing with the
old driver?

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
