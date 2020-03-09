Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A267717DC87
	for <lists+linux-um@lfdr.de>; Mon,  9 Mar 2020 10:34:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsq29/OFEQtM0RBNvA+GA1yzxzGDxu8A6Reji5TlD/U=; b=N9k4MtwGeJRqNn
	WnqCuc4OTmVeVPU047IhzaAk5b31wqZvNaHtMUaTlG567+yOPjdR0hO/xXIm2mPAFXUc6mvyXYa0g
	j9tPdr9zUyqf6+BSCWQPzoC4gvvVgOfoMdl7vGIKHOP2E2hwutv61PwqLUBBQOIPD2vmdFCzDcye2
	K7tCmZmVJp/hvGhzYyXSZZKdNixqKD+gADzdk3zcjk22+pnPyVUgo99nXYqmQizBXtVzhbjf4HD8A
	PXIGgdre1/EyH8Y9E+dqwtOTFz2zdRljsX+BmnPZL+Plr+ShIEBfLs3NvZx6v8+0of3xxeSUa3yfj
	znqh0i8LoV9WiRmDEmGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBEnT-0002Lh-LW; Mon, 09 Mar 2020 09:34:03 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBEnQ-0002LD-51
 for linux-um@lists.infradead.org; Mon, 09 Mar 2020 09:34:01 +0000
Received: by mail-ot1-f65.google.com with SMTP id s15so625258otq.8
 for <linux-um@lists.infradead.org>; Mon, 09 Mar 2020 02:33:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WvHxGDbM4xXg1EcvuRgNde2oxcAJwP0NhI/8JQp0zEY=;
 b=kAc3VNs8hR6084yE/4XD6a2hFNklVHis+ucss1j7jnoAEIpS29HuRQ9VAez2bZgPDR
 Px3ydjVyI8Dp4ikIKJ9OPThWVQYZfDGH7WwN2ZV0QmVWBTGXxwkxkU/uMMI7YUKu1LQe
 sRRtEQ0sSYqF5cQJuCrVTAenJDKzDSoFa98OcrJW0NlhAq4nKIJckk5zyfCPavFVcZP8
 Mk2X1jGzY2aZLPdO1h7uqPlDmwxXpOKHMH2RlEQfFOaLwbUnEtLl6TarADPd0anV9FUa
 gX068hNrt+r38djdl2tGGNAFEHZnZWfxyM4P8lxFE3rgpxQH3aoSRrG1inGkX7zFC3JV
 hcTA==
X-Gm-Message-State: ANhLgQ3eWwGK9KDU4Sw5wc2aCyvpWDTkZAKK8aXnPwbG/jvEzq7wSPXA
 74YSGBQmKPp3hH1AbOx2dmYz378KSmIq16HDdxxuuQ==
X-Google-Smtp-Source: ADFU+vvGXVMhNMBu467qKoGTYw07Jrqf4CWMrfjNI5VI/gydRbL/mvE+UHDShNSmuzoQ4WgBSiT0S1tNIZFLWepP+gU=
X-Received: by 2002:a9d:4d02:: with SMTP id n2mr2935668otf.107.1583746438904; 
 Mon, 09 Mar 2020 02:33:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200309092950.3042-1-geert@linux-m68k.org>
In-Reply-To: <20200309092950.3042-1-geert@linux-m68k.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Mar 2020 10:33:47 +0100
Message-ID: <CAMuHMdVtNjtuxJYtE9npQheDe58iWwKihkz6xUB3iuzgV8hEWg@mail.gmail.com>
Subject: Re: Build regressions/improvements in v5.6-rc5
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_023400_192836_2CAB819B 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: netdev <netdev@vger.kernel.org>, linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Mar 9, 2020 at 10:31 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> JFYI, when comparing v5.6-rc5[1] to v5.6-rc4[3], the summaries are:
>   - build errors: +2/-0

  + error: "devm_ioremap_resource"
[drivers/net/ethernet/xilinx/xilinx_emac.ko] undefined!:  => N/A
  + error: "devm_ioremap_resource" [drivers/ptp/ptp_ines.ko] undefined!:  => N/A

um-all{mod,yes}config

> [1] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/2c523b344dfa65a3738e7039832044aa133c75fb/ (all 239 configs)
> [3] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/98d54f81e36ba3bf92172791eba5ca5bd813989b/ (all 239 configs)

>   + error: "devm_ioremap_resource" [drivers/net/ethernet/xilinx/xilinx_emac.ko] undefined!:  => N/A
>   + error: "devm_ioremap_resource" [drivers/ptp/ptp_ines.ko] undefined!:  => N/A
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
