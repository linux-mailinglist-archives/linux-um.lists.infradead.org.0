Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5965E1DD9F0
	for <lists+linux-um@lfdr.de>; Fri, 22 May 2020 00:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IccQwCOm8h44GjDnPcrqH+K5Nd7K7uhWccmaDKjYA+w=; b=JqDjOBBYSHTHWL
	dhxTun86V7xs6HGXmusF9F+k0svgzfeD7z4w37bWtm2hMj3mH2DeJfOx8jJZSyqpvVBY3gWHlxvNG
	UugWdrSU/+PinKTodQk9//fHnYHKH34YVkOklmksyRM4bM0YC9Q7nXjhuJoaqKLS1QN22zYms3R1q
	dk/m6V0o29EidUYLDmEQPMB1mTgI0vr7PMmbxsNWTGzW3hOyq3XZ8tChSC0E/0Oe7YrpbCX4Uh11K
	3elstW/oxulLtiZgcbOV/2J5x8NoljnD1aNeFqYIt4iure8S0stjx4gpHR/RR3l2XrBzLbxqU7v6w
	snn/mm71DMrllbRStFeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtOs-0001w4-Ae; Thu, 21 May 2020 22:10:50 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtOp-0001ur-1r
 for linux-um@lists.infradead.org; Thu, 21 May 2020 22:10:48 +0000
Received: by mail-qk1-x744.google.com with SMTP id f13so8944402qkh.2
 for <linux-um@lists.infradead.org>; Thu, 21 May 2020 15:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fm4JD807X5RrjTwsFUI7w3BEzpMypViAerLd/aB5r74=;
 b=J8AydxJvTfOLj4SnXaGjYeBAkg2KcbONigWAqFhy28XWe0yoJSm2mqXTvJxPUdz4vn
 8csb1VJ846w+CN438dl2Kd9l3C73W6h4oKEYXoALOVTin7KbZ/YDlKFLF0AAA4nbJqFp
 LB1X3Hn5mhIhPavMozO/KMXf6gthpTGbRdfqH9PzmVymTuezcrONofpWVb61Js8EVDpD
 4pbUlvLX2ye6Sf9Rnhp+0IxPOYwwYikWR57bi9J2cXHzgLs31qHiq+XRCvC7s0Ay6mem
 07lgQH3Sz3f5gduyy8vQZYJru94h9wd40ax2jSnBP3+ZJ7hlV7fwe7o5DnnsyqeeIJkb
 nEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fm4JD807X5RrjTwsFUI7w3BEzpMypViAerLd/aB5r74=;
 b=Qh5KNXtsQ9vyECFNjwOjQIuv85IYo/rd48aj5IMCvOZZj2zJwrHQe/85pvUfqhm968
 e70plC21pz0+UN0TyqEFS35Z0uq5LqgR2CwKxfthhV5z0LH0sXS8lpqvL4iRTkUaZg78
 LRFbhSa8LlV6hwuaqTGP9Xh/f82CIteFLNhlzQwEDrUI2wjnVtQ4vbohRWv3aVy4AMtd
 fmq1nzp7Z8wcPSau3FOoiiqGisFCwup2vW1QZeTNCfUePGPiZgCBNB1WQGMHlHbeTDuB
 0s69R3jFv93AhcFdfacURgJb01phfzwumvVZrbEBpscgyfWhBawEUo6NWWIvEiy08ekX
 tdPg==
X-Gm-Message-State: AOAM530ghBi+XQYL1a808cnknpYUdwF1C2ZngFcM9cMpUZhxLvBi5bJr
 KQsB9dqLJU1cfx9QO7Imi/hnsdODCmmjGJ3hbes=
X-Google-Smtp-Source: ABdhPJxJhqPjBqLqBOYnkHGHiDuGjV6UrwgRBFuNPFyvTMaKJ10aWTqgfPPDhtmPKaNroLARywp1EK7gtepHBmRPz9I=
X-Received: by 2002:a05:620a:14a1:: with SMTP id
 x1mr11755356qkj.92.1590099044250; 
 Thu, 21 May 2020 15:10:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200521152301.2587579-1-hch@lst.de>
 <20200521152301.2587579-12-hch@lst.de>
In-Reply-To: <20200521152301.2587579-12-hch@lst.de>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 21 May 2020 15:10:33 -0700
Message-ID: <CAEf4BzZWW_8jKWmbth6=i2+JVx9JKKa7o6vBSQwswRd2sNLEkQ@mail.gmail.com>
Subject: Re: [PATCH 11/23] bpf: factor out a bpf_trace_copy_string helper
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_151047_094631_E1B8AB35 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrii.nakryiko[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-parisc@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Networking <netdev@vger.kernel.org>, x86@kernel.org,
 linux-um@lists.infradead.org, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, linux-mm@kvack.org,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 8:25 AM Christoph Hellwig <hch@lst.de> wrote:
>
> Split out a helper to do the fault free access to the string pointer
> to get it out of a crazy indentation level.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---

LGTM.

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  kernel/trace/bpf_trace.c | 42 +++++++++++++++++++++++-----------------
>  1 file changed, 24 insertions(+), 18 deletions(-)
>

[...]

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
