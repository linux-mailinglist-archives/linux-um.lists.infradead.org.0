Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F20F8CADE
	for <lists+linux-um@lfdr.de>; Wed, 14 Aug 2019 07:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGHXm16A2NSMqGATxL35L1rQCBtyDdyNePj15XzKQyE=; b=KZe2owKZAPoKLe
	8rF8Nzjz6pQ/DyUB6cB4F9u7+C1lPzgmgp75xFbD7D+6WbCuTHKzql4X113uapjJCovTcCsSzHja8
	pdglt1fDBC1ZEa3BUJY70jA7/R1kxRk0HorgKL/MI1kMJK242MLkOc62PVL3xG1Hc2xX5vvQg8QRO
	q6hAkCfuEddAtCcoz1vezq7g1aELG02K1mfR0vQw8fs5uKWoYtaZMBUyEQz7nC2Hpf6HJT89VxN3e
	omYN0JxS/lxaPbw5Dvr4FqRcnC9MOmJejDJXja+Ixgc9CMYPw9bbKEp229Oo5SF5UqEb1ZVXngxYq
	N4dWZL6SwOJaScmVipAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmD1-00030K-Mw; Wed, 14 Aug 2019 05:52:31 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmCx-0002wX-Mc
 for linux-um@lists.infradead.org; Wed, 14 Aug 2019 05:52:30 +0000
Received: by mail-pg1-x549.google.com with SMTP id a9so7102150pga.16
 for <linux-um@lists.infradead.org>; Tue, 13 Aug 2019 22:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=XDtrvkw0RFhKlN+LitTFqDIh4jTE9hk9LUw2Z5/BXjo=;
 b=saMDrOVjRKeQK/IyXLrIKKTej8JXwPZqG6sJSJzspUY0/Vy/4vjD74Uq6KaBZ8giTu
 aSQrymPIDBA9u9jdF3UZfEByMnMYgwVHxSq5bNSS9FqFYgj/2734mVL036n654EEM4y2
 KsOJEv05fKjKF+rDrbrxLIH47c6QNWJ48o49aql1AaRW/k1kZGisLqEOJZlAaRRp6rVg
 D6c1qhf78cJqdqIPoca7OfM8r1ij/g/0ge15DecTBlsydvLvgIJ+a8pgr/skhfIWUuWo
 ybz5j7sxBznT2cBuwPB6kXDuf1QIJXyYIdbPekKokrc/eMjbmBJuvdnHu5Ythn3lh2gz
 czYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=XDtrvkw0RFhKlN+LitTFqDIh4jTE9hk9LUw2Z5/BXjo=;
 b=sKOF91AhU2GczySRHYpeYMZroF5bIur8F4WC6aorHDeVqv9adXubSxpoxf8e2feoSY
 VEt31yh6QKXxJB3kRuexwS+8JLzCyG3VeEWKdnZubMvD77qE92+8VA5ns7Xu73sCbVxB
 I7yxbQdXd9Zq3gz4uv2grnSF9pFqCb+zhx8p/tlu/Ab7z1CS3HeyrBPx0f+11hcEjnF3
 y9ifrShWc7UbQt7e7MhXDvfZnxEEu3ALcfrt7qPAlkqxvn1+Q5YFYz5Ka6oE50CjbBL/
 6Nd01LLGWS6CGbvZalPUzGb3dXRFP0L6TX++kZuZjJUFjHUFBrsjq+t0fKq/7cipZi2K
 BaCQ==
X-Gm-Message-State: APjAAAUj3GgNuFx/gyiC6qmCy/Ju69Nf6aBBX9n//sh8FXh+0mt7W4PK
 FUirGtxLYX/vOL5nk/4pFeD4vKw3We8Wmc8KQ27uTw==
X-Google-Smtp-Source: APXvYqxq+MfuyP3ARB3iygZvo6an8R1jW4rcA6hARFKN0G3haGYTLv0vmNCZJf3xUuojmYFx4j73XZnnj6yHGBpI3p9WKw==
X-Received: by 2002:a63:20d:: with SMTP id 13mr38240136pgc.253.1565761945419; 
 Tue, 13 Aug 2019 22:52:25 -0700 (PDT)
Date: Tue, 13 Aug 2019 22:50:56 -0700
In-Reply-To: <20190814055108.214253-1-brendanhiggins@google.com>
Message-Id: <20190814055108.214253-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190814055108.214253-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v13 06/18] kbuild: enable building KUnit
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_225227_744760_FD663B26 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 Michal Marek <michal.lkml@markovi.net>, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

KUnit is a new unit testing framework for the kernel and when used is
built into the kernel as a part of it. Add KUnit to the root Kconfig and
Makefile to allow it to be actually built.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Michal Marek <michal.lkml@markovi.net>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 Kconfig  | 2 ++
 Makefile | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Kconfig b/Kconfig
index e10b3ee084d4d..47886dbd6c2a6 100644
--- a/Kconfig
+++ b/Kconfig
@@ -32,3 +32,5 @@ source "lib/Kconfig"
 source "lib/Kconfig.debug"
 
 source "Documentation/Kconfig"
+
+source "kunit/Kconfig"
diff --git a/Makefile b/Makefile
index 23cdf1f413646..3795d0a5d0376 100644
--- a/Makefile
+++ b/Makefile
@@ -1005,6 +1005,8 @@ PHONY += prepare0
 ifeq ($(KBUILD_EXTMOD),)
 core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
 
+core-$(CONFIG_KUNIT) += kunit/
+
 vmlinux-dirs	:= $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
 		     $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
 		     $(net-y) $(net-m) $(libs-y) $(libs-m) $(virt-y)))
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
