Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A304A1C785D
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 19:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9E6Pgfw2T3xcWtQNlhFr8rqZkVqEzL69F7n9SJHKtIk=; b=DUelv6pwBxKN4c
	yhWDXkGfS59ZYNduNAOP10r/IEyOsh9eQRuDrA33/rwuGdmPn80QfEfws/WX54PnjjQxp63hVaCxb
	rG6sBY4oDOI8zMji+pA1jXdxQbeDxVpunoNVU17JEozdPuQXXIVeowkvSFXO6YXUgeVIQ2fFf8YwH
	pjm32cwQLMRlmNhUwdMBqhCKJv3B/1jNrAeHnPm4vWagOPryp4Eugvh2VX7qjuWFNQVVnTJYWY1Iy
	pISdBgDC9k9Z+E+IAHqIcbOJ6ZN87f4vdEsIZpoT4em3Z7Dt7BYEhXS3+ic5J+1FegGpBgCeCNkDt
	+el01fZMJ9XgHH5Gcx8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWO67-0006go-Nx; Wed, 06 May 2020 17:44:43 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWO64-0006Ab-Q0
 for linux-um@lists.infradead.org; Wed, 06 May 2020 17:44:42 +0000
Received: by mail-lf1-x141.google.com with SMTP id g10so2068192lfj.13
 for <linux-um@lists.infradead.org>; Wed, 06 May 2020 10:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uNt2KHwB8PiMSyUUcvWbb3LmQf/yl99wmVRwAMCe6Sw=;
 b=QfIhp8bnkHziXy45j6AZQvnQuPZVCBRmkYNh4Qk1yBWY/AbDih3c468GHPPi0NxUWC
 +RsQItHsCm4TW5y+JMWQZhOFGKrkw/OMHO8k0Ff3ChO35z8KVI8vHTXhfxO6dpDN2zOT
 R/3GLd58rAk/zgyKNOtvPikt/JEPwM8VJVw+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uNt2KHwB8PiMSyUUcvWbb3LmQf/yl99wmVRwAMCe6Sw=;
 b=FkAYrzi+qGvqRg4WaHDK409MclFgQEGv2d5B7/T7UgME4POmQRWjYQBtNs3upPs8KN
 C9Ko6g6NXrunnV8HBWFBbejkUVeTEya09RB03yx0PhicaJ0UfuG8tWOFbyCGZVmg3haL
 y+iDRuBYFDwfaUAsG6B8HdrEKsTOX9ouxJ+BbAzv8zr5NHtZ6vyPxfArQrKWtf6iUMoU
 JqwwiZZH+rzBiotwl9CPw7s2z2q53F7BAJZJ87wR+2DVfpHroHIQigYgNx5ZOFKwgNNh
 UV1oMJ9sfKVqvspA1j6D4QA/DNay2uI06+4p+oIAr3G9BHZYMAanG+XC+46WJSaJ3do3
 4uaQ==
X-Gm-Message-State: AGi0PuZYjegVA2P3HQlJ9GEkDb+9pOVfC/ZpubwS8WkB4c0C1eZc/SbN
 0iHvuMZerrUh8hXZ0LRT+6nK3gRtINI=
X-Google-Smtp-Source: APiQypJ+J9HHe9U8T+dP0lCCrw7egGTTS1f0SicSfEsMOo6pgCW/XArI4SrnIzgzQGLqV+Kt+ftGlg==
X-Received: by 2002:a19:ad4a:: with SMTP id s10mr6142644lfd.9.1588787073635;
 Wed, 06 May 2020 10:44:33 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com.
 [209.85.167.46])
 by smtp.gmail.com with ESMTPSA id a25sm1975511lfb.87.2020.05.06.10.44.31
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 10:44:32 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id t11so2077604lfe.4
 for <linux-um@lists.infradead.org>; Wed, 06 May 2020 10:44:31 -0700 (PDT)
X-Received: by 2002:a19:6e4e:: with SMTP id q14mr5836440lfk.192.1588787071388; 
 Wed, 06 May 2020 10:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200506062223.30032-1-hch@lst.de>
 <20200506062223.30032-9-hch@lst.de>
In-Reply-To: <20200506062223.30032-9-hch@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 6 May 2020 10:44:15 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj3T6u_kj8r9f3aGXCjuyN210_gJC=AXPFm9=wL-dGALA@mail.gmail.com>
Message-ID: <CAHk-=wj3T6u_kj8r9f3aGXCjuyN210_gJC=AXPFm9=wL-dGALA@mail.gmail.com>
Subject: Re: [PATCH 08/15] maccess: rename strnlen_unsafe_user to
 strnlen_user_unsafe
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_104440_858376_DCB337A6 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, May 5, 2020 at 11:22 PM Christoph Hellwig <hch@lst.de> wrote:
>
> This matches the convention of always having _unsafe as a suffix, as
> well as match the naming of strncpy_from_user_unsafe.

Hmm. While renaming them, can we perhaps clarify what the rules are?

We now have two different kinds of "unsafe". We have the
"unsafe_get_user()" kind of unsafe: the user pointer itself is unsafe
because it isn't checked, and you need to use a "user_access_begin()"
to verify.

It's the new form of "__get_user()".

And then we have the strncpy_from_user_unsafe(), which is really more
like the "probe_kernel_read()" kind of funtion, in that it's about the
context, and not faulting.

Honestly, I don't like the "unsafe" in the second case, because
there's nothing "unsafe" about the function. It's used in odd
contexts. I guess to some degree those are "unsafe" contexts, but I
think it might be better to clarify.

So while I think using a consistent convention is good, and it's true
that there is a difference in the convention between the two cases
("unsafe" at the beginning vs end), one of them is actually about the
safety and security of the operation (and we have automated logic
these days to verify it on x86), the other has nothing to do with
"safety", really.

Would it be better to standardize around a "probe_xyz()" naming?

Or perhaps a "xyz_nofault()" naming?

I'm not a huge fan of the "probe" naming, but it sure is descriptive,
which is a really good thing.

Another option would be to make it explicitly about _what_ is
"unsafe", ie that it's about not having a process context that can be
faulted in. But "xyz_unsafe_context()" is much too verbose.
"xyz_noctx()" might work.

I realize this is nit-picky, and I think the patch series as-is is
already an improvement, but I do think our naming in this area is
really quite bad.

The fact that we have "probe_kernel_read()" but then
"strncpy_from_user_unsafe()" for the _same_ conceptual difference
really tells me how inconsistent the naming for these kinds of "we
can't take page faults" is. No?

                   Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
