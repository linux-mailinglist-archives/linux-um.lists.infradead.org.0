Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA1814ACCB
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 00:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vydNBxVa+zTMt/F6PwHUyB//rU0JP8b0ngzAn3AvTdI=; b=cGAPzzWpIhe/eo
	Db3CEo24KRWTy7fF2DgWfV5CP9vvjdefKE4VdaROswP2fAh8BnxNZppUrz7HtTDG7Er1WRs9JHqYq
	efqY5CHK42bd/dza3/O4YlVBlmCSsHT3ixS439ckeRvuRsjc22OmGTkxFxLRhmttlgfBwHae07Md4
	e5z8lOkMWwXka9lBwmZ2sIe4aUWB7KtEb7pqCadzVdl0LndFowokFSSAB4XerY6YEaBHvOkMEFeuu
	/OD/WLMJf8nWJ2ffMPWtOqtUn90D4QWcwyc3AysiPlJ+saFf1wDvaPEtCYChKyXykgG3e5e/zctgK
	KhHrWIypLLqqncQy3NwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwEE5-0007xx-W4; Mon, 27 Jan 2020 23:55:30 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwEDc-0006Kd-Nl
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 23:55:04 +0000
Received: by mail-pj1-x1049.google.com with SMTP id d3so306312pjl.0
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 15:54:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=gntUp+SDXttnQBr/sc5cO3EsNHTPBbbt8uIYn4TJA2s=;
 b=iKJYkAu/HQnaxOEoyoyVHO60MC+U5XKfW9fiWKbMH70o4IcKZqg/8wyv+3aRvbFbvu
 nULy26QTeKImnh/3jyjjyYs/EPa9695yYzvs6D2R97xcgvFB/m02Nh0Qe7lFrxOH5ZtU
 4fU5CLktqtCjUssNKlMRRaYVPTRsBIDCcTCdz6oYayiFu1UZ80YSWAKmySUXR4O8yS3V
 aTAd+K39cMTFRSPHSzVNRc8ES+rcQ/wAaJQsp2uQB00t2UvRv1oI0HcHRyOhAcYZQUrc
 IwpZtUoIbUXJNkHGFQHVn1MvW+S3+Os8iMZC/xAFseXj20h60mNHgUwP1hBfyiUGX4QO
 QBVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=gntUp+SDXttnQBr/sc5cO3EsNHTPBbbt8uIYn4TJA2s=;
 b=MEkl8Qna5XKI4+MqPIsqD+OysobF4lUqvtt47tSNTr9IMxAYo2/ov/hJGh5KVitHiO
 KXdmn6xX2s6cLWuuakMn2GXlUvfCByH/RxYF73qd7F0Fk8mlRb8pSaXcnb+9H6gYOJhr
 5JX/FVAjNp2EFeV0d/wtVT/md8zPHoiiIJ/xXBxGqI/K8oWvOlr9E8xZ/OAtB3tuNioY
 mooiuhS3z3l76D2z6d785sFRfk4iWdvLZc5yYKuWt4pRdvkb/AqGGjS2UILVNUQ7Fsn9
 7gTeDO27NOxFs60hgEg6AZoujA+i/HYgjstcwpGpYG53QfDbGkTNfPISxLcNjNN+IZ5U
 rcXw==
X-Gm-Message-State: APjAAAXSbJiC0z4sYg60LB2JWTIBHVs8ATmXol4iN6HS9NfzInHNYDmq
 1FCjNiEJCu+Dluruqv8TktVpBxoaIO1scipL4hoq8Q==
X-Google-Smtp-Source: APXvYqz5lz8Bx5r+hOfkxT89taKmjq4XVEOcglFFrUjs0O7WjK+Y+IZCN7vcLSVeAwBbcJ6semWNObbc7RcHxrlyYdCb3A==
X-Received: by 2002:a63:9548:: with SMTP id t8mr21223163pgn.205.1580169297243; 
 Mon, 27 Jan 2020 15:54:57 -0800 (PST)
Date: Mon, 27 Jan 2020 15:53:53 -0800
In-Reply-To: <20200127235356.122031-1-brendanhiggins@google.com>
Message-Id: <20200127235356.122031-3-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200127235356.122031-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 2/5] reset: brcmstb-rescal: add unspecified HAS_IOMEM
 dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_155500_884419_84146EA9 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Brendan Higgins <brendanhiggins@google.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, davidgow@google.com, heidifahim@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_RESET_BRCMSTB_RESCAL=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

/usr/bin/ld: drivers/reset/reset-brcmstb-rescal.o: in function `brcm_rescal_reset_probe':
drivers/reset/reset-brcmstb-rescal.c:76: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/reset/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 461b0e506a26f..a19bd303f31a9 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -51,6 +51,7 @@ config RESET_BRCMSTB
 
 config RESET_BRCMSTB_RESCAL
 	bool "Broadcom STB RESCAL reset controller"
+	depends on HAS_IOMEM
 	default ARCH_BRCMSTB || COMPILE_TEST
 	help
 	  This enables the RESCAL reset controller for SATA, PCIe0, or PCIe1 on
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
