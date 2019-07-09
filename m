Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF23630B1
	for <lists+linux-um@lfdr.de>; Tue,  9 Jul 2019 08:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJgRrSnSn23rLKL+kRTUwB6cDGtGj6otpqwpiGXM8AY=; b=vCWIN4jsCf4lny
	IHgEXZZhRvYUBLyh2ESvE0UJtxLa/YHCF/DnlQe2m3EgR00UCMDdoJpznMF9kd4JxPvZ7NqGz+1YN
	TYlreMRQqX0JesXcPl3oIXmBCABh1Ym18xsTybBVZ43nOlZ7W0Fn4hLrwFRl9wlYOxt+SYQzIIjNO
	3ze04elmqAOXGQ8rByAIO/LzlmMjsshkpM2nKOTaGdoCPvWUv6KgCz8GOJwIG126wi2uHbNucf8Jh
	6QbXvMlOH3Z4FnfA7ZZdE22ZUpYiKz7q26mw+RCpsXzXSK0nzbLUd0dEYhIt0dlmoiG0Ea/F2BE8f
	PIFWoljD2c/IR3OyPR/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkjhf-0000GX-Ij; Tue, 09 Jul 2019 06:34:15 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkjhc-0000Ea-Ex
 for linux-um@lists.infradead.org; Tue, 09 Jul 2019 06:34:13 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id m186so2395742vsm.2
 for <linux-um@lists.infradead.org>; Mon, 08 Jul 2019 23:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xqyprLFtmsoy8kXd9YLO/VFwieDqS65MPOOJ9C+cs/4=;
 b=BV0dE8SvbznNengE0ZbiFjAkJDhECZRlV6y0anjBwPZPZ1QJAxXC1g/NWLJmkwh2dQ
 ymUxDZfk5Xo5TuLgPcbXMU1zelBpG5lRvdeCkasNl4X/Vnt9x4r1W8pPWC4/g+lUwaKi
 8JU4Z1wA6vTfOZEjHhdR9Mlf+yIQ7pF/76uNwAV9V52L6+GkfjA6GEFVHibZRCvNE6a8
 Fu4VfyO8IzEKX7M6CI/FgWBxODziZFM48h2BxhCVoZ3/hlGN10lCqjL51sWnlSnDcy2T
 mBdvBHfYXaqHr68JZPdHCE3Q2egJ+2F4FMM5YKC+b5EV9OgFhj4bqtOQ/+4RJplYTmiD
 NT7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xqyprLFtmsoy8kXd9YLO/VFwieDqS65MPOOJ9C+cs/4=;
 b=IfKoOGKjT4xeDrLx6xDYmZMGfX4w7FFsf6EcHbrzrH2j4PcG4/uNqFsgBxFPVH5rij
 DBfK8d5EZcG8Zg9F6aVgJzAqkuQK87kRQibUawOvWYnHm5tISk7XYKH06BUeqKJUE0M6
 bzfEWto1n7UgAIAkA8CXAmy31L5LQPDbcfi92sSb/BSMiE8sh1L8YC3xKVmEl2v9rQRs
 NIt6DEG2xmM/4xZ08QSQMbIumJRFU+T3em0VNkTl7O14sYt06DRrPIZ4r/jbX/OiR8wf
 v8m1MH1uD/6v7QLfZaRK/1S3qF/8s0HJiOhXfSh3MGJcUUScNQ2VOWJ6uQcostzmGnIM
 VyZA==
X-Gm-Message-State: APjAAAUstN1yW3jkU+pdeuX4JSJSy9WjNS2ESoYDtvzPKpS7GYtrb75x
 irloPLWhsAPxezszaNR4HeHBrdAlJecB0p1Yp6Hy8w==
X-Google-Smtp-Source: APXvYqwNJiHBkRfCSkqsV5H5ZuEZsj6nanDgGNZ3VAmzTo0fg8lJCoDeNDmY/ozNQHmnZsAUL9Mc41SFcAh6mWnqjC3NSQ==
X-Received: by 2002:ab0:20d8:: with SMTP id z24mr4416164ual.1.1562654043545;
 Mon, 08 Jul 2019 23:34:03 -0700 (PDT)
Date: Mon,  8 Jul 2019 23:30:11 -0700
In-Reply-To: <20190709063023.251446-1-brendanhiggins@google.com>
Message-Id: <20190709063023.251446-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190709063023.251446-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v7 06/18] kbuild: enable building KUnit
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_233412_511317_4B7B3042 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Michal Marek <michal.lkml@markovi.net>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 Kconfig  | 2 ++
 Makefile | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/Kconfig b/Kconfig
index 48a80beab6853..10428501edb78 100644
--- a/Kconfig
+++ b/Kconfig
@@ -30,3 +30,5 @@ source "crypto/Kconfig"
 source "lib/Kconfig"
 
 source "lib/Kconfig.debug"
+
+source "kunit/Kconfig"
diff --git a/Makefile b/Makefile
index 3e4868a6498b2..60cf4f0813e0d 100644
--- a/Makefile
+++ b/Makefile
@@ -991,7 +991,7 @@ endif
 PHONY += prepare0
 
 ifeq ($(KBUILD_EXTMOD),)
-core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
+core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/ kunit/
 
 vmlinux-dirs	:= $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
 		     $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
