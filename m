Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1F7E115F
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nMWk4vzVOKW2aD1RB7y4JvA8sGuGGVuWgHEEZnR/Vg=; b=EEbWQa45W6wWF9
	AwVTW4EOLDRDsUsBdqr66SkyMpZZDoVXqjCiASZgL1AhZ4MEPJ1e4gopvvbfOKRUnk7+cfhzS7v6B
	aca4LbZBs6sih36ESVIkPpKIl9wJO4gGAWMooJinmCSoky2tkbNgzX1VWlYaxKU6xURMTvw0ncQFt
	eSL8oiD1evDf14tYsYzncR+rlXErPyqbyzTMlUlxaXHDI/JDm+cCaoVrLw9a+7Ivk5t+zvynCS1tO
	JAAnRsHMyBQAijMjvCS4zxOGobicah/F7qMkkbIQJyjN7/nTK9UsXa9qWPnaOwejxXzN/OrkF/kv4
	JO4XWpQZzZjuQcZO9aSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8kh-0001Zv-HG; Wed, 23 Oct 2019 05:00:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8ke-0001Aw-Ca
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id r1so11365399pgj.12
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=90Jl2Cg6oYU08eo07SfsJMxA25owvwkPAETh0b+lV8Y=;
 b=HMwOXy4Uf7UDkIOTSzsmYPNkHqS4pkfHKvjoSvaazHrckakIOdFVf215E6+8XZHtoi
 6AXAzczd23+pPmsk2Un5ABZ6DX6ETEGf+g5wDXUjYXItjPtBqKA+jN+N8SeFqs3AH0K4
 H0yntV60ywpACDIHtRs85JXHpB9gml2wUwvSrw1uipssW1TzQJNayNiHTaHvs3DwsZli
 cnMOO3Jazorkk/pP5qcZLwtTcbu84jCWbrDGSEz9GI6UD47L8iLGAqHooYi62LUa7iQJ
 ZWHTWRaun0TauMTkBEAYlRQLLxlsg3m0NHkIgzGDyqM8OkxmgP/DmHdxzsS3gl6ggYnF
 PhuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=90Jl2Cg6oYU08eo07SfsJMxA25owvwkPAETh0b+lV8Y=;
 b=nRV9ZAAH/tfJwaDFtZ4tnXS58K+LlD/RLpsPmcyQYX/e+WuWFrFJNNQMKhtEszSnVs
 w3EWXCEP0bgoy8+M5oREAKW379EA1GyXZd77b/WWZCmm7CC50qsO64vc2WGV0JkgblKr
 Rz57vBzARaJMR7Cgoq90VJlMueud4Rr4/sHDYro+3JkP4phnjt0/C694ZR3sOK6daz/O
 vnnT2Z8E8NncNfJV8Zi6UewzyCcSJP+mpjuciEBfWepT627hszkZZNcF7/zLd9LS5ov3
 lHeaJSfy099ujpxBzwrsn75h0pvkEATXhtOr+pgfkxFeUPOh8kKNgYO2YiPI19DDKKFN
 Gt9A==
X-Gm-Message-State: APjAAAUrErEAQcvc/Ttrn4PQIcGr3I6eHfqbMZJgHOijoU4T1kmgZyKH
 kA2IM2AYTd/ym7o/TNVWdm8/+ytnr2tVFw==
X-Google-Smtp-Source: APXvYqxSxl+OqruwXVONMq2dRsUxXvuUiA4DifrboqvTh0V+B2Ew6gJyZxlVvebwj2ezIe8nskE5dw==
X-Received: by 2002:aa7:8ece:: with SMTP id b14mr8434183pfr.113.1571806803409; 
 Tue, 22 Oct 2019 22:00:03 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id l64sm17214952pga.88.2019.10.22.22.00.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:02 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 7BE69201995844; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 41/47] Revert "kbuild: remove
 CONFIG_HAVE_UNDERSCORE_SYMBOL_PREFIX"
Date: Wed, 23 Oct 2019 13:38:15 +0900
Message-Id: <f979f24b032151ac63a5ba6f70172e32ed571448.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220004_434414_ACB0F22D 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

This reverts commit 704db5433fb43acbf1486303721bd0cbb65af251.

for lkl, mingw32 requires underscore-ed symbols.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 arch/Kconfig                | 6 ++++++
 scripts/Makefile.build      | 7 ++++++-
 scripts/adjust_autoksyms.sh | 7 ++++++-
 3 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index a7b57dd42c26..a01df2ae6a1b 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -594,6 +594,12 @@ config MODULES_USE_ELF_REL
 	  Modules only use ELF REL relocations.  Modules with ELF RELA
 	  relocations will give an error.
 
+config HAVE_UNDERSCORE_SYMBOL_PREFIX
+	bool
+	help
+	  Some architectures generate an _ in front of C symbols; things like
+	  module loading and assembly files need to know about this.
+
 config HAVE_IRQ_EXIT_ON_IRQ_STACK
 	bool
 	help
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 2f66ed388d1c..c6fe3e092ae0 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -444,10 +444,15 @@ targets += $(lib-target)
 
 dummy-object = $(obj)/.lib_exports.o
 ksyms-lds = $(dot-target).lds
+ifdef CONFIG_HAVE_UNDERSCORE_SYMBOL_PREFIX
+ref_prefix = EXTERN(_
+else
+ref_prefix = EXTERN(
+endif
 
 quiet_cmd_export_list = EXPORTS $@
 cmd_export_list = $(OBJDUMP) -h $< | \
-	sed -ne '/___ksymtab/s/.*+\([^ ]*\).*/EXTERN(\1)/p' >$(ksyms-lds);\
+	sed -ne '/___ksymtab/s/.*+\([^ ]*\).*/$(ref_prefix)\1)/p' >$(ksyms-lds);\
 	rm -f $(dummy-object);\
 	echo | $(CC) $(a_flags) -c -o $(dummy-object) -x assembler -;\
 	$(LD) $(ld_flags) -r -o $@ -T $(ksyms-lds) $(dummy-object);\
diff --git a/scripts/adjust_autoksyms.sh b/scripts/adjust_autoksyms.sh
index a904bf1f5e67..10e49e00a1f6 100755
--- a/scripts/adjust_autoksyms.sh
+++ b/scripts/adjust_autoksyms.sh
@@ -49,7 +49,12 @@ EOT
 sed 's/ko$/mod/' modules.order |
 xargs -n1 sed -n -e '2{s/ /\n/g;/^$/!p;}' -- |
 sort -u |
-sed -e 's/\(.*\)/#define __KSYM_\1 1/' >> "$new_ksyms_file"
+while read sym; do
+	if [ -n "$CONFIG_HAVE_UNDERSCORE_SYMBOL_PREFIX" ]; then
+		sym="${sym#_}"
+	fi
+	echo "#define __KSYM_${sym} 1"
+done >> "$new_ksyms_file"
 
 # Special case for modversions (see modpost.c)
 if [ -n "$CONFIG_MODVERSIONS" ]; then
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
