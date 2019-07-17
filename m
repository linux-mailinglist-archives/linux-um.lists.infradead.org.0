Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC1B6B3E7
	for <lists+linux-um@lfdr.de>; Wed, 17 Jul 2019 03:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBN7L1Wgo/MlbP9b+nHMTpDyHjOIxXlKl0IxWBmkQmU=; b=B3zFzvUCB+8KGO
	crRnyU1xn1mMMJiQkcVvcpfvcAevQO8umBlmwbQULF9WanT1tpPBsI7Yw4A05WB5wROy2V3uCXRj6
	aDZC0ULRziUrJcUB2wssOaOjXbBK34QB/D7E1KOwhIo920+7LZ2gmRXghbcgjzJML8eXMyM3xlfwM
	Xo/H/6XoHUw/z2GuWgtpDEo3XVtWanW0Loc01kV4l7TjjwWJy8/CwDpG0kTHbQrYEE1QbYdz2cXXq
	vC/0cGPqP5xTT8DA9AcOj+482gN1NefS3PhM6YF4zfkq596069Z2vvplIblntlAQiuw96GR8yu5AD
	/YzEPFT3VkurpPJSRieA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnZBT-0006k6-C5; Wed, 17 Jul 2019 01:56:43 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnZBP-0006h1-Su
 for linux-um@lists.infradead.org; Wed, 17 Jul 2019 01:56:41 +0000
Received: by mail-qk1-x749.google.com with SMTP id z13so18715559qka.15
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 18:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=jufAXaUURqTtvupks8boLXlDljriz0DHAMYuxhv6lic=;
 b=SGk0SE+L0ONJ56JV62STa9/73PYbsMRLW7f3+sjS9iJ06qvWnhKAtPAg9l1uLlJK2P
 j23MvuN/hdx6eNk0Sw24qNfxCfn572jDv0EOSpRkZDWR4kEOHhl0BL3CXfcXHolgVP8Y
 I0QBEb0fa7yqs7iHaQAuKiMhKWpMSPX7ku0rjDABrRO+wUSLFRjLLBuadRCtcHjn/fVS
 d9POs/tsM8//KlPtDm+hJmS0QJviJ86TTfbAqAmhuexuVugvnGbdgFAgkMG18GzeyJBi
 nhytU3u4UnQO1Bs6YNcSJksIEIqe1P7GjbzOxMsGI9bmzOUJlJ+8zoepM3HtUlGyoVoG
 e9Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=jufAXaUURqTtvupks8boLXlDljriz0DHAMYuxhv6lic=;
 b=iMDHeMolnsi+RmTCz9S+KM9VBjuASiWb9LjF0ajmA/D0FRtYwUbztrSRKrHDDrQ1M0
 2gs6fJtNHf738w5qV7pcMyL1rpp0dE+hVftf21rtz+3FcxwdMEYJKgxpZG0hLDvqzuLK
 yX8xCk0at5gI9TG7/utv+gxVdMEY3kUa+U0MrqR0++EQDQ+O2kwniAlZitnSkHWs0o/d
 NVSuJlDRV2qGldkhX56M294FeOsbJyqRtAwzk7hUWGV3+Jw37+AHcmKOHx8fDYXIoxVM
 CsAvB/jVk2fJUCVqCUfH04/fzemcyif26a0NwumgBSvF6dWphubh3k55GWvsAiHug4V1
 QQBQ==
X-Gm-Message-State: APjAAAVX0U3QCKBdgZ3z/cKRqtivHilOTj3hlF8joYW/LxYfCiBZhdsN
 dhGhG8IAaBl9+8l34w7j1xiikhancAmvZQoKZVf3/w==
X-Google-Smtp-Source: APXvYqzMYSoKc7xy2zJctW+VOk0X97W340OJGhZY9UWnWNDnmNnsODShc63XRgstRbuwVOYMn4U5hlDDzHSxHNwbM/EuvA==
X-Received: by 2002:a0c:983b:: with SMTP id c56mr27362503qvd.131.1563328597854; 
 Tue, 16 Jul 2019 18:56:37 -0700 (PDT)
Date: Tue, 16 Jul 2019 18:55:41 -0700
In-Reply-To: <20190717015543.152251-1-brendanhiggins@google.com>
Message-Id: <20190717015543.152251-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190717015543.152251-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v11 16/18] MAINTAINERS: add entry for KUnit the unit testing
 framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_185639_950118_3FF4A474 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 677ef41cb012c..48d04d180a988 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8599,6 +8599,17 @@ S:	Maintained
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
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
