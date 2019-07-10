Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7231464234
	for <lists+linux-um@lfdr.de>; Wed, 10 Jul 2019 09:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbHt/aN33aGGKUC9eAX/C/WAu2nUPosM/7VIjefuhyw=; b=UfCu/v/N9K9g0s
	USAMq6JM3i65QHjV+Fw4FLMLHszByujR39qTkLUbs+8yyURUdxkGQ3MRbnL4UXEhZsC3xVQ6vxvMP
	77UoZpqgA37TnkUodE/tEgcDxw3COPpoZxpJdmGWZK0YMoruVWR3M1wIQfdFKlSgIFeCc0jw3NMNd
	KI00eKv6p8PIhCdZBRWQzi2NCQ51E9ET6McCZmHwSQ4xu6IkINfw6/HskkfrrcQ7vh796JeY6/Vsi
	jnXC5p7GvZTeeZGzXHIAopAxp2vDylH7LC1fIsrx/a18GWBd+UXQFNxsWrmTV2SVyp5XAWuXrfsMm
	9v7vOlbxAloJShqzsttA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl6qd-0001Zx-3R; Wed, 10 Jul 2019 07:17:03 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl6qZ-0001YF-UN
 for linux-um@lists.infradead.org; Wed, 10 Jul 2019 07:17:01 +0000
Received: by mail-pf1-x44a.google.com with SMTP id g21so833119pfb.13
 for <linux-um@lists.infradead.org>; Wed, 10 Jul 2019 00:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/VeT4LMsGiTV0pNK4XYxpXDHYp6raL7HPeQMcvopP9E=;
 b=BlZBqRR1qRdimox75W2P/i8C72pSin2IGTFtfmWWoBCvv+dsuvBdZ3/5aEpQ89PXk2
 HuskMyBFp2JqOQVUUEK0hsAQ0kjZkM8S/FywQuU6p0ypQLPCs+6NoLDj1kq51PvEuYF5
 qrdgV1mMDoflgBNJCXAcSwSGNYJkMOXfQvDOfH0JYLVQXGZ1i6UKi+51vZvxngVYRCqi
 zUJQpdHTuvjJ6rn5moXv9JrV9XiIipdlgDqKiR4V1XRaP/xyAV9wQ3bDfUgimZ4sWrJO
 BOrrvDOkdcB9a2+X4Dl7x+F0dFrJO/wdly+nhX3UZItJ2/G7J+HtrefxGaobvJsGaO8S
 dzoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/VeT4LMsGiTV0pNK4XYxpXDHYp6raL7HPeQMcvopP9E=;
 b=q3NKYVMFBHYkTNrbLyCpzY4re2sL7h11VVQBh06gGkDzigYmxiUIJMgzUQ76Ep6VsV
 rH+uFb7K5sPNLq8E1cNIlVFe4GdkKMTNd7kv3txtx+CxP8lL4oAk+Z+yeel7M66nStwB
 qI4wQmaTD6iDGZO/R4yPP9cQD37s7fTfrBUnn/4RtaxfmjITSuTmEMLg3t+Zw+UKqfT/
 aeRv07Gwd61JpSz4hQNaxIkJYFyAuhOImnn/gNVzjE8KbN3JZLE69g1dHii9ubZbbOvc
 SGo/IQD1L7hjUQeXBqblHYaEnreZcPYGdrOKpVKxCcpZxZ+sAvt+GBUmlg0j0PXZsAyV
 hJug==
X-Gm-Message-State: APjAAAXRiH+lCQIVyt550cQH5eKpXF01OwHwXBJFNQqN7CP2mmj1ZtQn
 XdZ6UWlYREgp22hf3gJ7ii1K3W7rp5maWLbGDm0ITA==
X-Google-Smtp-Source: APXvYqy3gEnvLtzenDeoBpvruwM86/d4R4MSA4rfrSkFPoe3MSdS+t35zDjs7EFvAtglaLFEtGooue6BA3jgPd6GRUh5Fg==
X-Received: by 2002:a63:d0:: with SMTP id 199mr35409907pga.85.1562743018345;
 Wed, 10 Jul 2019 00:16:58 -0700 (PDT)
Date: Wed, 10 Jul 2019 00:15:06 -0700
In-Reply-To: <20190710071508.173491-1-brendanhiggins@google.com>
Message-Id: <20190710071508.173491-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190710071508.173491-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v8 16/18] MAINTAINERS: add entry for KUnit the unit testing
 framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_001659_981361_3E464C8B 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
