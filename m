Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8241D1F59
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 21:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hHDPctun6NuhCoOLcRVb8rJoFVp9w5YeB/5UCMAdoo=; b=lL6a85ayEaN3nE
	0OM7lOJSoOgiMvVIQke+PBQKEqO5uv2YVc5M8iTxYP6tWsN6FrMecuj2+Zkfcfxrr6vCNOjxq/3cy
	3NqWw2FhqOGSmC555cRL3+hROK1d8/9J/jq2FoGVOyzHH4zQTRluNnc/BkX8EWY0sw/Ugy9VODOCR
	MhBQ7m5z/UP1HacJwVd8ZrfgBrNc8+ObDNxUeW9ERN+yuvh73ZvnyxVCi1/qsSJRyPo3pkDvqHopb
	n23R0I3vavTHWQFyyyWcjHW7XWS73I6/ToZegsY4emL61Cv5kaQAEgdByWaxPLaUAa/d+Wq8JDkmH
	zYenKUgEnX/2KJImQnIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxCC-0002KO-Hu; Wed, 13 May 2020 19:37:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYxC8-0002Jh-P1
 for linux-um@lists.infradead.org; Wed, 13 May 2020 19:37:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id b6so940157ljj.1
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 12:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5FRYECFHiQr3Nfb1uzqLNFih4Bcng0OOjZJ5V5m4DAs=;
 b=ZjLEDdjhfQ+ZsfStprzo3boptGtjEB8xMJMPV9hfgVHHrrYSleH8mLbHC8Rk2rWQqc
 NnCj3BIzoVOHPTIgSoBKM0vWlfW3SuT0UoYyIfcumKGQE/4wsqoLb39sPYuJ5/AuOelG
 tGQKJ8l9ywdlX+FMm4CTzGEq2pztEwBhTbMlg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5FRYECFHiQr3Nfb1uzqLNFih4Bcng0OOjZJ5V5m4DAs=;
 b=RnfTxwCwGroOGmttLkXKajHBr9rJC1WdORbztVkX9TAb4A7VaiTTW9nvBO1t5X2Qj0
 ZuakYpTbAQR1Y05T4wqAYPrx3ONKsV3FihxvnwfDdT1/vJGPBLfSY2HQsB94+kk0sIO9
 i/sz48QBcQnYc32yOA6bcglNZQjPSwf8pt0VnH/rM3orNmynwz/7IXyFS62JreQTjRws
 46w+sFDVK6YpdbU38xhR3fShe6kzkjSS41doJYxWxpH5fd1V8UK81XnJp2Uu1WlbI2+s
 mfoCsyBmj7rm6rMqNORqQ3sKPEznTMGKyvUvFpiYmjV1Yf9QKnC5gPw/njHq/dcqaOBn
 vRew==
X-Gm-Message-State: AOAM530uLQ1PCwN5nNNKShILYLzrwNvCz6LLEDN6W6JdLYxSlcYnQnU/
 2ZYck071IxGM5B06ThJ84pXpVt7UDMU=
X-Google-Smtp-Source: ABdhPJy9s4B1syrsKXzadAgEZlUO/om/qv8MrVLgBXEKNTWfr6U9wc1PZeCSFQ2s+ROpdjBMl9VyLw==
X-Received: by 2002:a2e:b4d5:: with SMTP id r21mr405760ljm.49.1589398650166;
 Wed, 13 May 2020 12:37:30 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com.
 [209.85.167.47])
 by smtp.gmail.com with ESMTPSA id b4sm318245lfo.33.2020.05.13.12.37.28
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 12:37:29 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id d22so506917lfm.11
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 12:37:28 -0700 (PDT)
X-Received: by 2002:ac2:4da1:: with SMTP id h1mr686949lfe.152.1589398648496;
 Wed, 13 May 2020 12:37:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200513160038.2482415-1-hch@lst.de>
In-Reply-To: <20200513160038.2482415-1-hch@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 May 2020 12:37:12 -0700
X-Gmail-Original-Message-ID: <CAHk-=wghd2efrE_DoJaC7nTkpCC1gPGp+xbNY7KWOE-7sa4h0Q@mail.gmail.com>
Message-ID: <CAHk-=wghd2efrE_DoJaC7nTkpCC1gPGp+xbNY7KWOE-7sa4h0Q@mail.gmail.com>
Subject: Re: clean up and streamline probe_kernel_* and friends v2
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_123732_811653_7BF3D030 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, May 13, 2020 at 9:00 AM Christoph Hellwig <hch@lst.de> wrote:
>
> this series start cleaning up the safe kernel and user memory probing
> helpers in mm/maccess.c, and then allows architectures to implement
> the kernel probing without overriding the address space limit and
> temporarily allowing access to user memory.  It then switches x86
> over to this new mechanism by reusing the unsafe_* uaccess logic.

Ok, I think I found a bug, and I had one more suggestion, but other
than the two emails I sent this all looks like an improvement to me.

                 Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
