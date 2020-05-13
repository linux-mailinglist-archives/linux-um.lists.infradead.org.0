Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1201D1F55
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 21:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQqw3H/rRUc6gzmrqJpE+JQtqlsXdUaClfWw8QQ6HW4=; b=ZUIUrsQ3cPmFhZ
	hSbAYYC7R41/a0pwf6xeb21mUtZi/2Ymr4Xo8VpFhydEnLNktg7BcWWeBn/i67w2uu4uzB+7oNCHT
	Yzd3k8ckag/N2OK9WE7OMyOMRdZ/nOX535cNIiFEo5bK54cN00KmeuVkS4+0ED0DKIV4fjFko5K5F
	XqZ0fUHGuj76tat9xr796J7lKsITWwRje3jH75Xq+gZHR9pzUH3vnViihkU1usQX/TGHsc4GUvxDX
	gZks5xGVkJaJBKrU0JC1jZ4dYltIHyPZMp+2eGqhoMc/7Fl4GIXS26Dt0Ioqag5+jfx4Lnz4+Q72W
	ieGbLGh+8jRLk0+mxyzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxBK-0002EL-2v; Wed, 13 May 2020 19:36:42 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYxBH-0002Dg-Jd
 for linux-um@lists.infradead.org; Wed, 13 May 2020 19:36:40 +0000
Received: by mail-lj1-x242.google.com with SMTP id u15so916583ljd.3
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 12:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jxiMveoP0RhCR8vjDCp/HmQWj731R3On/oP1uZF2PQE=;
 b=eyGhYtEXi8PPzZXswj9fBVzAZ7MKdPyfDFJANIY5Qa8lnG4B6PQlkLIvCnEsRuAYDd
 cijbLp3K6GqvurO+mnvtFYs9Cit1WsfsH6w5mAvZOtdvpGdoJxKX+co3FEMrxzMFBuxb
 6U4kH5ee2J4uHKUOq+K6Hnjpw8SSIL615vIlE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jxiMveoP0RhCR8vjDCp/HmQWj731R3On/oP1uZF2PQE=;
 b=kgkQ7Q4n9E/K2JL+Utw9UDfI5T6cGZwU8gZFwkiptFgCPXXDEDPRJA0ghvh5nQn+iz
 0wXU7ciOi5/gERq20kuRWNKPQUsJoIBx5GjtGYsUkGnyiSNY1MdHrYF2O6CWW0R0ZIM0
 /pyjYA5/fmyGCbDXeaR1d6jpgFCCJ92B+bEuf102y6zD7KlfFHl6imDDF3Wr0DfzK1/Y
 /NxGOq0815xNO8qAlfhREy31BEz9tQ/YMoCHU+FRDvw12kleQg2UOo6mfT41xFLZX22t
 rwZwcwDofDZckvnIJjCnguDphCjJ9EgkMYM4hiFKUAvn3W9Tn7/vj86EQp9cX6N0xnCN
 pRBA==
X-Gm-Message-State: AOAM530Ww7JxrS1HURRAzVVQaj0eGfiaC/3RTEFIDuATsyMhIHieOquq
 LIRjH+8pOK51WytkZM0bDrFU8BZT7Bo=
X-Google-Smtp-Source: ABdhPJwYJElbpGGeTpkBncDP2hDMf1KNeHAbCymRbURUR/FBFL+eyrJ9NgN7KDmaq9Y5S/CbzHVxFg==
X-Received: by 2002:a2e:b6cc:: with SMTP id m12mr433192ljo.220.1589398596324; 
 Wed, 13 May 2020 12:36:36 -0700 (PDT)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com.
 [209.85.208.175])
 by smtp.gmail.com with ESMTPSA id z8sm315253lfb.44.2020.05.13.12.36.34
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 12:36:35 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id u15so916372ljd.3
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 12:36:34 -0700 (PDT)
X-Received: by 2002:a2e:9641:: with SMTP id z1mr394092ljh.201.1589398594575;
 Wed, 13 May 2020 12:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-15-hch@lst.de>
In-Reply-To: <20200513160038.2482415-15-hch@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 May 2020 12:36:18 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgzXqgYQQt2NCdZTtxLmV1FV1nbZ_gKw0O_mRkXZj57zg@mail.gmail.com>
Message-ID: <CAHk-=wgzXqgYQQt2NCdZTtxLmV1FV1nbZ_gKw0O_mRkXZj57zg@mail.gmail.com>
Subject: Re: [PATCH 14/18] maccess: allow architectures to provide kernel
 probing directly
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_123639_650870_3A086A0C 
X-CRM114-Status: GOOD (  12.34  )
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

On Wed, May 13, 2020 at 9:01 AM Christoph Hellwig <hch@lst.de> wrote:
>
> +               arch_kernel_read(dst, src, type, err_label);            \

I'm wondering if

 (a) we shouldn't expose this as an interface in general

 (b) it wouldn't be named differently..

The reason for (a) is that several users of the
"copy_from_kernel_nofault()" interfaces just seem to want a single
access from kernel mode.

The reason for (b) is that if we do expose this as a normal interface,
it shouldn't be called "arch_kernel_read", and it should have the same
semantics as "get_user_unsafe()".

IOW, maybe we should simply do exactly that: have a
"get_kernel_nofault()" thing that looks exactly like
unsafe_get_user().

On x86, it would basically be identical to unsafe_get_user().

And on architectures that only have the copy function, you'd just have
a fallback something like this:

  #define get_kernel_nofault(dst, src, err_label) do {  \
        typeof (*src) __gkn_result;                     \
        if (probe_kernel_read(&__gkn_result, src) < 0)  \
                goto err_label;                         \
        (dst) = __gkn_result;                           \
  } while (0)

and now the people who want to read a single kernel word can just do

        get_kernel_nofault(n, untrusted_pointer, error);

and they're done.

And some day - when we get reliably "asm goto" wiith outputs - that
"get_kernel_fault()" will literally be a single instruction asm with
the proper exception handler marker, the way "put_user_unsafe()"
already works (and the way "put_kernel_nofault()" would already work
if it does the above).

             Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
