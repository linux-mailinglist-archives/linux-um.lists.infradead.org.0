Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3516B1D22E2
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 01:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULPQxTxrJDnvCyptrxGftiSEMZ16m5BEb4+UEZXKcgI=; b=AyA7aYm8+6ZvKH
	vgcW2UjaMW02jyZV+u5262GrSXSAAwNYX67SAyvo0LU/o7zI/eaC9qaiYGnIrm8TaujwzmKzJfBpI
	Y3ABNgPSt8Prw+5UCHzktynyrvPtsI41987mNM6NWHiaNw7EBqj3V1GHIQOMcroK129pHBi49R27s
	+pn4gVF+elyD+765lNZyD757K/4Gj8TqcuwGO5inXMDT1NmmMXnlD+GHOz7tIRWOaAX39cEgDAW86
	5jwYe774Jiu4Q4ZRbTcYjfNSu9Ha0dQi7CnWQbVXKvb0uPV/dCPNMgHu1+DqcTUf7lnu7Ud4wVp4i
	vXQqrU1FfcSsSfDeSKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0g5-00088o-Oc; Wed, 13 May 2020 23:20:41 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0g3-00088A-1h
 for linux-um@lists.infradead.org; Wed, 13 May 2020 23:20:40 +0000
Received: by mail-lf1-x144.google.com with SMTP id b26so978921lfa.5
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 16:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=phWq6l4aTvr/C2K/X4+k/YrVnCjrPXRTWTh12+oYaOk=;
 b=cD3d6Z8Oy8/Dx9WXsRuTcoa6/5Rh9rx4ZXh8joWvH4poHn6SlmiaIW98FjAPsN6Nbh
 x66jaomRN8ZljFVlOmAhCKb3qMEmAXGGOLhPnCxRlO2Vc19b0KxaWqaBnUOu9g5IgaPv
 XmTXcJb6msXzq5HV1afcp377hyESwqrNggFac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=phWq6l4aTvr/C2K/X4+k/YrVnCjrPXRTWTh12+oYaOk=;
 b=gQB+yu+c+kuTXjQwpppecra1MeyQjGcZbEU0QI+Ul606ZMy2HMpj8OcQKmUhFxTWrQ
 VzFqnzMG99Mw1bHfZ2OPWJbP+DLdms+Eu0c/QdMniPMv5xIJeV0dy8Ay7uUvRmV1tnZq
 Yyz7uWmV3LoMzh7WB9Z+EL7IZLXZj3g+E5I4D2p9IcCzMwuAOI7LyFpxvpNZ3AcxQc3b
 6BwPN40JDQFW1E+umOQK5As7lmUqLgjwbPiamPKe+iXq1jGsuBh1SUvMDNnroWI/sFyr
 ayTd5gqqxb+Ql4C25/icwRMm29HIzQqm2ttaATUnvsFqqYMFY6mxuhmeHW3mBzPSB8g6
 1/Dg==
X-Gm-Message-State: AOAM532PtLT9h6WJIBMQqtDi4yRIm8jHj4TALEmcbVh6KlRlrXLMRrh9
 4ZV9ABWo6EMxLamKG/w3TXwdXw0HYMU=
X-Google-Smtp-Source: ABdhPJwzkW0+IbpC5NBQ5ngizWFQIX93BYOnqDMMZRwAD7I73lxLJ5TOfwh/fzmyWdAJbo/h9sNYNA==
X-Received: by 2002:a19:f815:: with SMTP id a21mr1154841lff.155.1589412035202; 
 Wed, 13 May 2020 16:20:35 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com.
 [209.85.167.47])
 by smtp.gmail.com with ESMTPSA id v9sm555338ljk.0.2020.05.13.16.20.33
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 16:20:34 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id 8so989265lfp.4
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 16:20:33 -0700 (PDT)
X-Received: by 2002:a19:ed07:: with SMTP id y7mr1180765lfy.31.1589412033540;
 Wed, 13 May 2020 16:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200513160038.2482415-1-hch@lst.de>
 <10c58b09-5ece-e49f-a7c8-2aa6dfd22fb4@iogearbox.net>
In-Reply-To: <10c58b09-5ece-e49f-a7c8-2aa6dfd22fb4@iogearbox.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 May 2020 16:20:17 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjJKo0GVixYLmqPn-Q22WFu0xHaBSjKEo7e7Yw72y5SPQ@mail.gmail.com>
Message-ID: <CAHk-=wjJKo0GVixYLmqPn-Q22WFu0xHaBSjKEo7e7Yw72y5SPQ@mail.gmail.com>
Subject: Re: clean up and streamline probe_kernel_* and friends v2
To: Daniel Borkmann <daniel@iogearbox.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_162039_095439_69E89B01 
X-CRM114-Status: GOOD (  13.19  )
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

On Wed, May 13, 2020 at 4:04 PM Daniel Borkmann <daniel@iogearbox.net> wrote:
>
> Aside from comments on list, the series looks reasonable to me. For BPF
> the bpf_probe_read() helper would be slightly penalized for probing user
> memory given we now test on copy_from_kernel_nofault() first and if that
> fails only then fall back to copy_from_user_nofault(),

Again, no.

If you can't tell that one or the other is always the right thing,
then that function is simply buggy and wrong.

On sparc and on s390, address X can be _both_ a kernel address and a
user address. You need to specify which it is (by using the proper
function). The whole "try one first, then the other" doesn't work.
They may both "work", and by virtue of that, unless you can state
"yes, we always want user space" or "yes, we always want kernel", that
"try one or the other" isn't valid.

And it can be a real security issue. If a user program can be made to
read kernel memory when BPF validated things as a user pointer, it's
an obvious security issue.

But it can be a security issue the other way around too: if the BPF
code expects to get a kernel string, but user space can fool it into
reading a user string instead by mapping something of its own into the
user space address that aliases the kernel space address, then you can
presumably fool the BPF program to do bad things too (eg mess up any
BPF packet switching routines?).

So BPF really really really needs to specify which one it is. Not
specifying it and saying "whichever" is a bug, and a security issue.

             Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
