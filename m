Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A6BE1164
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIa4e0bUGUMYSK2o7DeVLz5O+OuwlXZ4pZaIbruBUyk=; b=KCxQl7tDLmA6HL
	ZnY9rC/RXZ4Zhxd35+bT0nMVj/HRyj74uqTG2Z5s07dJXAmD5XkvVyAriLAzR2zFdljCL262Zt4bS
	0957ua6sQVPr813P6/Y0zV9VpZhMxFGW8EKSBdCy7hJCuZzQeyipqkgOef3whPcU/gPp/Ol1eeNFI
	KUOfuDNE7fTWBG5e8XlzjlX6pMa7joDhZSEd6dxA43C/ky3DVkWLTjXKQylDTUWcfloHeTGOYI6ZP
	VpDlhMFogXR2P6jftXNUFDNJsIocPHfkrH/K9H3dAd6Lv1gM8NcKgQPIc7RvQKlTHs4owjmigtKRT
	y/AHimQA/ohxpg6fRDLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8kr-0002DF-6J; Wed, 23 Oct 2019 05:00:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8ki-0001f3-7z
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:13 +0000
Received: by mail-pg1-x543.google.com with SMTP id e15so11355977pgu.13
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pIsgYeHpTQhxWZwrAbTlgvwEfDTG00E6JuwYxznUOaU=;
 b=Qc+76ZCGb9eZ61yaAmQS4c6iCt6saqtl8GEQWIskwiBibRK3m71U/csHv3trilqq0N
 9+vKDU0DlQ4r3qYv5UCeWDRCltk7AWvOLBCG8axeRyTOwHEsXM+qE1Ghb+naxu6Qvx/w
 dTmiK4bxflMNF6UsIwUZauTGH91X1qT50/PgABGbuJZEF53clhfyGziBApaW7IEwIv58
 MsTKbop0dvlclfEFQFm5Zt4a/YKd+wVvILFzuXiOGK4o1IJsG2BEMRLcikJVb6KcTIV+
 uuDw2ocyoDqsKCmwYFeSop7TM0FGXiHFm0A001D+yXJrMejqmcE71em5BXS75Pcuef8D
 7Ybw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pIsgYeHpTQhxWZwrAbTlgvwEfDTG00E6JuwYxznUOaU=;
 b=XSPlA1DZkudKj4LWchf6YNfeSu/RYsMxi6xckK2GXMzTjuKkaxpDXv0XpFSl82PjIv
 H6JURkD+/bCu56I4Fuol/2gYus4i7uyeuClMr1JWPiMLqqCKPst+cAZ4PA3nkzYootd2
 kYRWt57I9bDSgC71Md+S0A1Fx7HvL4BfEk2r9VC03EmyShX45igTqjY7tU0LuNRPu8Km
 y2sGYHBCPG7EQCYO+xb0V6YpIXCFjZj8B+Ym1vGVaOaJvyEoQQdnXDkgfxYbgaccNwr5
 KHcrdiFLz8+n5qtdbf1m+0RN818PA45qDzQA0g6gUo3i7pYuLFzcMAQX2Cmrm4091TLd
 Js+Q==
X-Gm-Message-State: APjAAAXbHytkr0eTA2DGV7LN86U52+X/xsqJx0wRN1PJnDJQFxcaAn+T
 G0RIMdR9pQNFmWwwiv9Neos=
X-Google-Smtp-Source: APXvYqwWclMuuCHPqmqkSJTIMNNHK2SHxL3e30TdDZ36HpJqL0lP9ZMBB9RsJuHVBXpWAC+GyCtFow==
X-Received: by 2002:a63:1d60:: with SMTP id d32mr7944221pgm.37.1571806807167; 
 Tue, 22 Oct 2019 22:00:07 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id g35sm19842981pgg.42.2019.10.22.22.00.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:05 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 63F9D20199583E; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 38/47] Revert "export.h: remove code for prefixing symbols
 with underscore"
Date: Wed, 23 Oct 2019 13:38:12 +0900
Message-Id: <4ad3005234a6ee5444f3e47201b66ae1d0d4266b.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220008_335150_00971380 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

for lkl, mingw32 requires underscore-ed symbols.

This reverts commit 94e58e0ac31284fa26597c0e00a9b1d87a691d02.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 include/asm-generic/export.h | 34 ++++++++++++++++++++++------------
 include/linux/export.h       | 23 ++++++++++++++++++-----
 2 files changed, 40 insertions(+), 17 deletions(-)

diff --git a/include/asm-generic/export.h b/include/asm-generic/export.h
index 294d6ae785d4..69ce0914b025 100644
--- a/include/asm-generic/export.h
+++ b/include/asm-generic/export.h
@@ -27,32 +27,42 @@
 #endif
 .endm
 
+#ifdef CONFIG_HAVE_UNDERSCORE_SYMBOL_PREFIX
+#define KSYM(name) _##name
+#else
+#define KSYM(name) name
+#endif
+
 /*
  * note on .section use: @progbits vs %progbits nastiness doesn't matter,
  * since we immediately emit into those sections anyway.
  */
 .macro ___EXPORT_SYMBOL name,val,sec
 #ifdef CONFIG_MODULES
-	.globl __ksymtab_\name
+	.globl KSYM(__ksymtab_\name)
 	.section ___ksymtab\sec+\name,"a"
 	.balign KSYM_ALIGN
-__ksymtab_\name:
-	__put \val, __kstrtab_\name
+KSYM(__ksymtab_\name):
+	__put \val, KSYM(__kstrtab_\name)
 	.previous
 	.section __ksymtab_strings,"a"
-__kstrtab_\name:
+KSYM(__kstrtab_\name):
+#ifdef CONFIG_HAVE_UNDERSCORE_SYMBOL_PREFIX
+	.asciz "_\name"
+#else
 	.asciz "\name"
+#endif
 	.previous
 #ifdef CONFIG_MODVERSIONS
 	.section ___kcrctab\sec+\name,"a"
 	.balign KCRC_ALIGN
-__kcrctab_\name:
+KSYM(__kcrctab_\name):
 #if defined(CONFIG_MODULE_REL_CRCS)
-	.long __crc_\name - .
+	.long KSYM(__crc_\name) - .
 #else
-	.long __crc_\name
+	.long KSYM(__crc_\name)
 #endif
-	.weak __crc_\name
+	.weak KSYM(__crc_\name)
 	.previous
 #endif
 #endif
@@ -85,12 +95,12 @@ __ksym_marker_\sym:
 #endif
 
 #define EXPORT_SYMBOL(name)					\
-	__EXPORT_SYMBOL(name, KSYM_FUNC(name),)
+	__EXPORT_SYMBOL(name, KSYM_FUNC(KSYM(name)),)
 #define EXPORT_SYMBOL_GPL(name) 				\
-	__EXPORT_SYMBOL(name, KSYM_FUNC(name), _gpl)
+	__EXPORT_SYMBOL(name, KSYM_FUNC(KSYM(name)), _gpl)
 #define EXPORT_DATA_SYMBOL(name)				\
-	__EXPORT_SYMBOL(name, name,)
+	__EXPORT_SYMBOL(name, KSYM(name),)
 #define EXPORT_DATA_SYMBOL_GPL(name)				\
-	__EXPORT_SYMBOL(name, name,_gpl)
+	__EXPORT_SYMBOL(name, KSYM(name),_gpl)
 
 #endif
diff --git a/include/linux/export.h b/include/linux/export.h
index fd8711ed9ac4..34c34d09103c 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -10,6 +10,19 @@
  * hackers place grumpy comments in header files.
  */
 
+/* Some toolchains use a `_' prefix for all user symbols. */
+#ifdef CONFIG_HAVE_UNDERSCORE_SYMBOL_PREFIX
+#define __VMLINUX_SYMBOL(x) _##x
+#define __VMLINUX_SYMBOL_STR(x) "_" #x
+#else
+#define __VMLINUX_SYMBOL(x) x
+#define __VMLINUX_SYMBOL_STR(x) #x
+#endif
+
+/* Indirect, so macros are expanded before pasting. */
+#define VMLINUX_SYMBOL(x) __VMLINUX_SYMBOL(x)
+#define VMLINUX_SYMBOL_STR(x) __VMLINUX_SYMBOL_STR(x)
+
 #ifndef __ASSEMBLY__
 #ifdef MODULE
 extern struct module __this_module;
@@ -27,14 +40,14 @@ extern struct module __this_module;
 #if defined(CONFIG_MODULE_REL_CRCS)
 #define __CRC_SYMBOL(sym, sec)						\
 	asm("	.section \"___kcrctab" sec "+" #sym "\", \"a\"	\n"	\
-	    "	.weak	__crc_" #sym "				\n"	\
-	    "	.long	__crc_" #sym " - .			\n"	\
+	    "	.weak	" VMLINUX_SYMBOL_STR(__crc_##sym) "	\n"	\
+	    "	.long	" VMLINUX_SYMBOL_STR(__crc_##sym) " - .	\n"	\
 	    "	.previous					\n");
 #else
 #define __CRC_SYMBOL(sym, sec)						\
 	asm("	.section \"___kcrctab" sec "+" #sym "\", \"a\"	\n"	\
-	    "	.weak	__crc_" #sym "				\n"	\
-	    "	.long	__crc_" #sym "				\n"	\
+	    "	.weak	" VMLINUX_SYMBOL_STR(__crc_##sym) "	\n"	\
+	    "	.long	" VMLINUX_SYMBOL_STR(__crc_##sym) "	\n"	\
 	    "	.previous					\n");
 #endif
 #else
@@ -80,7 +93,7 @@ struct kernel_symbol {
 	__CRC_SYMBOL(sym, sec)						\
 	static const char __kstrtab_##sym[]				\
 	__attribute__((section("__ksymtab_strings"), used, aligned(1)))	\
-	= #sym;								\
+	= VMLINUX_SYMBOL_STR(#sym);					\
 	__KSYMTAB_ENTRY(sym, sec)
 
 #if defined(__DISABLE_EXPORTS)
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
