Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB743410A
	for <lists+linux-um@lfdr.de>; Tue,  4 Jun 2019 10:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySNlgQnCvVVxo/emYJfvEuMUYL0Xcjg1/D1ETvI+l5I=; b=XWgffAOw/685we
	Hek7hKiZK+VVCJ9N9TsQf7c8oDCWOAqwNpTLqr9awEwTSWWGOrPeTSB7Ku1YOifjqyVIn+nSvWQfC
	nHaZZKN8pi6hienbYYOnHzjX4GLcxOGYw6oBwkVXtVFV+o/8n/V4A6mOXiIIdbUxUrpfiI2Uf0BR6
	nlXy/QNXRK5WSPLka2NGXlB5yJi4319GXsDhiIerz5Rg7OkaNxonLSMl8gwKMfNLZK33XmzSKmdHf
	lglS9oV75nITh43At1NgZUvixmIVYJ9V5AQ34v2vstzLDIbWGpWqi5ufGmCGAGgiQhGo0pPVFjcLw
	xiAhUzoMcPdBMlZ+IUsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4Nt-0003DU-7l; Tue, 04 Jun 2019 08:01:29 +0000
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Nq-0003D3-Es
 for linux-um@lists.infradead.org; Tue, 04 Jun 2019 08:01:27 +0000
Received: by mail-lf1-f67.google.com with SMTP id y17so15701666lfe.0
 for <linux-um@lists.infradead.org>; Tue, 04 Jun 2019 01:01:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RoNWrIjH+E7/bSiZkpKchET/gQgnLxVGmbQQCHz5kr0=;
 b=hIDZHP8krt3AfPQDb1iSNyfTdLXCDSSnS3ZcvZwDzaM/+ALyydHwz6ZM5YlfzZDuAO
 ATfNOwx1qsGscezFGcN3UI9ljEF0a0qlmVrfBOvWB9qPGDH1KHC3cc6ppv5SVl+rHpes
 EVJLm9/HybEDHeEw/5M9faROag++flmdCP7zB9lwwDadzHgYBHJYf1MIv2fyVqw0eBze
 yue77T5MA/ZcBANBFwtIXrDR2u8kphFGylU78axxfVPRbUPnv75cXTM920yJHfGNGx7x
 0N1MKninC2uI50SaM5ljmlTPzZgalQlSvaH1an79l8VzLOrpDssk4F7rQGPDEl3BwInU
 dQUw==
X-Gm-Message-State: APjAAAVGuJ600fXyC5Pn9AXur/dmUZ8TYpquqXQZJLjQPfUeg8gcHixx
 JtRPz4vfumuZBgNzfcOr1GB3pgMaLYDqNfqg2z0=
X-Google-Smtp-Source: APXvYqyZUeZ7KHNXoKdeeJzkEG9PfXx1xtb7SMLcI01Tjx1TH432of8WYTv0XPJ90daVuhCZ/rLtVnkacIL/EvYFPSw=
X-Received: by 2002:ac2:546a:: with SMTP id e10mr16052712lfn.75.1559635284767; 
 Tue, 04 Jun 2019 01:01:24 -0700 (PDT)
MIME-Version: 1.0
References: <1559635193-21151-1-git-send-email-krzk@kernel.org>
In-Reply-To: <1559635193-21151-1-git-send-email-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 4 Jun 2019 10:01:12 +0200
Message-ID: <CAMuHMdWXv6X0Omvy0TdDackohOKoA3zm-xMbsNzDsRce30gncw@mail.gmail.com>
Subject: Re: [PATCH] um: configs: Remove useless UEVENT_HELPER_PATH
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_010126_494849_978A4710 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 10:00 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
>    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
>    made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
>    [...] creates a high system load") and was kept only for ancient
>    userland,
> 3. Certain userland specifically requests it to be disabled (systemd
>    README: "Legacy hotplug slows down the system and confuses udev").
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
