Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3E114B037
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 08:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tx/DBjOJtzaOkdWZ6Hd1jMjHujKa6X6jGd3aHFRWi8I=; b=n+j6ccA9NNirRI
	C/gn4+/RmoWmdIRYZXcyD53M4FJW3B3z8MllhYUmvC1PW9+Z/2oeB2ra7NCbi7pk72y9zB2RakujS
	hwhKwNiREy91yUNn9YpNvM3bj9aVe4JP5UlAygyG0bDJcz8LqH3Iviaae2gUofQRcLVuQvTiPp1cH
	y2HeUBw4BkKvpvO/QItJHHBypUZU8lRO7tiunLqtGpIcVrX2HmdecwLu4oUjyY9j8j/WT5g5rPdiI
	5xOnUbyzfmbSZAlOhFWQqS/CXDkNUHqjCJiXHg1zZWO5T/GoeFSi+CIsHFBfqB3Y3lSQFBEO5GxiN
	06uUwWSxTwHN404PJY6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwLAc-0004pf-Rf; Tue, 28 Jan 2020 07:20:22 +0000
Received: from mail-pj1-x104a.google.com ([2607:f8b0:4864:20::104a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwLAZ-0004nW-Fr
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 07:20:20 +0000
Received: by mail-pj1-x104a.google.com with SMTP id z12so887678pju.0
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 23:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=XuQcSLVF/Hrh3GBoBCfa3f7wfs7J5i1pjasDMgobHXc=;
 b=vpzib0J5nj2DND1Cvoora+gxNlK5gAdhGn/MxnEv1DGxNvefQ3cALz+hejiSzvm/kz
 0te1TfEliFbLVQvJUYznkMSGK01039LVFSB9r+iJV1l9dPo+gzbJMyOcH2mgZxmTyt70
 Ylh5PypNoWdZcB1/mA8ew7tua/n8BZNZPi6l0sGOL4enKiRWfvbx0sjlCYm0qzRkNaUE
 JBTFAlidEjkqlvUrc46EMpV+Tyh7821f+lJa1cP65ZKovA0yreplcoZFc3eLrLoJTiDD
 DFfpjDOVoWz5jV5x2/D50lrKtfaFp6mPZAh7QuJTHBiTtuz0ZbzBY2L9w8zfbQIdnPl7
 x44w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=XuQcSLVF/Hrh3GBoBCfa3f7wfs7J5i1pjasDMgobHXc=;
 b=rAEvuNYCNUoX1aV4qYY5lSvnWEccqxKLHdc/0XCz57sMlRj4bMouyFdCMDwW7xRpmL
 H0L//U4AAVJmqdgtCJPcLzLSFoNyItttbYY6w4D0f6fDuUrx7ElRrvwAUnPBUx45x794
 ajSVJAVxWB7SW+rOlRvWZm+ZudaOyXWTBKEMXtsZZ6Be1Lpzwe8O4L112FujlStkKEtR
 2tZhK+VwZWwIuPCDn3HR3ZaXmZ+g2rkILNhvWVygfjUPwdC20GVGwDqnzltYiWxCBcUx
 TO3Vg4b7/tnh0nqxb+1l9q+/IIYSfdxrZQ0oIfM4dB6BiBMiVCytACiCCOfNrJSPbQTc
 vmkA==
X-Gm-Message-State: APjAAAUGh+udXF6n+rkEia1ZLa+q0/fgqkkZ2NnsyVWA0lpgCYvWP2Gz
 78NvtfHuuAEXmkpQH5/LCHPljButyFGIkIBicSeQcw==
X-Google-Smtp-Source: APXvYqxhr/v1PhdZEF/n7DR85NKPlp1nK8BnB+q0UXQhUtXxUX2SIyir4VRVLjV7DDEFnqw9g+ZcXkVv2G/Rzr1RlAuQdQ==
X-Received: by 2002:a63:1119:: with SMTP id g25mr23427156pgl.359.1580196018089; 
 Mon, 27 Jan 2020 23:20:18 -0800 (PST)
Date: Mon, 27 Jan 2020 23:19:56 -0800
In-Reply-To: <20200128072002.79250-1-brendanhiggins@google.com>
Message-Id: <20200128072002.79250-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200128072002.79250-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 1/7] vmlinux.lds.h: add linker section for KUnit test suites
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_232019_549044_EA3013E4 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
