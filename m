Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56481D9C84
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 18:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8AbJSF6Pl94XE0dfdlJiqP4P3SpQr59PXHKM9kw0uM=; b=WCGFeSpzQNjaVP
	3g73snUNyPCQqNEGs+SIkdGKtIzrtCpNgkBv/7TNvKrAKfgOuw0R0EW/dKJjpwi79eS+X3R9A3XVj
	+6LKXeCwTVJlXyEGxfg4V8mYSR7DkMxx69jhwvaoz4gAK3T2qnInXqh63r2nQaijlWNpv38Pkiioo
	QnNWUTiMGvJ+8h4lB9GZq/WJdtCg4A0WKG3mfBW8fEK/yUcN+xsbvlQJI9E972LzTpRfHTKl8Xx4N
	jDSXLqzAdGEHwlXvc8tRpmFTWo0VMge+BURdg+rhLCRBFWZifK5rmpNtWoznoqqRj5zLi8wyC1AOW
	+s8tjnEMIqOhuxLWdjrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb54Q-0003kI-1n; Tue, 19 May 2020 16:26:22 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb54N-0003jX-Sf
 for linux-um@lists.infradead.org; Tue, 19 May 2020 16:26:21 +0000
Received: by mail-lj1-x241.google.com with SMTP id l15so12648lje.9
 for <linux-um@lists.infradead.org>; Tue, 19 May 2020 09:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dhbRZ27gTq3LlamCeWaOIagumkyuEgHdNj01JBr2vyU=;
 b=a8S6FimrljQCYdqdMRjHudj5xuwSAYeW17sDBke8Wp/wO6Vv10u9cXvAcweW0ZSEYT
 O3hXN68ol8TooTR2xUI2YNd5y+PctNRhxhENJnhmYB+aBitMMtqsXQFMvUY86xEYH5PA
 jFICERjG8bgZGMW0GbVN6qDt50ZsFp9Lq9zCI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dhbRZ27gTq3LlamCeWaOIagumkyuEgHdNj01JBr2vyU=;
 b=SDIEZP9gch1lBUk9ZwpWqFIzWQzNf1DaHrzjXBFcCusAQ8iBW09Oxq/oY7pdCAP0D0
 d57uRucq9afWlYk8SkJVgC6EyUBijsN4xYOurYvJGfRgzucC5e7ITJiO3CscMpqjxVbe
 J6VxPHML1sgFnpVO07e/GYgHV5D3K+VqPULKJxTQLxygTMDw4bhqPMnkEeBs1/jAPwv0
 csRZlINOZK15PidAZY3TbI55i0Gz0TDPzV9YGB3JOoIdjGnYwQRvyjmGe6bkxqpHMFm/
 HxLRRRW/N+UaxubbtH7na2DL1g2GWtxQpJrwTJEkksF6qGz0c7E/wegbvBHFoS19OoDR
 jZLA==
X-Gm-Message-State: AOAM530lsNb0pUKReUxjK6TKP5CkwK27DVMhNNJcghPDvF4CGwTies0r
 78MDNjhyNCmwQp2gKU+kGgy7WHQmbQo=
X-Google-Smtp-Source: ABdhPJzThQH0useu23SKJu20+7xXloJX9FK7g/KO6xyFkYqClhEJ5t2QDmomHqup52764mm1e4v+TA==
X-Received: by 2002:a2e:8186:: with SMTP id e6mr147352ljg.252.1589905575450;
 Tue, 19 May 2020 09:26:15 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id n3sm64185ljg.6.2020.05.19.09.26.13
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 09:26:14 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id o14so400996ljp.4
 for <linux-um@lists.infradead.org>; Tue, 19 May 2020 09:26:13 -0700 (PDT)
X-Received: by 2002:a05:651c:1183:: with SMTP id
 w3mr128485ljo.265.1589905573160; 
 Tue, 19 May 2020 09:26:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-13-hch@lst.de>
In-Reply-To: <20200519134449.1466624-13-hch@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 19 May 2020 09:25:57 -0700
X-Gmail-Original-Message-ID: <CAHk-=whE_C2JF0ywF09iMBWtquEfMM3aSxCeLrb5S75EdHr1JA@mail.gmail.com>
Message-ID: <CAHk-=whE_C2JF0ywF09iMBWtquEfMM3aSxCeLrb5S75EdHr1JA@mail.gmail.com>
Subject: Re: [PATCH 12/20] maccess: remove strncpy_from_unsafe
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092619_930334_0C972B6D 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
> +       if (IS_ENABLED(CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE) &&
> +           compat && (unsigned long)unsafe_ptr < TASK_SIZE)
> +               ret = strncpy_from_user_nofault(dst, user_ptr, size);
> +       else
> +               ret = strncpy_from_kernel_nofault(dst, unsafe_ptr, size);

These conditionals are completely illegible.

That's true in the next patch too.

Stop using "IS_ENABLED(config)" to make very complex conditionals.

A clear #ifdef is much better if the alternative is a conditional that
is completely impossible to actually understand and needs multiple
lines to read.

If you made this a simple helper (called "bpf_strncpy_from_unsafe()"
with that "compat" flag, perhaps?), it would be much more legible as

  /*
   * Big comment goes here about the compat behavior and
   * non-overlapping address spaces and ambiguous pointers.
   */
  static long bpf_strncpy_from_legacy(void *dest, const void
*unsafe_ptr, long size, bool legacy)
  {
  #ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
        if (legacy && addr < TASK_SIZE)
            return strncpy_from_user_nofault(dst, (const void __user
*) unsafe_ptr, size);
  #endif

        return strncpy_from_kernel_nofault(dst, unsafe_ptr, size);
  }

and then you'd just use

        if (bpf_strncpy_from_unsafe(dst, unsafe_ptr, size, compat) < 0)
                memset(dst, 0, size);

and avoid any complicated conditionals, goto's, and make the code much
easier to understand thanks to having a big comment about the legacy
case.

In fact, separately I'd probably want that "compat" naming to be
scrapped entirely in that file.

"compat" generally means something very specific and completely
different in the kernel: it's the "I'm a 32-bit binary on a 64-bit
kernel" compatibility case.

Here, it's literally "BPF legacy behavior", not that kind of "compat" thing.

But that renaming is separate, although I'd start the ball rolling
with that "bpf_strncpy_from_legacy()" helper.

                Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
