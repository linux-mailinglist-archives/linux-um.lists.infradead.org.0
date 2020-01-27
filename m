Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449FC14AA92
	for <lists+linux-um@lfdr.de>; Mon, 27 Jan 2020 20:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9o/dImkQjE5mUu/OMPE0CX9IHXGx4voao3KiDg5bxtg=; b=RrqRcka3nVcR9y
	P7PrQ4m5R6Phpi1DgbuPkjHi+jFuFQLLfeSzowuzXq93sYflflC2wA3zIFcOWx1hia0QsRRNW+aQ7
	S1P6J88O/iDbMqdKLVK3HO9h275Msd5XnybybFf19+JZWcjduh+4ARtYyqUOjBt43OuZNmk4HAXmP
	21Kchf60is5r52KBtey+2F8J46XDTbsjKY9FTSdaNNdmAKLVRddz91Dx7K4QiPZJO6z7516ZGudis
	b7tHEo7cYhAbM41bJXDJR5uKPGOcWrisLVg1hGY3dbe7fiMi+u96nVQGTn8/eVBQn2UVZBbSMx298
	NwBEtVLQp6zPRF4rEgOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwABM-0003uV-Ul; Mon, 27 Jan 2020 19:36:24 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwABJ-0003ti-Ez
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 19:36:23 +0000
Received: by mail-pj1-x1049.google.com with SMTP id h2so5472574pji.1
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 11:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=aJSm85atyJnx3aV4XPhE+g3+E/dOnaGn6esbhO+jJI0=;
 b=i9rSgBNIxezXPNrIZBLBWaZ68vA2x6JkVm3NwUao1U2o8TMtQzX5PgavtMtNsEhRJA
 n65HaX89soVklGfFrqwsBeACCt7X6G4eW0Xplt7Eh5NlIrL9IAcOWf5OwUcjjzoM1l69
 RbCgK+SLmK+feNuDXLwqkdm7aYoTirSUubKAojSlY3U9rOZ0moGCxuHpoam3sfjEt7LW
 6zkqi4E/pJ0MLuvUJrYAPZA4KlRlfkcmCW3v+L2vosOLEhQaXnsr0mEM2ktpkPdw1J1r
 75LHvA3aoP8DFei9T7jimGok+SFDX5BhppLZJyta/+nvtYGKMtKqjNAbMK97KJ23LeAd
 xjBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=aJSm85atyJnx3aV4XPhE+g3+E/dOnaGn6esbhO+jJI0=;
 b=Y4JUI+/INJFf5Yi9SI0vicue4zZgkHt5aCX898ytQ3y068tDoCwehDgf6pC1nyZh0O
 Wx9He/9dmeOJuFt1Ts9Q6YN0XUV547ZdGvLxcmwntwr43JV0WnKmJIJW8dWHFNqfxGDK
 EwMWstCEDGfLSnReOEoWO/uhWPc9tIn0i5Rxm1CU7GHKKTTEIsFqvB3jUV6SRmg8tzXS
 2fOgkjXzdoHTfZ2yHUG9c0iW76CHWWQTXaSLk9+BDk3xm7MBRNzaZw1K6JlP5R5nzJr0
 scFkXri24YlWR9W5xhBlhl++uiIlJI2pt//C3K1GbUhW5eumc5s4E3P0+9RZtKCv4PfN
 wKXA==
X-Gm-Message-State: APjAAAUxcd/cIXHqIvfr2ZZOhwRyeWUyM6qLURlx2welqVN1/rzZ8NEh
 CCO89HbHk+C2uI3EvHPtIh2/BCKlcxki9751k+C61g==
X-Google-Smtp-Source: APXvYqx9pC2152Lu4FZNg/IOp3Cj3cc0+Gbq3g83KkqaaPhmlvpxER9ACv7DQBzKaGqCe/nHonqQCN7/GAI1hHq/dImN6A==
X-Received: by 2002:a63:6e0e:: with SMTP id j14mr20400073pgc.361.1580153780074; 
 Mon, 27 Jan 2020 11:36:20 -0800 (PST)
Date: Mon, 27 Jan 2020 11:35:48 -0800
In-Reply-To: <20200127193549.187419-1-brendanhiggins@google.com>
Message-Id: <20200127193549.187419-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200127193549.187419-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [RFC v1 1/2] kbuild: add arch specific dependency for BTF support
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 akpm@linux-foundation.org, changbin.du@intel.com, 
 yamada.masahiro@socionext.com, rdunlap@infradead.org, keescook@chromium.org, 
 andriy.shevchenko@linux.intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_113621_503139_AA8B841F 
X-CRM114-Status: UNSURE (   7.69  )
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
Cc: Brendan Higgins <brendanhiggins@google.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, davidgow@google.com, heidifahim@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Some archs (like UM) do not build with CONFIG_DEBUG_INFO_BTF=y, so add
an options for archs to select to opt-in or out of BTF typeinfo support.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 lib/Kconfig.debug | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index e4676b992eae9..f5bcb391f1b7d 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -238,9 +238,12 @@ config DEBUG_INFO_DWARF4
 	  But it significantly improves the success of resolving
 	  variables in gdb on optimized code.
 
+config ARCH_NO_BTF_TYPEINFO
+	bool
+
 config DEBUG_INFO_BTF
 	bool "Generate BTF typeinfo"
-	depends on DEBUG_INFO
+	depends on DEBUG_INFO && !ARCH_NO_BTF_TYPEINFO
 	help
 	  Generate deduplicated BTF type information from DWARF debug info.
 	  Turning this on expects presence of pahole tool, which will convert
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
