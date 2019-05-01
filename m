Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264A210FB4
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 01:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/QqpyeTDAO/8KKZsePEw3LZk0+zQPwZ3CTyxaaRgww=; b=W4IMGUmu254yed
	pwe+aWLJ5gz4Lwm/rXcn5phkoYDp9cuiJyDPtXxzaMxn67+Zjnd5GZln9ONoscbkGOXdHSFHWNo/u
	lKSlOBi1CpgNPsCFaIMzPMsOMnOXwsuonJlGy8Jgt/O/pm8c/71/vCJJdYAkZopUZH0oTXFIyB9RV
	7Ik9drvboRJ+ikp8QwE/kVz3gonGdWIVq8hh22FVmRK8J70PzGf63YjItNT9hRIthhQH5PEfsgiJ3
	kAkVGudJ1m78BCcaK9Odaf4BebOUHsWvd6UvT4sXT5AMRQBcDc1Nq+2FuejXI0F1OSQ4NIFx6SifN
	FAVgtTKT7CXdlzcVCHhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLyGZ-0007N1-P2; Wed, 01 May 2019 23:03:55 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLyGW-0007MK-PN
 for linux-um@lists.infradead.org; Wed, 01 May 2019 23:03:54 +0000
Received: by mail-yw1-xc49.google.com with SMTP id j14so1166837ywb.2
 for <linux-um@lists.infradead.org>; Wed, 01 May 2019 16:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=D2ed1P31yZM+QgJhlTzUd+8uEk27FFwdOzf2d998Bjo=;
 b=m4vpSF6hFQAvyyKEfmi7ffOWm5Cf8YCWIkxIT3+iDVpIWfsS1ULEGwFu6Ost8hat7u
 rnhVAV5Vv9xJT6lOo63I/DHxpQiJpkpLAZN5u2XWO0V9OZ52Ydehqa5w7vEuBON6+gXZ
 3STK4kvqQOndMzEtqqLGS2SsTTQyPWssIWHMj8ElJqdMrQ0MviI+sSHecTz/rzS/tJ10
 CF6G0RJyeUDcEjoGw8kICUMbi8yNT0pIJerdnIVD9Od+WW+ixwtgrJBY3UFTTqTO2Fw3
 Zh8c7NNZ6oqBIahVmM/STUzcD/MOIBXoqKt5JLGq4l8hekE/mIoIfmXWjCZu/3iEiU9+
 WUKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=D2ed1P31yZM+QgJhlTzUd+8uEk27FFwdOzf2d998Bjo=;
 b=n5TyH9OsKKSzqvvA9Rsn1hLD9ZOkGbcxBQxSXg0rYYkaPIBTwt53nRFysnp9d4scdc
 6S1iN2YvY6sXhjHMaYohf9SsTPY5B9S/A/aQf40c+jijAhwC9eVTFlpf7E7XTKsQV2wf
 rMy7nfjIxYUYnsWoRrjPkw0Mi0QuBZV337vXT1/+kKxjU2RoLC2AuA8BghOL/lTIcT9I
 PpAhs1ry1wyA7LWH7k6t2UMk0kD62YngplNAo52J/qr26asJGR6N5nEY/0GXPK7w73Mn
 HM7tS3WRoPCjHhLIfOXi8Egtca3XjAfmxBimmj8+LdI+qGrGCf8dEZqEy6bfvIbS5H15
 +3zg==
X-Gm-Message-State: APjAAAVEYdMMVPsXYx3rQKM0JfeKsHiZGlrVf/EiRg8kOw+QCETavw+j
 AdsESinPv+wREoFR/JoNvZcU2U6vaCC4kvBAGjKHIg==
X-Google-Smtp-Source: APXvYqyFMKmsofIlGtyIYxY2auw/Yjye1Kqb5EY69r+kXArsnv/jL7sTkqGRu0OAeuaZKfIN87CHtxO88oGy68C0yADwLw==
X-Received: by 2002:a25:6649:: with SMTP id z9mr362486ybm.25.1556751830941;
 Wed, 01 May 2019 16:03:50 -0700 (PDT)
Date: Wed,  1 May 2019 16:01:15 -0700
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Message-Id: <20190501230126.229218-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 06/17] kbuild: enable building KUnit
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org, 
 Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_160352_823105_E858D708 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add KUnit to root Kconfig and Makefile allowing it to actually be built.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
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
index 2b99679148dc7..77368f498d84c 100644
--- a/Makefile
+++ b/Makefile
@@ -969,7 +969,7 @@ endif
 PHONY += prepare0
 
 ifeq ($(KBUILD_EXTMOD),)
-core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
+core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/ kunit/
 
 vmlinux-dirs	:= $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
 		     $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
