Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A613B9B17
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 02:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8Q1d6hUVxDw2xWEQXyPg05dCPpbgN6O+FwCN9MFcyY=; b=CT0yGeNDkqsvu3
	Fpu3+I3sHfvRIEUpHSqoOl59cqtk5oC6GmHTBTeYxUwhqNJLe3nirC6iP34AFcidde+nOp4MyHKIS
	XCvU9E1tHwu8g4x79cdK0gXqizci9eZLQR0lyFHFais0UfPM7VTLZC8qh/JRjQ77H/mN9fUeHmOIv
	ABUfd2Zj7R0yeVRL4m6wlnCPG1ThSPs+HrnYqMVku+kNs9alSrHRaRtUHBAZwP/iMjKUgjv4QQ3HP
	k/gQQXetKRYQh3JaalC7otVvbM70Dv3VgWnQfWxC/w59EKQ0bzdgt7GI4809c4oHCu8bZ49r4ItO4
	OdW18qem2n+iiXLUES8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBT7V-0005N8-TI; Sat, 21 Sep 2019 00:19:25 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBT7T-0005Ls-83
 for linux-um@lists.infradead.org; Sat, 21 Sep 2019 00:19:24 +0000
Received: by mail-qk1-x74a.google.com with SMTP id n135so10127712qke.23
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 17:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=XOGsKwy33nriWO2piNArgCsTjyMNHJTJvDyvFgo5s6U=;
 b=Sgz7213+qbN86RpnjYxwE7eAvRTa0YN6r1fXC9nQwi+bQLfmJ0RS4WpN0N81z/odi6
 XGU7gCUSbBUdgle5NaqiHXybHGODmoKDWh/0HAkn64T1Co7SCCYmXUpCIrrnRh6Jb2Ll
 XjhlpTMqtnLolZQwP4aDBcCgL59XhMxAa5lJCd2J1Bs9Ujfs0mesiC80xjKZ798sbyV+
 vVOclVVTpXfND0vcjZ+oQRPMBJniMNy5trFLGfHLvvfXmpzxMSeWVg1bhaD800YWS3Zv
 cO7oaTS4ubnNeNZIACnRD79K40w8Hjvmr0YhQlHzIcQKEkRRSV52zVfDjQ/PSTjPN9NX
 xkxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=XOGsKwy33nriWO2piNArgCsTjyMNHJTJvDyvFgo5s6U=;
 b=nfL6iagPGnglfQf1qrqa3MnyN4CzikH6TG7hA0fGrKbytPdQ/E+PONc16DHjKbuP2N
 bM+fFmqmDjVNLkHbP/oa87L5eOEeSuevMR5siNnl04LQ+fF3dVADfRfr4S/wgSHBEYPU
 cSojw/jOTpHImu30jbYkfKHfKgBJ4Ll+NfNCji/WjK6gbvcIsiyrNzC+231unsD14dy5
 Lnhf1JTD1+xLTmpEbaWLsr7u/Vg05m7dJW1V6xzbbZvRY/qUpBbpy4fsXDVv10FbCHNC
 i3/v9k4mk3K7sfF8t7eWmFgvz34bDk1PHWChj8AHdWDFiQqjH33exDE5Jnm9VYdvh3Mg
 Kk9Q==
X-Gm-Message-State: APjAAAVYq0TCz5NKtWT7vgyeezLTnJgbQRvWL3BMa5sNCmdj/GwqWPG4
 Ni/kSpxBCnzuiW54IPTJdLqcEvFB9MrUOZ0eYDSuKQ==
X-Google-Smtp-Source: APXvYqyhYc2gzw2zw7hNHJ45JP5rJlx8noEcdat85g5q14wTmwmkyJ6JmxX9AzFR4w2ah2LgF306gHYAybhUcuUrVrOySQ==
X-Received: by 2002:a0c:9792:: with SMTP id l18mr12691255qvd.79.1569025161226; 
 Fri, 20 Sep 2019 17:19:21 -0700 (PDT)
Date: Fri, 20 Sep 2019 17:18:42 -0700
In-Reply-To: <20190921001855.200947-1-brendanhiggins@google.com>
Message-Id: <20190921001855.200947-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190921001855.200947-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v17 06/19] lib: enable building KUnit in lib/
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_171923_283378_DD6FCBE0 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, linux-kbuild@vger.kernel.org,
 Tim.Bird@sony.com, linux-um@lists.infradead.org, rostedt@goodmis.org,
 julia.lawall@lip6.fr, kunit-dev@googlegroups.com, richard@nod.at,
 torvalds@linux-foundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

KUnit is a new unit testing framework for the kernel and when used is
built into the kernel as a part of it. Add KUnit to the lib Kconfig and
Makefile to allow it to be actually built.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Cc: Randy Dunlap <rdunlap@infradead.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.debug | 2 ++
 lib/Makefile      | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 5960e2980a8a..1c69640e712f 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1681,6 +1681,8 @@ config PROVIDE_OHCI1394_DMA_INIT
 
 	  See Documentation/debugging-via-ohci1394.txt for more information.
 
+source "lib/kunit/Kconfig"
+
 menuconfig RUNTIME_TESTING_MENU
 	bool "Runtime Testing"
 	def_bool y
diff --git a/lib/Makefile b/lib/Makefile
index 29c02a924973..67e79d3724ed 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -96,6 +96,8 @@ obj-$(CONFIG_TEST_MEMINIT) += test_meminit.o
 
 obj-$(CONFIG_TEST_LIVEPATCH) += livepatch/
 
+obj-$(CONFIG_KUNIT) += kunit/
+
 ifeq ($(CONFIG_DEBUG_KOBJECT),y)
 CFLAGS_kobject.o += -DDEBUG
 CFLAGS_kobject_uevent.o += -DDEBUG
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
