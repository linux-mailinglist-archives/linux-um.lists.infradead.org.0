Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEAC11BCFE
	for <lists+linux-um@lfdr.de>; Wed, 11 Dec 2019 20:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsV9nB/NfALW6xkIchL5Y6DZuTDhrmtz69Hx9svlhQ4=; b=efVpFybwgGTaal
	KMlFEmy/zJvNb/SbWEOMX7zq+A5BsUsi3ZTDqUHt8E2VGuV557YUrafg+sDSl+ADN+cRJi90VKN5s
	HQGlBmJi4u7/g5xKYikBKE+73pr9DE8KEZKFqSTMMjtkT83aDfcYd3y9lTTsnT6eIUSULjxnGjo+f
	GQjVlQapKs68MYOh8XQSLKYRbR+ZMkwv43Aa/v4zvyLLKKKTk0WJ8gE59yKvRDDPHavRvK/GYRi7h
	lam5HekjXLU9w8dk7kBXo/PG0JmNGVTBzeoykmz/ZfKVbJt1KawIwiRfkg2bhgDq2asOYK/CKGwd/
	zXM8KGvkzd5NBQXVdF2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7fY-0005Dz-7d; Wed, 11 Dec 2019 19:29:08 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7ei-0004MA-V7
 for linux-um@lists.infradead.org; Wed, 11 Dec 2019 19:28:19 +0000
Received: by mail-pf1-x449.google.com with SMTP id j7so1380187pfa.19
 for <linux-um@lists.infradead.org>; Wed, 11 Dec 2019 11:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=BQ5LiziZTeureblMPRNhovCXqRNggUJSXGHiPxM/c88=;
 b=StcCt920kwcBiRwjrKhZVZfcXqvWzoL3r1mwj2A85X1Yzs5qM8b3iyK84qRp1Xs7T8
 nonSRsmF7cm63RO7uct7RtsbWnUsWtpfdrSHZzQ5zS4F6ADqcm1oFinW9wAv5SasTErQ
 MbFuILnpIJvsikvuajGp2juGxrDNIc6Y9702aa9/ARewgVsP/aeyorCc5ciRsoVa+P+S
 jgzoQubZJPDR6o9WZ7klrN/MziCbEzYK3VfkZ6aZIz/KmnfZMnp48dBZHtQd4Io2p8H2
 A+irmwTtNlu7mnTiIFdtxGrws8OgfJF8cloRZedpWGR4jWGaDBnpNtYboiUcc2WnzzjQ
 fJ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=BQ5LiziZTeureblMPRNhovCXqRNggUJSXGHiPxM/c88=;
 b=LI7UiByBNO+2x3uOXqlbjGro0WPHuo3H+mGh9fqyVAjxiHQ8+cYazTBo+zzVCAEHwl
 6cyfd8tT6yGk9FlUNrWzIYWfCk6Hv0aj6GZjVkM/VoJMMQVQDg6WU7Taa1DeP5av+rnc
 1IA5Rtlf6ooAGrZhtegDdqtxrd+UuEOcf2f8Uih4OiL2uKh4Owpnlohpo4aaKL4BkBtm
 TXg0/qc6GElxFMWVOUhPZcP5W03CfVUGeuKAYDu+SWAMQ7QwJWfZ2zmwSRkClGaEXmGX
 hefW7FCOLSOOhllyvMGFie4pr8mk2pBy1eWZitc0PhYqXCRhvyCTri0MIV+UhXmBxjj0
 ZrtQ==
X-Gm-Message-State: APjAAAWyOkDpeGZCOifCtati8ZWkjfwgKt1Svehy4Tv4szJJis+wel0o
 Mon1KUNSloojHfctS/kS5G66cV49bstkcL6JAXP1LA==
X-Google-Smtp-Source: APXvYqwHq1wPbJfX1P3di6U0QGKesenIIwA8rNjsA9QoHqtRWhSBzb50nACoOAVrlh871zgnanIejWFROnewubWK71T6wg==
X-Received: by 2002:a63:1756:: with SMTP id 22mr6056384pgx.109.1576092495090; 
 Wed, 11 Dec 2019 11:28:15 -0800 (PST)
Date: Wed, 11 Dec 2019 11:27:39 -0800
In-Reply-To: <20191211192742.95699-1-brendanhiggins@google.com>
Message-Id: <20191211192742.95699-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH v1 4/7] crypto: inside-secure: add unspecified HAS_IOMEM
 dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, 
 Antoine Tenart <antoine.tenart@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112817_107775_73A96F59 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
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
Cc: Brendan Higgins <brendanhiggins@google.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, davidgow@google.com,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_CRYPTO_DEV_SAFEXCEL=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

ld: drivers/crypto/inside-secure/safexcel.o: in function `safexcel_probe':
drivers/crypto/inside-secure/safexcel.c:1692: undefined reference to `devm_platform_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Reported-by: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/crypto/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 91eb768d4221a..0a73bebd04e5d 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -716,7 +716,7 @@ source "drivers/crypto/stm32/Kconfig"
 
 config CRYPTO_DEV_SAFEXCEL
 	tristate "Inside Secure's SafeXcel cryptographic engine driver"
-	depends on OF || PCI || COMPILE_TEST
+	depends on (OF || PCI || COMPILE_TEST) && HAS_IOMEM
 	select CRYPTO_LIB_AES
 	select CRYPTO_AUTHENC
 	select CRYPTO_SKCIPHER
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
