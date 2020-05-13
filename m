Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021441D1F9D
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 21:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41oEfFMlACSyMy2hhlHCc1vhCC97h4QkpT+nWi3U64w=; b=UUMhC2pO9y9VWs
	43K4FrsYLC11lNq5RCrSGVdoCAHIAB0ExdMvPp9m0THpcDPFbFKfUkJjQCDLHoT4+O6MqxXNdgTzW
	anVPtk/H4eDNaJ6O9TOWeWrQ6IRWrLKxjaLzr5/Ba7kOeyfgdVqgWIS3ZlIUVPcOOljVbEbJ4wHaI
	aNc3X/6GZnfDAgPrYCbo7zVeW6BJLz5uukv2tQliQrwHdFlbBeDyXFZ9nx3XxxmptRHuM0g+qT52p
	Yfy8bmCdBi3qg4UWiWPejVeOGtzHCUvuEwiL3gvpU8NTkE6f6ICLvAUTCJovaB1CaTACq7iw9O3Fx
	2EqydrINLuo0sDlwfN6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxNY-0001fO-Hk; Wed, 13 May 2020 19:49:20 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYxNV-0001e3-Gw
 for linux-um@lists.infradead.org; Wed, 13 May 2020 19:49:18 +0000
Received: by mail-lf1-x143.google.com with SMTP id c21so575270lfb.3
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 12:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YO5CZycJoj3SG3fGwN+WTopK/LhbyP0lsfj2E+DRkX4=;
 b=PhubPRzpkCdl9mVPHrG9Oo8C+WwrKBHaeYw/BPL1ZhM7m32uY9vOkxzag4IPR45vmN
 nCyuee+AoItBB8/CS6j7/cO2lxt0a4Fuet7ze1acDgZYlgBMc3l9Izqr8rAmG81U3hf8
 E+jYDPSfclqu+31+e+LKbjbSmiBTvos3Qrvk0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YO5CZycJoj3SG3fGwN+WTopK/LhbyP0lsfj2E+DRkX4=;
 b=iyXTGNroeEExvZj7c/drZAUTWq5LgTSd/9SLkCvKh0OX7ntn8ugMATsVLuUzQ5NvnP
 WDNq1ODjzfBRXRVxA3MtdXJEbFu/rD6hksBteBabf8mTvXGICAXHFyvUoXGfvdjhdLS4
 kifb8swGyTWKn0ts05s78I0AlXsIRMkoQCTPFlJ3qwc5irFT0uCdv3alpGd9s2jfDYDK
 f9daxjOk6sOKLy85OnhsXmfnSz2SZONVntj97Ui2bNAOROiXkRVR6gBxHWXUlz73ptBp
 DicdnsimdKBxLY1FTPXdH6zm4Tj82xT3Xi5TSUkSMxvjWCYsH1VvNzVd131BNPu5PpT7
 PWAw==
X-Gm-Message-State: AOAM533XrsFGlNubGu2E72/O08+56xTDHX4IQPwOAlaweRyYMpvGaDBQ
 rN9i9rn7TE6xloMx37vSOde9Zx9lo3o=
X-Google-Smtp-Source: ABdhPJy0bqM4V9fNt+C/ZZaswywilShelOpk+Ual+KZsq6oprRzFL8aVflog+8V/KWvaUjFoP7yz2w==
X-Received: by 2002:a05:6512:3190:: with SMTP id
 i16mr743959lfe.158.1589399353006; 
 Wed, 13 May 2020 12:49:13 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com.
 [209.85.167.53])
 by smtp.gmail.com with ESMTPSA id c79sm332486lfg.29.2020.05.13.12.49.10
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 12:49:11 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id x73so582858lfa.2
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 12:49:10 -0700 (PDT)
X-Received: by 2002:ac2:58c8:: with SMTP id u8mr739476lfo.142.1589399350490;
 Wed, 13 May 2020 12:49:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-15-hch@lst.de>
 <CAHk-=wgzXqgYQQt2NCdZTtxLmV1FV1nbZ_gKw0O_mRkXZj57zg@mail.gmail.com>
 <20200513194003.GA31028@lst.de>
In-Reply-To: <20200513194003.GA31028@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 May 2020 12:48:54 -0700
X-Gmail-Original-Message-ID: <CAHk-=whtGLxezkdMP6+859LFDgb++6dgYa6Vrc=zJ9+GB7UMFQ@mail.gmail.com>
Message-ID: <CAHk-=whtGLxezkdMP6+859LFDgb++6dgYa6Vrc=zJ9+GB7UMFQ@mail.gmail.com>
Subject: Re: [PATCH 14/18] maccess: allow architectures to provide kernel
 probing directly
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_124917_565562_FB5FB6E2 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

On Wed, May 13, 2020 at 12:40 PM Christoph Hellwig <hch@lst.de> wrote:
>
> We do export something like it, currently it is called
> probe_kernel_address, and the last patch renames it to
> get_kernel_nofault.  However it is implemented as a wrapper
> around probe_kernel_address / copy_from_kernel_nofault and thus
> not quite as efficient and without the magic goto semantics.

Looking at the current users of "probe_kernel_read()", it looks like
it's almost mostly things that just want a single byte or word.

It's not 100% that: we definitely do several things that want the
"copy" semantics vs the "get" semantics: on the x86 side we have
CALL_INSN_SIZE and MAX_INSN_SIZE, and the ldttss_desc.

But the bulk of them do seem to be a single value.

I don't know if performance really matters here, but to me the whole
"most users seem to want to read a single value" is what makes me
think that maybe that should be the primary model, rather than have
the copy model be the primary one and then we implement the single
value case (badly) with a copy.

It probably doesn't matter that much. I certainly wouldn't hold this
series up over it - it can be a future thing.

         Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
