Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B22AF3F52
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpaKE1ZjU3qTKReXIpy2AuK/3wL3mIyFdJo/kh5rCZo=; b=gLWPxkxjmPd78s
	+XH0d4kpY76+YJXDiglPsDVMgck/BbHs28HAP7yRTDdQSCzgzUjhMf23avUeJOIrh9MdTJbfXg6Wz
	JeDCEYOG9CuvV+8TMFaYUbMA7uHQv91PsAwaURb/8ZjvYjJv0GXm4dreRksugu+i4nDyFGqpAyo5Q
	pEX9Q06Y1L4LjZ+EPE/A3NzvQkZ6Bsr3qJB0qoj2Q1OLnFu6dqwd4nQFd20+e61u3xRG41PmoZiQv
	qnEa1G0uRRoYT606jIX8T+yCsrltltrBWhIBX20fyyZ5ygif0GoLUQm3gcIiDBbBjrHWp3kiIaA73
	ksUrvdBqWYHpqP5kggFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRY-00044J-7M; Fri, 08 Nov 2019 05:04:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwRT-00042G-JC
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:04:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id w8so3252413plq.5
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=veF3L6iMfbaC8NBWTh973dGGvIbVBEAjTKEMk/CcrRk=;
 b=mjnQaYJjvrt9ygOVwQaScwiemE8j0Jl+1HtszqqLBpuqDQhXs/eSUXWfyIA6ZVytDX
 /thQblMf/sWRJc+hMHVjTeSdCUW8a9a4ORVQuy90MQjuMFd62Zfnh7fNtya8horm7zty
 EKNmJBRqQffPDqzs+M0gy/F7qDYUCFKMmmieTdQvnDp7xgjYVPQmnSYGd5/ezZXxLEYV
 O+OBmrT7F5qOPSgdDwKlcMI8yuvSRap/STrGMXR085Mgz1DEVUHBJ9da4xtRiMSO6gsY
 yi/EDL0TT2Zb3wcKfdYH07P6A987qTOZuWuXs6wjUfM4V7Y5qJu8RVuGqmvLeX70JQJH
 nOGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=veF3L6iMfbaC8NBWTh973dGGvIbVBEAjTKEMk/CcrRk=;
 b=YnY3cS7Q/kXHxt358QYVa47K5HxKMTDcLjocTtPtdr8uDCwb4p06plTA23qmduujfy
 7NtOyT56uVNye0sI8LtveLXmXX0ia46Iy6qbdHrvEwX32Zb/GH1c7BrlMgnTVhiMSCtx
 BS7O6FSN0WzLK9eMXwo/VHoh/WqpxVW8tpdBsPhTmf621qXZ5bKn5tnLC97UVWKbyxbc
 KUHztF38qTNLQrsJJPrtjEHDt9BmYGqqbYcVP3MND3hxHsKEDlzOShuqiH7vOCrSfe5v
 wd8AIT+rMBsuWT7zjihpFSqqSwY6JJXYa1D3dwl5LZAG1NsaA1SiS1ucnzCllXYUCnV6
 W8zA==
X-Gm-Message-State: APjAAAWT8eE1XlcIUqwO2/LKve/zwbh8Ty/Lhyhc51MuWMF4PTWJ06ST
 wNu4IecBpR4hnS5fYcFtrP72Q/1XN+6FZA==
X-Google-Smtp-Source: APXvYqwWp9UHAYtzot/xa1PPayf1HqeSKEeerJx9lN2CfPX+/Smd8o9cISVKg3dTUusiuXunKrOJ3A==
X-Received: by 2002:a17:902:8f89:: with SMTP id
 z9mr7954059plo.228.1573189454869; 
 Thu, 07 Nov 2019 21:04:14 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id u36sm4371553pgn.29.2019.11.07.21.04.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:04:14 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id B5B81201ACFE83; Fri,  8 Nov 2019 14:04:12 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 31/37] lkl: add support for Windows hosts
Date: Fri,  8 Nov 2019 14:02:46 +0900
Message-Id: <8562184b77c641a99cb80ff37fb3d3b405f5f6ec.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210415_633028_9B27DDD8 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: linux-arch@vger.kernel.org, Octavian Purdila <tavi.purdila@gmail.com>,
 Jens Staal <staal1978@gmail.com>, Akira Moroo <retrage01@gmail.com>,
 linux-kernel-library@freelists.org, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

This patch allows LKL to be compiled for windows hosts with the mingw
toolchain. Note that patches [1] that fix weak symbols linking are
required to successfully compile LKL with mingw.

The patch disables the modpost pass over vmlinux since modpost only
works with ELF objects.

It also adds and workaround to an #include_next <stdard.h> error which
is apparently caused by using -nosdtinc.

[1] https://sourceware.org/ml/binutils/2015-10/msg00234.html

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Jens Staal <staal1978@gmail.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 arch/um/lkl/Kconfig                 | 2 ++
 arch/um/lkl/include/system/stdarg.h | 2 ++
 include/linux/compiler_attributes.h | 4 ++++
 lib/.gitignore                      | 2 ++
 lib/raid6/.gitignore                | 1 +
 scripts/.gitignore                  | 2 ++
 scripts/basic/.gitignore            | 1 +
 scripts/kconfig/.gitignore          | 1 +
 scripts/link-vmlinux.sh             | 2 ++
 scripts/mod/.gitignore              | 1 +
 10 files changed, 18 insertions(+)
 create mode 100644 arch/um/lkl/include/system/stdarg.h

diff --git a/arch/um/lkl/Kconfig b/arch/um/lkl/Kconfig
index 07b3699095ae..1629e2679b75 100644
--- a/arch/um/lkl/Kconfig
+++ b/arch/um/lkl/Kconfig
@@ -20,6 +20,8 @@ config LKL
        select DMA_DIRECT_OPS
        select PHYS_ADDR_T_64BIT if 64BIT
        select 64BIT if "$(OUTPUT_FORMAT)" = "elf64-x86-64"
+       select 64BIT if "$(OUTPUT_FORMAT)" = "pe-x86-64"
+       select HAVE_UNDERSCORE_SYMBOL_PREFIX if "$(OUTPUT_FORMAT)" = "pe-i386"
        select 64BIT if "$(OUTPUT_FORMAT)" = "elf64-x86-64-freebsd"
        select NET
        select MULTIUSER
diff --git a/arch/um/lkl/include/system/stdarg.h b/arch/um/lkl/include/system/stdarg.h
new file mode 100644
index 000000000000..12077a36828c
--- /dev/null
+++ b/arch/um/lkl/include/system/stdarg.h
@@ -0,0 +1,2 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* empty file to avoid #include_next<stdarg.h> error */
diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 6b318efd8a74..1981b1c323c1 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -154,7 +154,11 @@
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-format-function-attribute
  * clang: https://clang.llvm.org/docs/AttributeReference.html#format
  */
+#ifdef __MINGW32__
+#define __printf(a, b)             __attribute__((__format__(gnu_printf, a, b)))
+#else
 #define __printf(a, b)                  __attribute__((__format__(printf, a, b)))
+#endif
 #define __scanf(a, b)                   __attribute__((__format__(scanf, a, b)))
 
 /*
diff --git a/lib/.gitignore b/lib/.gitignore
index f2a39c9e5485..eb9f11b81fe1 100644
--- a/lib/.gitignore
+++ b/lib/.gitignore
@@ -2,7 +2,9 @@
 # Generated files
 #
 gen_crc32table
+gen_crc32table.exe
 gen_crc64table
+gen_crc64table.exe
 crc32table.h
 crc64table.h
 oid_registry_data.c
diff --git a/lib/raid6/.gitignore b/lib/raid6/.gitignore
index 3de0d8921286..80e3566535aa 100644
--- a/lib/raid6/.gitignore
+++ b/lib/raid6/.gitignore
@@ -1,4 +1,5 @@
 mktables
+mktables.exe
 altivec*.c
 int*.c
 tables.c
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 17f8cef88fa8..ec9138a39b25 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -4,8 +4,10 @@
 bin2c
 conmakehash
 kallsyms
+kallsyms.exe
 pnmtologo
 unifdef
+unifdef.exe
 recordmcount
 sortextable
 asn1_compiler
diff --git a/scripts/basic/.gitignore b/scripts/basic/.gitignore
index a776371a3502..77ce153243fa 100644
--- a/scripts/basic/.gitignore
+++ b/scripts/basic/.gitignore
@@ -1 +1,2 @@
 fixdep
+fixdep.exe
diff --git a/scripts/kconfig/.gitignore b/scripts/kconfig/.gitignore
index b5bf92f66d11..aa27000d896f 100644
--- a/scripts/kconfig/.gitignore
+++ b/scripts/kconfig/.gitignore
@@ -8,6 +8,7 @@
 # configuration programs
 #
 conf
+conf.exe
 mconf
 nconf
 qconf
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index c3c5758ed7d6..553d966a1986 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -209,6 +209,7 @@ fi;
 # final build of init/
 ${MAKE} -f "${srctree}/scripts/Makefile.build" obj=init
 
+if [ -e scripts/mod/modpost ]; then
 #link vmlinux.o
 info LD vmlinux.o
 modpost_link vmlinux.o
@@ -218,6 +219,7 @@ ${MAKE} -f "${srctree}/scripts/Makefile.modpost" MODPOST_VMLINUX=1
 
 info MODINFO modules.builtin.modinfo
 ${OBJCOPY} -j .modinfo -O binary vmlinux.o modules.builtin.modinfo
+fi
 
 kallsymso=""
 kallsyms_vmlinux=""
diff --git a/scripts/mod/.gitignore b/scripts/mod/.gitignore
index 3bd11b603173..cd67845e326d 100644
--- a/scripts/mod/.gitignore
+++ b/scripts/mod/.gitignore
@@ -1,4 +1,5 @@
 elfconfig.h
 mk_elfconfig
 modpost
+modpost.exe
 devicetable-offsets.h
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
