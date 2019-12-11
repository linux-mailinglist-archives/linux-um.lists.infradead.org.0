Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDA911BD02
	for <lists+linux-um@lfdr.de>; Wed, 11 Dec 2019 20:29:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtzHvSvG4tVbDSqLzMjisqaUtiqZPzROJWmG6jl20L0=; b=LSMJIg24Fmr3QR
	2pIxCXT2qK+B61bcBOSOExcK2ZV4bzNAk6Qi3APn7RSKsmVaW0GrIyXX0eNXWDw+Mj4iOo9DnsQ9C
	z4/m+gwTo+rAjS8Y9fa7PXgwtt+68tn8wFE2SB0D9ZOEQqmM5m3O9Pv5ube3bKJudsc/oR09h3jBK
	J/9dlylNyl8O4LEieQaRCJWV2IfcaY9+gtiMqT6a/TjI2xQ6cCDDJs2jc2ACA/j9BAxUMvYNfGVJd
	nsXBIJ77P0pdJ7Wjh2ODU8PeB/etEAEJ6xXQbTG3U2wl5Fy937vk6IrrTDwl0AL3V3UfM6NIQeVV6
	eUztd+Nr1WqgvsbODjMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7fe-0005Ks-16; Wed, 11 Dec 2019 19:29:14 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7eo-0004Rr-5U
 for linux-um@lists.infradead.org; Wed, 11 Dec 2019 19:28:23 +0000
Received: by mail-pg1-x54a.google.com with SMTP id w9so13216717pgl.1
 for <linux-um@lists.infradead.org>; Wed, 11 Dec 2019 11:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=w8T1tJgYart3GIn2vBDFWmGy68ONR95xCRrn5VBOMwo=;
 b=grq6Vx4iT1p3AioOKXNrVj+mGC0kw1VP1PMFFA8WmR+nVr2GyjjF2xypwVSeP/CgNN
 s97hKv/BI9N/sK7rmD+m8IHm638StLAWHZVrurD5CXyz+IB2HiwYYJBbZDXr34rdhU+/
 GqSW0Qa591NX4SRHolq7/NDQVXXc1/63Ro+fIj7uAt0ucfkFYLFtROZc0ifzzjenBAv6
 zE/UcxkeO2cfyvbisn9gYEWbxFGZxK2KXfwCAceJ1X+SyqL8GJTAHr/0okFPmItv1yXy
 MulZzpqvLq0KZrAu8q8Jb06Trgk2wRFe9vE3hyH6zr82AaxkJwszmZp7cXK2C0KWobTB
 Lt8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=w8T1tJgYart3GIn2vBDFWmGy68ONR95xCRrn5VBOMwo=;
 b=tgLtYn/Q1YVW5746lJ2gTA0u5AEq3crWS7hix4ICLgFmxXdk0gH41GQakbppyamJCh
 ABc6C83GHzNQJvVUqTsr6lkhtFKxKZvLzf90odoJ3wCqPMczYsfGG03OgmXpjXIHqc1U
 jrLw2HV7wQoaMYj/9EBWWRapxhcuRiIzTNE837xa4Ez+CmW03ZZ8986dFLxZw5JPDXmT
 pRkHSKs5j+RifDfI4vhlP5YI83FROQp8FC3q+hrwJZgv6+wl2VpX6K5MDwxJhh3DjeZH
 O+9oaN2xfUpRKFhvyJXPnLt5syFB7heQIqBobZ1EI4No0uTqEwFEZKsM7RQSJV9V7NXo
 2+Jg==
X-Gm-Message-State: APjAAAV105LWh5jqCrgKPfPxh6um+mabA7cpPlst3uMXBubaU7FTHTht
 HPiqEYy9C8fhZiZBUXL9VGndSUw6mp6+Xaw0BMTlMQ==
X-Google-Smtp-Source: APXvYqwkzzn/pM/huVKkvtemHGMC1edO2ak5A2f9koCyENCr+Vky/i+di1h6KmbXFJ0lnG3qgtT6DNxhUk1251m2lCbSzQ==
X-Received: by 2002:a63:2063:: with SMTP id r35mr6178563pgm.120.1576092500248; 
 Wed, 11 Dec 2019 11:28:20 -0800 (PST)
Date: Wed, 11 Dec 2019 11:27:41 -0800
In-Reply-To: <20191211192742.95699-1-brendanhiggins@google.com>
Message-Id: <20191211192742.95699-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH v1 6/7] staging: axis-fifo: add unspecified HAS_IOMEM
 dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Arnd Bergmann <arnd@arndb.de>, 
 Moses Christopher <moseschristopherb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112822_209973_0A385806 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, Brendan Higgins <brendanhiggins@google.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_XIL_AXIS_FIFO=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

ld: drivers/staging/axis-fifo/axis-fifo.o: in function `axis_fifo_probe':
drivers/staging/axis-fifo/axis-fifo.c:809: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Reported-by: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/staging/axis-fifo/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/axis-fifo/Kconfig b/drivers/staging/axis-fifo/Kconfig
index 3fffe4d6f327f..f180a8e9f58af 100644
--- a/drivers/staging/axis-fifo/Kconfig
+++ b/drivers/staging/axis-fifo/Kconfig
@@ -4,7 +4,7 @@
 #
 config XIL_AXIS_FIFO
 	tristate "Xilinx AXI-Stream FIFO IP core driver"
-	depends on OF
+	depends on OF && HAS_IOMEM
 	help
 	  This adds support for the Xilinx AXI-Stream FIFO IP core driver.
 	  The AXI Streaming FIFO allows memory mapped access to a AXI Streaming
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
