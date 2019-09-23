Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080DEBB089
	for <lists+linux-um@lfdr.de>; Mon, 23 Sep 2019 11:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QMejayJ8Vrq7t8S8RVftorqvszhOopt5M3csioSyu0=; b=d6e3od5Cl6zWL8
	/aw36kQVEUb5EC8WhzdtkZkYxLw46JnOZ5now6Rtwj272FrSfrpSLc4MBrL9E5/GHnH/gduzAlRvm
	o8cOFYRPQ/HHMGoTwfbAf/b22EW+MUvcl2BRdjlFWRsOA+ukns/XyoJl4uWwvd1td11WziZ0yaSLv
	tSWVbKQgj/q9KBVIIKEBHyE03JilEaUQp7k62f1usms1ChOAa7wlXvrjDs9+RfL31PxHL/XuYum50
	pver6eMKfT6IecnmhGBcTXIab8EvGDYc22yg2v6HMSxl7p+aTDfH//5v79ZExxbdcU+bpkSjgrcT/
	4nfP29d+WXpsvRzhC1gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKG0-0003Em-Qz; Mon, 23 Sep 2019 09:03:45 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKFw-0003C8-F2
 for linux-um@lists.infradead.org; Mon, 23 Sep 2019 09:03:42 +0000
Received: by mail-pf1-x449.google.com with SMTP id z4so9717941pfn.0
 for <linux-um@lists.infradead.org>; Mon, 23 Sep 2019 02:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=MYcfIKSKU50yEk2GBsBM2m5RiXljhL+2ZE7FFRNNMnA=;
 b=rgX9grwiH8698p8amnuLifl7FZpq0+HsIW+0F3DXrlfkC7hvnW46Ds1dX88Fg9hSwV
 1CpJGOYUJBrjisEw5rqXpm3twNK1EZkuUgTfzB4KelLLXmr2JYYAHDOzuLGGWfHk7Z8B
 JukbRj9cEH1VNXUV2BH75LBiPrL88f2OIldCwVVv9PXYQB8Mh1H2PYQsGyEqrGW6yt3l
 o1ZPJiLdbfP0Q1oObZ7+sD006GeglE2yLpEK1RuiUofJqAUpCu4mmj4kPJgozXX3SNra
 Y4OiNS/W8YHGVSNkDaF/i1OwHqdAhgUjePXoLxq4xZ9ltcdwITJG+eaLjBbhoU7NgIoX
 mhzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=MYcfIKSKU50yEk2GBsBM2m5RiXljhL+2ZE7FFRNNMnA=;
 b=rpxy54qPl0wooA0KSsgWUygkL6ysNTNrqrCOYpYoxlE3hb1Wb7ydHvYcnwN/hNORlB
 yugdqEQRv4CrFj9702h/+kT4z6dML49064sxw2UkFYjvqIG7SLo/UxMYCGyWqq76Kc5R
 H/cQ2CsE2CHP2QdIt2E2OjvC23HKt4ePUb2XfPviLbKSU4tpCLkGEbtlgMFZAdxGpgsw
 HdzkNgW2xmZhsDd8opOR9sjFS2vNX0e+6xqKdTHqg27qUw2Qo27ZH1UyQUGkp3D9RNm2
 qfB+A5xjnzcE2VNKM8sLdKWHcrqyxlwdCsK3aSwHVE74XaZkwFTE9SSbVz11PJUlFOd/
 1fAg==
X-Gm-Message-State: APjAAAVvLPtDXplslg3OjN0vj5nsDOgtIw6AghDclJ81Ptj3eFSLG96g
 GWxXLiKe8JknhAz2ZPL90OH7RWEkdTMF+qbiAa0cdg==
X-Google-Smtp-Source: APXvYqxqbxTM5zGysUsGLrdt947Z5uprDPBuh1gcM9vTCBbii7SkiL91ZoHhXT0gUyKmK6pYMUz1UttJuY4q8vNzQE5tfw==
X-Received: by 2002:a63:221f:: with SMTP id i31mr28978881pgi.251.1569229418788; 
 Mon, 23 Sep 2019 02:03:38 -0700 (PDT)
Date: Mon, 23 Sep 2019 02:02:46 -0700
In-Reply-To: <20190923090249.127984-1-brendanhiggins@google.com>
Message-Id: <20190923090249.127984-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190923090249.127984-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v18 16/19] MAINTAINERS: add entry for KUnit the unit testing
 framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020340_536037_B3B811B7 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
