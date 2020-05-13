Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D071D2356
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 02:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JW3diw778jj6CnbiTTAOMryVchMWazbIw82UJ81tME0=; b=vDv5RrP24lyuOk
	OgBHjRnOnJluJ76DMsNkRmQEApgu+cyujkU98RtHqMRJfe66HXaMCrRbuRZcndWcAMvFOEUdGQ1pL
	OaqhAECfEi9FyvkGGH3PEL2M2hbF/TFhVmHMtL2NWnzbgCE3EbDSbZApk1FQgj4/iLiacUjFEc1Ly
	ncMd0efzwAbHmn4jzFMFAVCKYFVV6bCP1rQ7ZTKZx1AVsPNQy5i5ajIvaMvxjJI5EjwoSWRqVfTkW
	TMPY8lQUtj1fgIQpeDelJYemLXF36aT/luWM9TPRFNFXOozLRRZjWcKy5sd7JMxPAufLKsfLl/ARm
	x3L5IgEuBIn5OYXEWuvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1IA-0004xE-5T; Thu, 14 May 2020 00:00:02 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1I7-0004wR-8z
 for linux-um@lists.infradead.org; Thu, 14 May 2020 00:00:00 +0000
Received: by mail-lf1-x144.google.com with SMTP id a9so1020110lfb.8
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 16:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fasYih196bvKUHb0YCxHna3fp2u2qNy7HWnYHVsQ+sQ=;
 b=fD3hyHvKHx/67q1VTFKCR74zDcE6394aAhGXhl0a0C48TMMb4AnhPQvs7IdErH6CX2
 um+ec95QL1F0EfXLmER3SmoJ0T+gygc4SnxysABRELnzBjVWudgYOLaUmLBf8bjna0/G
 B5XXX5vTTIkGXj8ZYK86YltWbiai+htzLW22s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fasYih196bvKUHb0YCxHna3fp2u2qNy7HWnYHVsQ+sQ=;
 b=T2BK9ge8O20esF2+1uIR4EJl0dRiGDwR/t5Gs6SacmyWy+u5zjWYAMXz6EqBtmyu0T
 afeotwsiwsD1w04keXaIbFmfv1kVoievKrJXftdEgNpLseINmcmmZoc5z+JO4X2MeBm2
 /TACrwgxmKO3MY+jXpE1uDt48Na696Htgl+fQzNnQpF5hSHN6gTHKAlb4LZs5b6jOVkw
 258bQ+I6EMezLJx7Ff7j9mEvLEDrwEgMbmXHgYPJF8oBi9KrdRpxk1cRC3qHudmMiuEc
 OkoduxBibYAQuiJ4XCb/cd4D027d4cYqUvWP1MuOYn4VphrI0oTkRKauqoDcadSrXuVu
 yjjw==
X-Gm-Message-State: AOAM5333uY+f/dofAgPeyyqIK37f1v7kglWxZ2HNH92MxXu+go/J6zVy
 Ng+WVtDBrDSNNCz8E+lqNXPUUUb9ibo=
X-Google-Smtp-Source: ABdhPJyoOj0kS3p7UIC6RGNn1yywU17g/xxAtLoDKvlPDFY9FkM0jku4RFiDQ4oleRP+0Eyiqn+mKQ==
X-Received: by 2002:ac2:58d7:: with SMTP id u23mr1189807lfo.119.1589414397458; 
 Wed, 13 May 2020 16:59:57 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id d9sm612523lfa.77.2020.05.13.16.59.56
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 16:59:56 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id h4so1476156ljg.12
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 16:59:56 -0700 (PDT)
X-Received: by 2002:a05:651c:319:: with SMTP id
 a25mr857486ljp.209.1589414396039; 
 Wed, 13 May 2020 16:59:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
 <20200514082054.f817721ce196f134e6820644@kernel.org>
In-Reply-To: <20200514082054.f817721ce196f134e6820644@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 May 2020 16:59:40 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjBKGLyf1d53GwfUTZiK_XPdujwh+u2XSpD2HWRV01Afw@mail.gmail.com>
Message-ID: <CAHk-=wjBKGLyf1d53GwfUTZiK_XPdujwh+u2XSpD2HWRV01Afw@mail.gmail.com>
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
To: Masami Hiramatsu <mhiramat@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_165959_319699_3F770E04 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
 Linux-MM <linux-mm@kvack.org>, bpf@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 4:21 PM Masami Hiramatsu <mhiramat@kernel.org> wrote:
>
>
> For trace_kprobe.c current order (kernel -> user fallback) is preferred
> because it has another function dedicated for user memory.

Well, then it should just use the "strict" kernel-only one for the
non-user memory.

But yes, if there are legacy interfaces, then we might want to say
"these continue to work for the legacy case on platforms where we can
tell which kind of pointer it is from the bit pattern".

But we should likely at least disallow it entirely on platforms where
we really can't - or pick one hardcoded choice. On sparc, you really
_have_ to specify one or the other.

                  Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
