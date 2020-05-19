Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443591D9C07
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 18:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qAIZGrSBPvft2zqQQYIQsUB/AOD6tOig+pLEOns6Ds=; b=txGMv0R8yRuDZW
	sQH6q2RHGf5BNk3L1O4tqnpXTpzMfN0Vza8agOZTeSJIcDRlHyW0OMCYXpL+Uy/VAO8Sm6IHvzPbd
	vW7d9kIvfJtLAE/PKwsOsPCXLqhbfBw2mOO5lA/X9kQQRZ4vGkh7+Vbcs9hV4Ndi5chgsy40WrfaR
	uIOkYLEhxMUfCK4j4kHXiBo78aDtAtsyPyol2Zun63HV7xe+ySv3/jrwDZIj5V5r9B1CHkAMoWeyX
	jgjZ6Z7GsNe+mLVxcoZ3QUXPS59UTbBtBRNujbNGTDGY5gNt1G/nhm76o5e/CI99s9JDavvXKy+YM
	d+JJEsvKBsx7Tw5Af8KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4mw-00042o-SW; Tue, 19 May 2020 16:08:18 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4mt-000415-Vy
 for linux-um@lists.infradead.org; Tue, 19 May 2020 16:08:17 +0000
Received: by mail-lj1-x243.google.com with SMTP id k5so280110lji.11
 for <linux-um@lists.infradead.org>; Tue, 19 May 2020 09:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yx5q8kTLmBrxy32bs18zizlzOjtx0vFts57BKijzI48=;
 b=HCXGSXVripfdjF3MiGwI8HqE63+BVnW9g3cwRZiRc5Emx+jBu6A4Nsobp13SbpFd6U
 Lyt8wvpLjFnfI845wbjgkTVZflwu9OTBrRm/9vher3ASfX9/MH65gZZ8ahxQbI/5jnLa
 wMfTgbalXvP1B/G3Ib0nnbu0+sXLvWt0bQgfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yx5q8kTLmBrxy32bs18zizlzOjtx0vFts57BKijzI48=;
 b=BTdMbxJ0AkIwpK4mBZ+mYwr1YpdDDZe4Y9TcytwlzZFDH4g4Hs7EN7uNnuFiN0Z5yg
 0MfkJj4DifPjCRl4r+QByZ+iTdvEjan5HSfHu3AMBJ50C1D9oT5BvGJE4dVKedi22Rm2
 ACcDbySW6ppKT/eytMuZ3monZY8oVwBQZtj7hLocLuceuigayaW1hQphLU8onPzIpOTm
 RBqNoEElyZElP+k+D7TpR+TVpqtSkUoB7A04Etzmut5APpJUwpxD6/KvvJ6YVJ8Yh5Hi
 QJLAZ7Efjha2EDL7Gs52EfunDEiHGr5xqbTigC3LzlQdc3AdGXrT/hFc+QKyBbIHENfQ
 JQPQ==
X-Gm-Message-State: AOAM530nIMTNSFE9R/QWKZ0JMtt6ZZIk7dnDC26c8XialUasD4XlWs1r
 YUCT6WsDyFkd5nw1V2mwV5wOyZJ6OF8=
X-Google-Smtp-Source: ABdhPJyVbbgJAumBxPqOKQYyYOIbOdWPlJyGgrzDx1471MXpvR5CULYKdp/goMGbX6TL/+klMsf2uQ==
X-Received: by 2002:a05:651c:549:: with SMTP id
 q9mr103786ljp.236.1589904493476; 
 Tue, 19 May 2020 09:08:13 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com.
 [209.85.167.41])
 by smtp.gmail.com with ESMTPSA id y20sm41439lji.31.2020.05.19.09.08.11
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 09:08:12 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id w15so4360856lfe.11
 for <linux-um@lists.infradead.org>; Tue, 19 May 2020 09:08:11 -0700 (PDT)
X-Received: by 2002:ac2:5a0a:: with SMTP id q10mr1343727lfn.142.1589904491650; 
 Tue, 19 May 2020 09:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-12-hch@lst.de>
In-Reply-To: <20200519134449.1466624-12-hch@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 19 May 2020 09:07:55 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjm3HQy_awVX-WyF6KrSuE1pcFRaNX_XhiLKkBUFUZBtQ@mail.gmail.com>
Message-ID: <CAHk-=wjm3HQy_awVX-WyF6KrSuE1pcFRaNX_XhiLKkBUFUZBtQ@mail.gmail.com>
Subject: Re: [PATCH 11/20] bpf: factor out a bpf_trace_copy_string helper
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_090816_032495_91062907 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, linux-parisc@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 6:45 AM Christoph Hellwig <hch@lst.de> wrote:
>
> +       switch (fmt_ptype) {
> +       case 's':
> +#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
> +               strncpy_from_unsafe(buf, unsafe_ptr, bufsz);
> +               break;
> +#endif
> +       case 'k':
> +               strncpy_from_kernel_nofault(buf, unsafe_ptr, bufsz);
> +               break;

That 's' case needs a "fallthrough;" for the overlapping case,
methinks. Otherwise you'll get warnings.

                  Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
