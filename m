Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B793F47CB8
	for <lists+linux-um@lfdr.de>; Mon, 17 Jun 2019 10:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4sjMYeg8owXty5yHlo98DdXidGaqBaYzzWbKbbKxq8=; b=EFAcAlLQP1TkiI
	uV/pKkxbK8t9j4WNyd90KVLst3PwpfCbgGLvlEauXa+9FfwDKJwkOFW9LzH6bgpsgDE5FawW6BQCe
	gEcUjkHvhzwdLbsnHN2KkRAaEg0GtkAUziPZryb0GiT0qicAhflT4KmInuNu9UNfRFdFkd6iFAkst
	bVjc6vvng594bG9F5RW0fYCwuw59GwcrJA6Wd135LBsJAwEy7Q7igYki76sJGZFUTVw9Y5krhfJCm
	Y7LaMDP57q6alD+jl7GUJ1bjFtb8g8pLvPJO3ILbr+CD6KZmKhp7AEbEzbiUVeIZtKlrNTeIG1Y/F
	mYLoHF+ww7nb9Mr/IB/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmzl-0007bu-14; Mon, 17 Jun 2019 08:28:05 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmzi-0007ac-Ib
 for linux-um@lists.infradead.org; Mon, 17 Jun 2019 08:28:03 +0000
Received: by mail-qt1-x84a.google.com with SMTP id l11so8560859qtp.22
 for <linux-um@lists.infradead.org>; Mon, 17 Jun 2019 01:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=bPJF89cE4tB1wXKocb/qXW7wfYtIegjLntcYJJ0aEtU=;
 b=o3ogFQ5rdp7cs19G6mteH4rVDUn7teQlurDS0jWzA1kqGwAdqcTxbcDaERqO0pAcK0
 Eh/sClefw5IpL+NRbzQmr6gm3oBb2p8bAzIgg9VsGdKoZ8PJcp2xIjTn/DeBFhMeb7uR
 dNswLweSgYBoYpma1nvfuatrGqhK85GbkGMdIeoO4zRE00IECRglOhzr+/nawhYV39ee
 bQDQC5r2qfCqDqtCzLuaxcLPUb91JojIyYu9tnH2DTcRG9G6JLjrnwscNnQBm+FLS7Tv
 KGYroA3avaB1RnLa65qQXoiFVl6APqQtkplsbvke9XY0m46ewZR6DehJ3wQkF6J665bz
 WPSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=bPJF89cE4tB1wXKocb/qXW7wfYtIegjLntcYJJ0aEtU=;
 b=CxN0c1piwUqhtOutJUKFrmvNxdWiprQPN0Bb+ccdFEaGVvlZQoulQao8hsRJZy/NWz
 2l9duDSyYq9KLelY+zE0zl5MIQXQ8eJZWAgMUMr7UmdWaDgGcdH9D/fPOG7qBcl+WCy4
 E/RsvF3Qh3rrVCr/NOYvzhhb2+zBaBXjO9tlFLvg9HV6hkRcsMJDtXmldB1QpnJEbVUs
 hxsybEwujyUVkF7hF6m5Sox4DRE/J63ft7LRf6KEV0BVApqUvjjR06qnv2pPc+aWldGZ
 lOClNbrtcVZgvTFO2GC2JXf0pfQEysWlq500/kBaGPnEqugTdCFiG51zR6nOgPVMjcfH
 0iNA==
X-Gm-Message-State: APjAAAVOnFxmq5k5pS/mLqzGvGATp005uPSLpE2HXQRCWSmsSpAL4pe4
 jFWWsQKalwI2KUXBNzvlH1sUgKwDqKXpySaNpSucsg==
X-Google-Smtp-Source: APXvYqyTbtjCAcLDWOBf80YN420uGxHfWPtOCpnCXNoMdm2lw18nK8fM3CaU+vc/SrSDk5njDqLK9j/e5783XfBqOv3IRQ==
X-Received: by 2002:ac8:2ac5:: with SMTP id c5mr86955007qta.332.1560760081475; 
 Mon, 17 Jun 2019 01:28:01 -0700 (PDT)
Date: Mon, 17 Jun 2019 01:26:11 -0700
In-Reply-To: <20190617082613.109131-1-brendanhiggins@google.com>
Message-Id: <20190617082613.109131-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v5 16/18] MAINTAINERS: add entry for KUnit the unit testing
 framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012802_610822_F4C4D229 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add myself as maintainer of KUnit, the Linux kernel's unit testing
framework.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 57f496cff9997..f3fb3fc30853e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8590,6 +8590,17 @@ S:	Maintained
 F:	tools/testing/selftests/
 F:	Documentation/dev-tools/kselftest*
 
+KERNEL UNIT TESTING FRAMEWORK (KUnit)
+M:	Brendan Higgins <brendanhiggins@google.com>
+L:	linux-kselftest@vger.kernel.org
+L:	kunit-dev@googlegroups.com
+W:	https://google.github.io/kunit-docs/third_party/kernel/docs/
+S:	Maintained
+F:	Documentation/dev-tools/kunit/
+F:	include/kunit/
+F:	kunit/
+F:	tools/testing/kunit/
+
 KERNEL USERMODE HELPER
 M:	Luis Chamberlain <mcgrof@kernel.org>
 L:	linux-kernel@vger.kernel.org
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
