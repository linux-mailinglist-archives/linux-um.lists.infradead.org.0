Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1A5E1168
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2FciAju4yAaUfGCirNRC82s7Ivy+vDGZAmZZISAhfYc=; b=pqrzlPOTV0J8bC
	7yb/tHtvhWKhRoDtUXZdlCZ2bihqLomsaCByt/EsRWdnNrTQqIimgymPPX4FgRel5QOxzXf1EPoBn
	gt7PeutgMdQeok7LwOCi1EN9bDdPtOFAfBLpXVhjxpSc+HUJ5sAc/uWkYAa4VPhgC5Whlp0hxqqrQ
	scGSBzwUTIFpCqqKzRFJX7pVbeZWNkBBk7Tp58plLbevy83FmvB/Vj9XIuHNa4Eb6a5HstsBQCjCW
	ni/T/oZis6XX9zH4dyIMPnKvjkBRmJCjYedgbSPuP7VR+wj8Ie4F+ZcTU4QHOhN1TVcIhzVQ4pZpm
	3n8egb8VBNDXaWDL9ZRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8ku-0002FA-Lg; Wed, 23 Oct 2019 05:00:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8kk-0001wO-Dg
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id p1so11386930pgi.4
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o/vcaNCShvwx/nWkPTVkN4EPtN7zpQtfSY7FqoWbkb8=;
 b=kKOjKFk8MLKEzoDiTj4s00sR7GX8J0xkjIGzZTAqfPw2c7vTBd9bYBzuAESmw7zbOR
 C7JWzm8z2Tag0I2ze+pljfGKRsmsqWCjjGqMP/qktrxoc5a58iLBuFHAxSlXMCV+kESS
 tFEVOKZVFRD3UoA14a4lGyNU3yTZVPRfNrWqdX6yoVfZFlVxJoLAp/2mqfw2hIVm+EOX
 HbldJt79qZ06d435qS3yYs+yF72hN8QYTimjyd4ktSOfqvw0akv8z2VeMRXDMlb2aL7V
 7HvcJ0qxplnM38njCMP0uMU6q2OkvCHsm1mosg7WZCFG+rXVgPz3Mfqc6wEZNgQcJs06
 uAwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o/vcaNCShvwx/nWkPTVkN4EPtN7zpQtfSY7FqoWbkb8=;
 b=Zv6xAlysksvjmOTzrgMUkHfbK0E302aV4crT9MjHXks5MA33GW6I3rXENWNru1vXzB
 sL1JXqIwCQMG1RMExqKcH4TFp+Y44/xC7XFePe4IJTB3Oqd4sxP5esi/pdQI4kY16Amm
 oi6E8o/Cndoie0jkMcIKdw2SJVtKsLXveoS6dzJTCDVwEy4CNuRMTqAHZj4svala3iQs
 Op3JJtHdt7wdSLvq12eKT1qa27dvoGxRTVEA2pWNIBCDx3PUzNA4F/J4BWxJSy+9dRA3
 lw1iKKu3IqANjcczLLVp7UvayB3pRuEEpcG9vcJpRCVIvHxK9uwFQIuC8aceaF3YQmJp
 NCNQ==
X-Gm-Message-State: APjAAAVcZ4h3x2w2wTNWn6V7myZT+Uc83EeOKdrrTUikfnKq8HUSl4DZ
 itz0Lrpww+6ttDXHupH9wrA=
X-Google-Smtp-Source: APXvYqyUqHx56+0XmCSIZ+1bYWJ1NtB7KO0+TV7xPumM0d4SVC+fRXwyVyNXy0C5iANcgj12tVo+tw==
X-Received: by 2002:aa7:8583:: with SMTP id w3mr404438pfn.138.1571806809550;
 Tue, 22 Oct 2019 22:00:09 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id f17sm29804574pgd.8.2019.10.22.22.00.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:06 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 8376A201995846; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 42/47] Revert "kallsyms: remove symbol prefix support"
Date: Wed, 23 Oct 2019 13:38:16 +0900
Message-Id: <69d18908bbc2bd8548be61889f69a1884bed659a.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220010_505032_08662A73 
X-CRM114-Status: GOOD (  16.22  )
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

This reverts commit 534c9f2ec4c92adbe8791125e7ba66d5023ad51f.

for lkl, mingw32 requires underscore-ed symbols.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 scripts/kallsyms.c      | 49 +++++++++++++++++++++++++++++++----------
 scripts/link-vmlinux.sh |  4 ++++
 2 files changed, 41 insertions(+), 12 deletions(-)

diff --git a/scripts/kallsyms.c b/scripts/kallsyms.c
index ae6504d07fd6..8a62e1b6cf22 100644
--- a/scripts/kallsyms.c
+++ b/scripts/kallsyms.c
@@ -60,6 +60,7 @@ static struct sym_entry *table;
 static unsigned int table_size, table_cnt;
 static int all_symbols = 0;
 static int absolute_percpu = 0;
+static char symbol_prefix_char = '\0';
 static int base_relative = 0;
 
 static int token_profit[0x10000];
@@ -72,6 +73,7 @@ static unsigned char best_table_len[256];
 static void usage(void)
 {
 	fprintf(stderr, "Usage: kallsyms [--all-symbols] "
+			"[--symbol-prefix=<prefix char>] "
 			"[--base-relative] < in.map > out.S\n");
 	exit(1);
 }
@@ -109,22 +111,28 @@ static int check_symbol_range(const char *sym, unsigned long long addr,
 
 static int read_symbol(FILE *in, struct sym_entry *s)
 {
-	char sym[500], stype;
+	char str[500];
+	char *sym, stype;
 	int rc;
 
-	rc = fscanf(in, "%llx %c %499s\n", &s->addr, &stype, sym);
+	rc = fscanf(in, "%llx %c %499s\n", &s->addr, &stype, str);
 	if (rc != 3) {
-		if (rc != EOF && fgets(sym, 500, in) == NULL)
+		if (rc != EOF && fgets(str, 500, in) == NULL)
 			fprintf(stderr, "Read error or end of file.\n");
 		return -1;
 	}
-	if (strlen(sym) >= KSYM_NAME_LEN) {
-		fprintf(stderr, "Symbol %s too long for kallsyms (%zu >= %d).\n"
+	if (strlen(str) > KSYM_NAME_LEN) {
+		fprintf(stderr, "Symbol %s too long for kallsyms (%zu vs %d).\n"
 				"Please increase KSYM_NAME_LEN both in kernel and kallsyms.c\n",
-			sym, strlen(sym), KSYM_NAME_LEN);
+			str, strlen(str), KSYM_NAME_LEN);
 		return -1;
 	}
 
+	sym = str;
+	/* skip prefix char */
+	if (symbol_prefix_char && str[0] == symbol_prefix_char)
+		sym++;
+
 	/* Ignore most absolute/undefined (?) symbols. */
 	if (strcmp(sym, "_text") == 0)
 		_text = s->addr;
@@ -145,7 +153,7 @@ static int read_symbol(FILE *in, struct sym_entry *s)
 		 is_arm_mapping_symbol(sym))
 		return -1;
 	/* exclude also MIPS ELF local symbols ($L123 instead of .L123) */
-	else if (sym[0] == '$')
+	else if (str[0] == '$')
 		return -1;
 	/* exclude debugging symbols */
 	else if (stype == 'N' || stype == 'n')
@@ -156,14 +164,14 @@ static int read_symbol(FILE *in, struct sym_entry *s)
 
 	/* include the type field in the symbol name, so that it gets
 	 * compressed together */
-	s->len = strlen(sym) + 1;
+	s->len = strlen(str) + 1;
 	s->sym = malloc(s->len + 1);
 	if (!s->sym) {
 		fprintf(stderr, "kallsyms failure: "
 			"unable to allocate required amount of memory\n");
 		exit(EXIT_FAILURE);
 	}
-	strcpy((char *)s->sym + 1, sym);
+	strcpy((char *)s->sym + 1, str);
 	s->sym[0] = stype;
 
 	s->percpu_absolute = 0;
@@ -226,6 +234,11 @@ static int symbol_valid(struct sym_entry *s)
 	int i;
 	char *sym_name = (char *)s->sym + 1;
 
+	/* skip prefix char */
+	if (symbol_prefix_char && *sym_name == symbol_prefix_char)
+		sym_name++;
+
+
 	/* if --all-symbols is not specified, then symbols outside the text
 	 * and inittext sections are discarded */
 	if (!all_symbols) {
@@ -290,9 +303,15 @@ static void read_map(FILE *in)
 
 static void output_label(char *label)
 {
-	printf(".globl %s\n", label);
+	if (symbol_prefix_char)
+		printf(".globl %c%s\n", symbol_prefix_char, label);
+	else
+		printf(".globl %s\n", label);
 	printf("\tALGN\n");
-	printf("%s:\n", label);
+	if (symbol_prefix_char)
+		printf("%c%s:\n", symbol_prefix_char, label);
+	else
+		printf("%s:\n", label);
 }
 
 /* uncompress a compressed symbol. When this function is called, the best table
@@ -749,7 +768,13 @@ int main(int argc, char **argv)
 				absolute_percpu = 1;
 			else if (strcmp(argv[i], "--base-relative") == 0)
 				base_relative = 1;
-			else
+			else if (strncmp(argv[i], "--symbol-prefix=", 16) == 0) {
+				char *p = &argv[i][16];
+				/* skip quote */
+				if ((*p == '"' && *(p+2) == '"') || (*p == '\'' && *(p+2) == '\''))
+					p++;
+				symbol_prefix_char = *p;
+			} else
 				usage();
 		}
 	} else if (argc != 1)
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 27d2066238c7..553d966a1986 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -117,6 +117,10 @@ kallsyms()
 	info KSYM ${2}
 	local kallsymopt;
 
+	if [ -n "${CONFIG_HAVE_UNDERSCORE_SYMBOL_PREFIX}" ]; then
+		kallsymopt="${kallsymopt} --symbol-prefix=_"
+	fi
+
 	if [ -n "${CONFIG_KALLSYMS_ALL}" ]; then
 		kallsymopt="${kallsymopt} --all-symbols"
 	fi
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
