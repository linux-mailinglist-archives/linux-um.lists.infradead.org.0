Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC1E8A5CE
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 20:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGHXm16A2NSMqGATxL35L1rQCBtyDdyNePj15XzKQyE=; b=i+zOSWLIR+tOJQ
	6NjXs7PEkm+8moi5RhOqZOMGdo7Mnkqd/Fq+FBENuOkavOi16K3rjlsSSksKxtk/xHYNMc/R9zO6Y
	DSEFRbrudM+mFOKzQCY4gGrA9Gv6DQvIl2YoJfCDEYppGI1gDSn2QMjn1gsZAc23OS3c1nxg6S/F2
	QGIqocz1fc3E8E7wcoHDH3/3FU9uf1s86WVse8s8/lB3pZn9C7rKBA96ecxPE0c5m1XVZNWYy0YTB
	DZTr8wPCPTquFd/tQW8Fu+jqQgDUViFZGXdRh7AyVN2T8Q8z7zZkT0AbJOlxGScAvSoZ+F63X9I/w
	Cq8EkYs/jdJerhVP3jHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxF0B-0003jK-3A; Mon, 12 Aug 2019 18:25:03 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxF05-0003b1-FT
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 18:25:00 +0000
Received: by mail-pl1-x649.google.com with SMTP id y9so61589346plp.12
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 11:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=XDtrvkw0RFhKlN+LitTFqDIh4jTE9hk9LUw2Z5/BXjo=;
 b=Ac+IVyvk7parVxP2zH0uEVQKxR0ydkkSBoXdSfu6yTKAkHTUbHxzBAVJSs/41U/W+1
 q/YatPQqWA+RWEYP82fguAlLV+fLGTo46TX/ZZJftwBdAcJ6HgP8V4O05CrdFClEIc0+
 rOnN4FLNTcMxTMlJC9Vyb2s//YDejC9bkwHAwoQuDnN/ipNdDwP464Ix9QVO/9i9s7Zh
 3mCvvV+ZIxY7d/r2HpEWZRBnPGmFfx/oXxzr3p9KP80V4xAzziJYzk7/qh8u4S4qz4J/
 yFL4wqLruRhlh4n1ddmkBTvfGDu7jfPITZaKXRpIf+n1o8kmNZAL1VtOwqX/GZ+qXvSE
 Q4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=XDtrvkw0RFhKlN+LitTFqDIh4jTE9hk9LUw2Z5/BXjo=;
 b=MiMY9HvoM4MEcRPAxmbtT8B9TkttOo3XPUtpOiwPbQRXzY7v3MW4ch3qdqKKX5WZiA
 eukY+x8LakvL6N/z4jkYeSq4pmJgjD3qR8amOnZSYm6LZNB1pJzmDMoPsj63mBOhatUg
 IOHgX3IFHKxxOHePdBiqQ+mOjPltOg09P5Cf3TH3+dOtDuBn0kJEV/4xOkmV6dL3729w
 uHlC8US3FAXauILBFO5Eocvm6bsOe2k/kaMb5W5JS/rR9XERWBRJ0Y+fEEborWwmFwWB
 O7vp9TUPRM9bNEvsO4c/+HUo1kesLBImU6tiMn6V4fCrUzXW124M9dZnHNm0kdDl3tnK
 B7Pw==
X-Gm-Message-State: APjAAAWsWnnzhWtNUB8l1iYugthjJ+5FzlgPYz5Vhqi5OWf+fJTaskUO
 B1F43XV8KYA4HuumQTjDv4f635r/DBXWlyIipaEjRA==
X-Google-Smtp-Source: APXvYqxojx8ZAclLIuaCdYnMNf57BJdquOeV+3jxKMDZqemroKozL9g2ej9A9l9TB9EWj+QedGRVRvM2JXu6kLXD8V2awA==
X-Received: by 2002:a63:fe52:: with SMTP id x18mr32603743pgj.344.1565634295264; 
 Mon, 12 Aug 2019 11:24:55 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:24:09 -0700
In-Reply-To: <20190812182421.141150-1-brendanhiggins@google.com>
Message-Id: <20190812182421.141150-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v12 06/18] kbuild: enable building KUnit
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_112457_539972_320CE65F 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
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
