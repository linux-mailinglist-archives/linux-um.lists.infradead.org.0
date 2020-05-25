Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294351E0AAF
	for <lists+linux-um@lfdr.de>; Mon, 25 May 2020 11:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:In-Reply-To:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jDpAv6wp5cEWhoWElxa0IjBJA2ZVacGwasQW+M61Wo0=; b=k4clxjj2RsGT078Ve9ZQzceDb
	5prL+jUUBfbO/MQPuHtWBopoXdNr2YOP5FHcRkPz240wrvxtst6u0PRcLi9TeoU66Aj+tj9lDzgpQ
	SaT2+wwKsB9cH6U+KG0e7bFAHZwGvRZV1acYsyPxREpZBJ1e+LjLFVAPqEED30B/FXQmcdfq4MSR+
	vf+YuboONS+v8cchYQIUxcgS/omz6M9whJl69LEx/+iRev3wUT1N6/nYiAXuRqcU4tyGKwCKjgy/9
	HHGkBUW73nuWY7i2mqS42jqENF19P/DNQH5iikSqhZX1iykcfXsX1ib2c/SnBj11EYcFhCwy+rrLp
	wFl8wSqUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9VZ-0002yA-Qw; Mon, 25 May 2020 09:34:57 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9VX-0002xb-0n
 for linux-um@lists.infradead.org; Mon, 25 May 2020 09:34:56 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:44fd:9440:53b:cc34])
 by laurent.telenet-ops.be with bizsmtp
 id ixaV2200V5QlbNy01xaVwV; Mon, 25 May 2020 11:34:45 +0200
Received: from geert (helo=localhost) by ramsan with local-esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jd9V7-0002XJ-Km; Mon, 25 May 2020 11:34:29 +0200
Date: Mon, 25 May 2020 11:34:29 +0200 (CEST)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: linux-kernel@vger.kernel.org
Subject: Re: Build regressions/improvements in v5.7-rc7
In-Reply-To: <20200525075924.23960-1-geert@linux-m68k.org>
Message-ID: <alpine.DEB.2.21.2005251132020.9189@ramsan.of.borg>
References: <20200525075924.23960-1-geert@linux-m68k.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_023455_202552_16EF06AE 
X-CRM114-Status: UNSURE (   5.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-um@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 25 May 2020, Geert Uytterhoeven wrote:
> Below is the list of build error/warning regressions/improvements in
> JFYI, when comparing v5.7-rc7[1] to v5.7-rc6[3], the summaries are:
>  - build errors: +4/-0
>  - build warnings: +0/-0

   + error: modpost: "devm_ioremap" [drivers/net/ethernet/xilinx/ll_temac.ko] undefined!:  => N/A
   + error: modpost: "devm_ioremap_resource" [drivers/net/ethernet/xilinx/xilinx_emac.ko] undefined!:  => N/A
   + error: modpost: "devm_ioremap_resource" [drivers/ptp/ptp_ines.ko] undefined!:  => N/A
   + error: modpost: "devm_of_iomap" [drivers/net/ethernet/xilinx/ll_temac.ko] undefined!:  => N/A

um-x86_64/um-all*config

Most of these are not new, but were somehow hidden in the previous
builds.

> [1] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/9cb1fd0efd195590b828b9b865421ad345a4a145/ (194 out of 239 configs)
> [3] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/b9bbe6ed63b2b9f2c9ee5cbd0f2c946a2723f4ce/ (194 out of 239 configs)

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
