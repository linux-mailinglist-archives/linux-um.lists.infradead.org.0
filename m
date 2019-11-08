Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D84F3F5A
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Y0e0Or7UpWMe55MwsfLPSRh6U/XkCv5nz4NZscwX/E=; b=FhhT+PmNYqdz2H
	K596Bpdm3v5lFSHu9Uvas+Hwu5Q2cAv26/e4I6E6EX2+GYLiNadDyW4zUP4qcrDXFj3nS2t5g72js
	zgEPJ1o0bDRLj55U8xTjK7jLm8LfpX93U3AXu3FCsD3m+oPHfG2c5TYI7oGD8TpwYrGT1zZKe4eLw
	jmbi7UNbqOPtY7Yms7KiMsDboNVKxbV68kCW44SKZed56TtSRMnCyX3KUER5QdeQQzoMsAvU8Lejq
	NpmBXSn8wjufx2FPBQBVYrJ8A3iz9qjU//B+8FpqOl2do18F0ylGwSJksMUje8IVDlkpQp9AXzyS6
	0Lp3OsOvugq1ZxpClseQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRg-00049B-Ta; Fri, 08 Nov 2019 05:04:28 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwRd-000475-GO
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:04:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id 3so3836849pfb.10
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QrjmXpZuOzccN2+JudtgFdgeHtwX1E16OtMi3lDfOVM=;
 b=Y9yadeGOgErzUddVQaR3NPy/OAB4ecyzula11ciS1U1xJsZyGEqe7Wbbt36DbWKXj1
 g7eOOXXR+C7CyM+vBqstnaOz3nHtH1jguEy6BjRDA2T18xBct7sooeZZpToT6DpW1FkD
 ut/KJkgbu8HDB/dBbMlQkg59N3k/pfFtAw5bMJNEqqkM//DFypFWt4rX+1FkVoOScIMb
 Ez969CYAPvkPdCe4v2hr4mEUezByfTw5o9/c9IR3oCAb8Y92qbNBgI/6EmATHHZbHcmJ
 Bnvo/y+ldvjaLlbtFoPY/xXcUze9DsvNVqhdUqd+KgF9QeIzi7U7chu1duPLosGCj79Y
 q+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QrjmXpZuOzccN2+JudtgFdgeHtwX1E16OtMi3lDfOVM=;
 b=XNvBe1ZCsnfkBwiq2Pr2VYm5qDedZm/pEx6la9o9Bx5L0fjHzkUNEgTy19Y+eYK+sa
 ljKtkYi/49psEBnu3cACITNE94jrQUXn4+asvm7A820jA8nreJn4bsmGQ4gxZbbkHrMb
 7hCLyLmcfEXZaajJeocYl1InX6FinI5kVw4x6L0fQxZv0RrwsXXzivEKa28n8+hgCNHc
 jMN89uv9nlMlPgxdG/YzWwn4pCgFVvsx7rFBfsJrs+5yuqIU+1D38CxR5EfNLHBNwp/h
 v3QY3lTHgSq4DxP24dU4RDDI5uBWy3RSxiGWcWfjo9yTcR5U39FETjwrHU/OeQrmDN8f
 aVZw==
X-Gm-Message-State: APjAAAUuCKFveYYX1WY3klYx9+2v0+MPCE7zUSCFyeR8s3Oc6TsXWHpr
 h2CfsOYoQLQYrQFUXhrnjtU=
X-Google-Smtp-Source: APXvYqxQD8QrWXP7+eiU17/ipd12O0nObfnHNN9xVDYT3JbAFjZOV7aXzVkoEG/46k1PmhUGLmGvSQ==
X-Received: by 2002:a65:68d7:: with SMTP id k23mr9286140pgt.157.1573189464648; 
 Thu, 07 Nov 2019 21:04:24 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id n21sm2148057pjq.13.2019.11.07.21.04.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:04:24 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id CFABE201ACFEB6; Fri,  8 Nov 2019 14:04:22 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 33/37] kallsyms: Add a config option to select section for
 kallsyms
Date: Fri,  8 Nov 2019 14:02:48 +0900
Message-Id: <1f8a9e18edf808f2016899887a3110be63cbc3c1.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210425_561898_42553A18 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Andreas Abel <aabel@google.com>

This commit adds a kernel config option to select whether the
kallsyms data should be in the .rodata section (the default for
non-LKL builds), or in the .data section (the default for LKL).

This is to avoid relocations in the text segment (TEXTRELs) that
would otherwise occur with LKL when the .rodata and the .text
section end up in the same segment.

Having TEXTRELs can lead to a number of issues:

1. If a shared library contains a TEXTREL, the corresponding memory
pages cannot be shared.

2. Android >=6 and SELinux do not support binaries with TEXTRELs
(http://android-developers.blogspot.com/2016/06/android-changes-for-ndk-developers.html).

3. If a program has a TEXTREL, uses an ifunc, and is compiled with
early binding, this can lead to a segmentation fault when processing
the relocation for the ifunc during dynamic linking because the text
segment is made temporarily non-executable to process the TEXTREL
(line 248 in dl_reloc.c).

Signed-off-by: Andreas Abel <aabel@google.com>
---
 init/Kconfig            | 12 ++++++++++++
 scripts/kallsyms.c      | 11 +++++++++--
 scripts/link-vmlinux.sh |  4 ++++
 3 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index 81293d78a6ad..bd1a846e0ee0 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -1385,6 +1385,18 @@ config POSIX_TIMERS
 
 	  If unsure say y.
 
+config KALLSYMS_USE_DATA_SECTION
+	bool "Use .data instead of .rodata section for kallsyms"
+	depends on KALLSYMS
+	default n
+	help
+	  Enabling this option will put the kallsyms data in the .data section
+	  instead of the .rodata section.
+
+	  This is useful when building the kernel as a library, as it avoids
+	  relocations in the text segment that could otherwise occur if the
+	  .rodata section is in the same segment as the .text section.
+
 config PRINTK
 	default y
 	bool "Enable support for printk" if EXPERT
diff --git a/scripts/kallsyms.c b/scripts/kallsyms.c
index 75ec25554111..5e4f270c3904 100644
--- a/scripts/kallsyms.c
+++ b/scripts/kallsyms.c
@@ -59,6 +59,7 @@ static struct addr_range percpu_range = {
 static struct sym_entry *table;
 static unsigned int table_size, table_cnt;
 static int all_symbols = 0;
+static int use_data_section;
 static int absolute_percpu = 0;
 static char symbol_prefix_char = '\0';
 static int base_relative = 0;
@@ -74,6 +75,7 @@ static void usage(void)
 {
 	fprintf(stderr, "Usage: kallsyms [--all-symbols] "
 			"[--symbol-prefix=<prefix char>] "
+			"[--use-data-section] "
 			"[--base-relative] < in.map > out.S\n");
 	exit(1);
 }
@@ -362,7 +364,10 @@ static void write_src(void)
 	printf("#define ALGN .balign 4\n");
 	printf("#endif\n");
 
-	printf("\t.section .rodata, \"a\"\n");
+	if (use_data_section)
+		printf("\t.section .data\n");
+	else
+		printf("\t.section .rodata, \"a\"\n");
 
 	/* Provide proper symbols relocatability by their relativeness
 	 * to a fixed anchor point in the runtime image, either '_text'
@@ -774,7 +779,9 @@ int main(int argc, char **argv)
 				if ((*p == '"' && *(p+2) == '"') || (*p == '\'' && *(p+2) == '\''))
 					p++;
 				symbol_prefix_char = *p;
-			} else
+			} else if (strcmp(argv[i], "--use-data-section") == 0)
+				use_data_section = 1;
+			else
 				usage();
 		}
 	} else if (argc != 1)
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 553d966a1986..3fc1fc406b38 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -133,6 +133,10 @@ kallsyms()
 		kallsymopt="${kallsymopt} --base-relative"
 	fi
 
+	if [ -n "${CONFIG_KALLSYMS_USE_DATA_SECTION}" ]; then
+		kallsymopt="${kallsymopt} --use-data-section"
+	fi
+
 	local aflags="${KBUILD_AFLAGS} ${KBUILD_AFLAGS_KERNEL}               \
 		      ${NOSTDINC_FLAGS} ${LINUXINCLUDE} ${KBUILD_CPPFLAGS}"
 
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
