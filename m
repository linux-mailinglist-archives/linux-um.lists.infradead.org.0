Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8435153085
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 13:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRwzHIbGYIH4ukGmRjcU9c3QegCNeE4ATtYpmJ5Iu7I=; b=XjKs6kOM0Lmvmn
	PS/I9WijLtHwPJ6QDd+M4r0GBsz9xiH8T5Aodgjxw6XBeQeprfXDbS6LFoboFKEWQ8qBnbTQ8107x
	usF/pRu3iBEszgtNMwyGHmOc+FBxoBHeDjtfxLYhrh+B+sVjKl/71RJhVmk7XUoaN0lP+SFpoIOKV
	EFm0s11+5x/n7JOHWjrQPquT2v8AlVHbY3RTDHe+JXDJ0gChxo0AxyAVPIYjFH/xw+MR2hZmcDamO
	DMXjLEUuNv/6Yslj5+kXioXRGh5F3l4ytyVF94kalM7zV83TMhpyUq0/UX5tckLM58mXB4Vr/eEkw
	2htGP8gKwShhmg1rF7Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izJji-0007vR-Az; Wed, 05 Feb 2020 12:24:54 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izJjf-0007v0-Jt
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 12:24:52 +0000
Received: by mail-lj1-x241.google.com with SMTP id v17so2102848ljg.4
 for <linux-um@lists.infradead.org>; Wed, 05 Feb 2020 04:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BNJTQRpvL9KkINBfR6JsMwnparCaLzisFRucTcRYKRU=;
 b=o+QAMuQsOlmfI+xJDJQOPCspwS/4JdBY8TvHBLahl6cBsVNuTgqcmKqFdg8K8wt6+O
 A+oRVpPYqRwFqKEEgH2DEJwuPovAUr1pGcUkxZKgA4HqeomFlmLyMGX505hMrfb3tnqU
 P/QQLox9bU581U3QsMCYGeMDVZdv9x5/sBEnBw/yQlPSmgF9v6JdszIlzCPvCGgA7Q/j
 7U6hbcbhejCTlG3Dt9nEl1NteEBokfLA83YQDeXYDL43rf6uxZXY8lBuTsJd/Pl4u2fD
 hul1l3CGnUVUkhU3Hj7Iz00COP/qFPCQ92Qlgf761Io7Hhl+bGqF1DPFprt5U6Af23k8
 5FQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BNJTQRpvL9KkINBfR6JsMwnparCaLzisFRucTcRYKRU=;
 b=b9uxkQCbqJxRMAdaoJsgy0PtGoSra/o5GKPTU1eI6nWNEiH1ySM5jnoT/p8T4mIx0W
 uSsAv8SkWkNnjsFT1r3KJN22ki687Q2uXMQvTPzJsjwS9mXnjMyThi/QehW+2htuvN6S
 zRX8V7zy/lMOUqJrYKq2h9L0VoT4MwG8hr/F4qIkNfVsVS1Tmifn4dqvaWhG7ykchAy7
 KsKsLTmJhaOAyybsbpUXPb5bTvPsNmfUu/OPMQ9s9DA1uSmO5YUcS9n1mcMWLAupCRRt
 fdFWA30KqopTUyn8Kg+Kmz944/mCr8jtN1qMMX+RJfO+zS5iHcLA6bJJbCBIwP2NVFkS
 w8Mg==
X-Gm-Message-State: APjAAAVQuKGoVhRERRGqd2tIsg+nIjTThl/O+F2JM6jWadZOsfF/2Ion
 DsGvnRjrYKoiuMBEDFNzOkr/UxeQd12O3bmbxqw=
X-Google-Smtp-Source: APXvYqwF/IFipOIXbw//cZg/+/z4SIsBW1Cx/rEUivXce1Gh45q0nNjPvOFjJLRU1D6MbVY0CSPb1VuHCfOMpXUyxlc=
X-Received: by 2002:a2e:b8d0:: with SMTP id s16mr1515306ljp.32.1580905489363; 
 Wed, 05 Feb 2020 04:24:49 -0800 (PST)
MIME-Version: 1.0
References: <cover.1580882335.git.thehajime@gmail.com>
 <39e1313ff3cf3eab6ceb5ae322fcd3e5d4432167.1580882335.git.thehajime@gmail.com>
 <20200205093454.GG14879@hirez.programming.kicks-ass.net>
In-Reply-To: <20200205093454.GG14879@hirez.programming.kicks-ass.net>
From: Octavian Purdila <tavi.purdila@gmail.com>
Date: Wed, 5 Feb 2020 14:24:38 +0200
Message-ID: <CAMoF9u3Jhqyvp3SpA3mUqPhS4zDuXP9GCUu_XsYx2etE0KGkcQ@mail.gmail.com>
Subject: Re: [RFC v3 01/26] asm-generic: atomic64: allow using generic
 atomic64 on 64bit platforms
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_042451_680389_996A7F34 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tavi.purdila[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 linux-um <linux-um@lists.infradead.org>, Akira Moroo <retrage01@gmail.com>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 Will Deacon <will@kernel.org>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Feb 5, 2020 at 11:34 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Wed, Feb 05, 2020 at 04:30:10PM +0900, Hajime Tazaki wrote:
> > From: Octavian Purdila <tavi.purdila@gmail.com>
> >
> > With CONFIG_64BIT enabled, atomic64 via CONFIG_GENERIC_ATOMIC64 options
> > are not compiled due to type conflict of atomic64_t defined in
> > linux/type.h.
> >
> > This commit fixes the issue and allow using generic atomic64 ops.
> >
> > Currently, LKL is only the user which defines GENERIC_ATOMIC64
> > (lib/atomic64.c) under CONFIG_64BIT environment.  Thus, there is no
> > issues before this commit.
>
> Uhhhhh, no.
>
> Not allowing GENERIC_ATOMIC64 on 64BIT is a *feature*.
>
> Any 64bit arch that needs GENERIC_ATOMIC64 is an utter piece of crap.
>
> Please explain more.
>

Hi Peter,

I was not aware that not allowing GENERIC_ATOMIC64 was intentional. I
understand your point that a 64 bit architecture that can't handle 64
bit atomic operation is broken.

One way to deal with this in LKL would be to use GCC atomic builtins
or if that doesn't work expose them as host operations. This would
keep LKL as a meta-arch that can run on multiple physical
architectures. I'll give it a try.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
