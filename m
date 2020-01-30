Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2503914E5E7
	for <lists+linux-um@lfdr.de>; Fri, 31 Jan 2020 00:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tx/DBjOJtzaOkdWZ6Hd1jMjHujKa6X6jGd3aHFRWi8I=; b=qg5Btg9kfI/sG7
	ty+Qm+biiiyWZR9O3uqEnmSTvVOmTUGgUPFXTKeXJqkB5rkCsaXIjC+K4fgs+btb141EJedCgGdD1
	pU4S2Hr+DfKJ37u+Ng5QDE5CtDfFcd8hoJwwVgG0fRQiSUAOV/3GB8csUBF7BVfsdlR4LnwPSgnci
	T6f9AFL98NXIaFQ+VgvReApJ2ELLFq2Yet4ZsfxiI8Q3ZAF6IiS1WtRSYL7DFXQ2SPvL4HKIyhDPa
	6DFu0xp/3EzJVBL+dm+Baf3fnlHv6brpNFeb3gd5H3bIqAFSf3LxPf3hpXRki6IrJeT/BDZBcnFnD
	TxIpw/eNsk4sPBmCu29g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIvM-0006Ap-PI; Thu, 30 Jan 2020 23:08:36 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIvJ-00068u-Ra
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 23:08:35 +0000
Received: by mail-pj1-x1049.google.com with SMTP id m61so3116317pjb.1
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 15:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=XuQcSLVF/Hrh3GBoBCfa3f7wfs7J5i1pjasDMgobHXc=;
 b=AfGGk98bnxyyqHcpetjQvX41oGap4DIh7+0oNSJEg2O3R1PQCiDZZtdDhFMDnBhxK0
 /1IpRPnzmNWZWCdDA+YmoH11+yZ8yuUmpOyt1a1C6USU6lfL8qgBToLhsSsLZNa22qcw
 DeN090IVkvjCCffCPn/5OAPM2nRoarPWAvvLk+KM9KuY5bXHOlv/eW4GgopiPEam5w1U
 OoY2SAfbLPxbM5Od+4uzT/fCGGx4M5wAozv3qmR20QB92nwmZRbSl5NMzEqnr0ikTRje
 jyRldGQ6k5yB9GzKUFfikjYirdZINEHE5zYwOZsqejJsbcphEn8KaagiB3vqxnjMBUIk
 K+Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=XuQcSLVF/Hrh3GBoBCfa3f7wfs7J5i1pjasDMgobHXc=;
 b=bTNWCKO/W9BiFGbZIBrytdTiVWHx2Tv+KI9ZZGUWP7w/E1wcKvkC9MtmiS76DAWqnX
 L2qQHSWYa3v90efWD2v9oXbhxt35gvlligRuiHAshIa31GoLJvaB7gGAfAigaGRXx0x4
 iLiZMUiKb6Yj66zYmkEiH2oNo9Ib53mIJA3WwnPJbpOM/ezbPlDudWAdLQk4AXPGShjp
 TIjhaorEC0fhr0A8Av3oKlYOXhEj/dUVdoKfKRgVys8axqn0N9FJtid+YFvaoynSrPP9
 9AB978KnV7BeeQ0N/D/DcBq0lEnDVS9wXz4FFcdZzQf8C3T9bN6BD+/WzNExRSe2fgN+
 shIw==
X-Gm-Message-State: APjAAAU7HIGRbghtsCSkvW92k66fFhyR7bl/FUH+Q/PX4X/SwjkPaYCA
 m5RU1+A6EUdbY16DAYwyWMGlyPpoy2aDtcZ+HWlbuA==
X-Google-Smtp-Source: APXvYqzSRoUUWeQ2bKif6Z40xm7qv0HYLPbmPInMedOryPT9s0Chn/fw7nXAk5QeONDTypQImuUErdEfZqufShGTpuizag==
X-Received: by 2002:a63:e649:: with SMTP id p9mr7159890pgj.15.1580425711922;
 Thu, 30 Jan 2020 15:08:31 -0800 (PST)
Date: Thu, 30 Jan 2020 15:08:06 -0800
In-Reply-To: <20200130230812.142642-1-brendanhiggins@google.com>
Message-Id: <20200130230812.142642-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 1/7] vmlinux.lds.h: add linker section for KUnit test suites
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_150833_891038_5D5DB21A 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add a linker section where KUnit can put references to its test suites.
This patch is the first step in transitioning to dispatching all KUnit
tests from a centralized executor rather than having each as its own
separate late_initcall.

Co-developed-by: Iurii Zaikin <yzaikin@google.com>
Signed-off-by: Iurii Zaikin <yzaikin@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 include/asm-generic/vmlinux.lds.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index e00f41aa8ec4f..99a866f49cb3d 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -856,6 +856,13 @@
 		KEEP(*(.con_initcall.init))				\
 		__con_initcall_end = .;
 
+/* Alignment must be consistent with (kunit_suite *) in include/kunit/test.h */
+#define KUNIT_TEST_SUITES						\
+		. = ALIGN(8);						\
+		__kunit_suites_start = .;				\
+		KEEP(*(.kunit_test_suites))				\
+		__kunit_suites_end = .;
+
 #ifdef CONFIG_BLK_DEV_INITRD
 #define INIT_RAM_FS							\
 	. = ALIGN(4);							\
@@ -1024,6 +1031,7 @@
 		INIT_CALLS						\
 		CON_INITCALL						\
 		INIT_RAM_FS						\
+		KUNIT_TEST_SUITES					\
 	}
 
 #define BSS_SECTION(sbss_align, bss_align, stop_align)			\
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
