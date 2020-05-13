Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218BA1D2297
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 01:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qZxrjv6xn1KWkkrVjCKa+XVqRuXdaxrRUyNvPtMYLg=; b=bTlX3KPUau4eiQ
	kjN3M8Z2lRc27YDXPDoTJh1qwq4V7UGUcQUwF542qbJmQNXuOPIk3NjQIJWGgJ9eSvZ6fLpw6LpTB
	PYMOHl50KPr+PQZ8F8SwRc90saYEq98DtRvbcUJyCqlbDUpIYyhsQ7qv1cmQhjBhMiNk/CUag4lab
	2vuoxznbiSoZPaCD8cs3cKJSJ/mjETAaTYmsXuJPa3JJH7poD8lyxSVSrDkF+NJHZPiC9DEdadW09
	3GlUey9II8+ixJ0DHTRygST3FS2N6o3WYGx+emtT/GD5QfTTxunqICzrOEAqRWBi4XEqHHPWFKLU1
	yA1qI+Lq+XFczcwlxF1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0Pf-0003oD-BI; Wed, 13 May 2020 23:03:43 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0Pc-0003nk-0T
 for linux-um@lists.infradead.org; Wed, 13 May 2020 23:03:41 +0000
Received: by mail-lj1-x242.google.com with SMTP id j3so1399879ljg.8
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 16:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wdZg4gkYTds/C4KUVy9erLK1Ch+WqNN+RvFMTseVuAg=;
 b=C1TcjV6OtJpa2YRiWAUnGcZZ/u09cBy851Mx94wSMSQa9VrdsWV1jVHW4P1sNrL8Bh
 F6WpmJ1tQWre2J0ca6Wb2LX04yqV6LxMJpd1Tpa6EPb8PrEYBkkbwpuLaAdO/BjmCZ2G
 9egVYPaqRVmuIV8Yift2HwrZ/fz1dHM99i9n0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wdZg4gkYTds/C4KUVy9erLK1Ch+WqNN+RvFMTseVuAg=;
 b=pqA3RbkqrlGWqBY5gRu0x6SvCQ/65Kf6+ae7OMRbBX9cJjrsOmJQfJmPIfrhYh5FxI
 ykNJIn57gLkASVl90LIJniQrEMufHNsrtq2O0cDa4yJtMRlIY750u9DzF9i2BCo4LGn7
 3H4yuXXwcBaHBHSuqA3DePo+An7KGVOwq77V5qvLNB0+p8FKkbg34fWxxim9PY8L0+p2
 Y0/z21IaCRMvzTD5DRKGTFiyA++oodlZYTdS1TkJ2x5QSZUdgwHz256GakMlULe3uBLA
 jw0tArNFrvidyyH5kUfvL93MwfJoYqWpN0aYVIAVIeGt0XBheBfi3JIN0NvrU2+krNOC
 57yQ==
X-Gm-Message-State: AOAM533zzo2XxTNd6JGLORUMKi1cR6YG6/g7e8WtgFGqvitHbAC52Kg9
 42Wna6tnWH56kh56868A+5L3YY2fHC0=
X-Google-Smtp-Source: ABdhPJy1Kx9QNGW/D67jCEED4G0DqmL2XL1rp0OH37pw2XeClHclIbJx9ZRTt0oA9OIVEgG+wqcrvA==
X-Received: by 2002:a2e:9e4f:: with SMTP id g15mr881280ljk.78.1589411017363;
 Wed, 13 May 2020 16:03:37 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com.
 [209.85.167.45])
 by smtp.gmail.com with ESMTPSA id m22sm429160lji.75.2020.05.13.16.03.36
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 16:03:36 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id 188so925036lfa.10
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 16:03:36 -0700 (PDT)
X-Received: by 2002:ac2:58c8:: with SMTP id u8mr1177915lfo.142.1589411015919; 
 Wed, 13 May 2020 16:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
In-Reply-To: <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 May 2020 16:03:20 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiivWJ70PotzCK-j7K4Y612NJBA2d+iN6Rz-bfMxCpwjQ@mail.gmail.com>
Message-ID: <CAHk-=wiivWJ70PotzCK-j7K4Y612NJBA2d+iN6Rz-bfMxCpwjQ@mail.gmail.com>
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
To: Daniel Borkmann <daniel@iogearbox.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_160340_056961_2931280B 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: bpf@vger.kernel.org, linux-parisc@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 3:36 PM Daniel Borkmann <daniel@iogearbox.net> wrote:
>
> It's used for both.

Daniel, BPF real;ly needs to make up its mind about that.

You *cannot* use ti for both.

Yes, it happens to work on x86 and some other architectures.

But on other architectures, the exact same pointer value can be a
kernel pointer or a user pointer.

> Given this is enabled on pretty much all program types, my
> assumption would be that usage is still more often on kernel memory than user one.

You need to pick one.

If you know it is a user pointer, use strncpy_from_user() (possibly
with disable_pagefault() aka strncpy_from_user_nofault()).

And if you know it is a kernel pointer, use strncpy_from_unsafe() (aka
strncpy_from_kernel_nofault()).

You really can't pick the "randomly one or the other guess what I mean " option.

                  Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
