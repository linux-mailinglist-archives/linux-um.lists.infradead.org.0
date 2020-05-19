Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAF81D9D23
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 18:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SuhBahrwH+Ky0cw9G8eNcg0MmuR9aon6L6ZABzd5aC0=; b=OCrGeg18towkHS
	JIq4us/fRdNS5hWrr6yQW7h0ltRW9xco3tXckQSNq4y2n3wdRv5RLXJbcZFwflLqGJkYGYrWiOG/O
	IgXdtR3GmLKWiTw69bfzAuBfbDcpf+0FVaaHG/QpGzkjv5BLwTVIVRrw8ZhbBQMNLCoJyFMtB7QMM
	yb7Lokhq0QBnjHBdn/yTVJdwS5CBdcL2WA0FLgQ0X+3Wle1KsRRQrA79kUAhPUumrnOhAZAm/EMy7
	C/i7KmAnyUcAcbAAeeCb7PIsxSdzj1ocRWx9dxxLlWLhdBZWxj2gWrdgzP9kUS+GwAJLx/1T3/nCq
	vpDUz6Eyf9Vy9+X8PZXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5Np-0002sc-GD; Tue, 19 May 2020 16:46:25 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5Nn-0002s0-9z
 for linux-um@lists.infradead.org; Tue, 19 May 2020 16:46:24 +0000
Received: by mail-lj1-x244.google.com with SMTP id z18so411280lji.12
 for <linux-um@lists.infradead.org>; Tue, 19 May 2020 09:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TC0qAtFd13O2JOLCB7SFLNnsJ0TrRRfShJMVEYLbwy0=;
 b=BM7rNRUOZPJu6CqIZoTyNHsH3OhfbJ7v4lyTa1sXCfThZdyIW2MAwpqUoVdCrwYJYJ
 M+8yUvqSB1mogas+2iJO8jLleH/wb+mxdAsp/6H+RxHZ44GfbLZBQMjsb0UkWlV6SNKA
 VToCUizM9QTTj9Opl/oBOtfqOQD3JZAH4FWEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TC0qAtFd13O2JOLCB7SFLNnsJ0TrRRfShJMVEYLbwy0=;
 b=Eslnnf3BpZhz0KM8NFbdI5a13EJoJ7PJCO58IxSnEpRd2K5wb+AMB2viMM9ZsG6Ysa
 w1JNLjp5O78DBMTgm+GsOPw2ATIrzneK3pRKxYiv1f5qXQsDe8As+Xla3CrYwEVqNN2B
 CU+I0rTtS73GRwPZmXXnoyQ8dQcFFbSfUP1BSDDtl20DI8fhjrYGUVMclL7AVFktmMU5
 e/8MiSG+FiO3hJvGa089JvZ52OFUX6975kcbp5xMgIwi1E6qncW2+ZVad7TTqYlYJbJY
 Sm+Ikmlh0QxLsSOQVKUNxtr4y1JLCUxel0pPRYm813+XP8iUvdffSiyGeTkNc0bRW9tl
 flVg==
X-Gm-Message-State: AOAM532ETb6em5DxXA7/SnX27ly2zIu6javdFBUh8lPufzVvxZiSjK2I
 rUfZjCIpnpW00Nvkqv+HD2ofl8IW+WU=
X-Google-Smtp-Source: ABdhPJwTu0C18UjRnzzgElJ1jo1VowlRQaqq5Xy+FW9qntPTaMNKpFBH1bSIdPMw2mujEsep+twbOw==
X-Received: by 2002:a2e:b704:: with SMTP id j4mr175586ljo.139.1589906780199;
 Tue, 19 May 2020 09:46:20 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com.
 [209.85.208.180])
 by smtp.gmail.com with ESMTPSA id m4sm77848ljb.46.2020.05.19.09.46.18
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 09:46:19 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id u6so452610ljl.6
 for <linux-um@lists.infradead.org>; Tue, 19 May 2020 09:46:18 -0700 (PDT)
X-Received: by 2002:a2e:8956:: with SMTP id b22mr218841ljk.16.1589906778412;
 Tue, 19 May 2020 09:46:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-13-hch@lst.de>
 <CAHk-=whE_C2JF0ywF09iMBWtquEfMM3aSxCeLrb5S75EdHr1JA@mail.gmail.com>
 <20200519164146.GA28313@lst.de>
In-Reply-To: <20200519164146.GA28313@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 19 May 2020 09:46:02 -0700
X-Gmail-Original-Message-ID: <CAHk-=whVd4evLe-pi7VNrh4Htp1SjogWtEqgot6Ta+kavyqamg@mail.gmail.com>
Message-ID: <CAHk-=whVd4evLe-pi7VNrh4Htp1SjogWtEqgot6Ta+kavyqamg@mail.gmail.com>
Subject: Re: [PATCH 12/20] maccess: remove strncpy_from_unsafe
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_094623_347651_E25821A7 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

On Tue, May 19, 2020 at 9:41 AM Christoph Hellwig <hch@lst.de> wrote:
>
> I had a lot of folks complaining about things like:
>
> #ifdef CONFIG_FOO
>         if (foo)
>                 do_stuff();
>         else
> #endif
>                 do_something_else();
>
> which I personally don't mind at all, so I switched to this style.

Well, I don't particularly like that style either, it is _very_ easy
to get wrong when you edit it later (and various indentation checkers
tend to be very unhappy about it too).

But that's why I like trying to just make simple helper functions instead.

Yeah, it's often a few more lines of code (if only because of the
extra function definition etc), but with good naming and sane
arguments those few extra lines can also help make it much more
understandable in the process, and it gives you a nice place to add
commentary for the really odd cases (comments inside code that then
does other things often make things just harder to see).

             Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
