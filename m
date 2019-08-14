Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812B88CB13
	for <lists+linux-um@lfdr.de>; Wed, 14 Aug 2019 07:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARXpYnN2Jjew4Pm1jqMSWuecIBSHtqmmfA+XORxNeO4=; b=oS+YLl4h/k2EXY
	x+/6cEk+DRD5P0sXks5OcLLo6mm/XVzKi73Hlcrn674ckv5uZxb0vpIt/UoZh6XL08l+2ZSiqmXpD
	rU56AFmN1EK8u7gmhJCgq+M3Anl2jdMtFLtMMHgWGFbo10x36KbGgx/YYiK/Ishcd1xBtNt+C/eR/
	XLiKUsf2M5dAauVkbfyOR5UaQlTwT1JI3RbYN51ZYh+auy6koqTAKL6CyNZ3FO6/uJuzAcswe9Mo2
	1/0IAWIgjmUfBw9TQBRVBX8XiagXocAF04lGWVGBCJ2+W+ru1HISmSW2svVsIeuBM+5+vDzZzu9fb
	65a79EhBdHEZPC6iO9Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmDS-0003Hv-MS; Wed, 14 Aug 2019 05:52:58 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmDP-0003GT-GN
 for linux-um@lists.infradead.org; Wed, 14 Aug 2019 05:52:56 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id l24so3108501vsq.1
 for <linux-um@lists.infradead.org>; Tue, 13 Aug 2019 22:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=T94Ldr45BAcQvYAvJ8Y+rDntZ4kBO4X+NPr7Ifz4Qao=;
 b=mrsDShuTPkFleL/bpmmXLkqRWbGmCMe8eWyPKi8hXeRHkfVigWiAfCHpwD0hVSNcQQ
 S8nAwpSJBRDPldfYj4A7LBO4UErIGmgWKtbD3fPOSJ8H7nCd/iPxnlPTIuqisNCKz6dC
 xsqwzZjYKmcmc7B92vl/XvFCGelMiL6GF0SuWlPPsM5ByxumhuWkotPV9MRNYd9m6gmA
 41b1pgks2iQXJT5XNQ0LJ/qDuqTcu/TBD1bxU5cZhhvfdMVwqslpNg4GK4pDZxQJclKo
 YFYUxYFw4pCByCAxMdSAVqLOIIhMW50yvVPgkfJcvVzsEdWGh/78tRjbxOIRrK9JqJzG
 JBRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=T94Ldr45BAcQvYAvJ8Y+rDntZ4kBO4X+NPr7Ifz4Qao=;
 b=a3zoYV/eLQwYmGDwjqxGjjqdFotEFGN0m30zYJ196u0Fs6NSYIGaFzRBChqf4PTVCM
 bSfhGUBgjCEq7QwaV2bqYrsnU59Z6TyMasim1D56aHdBkOdMLFLVzz+tLxazu/6t2W92
 pKBYMQxwf7QmNdskxmxJNmrCmqeDg9olYQx2rj21PceO9CaK1XtCdbRV4ETm/KT98zlB
 +zIAsEexRNYXnhNR9/YuZ8VYBBflsY3gowaQlx+urvW603wkrKK8LewPwhXjv89VomTz
 z8Ups6aBxyiOTUki0P+XnMA2YOJYmxefqVNL8zL6Cv50Vq16bj5MFQExhA271JjeTZxZ
 8edw==
X-Gm-Message-State: APjAAAVedQZ0IpzA21acCna01lywlG30UqxYalYbhyhN5NjXeW/TfCyD
 sn3mfnIPbbFXLE4O+Me4FhDCCweLbta8kCrZZ0PNaA==
X-Google-Smtp-Source: APXvYqwhfu0AdithZ3Dc34TPp6G9Q7271SINMDP2+L5uhJIlb8Si5QLWNAsthlY+87s1BKFjJAj5DJ6UsNfmB4wPi8P2YA==
X-Received: by 2002:ac5:c4cc:: with SMTP id a12mr18276120vkl.28.1565761974094; 
 Tue, 13 Aug 2019 22:52:54 -0700 (PDT)
Date: Tue, 13 Aug 2019 22:51:06 -0700
In-Reply-To: <20190814055108.214253-1-brendanhiggins@google.com>
Message-Id: <20190814055108.214253-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190814055108.214253-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v13 16/18] MAINTAINERS: add entry for KUnit the unit testing
 framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_225255_540158_29C990BB 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
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
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a2c343ee3b2ca..f0bd77e8a8a2f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8799,6 +8799,17 @@ S:	Maintained
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
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
