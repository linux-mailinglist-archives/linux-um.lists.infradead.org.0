Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55DDE1112
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Smx/W+U01jeoUnwIIte+2cO2kEj/tiXLjvvmoE5dtMY=; b=KNcZNAT5wyQSXE
	HZAaBIeMZ9YKTHE3oLVy/2XT93e7OJqk4ESfPXEgrCebkrZmn5UdDfbkxkGzs9of2KaIYVrVIfGM4
	QJ9AbbOZo0c4PYd8Cpb7Z9O29ycegu9jbhua7miKLrWxs+tjf3VBZoExBTUzlQH3PrtCB288qIEqU
	Fw/R37hwQZfSKC9uO43zdgTex+rQkryEFHtg+Bv34qE3u36i61bDgX9FBIIiSyPM68VASqpnvfGmT
	+4saQmUVoJ2z5cdHj55dzp3OhVXMTKuqmQBN0N13f44JIeOPZ1xCKNqIvbU1i8EqKEoeH6lkks345
	FCxs8p0qQsmzTqr1ymKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QW-0001yx-5k; Wed, 23 Oct 2019 04:39:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QJ-0001nl-VR
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id q5so12072088pfg.13
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uDhLSLrBi6Q5dVEVvuMDjXbpSvk+lBtlpgB2f1TFHWs=;
 b=I7TYiRaem6eeBlWZ+xgFztAYvNUIavtMaHjDeqIT0r9NSBHlDGLHfKL3ZWVDNURKjj
 30M5zqb/rOFv7bYXicC/AwwpizVOyYvlOq10iZgXARpIIeCqOjC1NnEjCI8WzZzbByWX
 +pQmCDK47ZwqX7L9flfaidHKfH/T8lF4p69YvmghCSeUjjTAN757JhZEJOzoxeCJL6TA
 RnHgOViGCutoqsGAGTR6NLeC2TAJLxS6zuzchWWKfz4DboUFnlEtmboM2FpO9gVymR/G
 7AfFnMXvJR52ehSLHgoSNsC9k90bB2kPrQHUIt50HRvUQCKwCGcP+AMUbTFEe6+I5rUS
 Yvog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uDhLSLrBi6Q5dVEVvuMDjXbpSvk+lBtlpgB2f1TFHWs=;
 b=I7XLbFgjCYgtPvJgo8PxQ4gvNYLgNtgF0VUYKZjm5o0L/GPL/VsF12tOBgOMGaGTka
 Ycd/JtUWOc+/Z6tsyfCTTRgnJ35AVfNvIb8XBX80RRnkV+heyNJKk1j89mit5YBYdeNb
 sOauguqayyXZYio3uX5T+4pUw6iqCaZr5N6D1luiOdnF64z0LbMyMcRHLuv2g/n2vTmj
 zPsKsWM49pqrgLf8dUB4qbFtdbTWsSe+WeZDPrfdLOcMzNCpQAaRb26OW2P/QlNkAC4F
 z3TKpecYQWRSy8vYCcBvgK/OX/VF+C+UahMfrL3jX2u784WOEYcqJnH7ExWdbkQoinze
 yOJw==
X-Gm-Message-State: APjAAAVLD27/oQyxpO7zffGielWhK4sDSU7X0CJsZ/EJSKUklIoWv/3L
 Bwh1MxigQEgo4/zmuB7eOv0=
X-Google-Smtp-Source: APXvYqwNFzdFkacL09qF2bGZ3EwPJFNchBT621oUpyq/xa4CThr129Ct5CxjZoc0CocdKgfaLAfT+Q==
X-Received: by 2002:a17:90a:e2ce:: with SMTP id
 fr14mr9205450pjb.59.1571805543298; 
 Tue, 22 Oct 2019 21:39:03 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id q71sm19778968pjb.26.2019.10.22.21.39.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:39:03 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id F120F201995824; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 25/47] lkl: add support for Windows hosts
Date: Wed, 23 Oct 2019 13:37:59 +0900
Message-Id: <31f7efdcae5061daf86c0dcec2f11c326eee408d.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213904_018064_C9649437 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>, Jens Staal <staal1978@gmail.com>,
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
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
 arch/um/lkl/include/system/stdarg.h | 2 ++
 include/linux/compiler_attributes.h | 4 ++++
 lib/.gitignore                      | 2 ++
 lib/raid6/.gitignore                | 1 +
 scripts/.gitignore                  | 2 ++
 scripts/basic/.gitignore            | 1 +
 scripts/kconfig/.gitignore          | 1 +
 scripts/link-vmlinux.sh             | 2 ++
 scripts/mod/.gitignore              | 1 +
 9 files changed, 16 insertions(+)
 create mode 100644 arch/um/lkl/include/system/stdarg.h

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
index 915775eb2921..27d2066238c7 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -205,6 +205,7 @@ fi;
 # final build of init/
 ${MAKE} -f "${srctree}/scripts/Makefile.build" obj=init
 
+if [ -e scripts/mod/modpost ]; then
 #link vmlinux.o
 info LD vmlinux.o
 modpost_link vmlinux.o
@@ -214,6 +215,7 @@ ${MAKE} -f "${srctree}/scripts/Makefile.modpost" MODPOST_VMLINUX=1
 
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
