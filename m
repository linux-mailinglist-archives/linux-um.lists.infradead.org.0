Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB34B9A3D
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 01:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QMejayJ8Vrq7t8S8RVftorqvszhOopt5M3csioSyu0=; b=W9iM/bFtHaFe4i
	mWvHi+TKejqHezlADTzXSJJrawEc/WFRBtdR9IK4ZMWzZUvheqky3/2WkeBpI/o0SR1ytsOB7i1K8
	nAWdOu6zamBxJ/ZffEStwqHRZolDzBW0ZIOHWcrgBozLNZAipr2vFTpFP04zOhE4ptxrmu8W1nNGo
	DbSq1oyjtODjeUnsB3EjQgo2thWzmyqF+5g4dryhH0t0ND4mvA0aE9jnU5z9Phy4KlcESfgUFenaZ
	mI+EEi8C54X2nyth1FSGdd4rPDuKym6JOmH3CR+t12O83N9Y2iFrDYfvlA9B550nlsR/pD9/MMTOU
	IzvoHfwIJaoYBxmn3SVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBSCR-0004lq-CW; Fri, 20 Sep 2019 23:20:27 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBSCO-0004kB-Jy
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 23:20:26 +0000
Received: by mail-qk1-x749.google.com with SMTP id s28so10057013qkm.5
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 16:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=MYcfIKSKU50yEk2GBsBM2m5RiXljhL+2ZE7FFRNNMnA=;
 b=Alfuq4xKcjyE/lvI9+hnlObqPY31tSqFtCXmQsJDgKBbZcMDdLd/Xe7IG+dh2opFqi
 NkyEiOKdCjZbdWPC1fBNLUcaNtEJgBGm/C9KYrpwSGMN9kJJghCA0tF/hzhbo3QAqnOy
 G1qrxWya38IKA9aT9DrUpNHS8ofpmZs1hUked/PR+nRiVaU1VfXljtUe111C/R7on8zn
 6GrH2up+ee3CPMMeu4c4xDYF5+vRDtfCDix7aXc4nXc5AUTjcX3VMvg69w2RWR9+CCLb
 ZYb5QuoRRzIn5CjL5tKk6cztEmTrCtopo7An4Qopbv5QmyKSNuCyNb6EPWl43WB8ctZa
 XW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=MYcfIKSKU50yEk2GBsBM2m5RiXljhL+2ZE7FFRNNMnA=;
 b=lAKDYqDUQqR94Pmv0P46WH/I9NXhPFLE70Pz1fbGZcODo/xkGQDROWu0mw0OcMO6ZE
 Vgn1Qy9bfVUwj7MLseIMd2JIXIPdA6vrrExA2juzlaNXUta/HTMxWQI0klRa9MeRcEzc
 PD9dGvYJOXV5gfebK5sIAu5BuG3JjT9R1AOksxLIJIB7NvysloOu9KOXErxiDuuk4Gkr
 G8sL45jt1b3vxfvZm4a8YRKJooeqvBwAGFGruK6C+Xfg7uvvUQT3JacAbO7lo2Uk3mLA
 f21xjH9JneMGsdI99TMGROBhAhJGmbPH3Zdy/Ep2gn9ASxaS/WmQEodtlMlNRrnnc+S4
 teLQ==
X-Gm-Message-State: APjAAAWHMElZ5YO4D3Bn6cZH+icOXLBXyL+6MRzau/ztJ3rkcYO7cXVr
 ++QNyhHS18TZd8eMDXp2UzKOV/mcbvxVPatUVHMKQw==
X-Google-Smtp-Source: APXvYqwe7HUQbxjHZ88C3/yd7hKPs7v0fuapQiwWc6yF6cIi7fKh2+NHXnkd9elywqPPfmZXvk//qq7AcofxgzfIeJsK2w==
X-Received: by 2002:ac8:7502:: with SMTP id u2mr5779140qtq.216.1569021623093; 
 Fri, 20 Sep 2019 16:20:23 -0700 (PDT)
Date: Fri, 20 Sep 2019 16:19:20 -0700
In-Reply-To: <20190920231923.141900-1-brendanhiggins@google.com>
Message-Id: <20190920231923.141900-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190920231923.141900-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v16 16/19] MAINTAINERS: add entry for KUnit the unit testing
 framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_162024_656375_097E9C2B 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
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
 richard@nod.at, torvalds@linux-foundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
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
index a50e97a63bc8..e3d0d184ae4e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8802,6 +8802,17 @@ S:	Maintained
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
+F:	lib/kunit/
+F:	tools/testing/kunit/
+
 KERNEL USERMODE HELPER
 M:	Luis Chamberlain <mcgrof@kernel.org>
 L:	linux-kernel@vger.kernel.org
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
