Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F27AB9B58
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 02:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2fFbjSFo57SAQV/ZirBtNx53Oycf6j6Tk0KycKWpjY=; b=mT6Gsqok700Rag
	LF085pDTzILqSZeeQLpTa5UIBjZ9Dtmav+7fLR6FVhATg3abTCauaJ2RrhjFZYYyMrp3iPV654zDz
	6SCwWvABRY7vpVAPzQZSIeUlh6Af0ut7xZcdjBpLsSe47XTdMcuE7Ux3tyfyAHjsE23iODU7O4oOB
	UP9ohxU81rKDwgy5sYjYVTsgXMFeFQ+S0uK4noKzmlpRvMGfq/NrKNhaJ4NEsAzTmW694OEKIuxs1
	6Lj0K+Z22JX0oRoICfC8UJuTC5B+UAioBRMRKZTZcXIq6jh0wuy/k6wEsw3G7fPHLl7ENO57nIO38
	R4yPZt01Svy3CpAwUbDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBT88-0005zw-7s; Sat, 21 Sep 2019 00:20:04 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBT83-0005in-9N
 for linux-um@lists.infradead.org; Sat, 21 Sep 2019 00:20:02 +0000
Received: by mail-pl1-x64a.google.com with SMTP id p8so5448994plo.16
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 17:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=kn+0r7CDFmPHQws2Z+HRgp03O+EE7Nh4RU07v5olnXQ=;
 b=T5BJ/ml3LmuSG+0CXgZ8AJ4j+ss53JBL9GLtI0JFOUlGqadAvbBeWprW/AZkGqKCkX
 kH+CCd6NWp3Jc3Dfsrn04uqLh+OXRFB5zLZdmf4yr8rM8h51oQXGDsRMbm8jN3H9V5zX
 GFJWUdCh7XpjZFKeURyr4AhYaUOz3icGzKQtJGa/bJLEcLQ8lSP+JOdUcG0G7cZFHXGv
 dVFAxS5LFG5hd2y1mAiuV01DaT+IAC1LFJtip0AfhTTHgImrEAmywOPQNFd4CneHS5e3
 5UihKl1AsamI2RQwYXwnS/5b5Msk2ZUnIIMIqklrqQvUzuMyaxR/3Ep8jdJC34ay8XwI
 wOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=kn+0r7CDFmPHQws2Z+HRgp03O+EE7Nh4RU07v5olnXQ=;
 b=gJuwOEkOtjET/6bsmcRVWr/dRv9ju+fr2aVMTkeKWOpeG33rK4YENjRfb3pq4uxbGm
 xlMDh99oVUQWt/R80pqE03lkI1JMy8EV+zMhVPyszRK3tA5O52HtH0FHcpisan161/Hx
 w04HHCaPQ5/dx1sDx0KfGoNgFXamA4XMNQlSccDtP22f902pPUlH85mVyaS7w1PA2G3a
 JZwZCNHbE5SnTGJIky/72kusQG+RqQu1nIuCqwruEjAop329gKUU3vbAcFCKTlVVFRka
 zV5TEDDGKDhyJLm4HWRxC2kJeBZ7j2PUHiEKtJcD8/wTBia3nJxxRtv/kjVlsTcidlY+
 4/Zg==
X-Gm-Message-State: APjAAAUnDnZjNDQ7u9soLrjp66UWwLGYxOvvn4xXLK+Ysj4ub1kjVhhp
 BYhaUom/RGms2hWdyvojLWRB4cJypLfG6ETpwthalw==
X-Google-Smtp-Source: APXvYqxDY0icLnRBjQzpPrC2KX5LTAhxTzeIRmFru7uDlGKy4Wngq/ktxjMPqmMLb+o3CaD2oHpzsIcm5TdDnm45dj3Qvw==
X-Received: by 2002:a63:1521:: with SMTP id v33mr18113645pgl.9.1569025197473; 
 Fri, 20 Sep 2019 17:19:57 -0700 (PDT)
Date: Fri, 20 Sep 2019 17:18:55 -0700
In-Reply-To: <20190921001855.200947-1-brendanhiggins@google.com>
Message-Id: <20190921001855.200947-20-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190921001855.200947-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v17 19/19] kunit: fix failure to build without printk
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_171959_326994_B418455D 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>, pmladek@suse.com,
 linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 richard@nod.at, torvalds@linux-foundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, Joe Perches <joe@perches.com>,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Previously KUnit assumed that printk would always be present, which is
not a valid assumption to make. Fix that by removing call to
vprintk_emit, and calling printk directly.

This fixes a build error[1] reported by Randy.

For context this change comes after much discussion. My first stab[2] at
this was just to make the KUnit logging code compile out; however, it
was agreed that if we were going to use vprintk_emit, then vprintk_emit
should provide a no-op stub, which lead to my second attempt[3]. In
response to me trying to stub out vprintk_emit, Sergey Senozhatsky
suggested a way for me to remove our usage of vprintk_emit, which led to
my third attempt at solving this[4].

In my third version of this patch[4], I completely removed vprintk_emit,
as suggested by Sergey; however, there was a bit of debate over whether
Sergey's solution was the best. The debate arose due to Sergey's version
resulting in a checkpatch warning, which resulted in a debate over
correct printk usage. Joe Perches offered an alternative fix which was
somewhat less far reaching than what Sergey had suggested and
importantly relied on continuing to use %pV. Much of the debated
centered around whether %pV should be widely used, and whether Sergey's
version would result in object size bloat. Ultimately, we decided to go
with Sergey's version.

Reported-by: Randy Dunlap <rdunlap@infradead.org>
Link[1]: https://lore.kernel.org/linux-kselftest/c7229254-0d90-d90e-f3df-5b6d6fc0b51f@infradead.org/
Link[2]: https://lore.kernel.org/linux-kselftest/20190827174932.44177-1-brendanhiggins@google.com/
Link[3]: https://lore.kernel.org/linux-kselftest/20190827234835.234473-1-brendanhiggins@google.com/
Link[4]: https://lore.kernel.org/linux-kselftest/20190828093143.163302-1-brendanhiggins@google.com/
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Cc: Joe Perches <joe@perches.com>
Cc: Tim.Bird@sony.com
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested
Reviewed-by: Petr Mladek <pmladek@suse.com>
---
 include/kunit/test.h |  5 ++--
 lib/kunit/test.c     | 57 +++++---------------------------------------
 2 files changed, 8 insertions(+), 54 deletions(-)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 8b7eb03d4971..dba48304b3bd 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -339,9 +339,8 @@ static inline void *kunit_kzalloc(struct kunit *test, size_t size, gfp_t gfp)
 
 void kunit_cleanup(struct kunit *test);
 
-void __printf(3, 4) kunit_printk(const char *level,
-				 const struct kunit *test,
-				 const char *fmt, ...);
+#define kunit_printk(lvl, test, fmt, ...) \
+	printk(lvl "\t# %s: " fmt, (test)->name, ##__VA_ARGS__)
 
 /**
  * kunit_info() - Prints an INFO level message associated with @test.
diff --git a/lib/kunit/test.c b/lib/kunit/test.c
index b2ca9b94c353..c83c0fa59cbd 100644
--- a/lib/kunit/test.c
+++ b/lib/kunit/test.c
@@ -16,36 +16,12 @@ static void kunit_set_failure(struct kunit *test)
 	WRITE_ONCE(test->success, false);
 }
 
-static int kunit_vprintk_emit(int level, const char *fmt, va_list args)
-{
-	return vprintk_emit(0, level, NULL, 0, fmt, args);
-}
-
-static int kunit_printk_emit(int level, const char *fmt, ...)
-{
-	va_list args;
-	int ret;
-
-	va_start(args, fmt);
-	ret = kunit_vprintk_emit(level, fmt, args);
-	va_end(args);
-
-	return ret;
-}
-
-static void kunit_vprintk(const struct kunit *test,
-			  const char *level,
-			  struct va_format *vaf)
-{
-	kunit_printk_emit(level[1] - '0', "\t# %s: %pV", test->name, vaf);
-}
-
 static void kunit_print_tap_version(void)
 {
 	static bool kunit_has_printed_tap_version;
 
 	if (!kunit_has_printed_tap_version) {
-		kunit_printk_emit(LOGLEVEL_INFO, "TAP version 14\n");
+		pr_info("TAP version 14\n");
 		kunit_has_printed_tap_version = true;
 	}
 }
@@ -64,10 +40,8 @@ static size_t kunit_test_cases_len(struct kunit_case *test_cases)
 static void kunit_print_subtest_start(struct kunit_suite *suite)
 {
 	kunit_print_tap_version();
-	kunit_printk_emit(LOGLEVEL_INFO, "\t# Subtest: %s\n", suite->name);
-	kunit_printk_emit(LOGLEVEL_INFO,
-			  "\t1..%zd\n",
-			  kunit_test_cases_len(suite->test_cases));
+	pr_info("\t# Subtest: %s\n", suite->name);
+	pr_info("\t1..%zd\n", kunit_test_cases_len(suite->test_cases));
 }
 
 static void kunit_print_ok_not_ok(bool should_indent,
@@ -87,9 +61,7 @@ static void kunit_print_ok_not_ok(bool should_indent,
 	else
 		ok_not_ok = "not ok";
 
-	kunit_printk_emit(LOGLEVEL_INFO,
-			  "%s%s %zd - %s\n",
-			  indent, ok_not_ok, test_number, description);
+	pr_info("%s%s %zd - %s\n", indent, ok_not_ok, test_number, description);
 }
 
 static bool kunit_suite_has_succeeded(struct kunit_suite *suite)
@@ -133,11 +105,11 @@ static void kunit_print_string_stream(struct kunit *test,
 		kunit_err(test,
 			  "Could not allocate buffer, dumping stream:\n");
 		list_for_each_entry(fragment, &stream->fragments, node) {
-			kunit_err(test, fragment->fragment);
+			kunit_err(test, "%s", fragment->fragment);
 		}
 		kunit_err(test, "\n");
 	} else {
-		kunit_err(test, buf);
+		kunit_err(test, "%s", buf);
 		kunit_kfree(test, buf);
 	}
 }
@@ -504,20 +476,3 @@ void kunit_cleanup(struct kunit *test)
 		kunit_resource_free(test, resource);
 	}
 }
-
-void kunit_printk(const char *level,
-		  const struct kunit *test,
-		  const char *fmt, ...)
-{
-	struct va_format vaf;
-	va_list args;
-
-	va_start(args, fmt);
-
-	vaf.fmt = fmt;
-	vaf.va = &args;
-
-	kunit_vprintk(test, level, &vaf);
-
-	va_end(args);
-}
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
