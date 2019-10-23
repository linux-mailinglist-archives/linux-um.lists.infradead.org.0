Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FA7E1165
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFurc9JTQkTT5G1HkULe9BJ7hQe1f4y/pXnCZsgggW4=; b=Hz2xUw9tRvVtxD
	6G4mlIFUCmXplLDYNBmgdmdmgSvSnsE/mbvYIt+BucL+9tdAn+JD2LBMz9hwMgTgDCruliFgWDaGu
	VsdsyydTruzX/DyPaqftAhlX+V/PEMOX7ObOK8HTp+f16yKc0ACktoftmlLFuILDFAzzhLjCjEqej
	d5AsVhiOqL2yCQWpCTmsgY/9QGYJ4/ayr2vSPuhx21OzSSJDl03KKyqzdDfwqhMCuLiqWTZMs3zIJ
	DRTrcfT9+tfn/tgvIYiFk7hgM7bKymmVPiL6ro6joT1KIHiJnf4Tol2Fo/Eh9xAvQIdDjBhuL/j6X
	pVl28gzROUTX14nkNZcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8ks-0002Do-53; Wed, 23 Oct 2019 05:00:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8ki-0001in-Lc
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id u23so697023pgo.0
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MfOcPrkTvXxSk28ocUdJi8Bn695Asfy/OSpPDBKVX5E=;
 b=RH8VGzdGRzQcpMn7ZF2filrPGEtI3aaHnKGg32k+PCcM/ige+jTo5fVXZLag//zT1F
 41J6/D3q8lzOV7FNA3l5qsK/DI7TdJOsTkViCBgCdbqZnc/W/muEbHXBUehJZggKVOvX
 iEqf7qCGOfmuI6u9MxqBDGW+IhwzbhI2Ed0ixtjz2i5t81arYzzQyH2yYDFY65ttng9O
 kr0teh2lTGk0+A5lTpeaW35MuN1o3oampwr6UVgmBc/YVaDbUAEriVqHN/djWsUG53PS
 nfrv9xFQutCsS2s6jcIJRyx/aqNgNnHVU6cJRmFf9ttKYK67vkh1wQgd8XVjS+WwwhR3
 G74w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MfOcPrkTvXxSk28ocUdJi8Bn695Asfy/OSpPDBKVX5E=;
 b=jnkWZzavU48KQoZGFKPMY5ZFOGY/KKa8r84zOMpot+4Y/KXI8vaVGJGlgMxBu0nDTn
 wOXkEarIhPtA1wwwFwp/CyelKsc+iznHvVCr30c80nodayIxQYMAZ7GVWhIrkpb26LVN
 meoZBjJxvh5k00cDkA/pliEnwUqPBou0VRXkUk6fobuM86oYPdiQbCu9ghmtxQfGSYnT
 1v3MO4lY0HB09axDEi+B7hxisyoNrQbuZDofjsEWRS4tJzpQibXPF9ZkUFASF9sNHMBD
 /8g3ks28T0V7bfMgz3a5/ZcpfeupC+3K3vFmZF0bvoJNsGvJiLCpYMLziKoh8Od9iima
 /ASg==
X-Gm-Message-State: APjAAAWWFAU25GzKIZ45zyFP/tSn+VHovJaIJQcZzbt2+LUyJe0spYQT
 bSxGeYWSVrIFiLrSVMsYVVA=
X-Google-Smtp-Source: APXvYqxRDz28eva4iNOfEsnXpXYAbgi7aFzlGpibjGVmnoA4opImxsuxHspIZzv+n2L4q3ZQXMWknQ==
X-Received: by 2002:a17:90a:34c1:: with SMTP id
 m1mr9063888pjf.89.1571806807843; 
 Tue, 22 Oct 2019 22:00:07 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id e7sm4347788pgr.25.2019.10.22.22.00.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:05 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 8B151201995848; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 43/47] kallsyms: Add a config option to select section for
 kallsyms
Date: Wed, 23 Oct 2019 13:38:17 +0900
Message-Id: <b56063cbad6bc3c09d4c5edd6e34c3793ed4cb5d.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220008_740079_8951FBE8 
X-CRM114-Status: GOOD (  16.82  )
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>, Andreas Abel <aabel@google.com>,
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
 scripts/kallsyms.c      |  9 ++++++++-
 scripts/link-vmlinux.sh |  4 ++++
 3 files changed, 24 insertions(+), 1 deletion(-)

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
index 8a62e1b6cf22..11d01516e1c8 100644
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
@@ -73,6 +74,7 @@ static unsigned char best_table_len[256];
 static void usage(void)
 {
 	fprintf(stderr, "Usage: kallsyms [--all-symbols] "
+			"[--use-data-section] "
 			"[--symbol-prefix=<prefix char>] "
 			"[--base-relative] < in.map > out.S\n");
 	exit(1);
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
@@ -768,6 +773,8 @@ int main(int argc, char **argv)
 				absolute_percpu = 1;
 			else if (strcmp(argv[i], "--base-relative") == 0)
 				base_relative = 1;
+			else if (strcmp(argv[i], "--use-data-section") == 0)
+				use_data_section = 1;
 			else if (strncmp(argv[i], "--symbol-prefix=", 16) == 0) {
 				char *p = &argv[i][16];
 				/* skip quote */
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
