Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01599142035
	for <lists+linux-um@lfdr.de>; Sun, 19 Jan 2020 22:37:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qry/NORWs5ecZJ+wzZAnEWUW/BTNUJKkM0kugci3t7w=; b=ALoAdo6pYaauMR
	jfgFR7ER6SGgMn+AXDoVdwGnDX1HdbvV+YGJWtEFJu4+JG99lHcYNZpu48507vck4FWcGOJl6/rZU
	ageNNe4qULP+Od8dXKZY2SRzv2A5CDBUnx16Mfrh0wnAqK6z+y98rd9gPvNB3WskUvuqADt9wzOjZ
	tg/l2q2/xx5Fr7mLeP3WM8wwl3l6+w7aLtVqEGwHRAX5A1QPJ87EI8RyzCW8POe1uhi3u98+fOiR6
	SUBIT9hzmyira6FweIOMJkCtLflLVBQPHJ27C9Frh3rjmJ1d3vvmj5Yq0mNrrD49tCDpUKKdAEm91
	2gAV9ooAx/NNZvOpU0Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itIGC-00022V-In; Sun, 19 Jan 2020 21:37:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itIG9-00022A-Pn
 for linux-um@lists.infradead.org; Sun, 19 Jan 2020 21:37:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so27595659wre.10
 for <linux-um@lists.infradead.org>; Sun, 19 Jan 2020 13:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0yhhLXZWkRk22XCrsnN5/sGz8BVyOku48FOhAd8M19E=;
 b=ZilIjmdGKlTBSKD2ob0un1zakRrRgVplMpo0B/sQQIAGqoEvZUebSTcQ2LvAZFjt5W
 nYJhriaohtYHJZAgTandTFoP4GCe94hUmAedCefa7AaHnNIDjuXIIS5tzjv+3Zlu4072
 ErbP9PGhaM7WQTlQZy1q7eyQQdJ9e05Oaw6bD/PFxzG7sa0iTuOFdgSpBsAgTxBVH4Nw
 BNnNqp2mxeKKK1J4V2Ph9xkVKQGWVU8plYoD0IMMI8wz32yGiD94Cy2stls9KjLvcDPN
 0galiqBfMAxhnWXsCyA6DBJ16WDgwkIjQ/OAATjhzJCA7K2Pr3Baaf3vjIZHdUw6QQON
 tJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0yhhLXZWkRk22XCrsnN5/sGz8BVyOku48FOhAd8M19E=;
 b=jh+f7uOmAudrpiFJYlMQWiVCMgCG0NgQzFyfpZyJVwbn3sA2xdWoCE6aAKl6f4W9jE
 FW1SytoJSnDwq+NHa9al3hevzvKZycNdJXc5kiFweT8vau7e4VakC6JZ6lcNbeWvHlAQ
 6fHZ8xY9/R/n09bUfzui86bIKfexKLBKxv6HAbkdBUGWf8LJ+JqTzFaDpURhFzTJPH4e
 /j+N4K5/wDQNzfxQ/zCf60gSXjTKF8b/2HGZrti4ew75Ij2f1IGRhPW0/shEtP0DR44/
 zpWV7LQgNmnerl7nRbGXycDNYQMoaIgW+U9F7eZxOai/n4AnFTqMP3E3GNJ7ID30k3yA
 DY/A==
X-Gm-Message-State: APjAAAWSzycuE9jPWQJgxQZ/H5uWf7CKX9lbG3qo8wc6HiNQPdsUGH6X
 AoXG3KEalTS1CS19d8fjdhnrZk70GRyW/yIuUdI=
X-Google-Smtp-Source: APXvYqwh50xTgDkYTgfH1G8mBb8ofLWObUuuYR1bGi1/0n3HtKI2N78Fl9Pxbnx17MhZXbHgwZyZwUf4fSSsyDlbTNE=
X-Received: by 2002:a5d:6441:: with SMTP id d1mr14390186wrw.93.1579469848014; 
 Sun, 19 Jan 2020 13:37:28 -0800 (PST)
MIME-Version: 1.0
References: <20191210223403.244842-1-brendanhiggins@google.com>
In-Reply-To: <20191210223403.244842-1-brendanhiggins@google.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 19 Jan 2020 22:37:17 +0100
Message-ID: <CAFLxGvwHALbhE8XVWCijx25n-LpysYR=fH6WnHADn_=c_BZqow@mail.gmail.com>
Subject: Re: [PATCH v1] um: drivers: mark non-vector net transports as obsolete
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_133729_838405_21DC5258 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Berg, Johannes" <johannes.berg@intel.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 davidgow@google.com, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 11:34 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> UML_NET_VECTOR now supports filters compiled with pcap outside of UML;
> it also supports: EoGRE, EoL2TPv3, RAW (+/- BPF), TAP and BESS.
>
> While vector drivers are not 1:1 replacements for the existing drivers,
> you can achieve the same topologies and the same connectivity at much
> higher performance (2.5 to 9 Gbit on mid-range Ryzen desktop) - the old
> drivers test out in the 500Mbit range on the same hardware.
>
> For all these reasons, the non-vector based transports are now
> unnecessary, and some, most notably pcap and vde are maintenance
> burdens. Thus, it makes sense to at least start thinking about removing
> the non-vector transports, so for now, mark them as obsolete.
>
> Link: https://lore.kernel.org/lkml/15f048d3-07ab-61c1-c6e0-0712e626dd33@cambridgegreys.com/T/#u
> Suggested-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>
> I pretty much stole the commit message from Anton's comments in the
> above link. Anton, if you would like me to credit you as a co-developer,
> feel free to respond with the tags and I will include them on the next
> revision.
>
> ---
>  arch/um/drivers/Kconfig | 81 +++++++++++++++++++++--------------------
>  1 file changed, 41 insertions(+), 40 deletions(-)

Applied. Thanks.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
