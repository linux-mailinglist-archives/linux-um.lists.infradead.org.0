Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86FD1D9CD9
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 18:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3bxguv2EHcMcPgLpWux+I/rCewBCiUmXQXzp67TuDc=; b=oWsW2CQclyft8Q
	vfxsJY+xegeB5fI5zslTMdHaA2ipTejXuqdGbSfmYxr7FvHbvT0h+rD8R8nbDGaGJyOWei1pWaKK/
	MMibZs8kbJTmDDMEBE1SqLTpToT9j7jth9DUsA7JcINGca1OMoMMOLwN97vlYiTCSY+zc+g6aojfo
	EH8wyP6A3Cez6w6MoOT5z+86krDEr83N4xejJ7JyuKHPfY6w0A+kHdtLJBBM8GY9bj3l/WVIV3SNT
	PKYKjnLiAs9+tAIp5S54sLrskRLu9yNcemp4IoEMtqQq2G+6t0aNS4hv05LCPk1bBU+2ypkIGDezs
	dFodX+11D0PmSbzUdOeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5Bs-00025E-Tx; Tue, 19 May 2020 16:34:05 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5BH-0001WY-Mf
 for linux-um@lists.infradead.org; Tue, 19 May 2020 16:33:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id k5so371985lji.11
 for <linux-um@lists.infradead.org>; Tue, 19 May 2020 09:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TFvy+u64rADS0X9wXPVDcnjojb1U9iWCN3n097gO97s=;
 b=KITgpUd5bP2WD+I3Ft3adLmt6MH7MS4MFJexni61RXcXlzD9Gqjwa8Lmdkq9TYyfqS
 KL4aFjs9x04ZYvGYs2IsxZG5dgyhwKLIBJrjoMKhrn6xZPweQeBnKjN1RmntmQCr96TY
 jycjBR645lH/xqU7rOHokwZ9wup3usfS+9Z3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TFvy+u64rADS0X9wXPVDcnjojb1U9iWCN3n097gO97s=;
 b=hv7QC1CBPcGic5NnhEuMFWn8ZmrDkfTFHcyz2G6WaGcQcCllPk4gY97lBIHYMCSwEl
 VJ0Iob1fwYYB7qgNmjP9CP5Q6Wi/mgMq841Tp9c1GFqBKJSRr0wvlGFtWwktCWsW6tVf
 neegml5Pkd7Gwp0Lyas+aFrFtG011vbeCDgN8SYa4azp1ZGj4LUiJ5XbcBf4lnlh9+Zc
 llDqGKETfJRalgZYWZy2s6RwcuSYaUEMu/M9MqA44K0MtdiiRXtVlAPipRMFulx5KA52
 GVeMGdU8IK3G7PhCUEvGEnokho15kkb1SpE9PWNngy8xqxfS1a04iVJPx3r6QeXx0JDl
 fiAA==
X-Gm-Message-State: AOAM5317Ax/rfJee4tYpobywAM176D9C3ZVnC+/jSzxaO5MsOxjCAvL4
 JFx6XUpadWYaBeSEFjJwZvrmef2LCFI=
X-Google-Smtp-Source: ABdhPJzSA7ZYNxdvUddrFdrM1K0EJ46XFowT0V5HKQJGVaggyoo6SVx5sWFyCZec60QCwSN8Vic9Mw==
X-Received: by 2002:a2e:b178:: with SMTP id a24mr170662ljm.268.1589906005043; 
 Tue, 19 May 2020 09:33:25 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com.
 [209.85.208.179])
 by smtp.gmail.com with ESMTPSA id z16sm10558492lfq.18.2020.05.19.09.33.22
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 09:33:22 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id k5so371784lji.11
 for <linux-um@lists.infradead.org>; Tue, 19 May 2020 09:33:22 -0700 (PDT)
X-Received: by 2002:a2e:9641:: with SMTP id z1mr145949ljh.201.1589906002260;
 Tue, 19 May 2020 09:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-14-hch@lst.de>
In-Reply-To: <20200519134449.1466624-14-hch@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 19 May 2020 09:33:06 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjg6v1NU31ku2aAMfX7Yu0oDKRvKeBJVGZFQB7AjcwhAA@mail.gmail.com>
Message-ID: <CAHk-=wjg6v1NU31ku2aAMfX7Yu0oDKRvKeBJVGZFQB7AjcwhAA@mail.gmail.com>
Subject: Re: [PATCH 13/20] maccess: always use strict semantics for
 probe_kernel_read
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_093327_844435_55FB8656 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
> +
> +       if (IS_ENABLED(CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE) &&
> +           compat && (unsigned long)unsafe_ptr < TASK_SIZE)
> +               ret = probe_user_read(dst, user_ptr, size);
> +       else
> +               ret = probe_kernel_read(dst, unsafe_ptr, size);
...
> -               ret = probe_kernel_read(&c, (u8 *)addr + len, 1);
> +               if (IS_ENABLED(CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE) &&
> +                   (unsigned long)addr < TASK_SIZE) {
> +                       ret = probe_user_read(&c,
> +                               (__force u8 __user *)addr + len, 1);
> +               } else {
> +                       ret = probe_kernel_read(&c, (u8 *)addr + len, 1);
> +               }
...
> +       if (IS_ENABLED(CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE) &&
> +           (unsigned long)src < TASK_SIZE) {
> +               return probe_user_read(dest, (__force const void __user *)src,
> +                               size);

If you can't make the conditional legible and fit on a single line and
make it obvious _why_ you have that conditional, just use a helper
function.

Either for just the conditional itself, or for the whole operation.
And at least for the bpf case, since you want the whole operation for
that error handling and clearing of the result buffer anyway, I
suspect it would be cleaner to have that kind of
"bpf_copy_legacy_nofault()" function or whatever.

(And see previous email why I dislike that "compat" naming in the bpf case)

                    Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
