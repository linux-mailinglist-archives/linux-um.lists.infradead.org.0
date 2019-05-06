Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C65F1457F
	for <lists+linux-um@lfdr.de>; Mon,  6 May 2019 09:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38liawdVcEeB6hZY2wHONhSuau1iqcsWBB3aw4zRWIU=; b=SnZmhEyDHlxDsq
	SKIz0JCtblcpj9y3GCj7bGnngQn9eyb274JLNxHyz3qWASgJ16/x/IQrezUC/VuPWXZS7a0imiwVY
	SuxCuY3JR4dLTDaPhkkofzBTzSB21LM1JXUoCDEQKxtWjAp7bJw2frFPictBgUSZXvrpUN4//mRMC
	vOh1e6uPK0p5KD1gvnlmMgJXhly6DdwCi/OicAQj918GHC7TgBk6T63m1buXD04hKjqrtaAKGj6Bz
	eCJ/EJ1VOYIfOnqWctn4FM1ZtffJyxIU8WnHLqSvBqWd+tB9yy5qEvgyUCXseADJDIm5i9w1OJ5Vn
	54ZXv2bMTIkAX2XNk6cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYJN-0007EV-9Q; Mon, 06 May 2019 07:45:21 +0000
Received: from mail-ua1-f65.google.com ([209.85.222.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYJK-0007Dt-ID
 for linux-um@lists.infradead.org; Mon, 06 May 2019 07:45:20 +0000
Received: by mail-ua1-f65.google.com with SMTP id z17so4317012uar.3
 for <linux-um@lists.infradead.org>; Mon, 06 May 2019 00:45:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=av0FlZovhSdaUEw7TuM0HQ/p2wX7I62iPnqyU0AsC/8=;
 b=o91HgEySnSu4oAHhAwz1pXgSTJg7WjrqZugKzanUG3MiksCQh78MVBxlNM0Y6moydQ
 R0KmXete5vU3orTDqsKMcTrNJrev0FS+KjYGM8sSIXQ7itiH24PAFoyatO15RkCdOLmm
 S7dj016fAj37eBH+x1NvzR4IgoWktQSxaPnE7A7NBhNXkGz8Z1ZhHY4RFGx57lLQ/Vhq
 9NrpqEpY1U+WcztPrfPd43ao7wH+tdAIgF+zb/ZroTSC86E4H4XhRQ2tWivi+KXztTxg
 Oz36hnS0ws4Wr853l/CGB4ds807c2xQE2CpuAgBJXFG6ppQwt3iubH0D+HBU3sJvmP9C
 keMg==
X-Gm-Message-State: APjAAAWR9/1pUeXwt8nGIQ8EcPmyCDQcY0unpllMNVmpFO79Zmani2m1
 DxhzsMttpX5Z7fqZSH8f0Ot0O4A635KARIFAsTSubg==
X-Google-Smtp-Source: APXvYqwMOfjG0RKZzTr02FIFIWw2fqS7WTpz2nKMXNhhaoBK7ehrXtWH1A1FCJ+vcWPouVqUCq0LTQ5Z4O3M0F0lRcE=
X-Received: by 2002:a9f:352a:: with SMTP id o39mr12119476uao.78.1557128716938; 
 Mon, 06 May 2019 00:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190503213249.30008-1-johannes@sipsolutions.net>
 <20190503213249.30008-3-johannes@sipsolutions.net>
 <95430ca975e73addc7f65e331488bc280974fd72.camel@sipsolutions.net>
 <9f844312-dca3-d20e-485b-13c1f249edb0@cambridgegreys.com>
In-Reply-To: <9f844312-dca3-d20e-485b-13c1f249edb0@cambridgegreys.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 May 2019 09:45:04 +0200
Message-ID: <CAMuHMdXi7Yd9p8dahixBbH=kuY1Zmyz3OHCxrH9tKDo23cGHhw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arch: um: support virtual time
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_004518_600864_E4B7F7CD 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.65 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>,
 Johannes Berg <johannes@sipsolutions.net>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 Jeff Dike <jdike@addtoit.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, May 4, 2019 at 10:43 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
> On 04/05/2019 20:05, Johannes Berg wrote:
> > On Fri, 2019-05-03 at 21:32 +0000, Johannes Berg wrote:
> I can understand your use case for patch 3. What I am not clear is where
> should that config option live. It should be somewhere under
> debug/kernel hacking with a sufficient number of big fat warnings so
> people do not enable it accidentally by mistake.

I think enabling the config option should not also enable the feature, but
just add code that allows to enable the feature by a kernel command line
option, and/or by a special file in debugfs.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
