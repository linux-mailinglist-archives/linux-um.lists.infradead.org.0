Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E7814B1AF
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 10:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeYJUHHUfRmi+G4J5b2+u1x7uWA1Rv0WKxQD6OHQXFA=; b=qwenAhvfrm7Ug4
	TbPoOIYv9pI5/alGSrV7ga4XHgqieXGbAtZapkIJZHkf3Wm49HhYv7URA0P3pOh1WnT6/Y4ir+REm
	Jt0w2Plc52UKlNkExTu/5xVmXwN4gj8lDjyeMvF/59DD0ZmxSIVx30L5nn4MnYZjxaFeeZLTPhg++
	xAqapnyJtbPnAsIYtRUdmHYx0UZtzrNlRM6BAfvoKpkFPgab5HbSGVdttZl/4GXaYfn5ZlhWdsD9H
	LcCc3iy4r5iahy2zgMMpN2RKMwC9NKOjjEf+aaXkNl10RwJMjspUYaUD22uHdXzh4Qc+BbpfTVmT7
	63s9qG8RO5Tq0ZV2pHYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwN4c-0000Zg-K9; Tue, 28 Jan 2020 09:22:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwN4a-0000ZG-Gp
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 09:22:17 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iwN4U-00038f-Iu; Tue, 28 Jan 2020 10:22:10 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iwN4S-00034Z-Jb; Tue, 28 Jan 2020 10:22:08 +0100
Message-ID: <01d73961207b5110c2edc72d4964582b12bcc8f7.camel@pengutronix.de>
Subject: Re: [PATCH v1 2/5] reset: brcmstb-rescal: add unspecified HAS_IOMEM
 dependency
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com, 
 richard@nod.at, anton.ivanov@cambridgegreys.com
Date: Tue, 28 Jan 2020 10:22:08 +0100
In-Reply-To: <20200127235356.122031-3-brendanhiggins@google.com>
References: <20200127235356.122031-1-brendanhiggins@google.com>
 <20200127235356.122031-3-brendanhiggins@google.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-um@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_012216_564941_2EFC7E42 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com, heidifahim@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2020-01-27 at 15:53 -0800, Brendan Higgins wrote:
> Currently CONFIG_RESET_BRCMSTB_RESCAL=y implicitly depends on
> CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> the following build error:
> 
> /usr/bin/ld: drivers/reset/reset-brcmstb-rescal.o: in function `brcm_rescal_reset_probe':
> drivers/reset/reset-brcmstb-rescal.c:76: undefined reference to `devm_ioremap_resource'
> 
> Fix the build error by adding the unspecified dependency.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>  drivers/reset/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 461b0e506a26f..a19bd303f31a9 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -51,6 +51,7 @@ config RESET_BRCMSTB
>  
>  config RESET_BRCMSTB_RESCAL
>  	bool "Broadcom STB RESCAL reset controller"
> +	depends on HAS_IOMEM
>  	default ARCH_BRCMSTB || COMPILE_TEST
>  	help
>  	  This enables the RESCAL reset controller for SATA, PCIe0, or PCIe1 on

Thank you, I'll pick up the reset patches 2 and 3.

regards
Philipp

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
