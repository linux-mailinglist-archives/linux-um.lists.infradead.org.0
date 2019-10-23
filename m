Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B76E1174
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9nZHnTh8WFSeo8P4GgUtAVhFsdEju9CJHVjhtAqgBo=; b=HRBdZFVSUDCJvw
	cCOqjH9EEdtxSOL0eYjGUrG0hnV6Bfv+PLd2fWJhil54YCtIlsPvS+HDxStCBeO33/P9inFkAvmTu
	pjzzOy5+OYlZNSCED+r9je+EE7tS6xOcrGf1jgbzHkWvzKgQS91Aqws16fFfZEBlIdb/Ql8RokfGE
	NOMQD5nBMdnoob31IWmJDiMsyWx+COGz4yB1PPuishbKbn6r6yIkLtgIbjSb9P345cxXLgTgYI8pR
	hNcFQHbFE7KCNxNOOnaU+IAux1ovrPoarSWA2O7pYG1j7ekGE8CyBObJhctHLcY5zTjlFoTgEQinD
	SPLmzfSyRZByIn6bXmkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8mF-0002Tl-Fw; Wed, 23 Oct 2019 05:01:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8mC-0002TQ-Qo
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:01:42 +0000
Received: by mail-pl1-x642.google.com with SMTP id q21so1404656plr.13
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8uyvtSPS2TiktoTYqh4Rays6pJlEecZb3i0aLtG0KWM=;
 b=vfgt9iPt875qY2urNU1pfF+FawRJuyPDxHWmkmr44YFfcj8HuqnZTVZ4kSgTBR11tS
 06vj29adtm5bgSY3A2kzcEm0lmZW2QWe6BkKeDM1/uPj/VcDpZ3wzPFBUCFP0I2cO8Xv
 oNWysGoA/8BYDsWRja2Nyw6m7LlsnAd+7R2uVcEa8DqoVqnC+/3/BTTjpvAtg2EKdXQ/
 PnOf85tXJiXL4C3w4Qx0j9gak9OMQ4/zzmlY4GETW44TrXB2D++/HlR0Ps4QOivAkkCa
 wXTgX5gPIAkMsVwRzO8yOPo3KeosAYdfzJMGoxfVFa/gkoQIR/NiY22pAO1oXKTBA9JF
 KvjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8uyvtSPS2TiktoTYqh4Rays6pJlEecZb3i0aLtG0KWM=;
 b=WqgLnG2RLHUQybQkEj31WTWefagDieJyUCFaJHe+Q12JVaERwS8YAryKqGbqXHXL1E
 eAi+6cfnjhIYm5iA3t8KBTkfpUdvGQAITMSrboFuLrc3e7q9H/YmhQdmWV1sTDVcFtSY
 Y15QHf6gGS3/LK/Ul0dUFWOhg9fusG3ufAre2+XSM3mIeSiV4GeMcG4zroaH7ybQh2+g
 kreV9rCJfpSL1yzit0obiof3kIzozTx9vueSnzcgcfd4+OoIqoZjefy6I4L8ya7tp5l+
 8PpKwXbafR6uTl7smFoRZB3kryDmiXPJHR2jRCwPhZi6CjPnQ14k9TfeVwmjwJoOVDxF
 rKfg==
X-Gm-Message-State: APjAAAXT8zwd+CjdWbmgEz5t7W2fdqL1VOdina81rBpE6DrH8JSSwrC+
 kJIdudgeEmH3tQ0BWKlrcWsJmOjJ4P46Kw==
X-Google-Smtp-Source: APXvYqwHPnV/eDKf2bBDK0qSVMyaNb6njd4QyIeq1e8WDPBFCiu7BBvtNHiD2t3PUJRG77SCcr+p4Q==
X-Received: by 2002:a17:902:7e4e:: with SMTP id
 a14mr7671254pln.68.1571806900039; 
 Tue, 22 Oct 2019 22:01:40 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id b24sm5437274pfo.4.2019.10.22.22.01.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:01:39 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 2F839201995830; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 31/47] cpu: add cpu_yield_to_irqs
Date: Wed, 23 Oct 2019 13:38:05 +0900
Message-Id: <96b59a0a55cdc657750a1f1d7af349550d13ac9c.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220140_867536_F3827175 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Add a new architecture function that should be called in loops that rely
on interrupts to exit the loop (e.g. loops that use a jiffies expression
for the exit condition).

This is needed for architectures where interrupts can not preempt the
currently running thread (e.g. lkl).

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 crypto/xor.c        | 2 ++
 include/linux/cpu.h | 1 +
 kernel/cpu.c        | 5 +++++
 lib/raid6/algos.c   | 9 ++++++---
 4 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/crypto/xor.c b/crypto/xor.c
index ea7349e6ed23..c55a89a9e659 100644
--- a/crypto/xor.c
+++ b/crypto/xor.c
@@ -14,6 +14,7 @@
 #include <linux/raid/xor.h>
 #include <linux/jiffies.h>
 #include <linux/preempt.h>
+#include <linux/cpu.h>
 #include <asm/xor.h>
 
 #ifndef XOR_SELECT_TEMPLATE
@@ -85,6 +86,7 @@ do_xor_speed(struct xor_block_template *tmpl, void *b1, void *b2)
 			mb();
 			count++;
 			mb();
+			cpu_yield_to_irqs();
 		}
 		if (count > max)
 			max = count;
diff --git a/include/linux/cpu.h b/include/linux/cpu.h
index fcb1386bb0d4..887702d29498 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -180,6 +180,7 @@ int cpu_report_state(int cpu);
 int cpu_check_up_prepare(int cpu);
 void cpu_set_state_online(int cpu);
 void play_idle(unsigned long duration_ms);
+void cpu_yield_to_irqs(void);
 
 #ifdef CONFIG_HOTPLUG_CPU
 bool cpu_wait_death(unsigned int cpu, int seconds);
diff --git a/kernel/cpu.c b/kernel/cpu.c
index e84c0873559e..9ca61a55ed0c 100644
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -2339,6 +2339,11 @@ void __init boot_cpu_hotplug_init(void)
 	this_cpu_write(cpuhp_state.state, CPUHP_ONLINE);
 }
 
+void __weak cpu_yield_to_irqs(void)
+{
+}
+EXPORT_SYMBOL(cpu_yield_to_irqs);
+
 enum cpu_mitigations cpu_mitigations __ro_after_init = CPU_MITIGATIONS_AUTO;
 
 static int __init mitigations_parse_cmdline(char *arg)
diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
index 17417eee0866..7e6121443ebc 100644
--- a/lib/raid6/algos.c
+++ b/lib/raid6/algos.c
@@ -18,6 +18,7 @@
 #else
 #include <linux/module.h>
 #include <linux/gfp.h>
+#include <linux/cpu.h>
 #if !RAID6_USE_EMPTY_ZERO_PAGE
 /* In .bss so it's zeroed */
 const char raid6_empty_zero_page[PAGE_SIZE] __attribute__((aligned(256)));
@@ -29,7 +30,7 @@ struct raid6_calls raid6_call;
 EXPORT_SYMBOL_GPL(raid6_call);
 
 const struct raid6_calls * const raid6_algos[] = {
-#if defined(__i386__) && !defined(__arch_um__)
+#ifdef CONFIG_X86_32
 #ifdef CONFIG_AS_AVX512
 	&raid6_avx512x2,
 	&raid6_avx512x1,
@@ -45,7 +46,7 @@ const struct raid6_calls * const raid6_algos[] = {
 	&raid6_mmxx2,
 	&raid6_mmxx1,
 #endif
-#if defined(__x86_64__) && !defined(__arch_um__)
+#ifdef CONFIG_X86_64
 #ifdef CONFIG_AS_AVX512
 	&raid6_avx512x4,
 	&raid6_avx512x2,
@@ -79,7 +80,7 @@ const struct raid6_calls * const raid6_algos[] = {
 	&raid6_neonx2,
 	&raid6_neonx1,
 #endif
-#if defined(__ia64__)
+#ifdef CONFIG_IA64
 	&raid6_intx32,
 	&raid6_intx16,
 #endif
@@ -173,6 +174,7 @@ static inline const struct raid6_calls *raid6_choose_gen(
 					    j1 + (1<<RAID6_TIME_JIFFIES_LG2))) {
 				(*algo)->gen_syndrome(disks, PAGE_SIZE, *dptrs);
 				perf++;
+				cpu_yield_to_irqs();
 			}
 			preempt_enable();
 
@@ -197,6 +199,7 @@ static inline const struct raid6_calls *raid6_choose_gen(
 				(*algo)->xor_syndrome(disks, start, stop,
 						      PAGE_SIZE, *dptrs);
 				perf++;
+				cpu_yield_to_irqs();
 			}
 			preempt_enable();
 
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
