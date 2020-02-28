Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19892172E1C
	for <lists+linux-um@lfdr.de>; Fri, 28 Feb 2020 02:21:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PICcrZcB03/3CZUKvTq9DVgdk8q8TDSzWmjv2Qyj75Y=; b=F4SMZ8Pq7iU2JE
	iKHvYLDemq5OEVFxJISZIjnzoWua5QDAkLbCnt+w+OqR0zzJElrDqe/KXqArxRsc9mmYja2vKbj3h
	fim3JVpjBmOunlPAU+2xolcyB5gzOHGLHQNcFvGjMXpJD4kvzatPgfFqXL0GA4XYeeiPyYUY1lNo/
	c9a9qzpbUDCBkJ/QSukBOGs4JDbfCaRiXutE7E+mmBJPlUa6FMm1UIEAbatui4AdT00ok8VBL5HGd
	JJr0EEWDBizeth3kTmmX2WXUUD1kExZy2knwjW4skl2HOVqjMXacvt7mLeTA5fpKW/+gHfTLe5dJ7
	eOkjcUWPfPuXzRGwpGiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7UKt-0006aE-NB; Fri, 28 Feb 2020 01:21:03 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7UKp-0006Y8-Dx
 for linux-um@lists.infradead.org; Fri, 28 Feb 2020 01:21:00 +0000
Received: by mail-pf1-x449.google.com with SMTP id a206so844475pfa.8
 for <linux-um@lists.infradead.org>; Thu, 27 Feb 2020 17:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=gfPIObcjKoc/X97Hku0RqtasQR2kVC34gv6DKj0xOtc=;
 b=VXCVjRFV1YqUz/8wn7l00lvSHg2xQqUpVRtpFdlra5OC8OF0q0/3b0I8oE3nzS0B4c
 tupmvt08U9uuorUzoZ1eYDtNg1U63jqDJ0ibGa1taWf7raFaAzoV4BPv3Tg2m4KnmZov
 V6tpQRa0TMh7UERsCUCTWUWO8SYLoaBeDSCw/OQ+60WXxiMfaBmIcZRNfSDrrnjURMK6
 m5775Jw2akrEorxQ6H656cKfbZOHEhm9xqa5dDLNBIKMPYG/okbS3dxAbLcir1Asizeo
 EmLpGy2DdoKfflEyZLFp6qL14aA0ICqAugWB/JNN5PCwqLQlbpj/EvCmMHCfEdUzY9iN
 cWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=gfPIObcjKoc/X97Hku0RqtasQR2kVC34gv6DKj0xOtc=;
 b=Kg90N4cAocA3GalVIiMgJejgAFrXHo2CJATYaG4njRnH8UbkGA27TsyE/dOxUOsGuo
 UnFFiibltuDFhnXxTLYSArkDJnj6RMXHJDhd/XnCLJ3fVHGBZ5pA0Ph/jtKccK+4gasa
 aIUc+8CYq9hJoj8Z4caAr06rif7S+gkgoqOMLc6ehh2IMaD0Sb4X/HrKRQBJcTBGOILL
 hm6isIShjqbT+WmDu6vFd/3YJUy6mwREdu2+52YkK5vvGkFuFi3LzkMQrGBLukf9PIC/
 1geeIkIx5eM5vR4Hy0UlsaoTJHToK4nYQTJbE8UWAkAyaIFa5CmDUhiZY0YLDYN/Xa1U
 hAlw==
X-Gm-Message-State: APjAAAVGdyDdT86Jdlg0YPRouUQKZxHoQCLDnMB3EHtHSNenWnGC60YO
 VoZBZC2IHrFfAGjDo+GcP4XHHgGM6GazWDyZiMcomQ==
X-Google-Smtp-Source: APXvYqypNGxK7wTo1FTf1mIFjhr0aXSAgo4WiptbW+IYOxodMeIGcqOB36P6zCIg73RrYOnWUywb6RzPCsqA6rNjpwfVnA==
X-Received: by 2002:a63:7f17:: with SMTP id a23mr2129453pgd.47.1582852857820; 
 Thu, 27 Feb 2020 17:20:57 -0800 (PST)
Date: Thu, 27 Feb 2020 17:20:30 -0800
In-Reply-To: <20200228012036.15682-1-brendanhiggins@google.com>
Message-Id: <20200228012036.15682-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200228012036.15682-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v3 1/7] vmlinux.lds.h: add linker section for KUnit test suites
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_172059_469399_420F132D 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
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
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
