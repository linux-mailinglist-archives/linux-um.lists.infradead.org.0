Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621CF13D613
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 09:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COBRw45Gl6XwFqZZibJctufkpbCorGsHtrvksxKH+48=; b=pcN/RAWymJ/qFv
	jg9umCwn6NmGMuRwzyI3pc2WJH6XWNP5rE1SqnGmB24hQMovjYZa4WGJSwuHdt5VtkDiPoHD7WFMs
	kuLOOCM/Mhelu+L230ghxZqCCWyTfczhk0WxuXyvCT5oHBYX4hyqZoE+xiCt1lsCuOYVDQ4KaZnkH
	RLvhzQ5VwJqM7CQyZ/yWutGZpNwcCWhm7TXSfQeQlxxrtQWo/p+k1S/iNg+ISd8nefgEi5h7FtxP5
	aUesxFGONrnDL2szL+Tzc3Q/VUTCuUMRMQ/ZlJ9K7pUlLJB42fB1W1OmfCZ2IiDa4OpAwuF4J9zdp
	5IM0aleg48VgzNno0W6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0lO-00048c-So; Thu, 16 Jan 2020 08:44:26 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0lI-00047l-EC
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 08:44:25 +0000
Received: by mail-qk1-x741.google.com with SMTP id x129so18361969qke.8
 for <linux-um@lists.infradead.org>; Thu, 16 Jan 2020 00:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gJg5ZRxNcTyn3n/fup2Ib0eaCQR42k4DrKQJxK1gJxw=;
 b=G12enqTe8piIdk84hriOXaCMmvMjuAV+b54nRadwgz9fnOZDPZjMVs6vyaOMZm6BhT
 RoWzO8xuYgT5kkQqno/sAIDSdLvfhCH+2P8/sapey7phZaTUWKVwMp2KtXujHD3w1rlk
 /bO6qrGSD9k/Xs7LsYwOZrmyqSeS95pmTZcsjr/W3hYr+ljqd7jmLyxVOZw/ICWeDoRR
 tYP7OmYgGPokerki2/GaxidmGPM+wINVw42Zw+k45k2T+IF0Wws2xmfXmAYdYnx3ESw5
 xhWlWlBSi5iX65Zd7PIY+HDXryTM2ykiffxi/kmIc6XBhjflgYZg79y+RB2U6uYCzIPM
 b4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gJg5ZRxNcTyn3n/fup2Ib0eaCQR42k4DrKQJxK1gJxw=;
 b=LdRuBMUg9KXf9y8v56PnFJKA2wPMA2wox7QY/rHC0+3vvx29pS1Ap+XZBL9XQgeGyI
 UXDqAStGM+Tn0Vj8ePhMqq4G49+apBxlExtaAx4hhwWQMI0g71yKpgXN/ZmxBSGRdsxX
 lsZ6ltzEVpnRzsv49/+Z3yPN5PJEvYPyJfa5ymWZrW+DpKxN36QaRQiUdl1zhiLCHWSh
 p8SmJSh+Z9OZSlc4zlmsxyLUMg7FxKOJide7bc/PyHCZg23sgOeX/ZqHqDlpYpyDxsZu
 5h8VgS2tPJdoeWDgx7HfTnh2mhwOcWi8LT3lsNa+CajzP+Wk7K1+vmoxFp1sVfj2QzqJ
 l4dQ==
X-Gm-Message-State: APjAAAWM0Iopb9Wct8raiB0XvVB9v6SlZAnZAyLCLrEfc1ZT14l5xp5N
 IbpwAyYRqrr/uY8bWa03eeLfLDG4t88BgkocZa7J3g==
X-Google-Smtp-Source: APXvYqzzVsXY7lf3ajp+EW83v/cLUPrf6701sXXFMVSN6cjNko4p+5PZvF5fmFE9GGnLBb9yOTy+hBPsO70Py44m5do=
X-Received: by 2002:a37:e312:: with SMTP id y18mr32326765qki.250.1579164259120; 
 Thu, 16 Jan 2020 00:44:19 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
In-Reply-To: <20200115182816.33892-1-trishalfonso@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 09:44:08 +0100
Message-ID: <CACT4Y+bPzRbWw-dPQkLVENPKy_DBdjrbSce0f6XE3=W7RhfhBA@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_004420_500657_2BE445B0 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 7:28 PM Patricia Alfonso
<trishalfonso@google.com> wrote:
> +config KASAN_SHADOW_OFFSET
> +       hex
> +       depends on KASAN
> +       default 0x100000000000
> +       help
> +         This is the offset at which the ~2.25TB of shadow memory is
> +         initialized and used by KASAN for memory debugging. The default
> +         is 0x100000000000.

What are restrictions on this value?
In user-space we use 0x7fff8000 as a base (just below 2GB) and it's
extremely profitable wrt codegen since it fits into immediate of most
instructions.
We can load and add the base with a short instruction:
    2d8c: 48 81 c2 00 80 ff 7f    add    $0x7fff8000,%rdx
Or even add base, load shadow and check it with a single 7-byte instruction:
     1e4: 80 b8 00 80 ff 7f 00    cmpb   $0x0,0x7fff8000(%rax)

While with the large base, it takes 10 bytes just to load the const
into a register (current x86 KASAN codegen):
ffffffff81001571: 48 b8 00 00 00 00 00 fc ff df    movabs
$0xdffffc0000000000,%rax
Most instructions don't have 8-byte immediates, so then we separately
need to add/load/check.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
