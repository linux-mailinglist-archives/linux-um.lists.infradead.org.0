Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3C196D5D
	for <lists+linux-um@lfdr.de>; Wed, 21 Aug 2019 01:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nW1J/YwATKqWyLAoVK0ezaEb8jAbLopZalIad6l7kaw=; b=uKA14qMAIPBCKZ
	WrPc21lHzbGaAPy4cvOwb3+SmydX34JimRKlFD/b9gQtfwok/jF1FN8YEZM6UfyzxTShVfecl4grC
	Z3oUKhOkszkox77FwQEGfbI13Lp5gCJ7KrXdCnSUqFt7O4aRYhjSCMFa7geYiDyAF4DakMq1mD446
	Xihtj5U17nEHk/QbSA78ZnPd1DnjH4xulVqGxbvx7Bp9WyuZrrvEPOhn7alKfxrDaRDcYrBZ0EO/N
	u9oKxhj9eDNfmeRUmEkx50kyrCNfjrcdXC2hKqFa4R3EaJ9Vrru2CNK7x0P8UJJ36n7MI2dMLP4Cb
	S/gTUjL0sGZk8r7opxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0DRk-0003Tc-ML; Tue, 20 Aug 2019 23:21:48 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0DRi-0003RO-Hh
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 23:21:47 +0000
Received: by mail-pg1-x54a.google.com with SMTP id i134so187160pgd.11
 for <linux-um@lists.infradead.org>; Tue, 20 Aug 2019 16:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=wKRiEgRg+/DU2DEnW3JXAo2ALm03Zt5EFSXAgxYeqSQ=;
 b=BFgC57EX5wNdOQeCPRvrkh94WwexKb08vmyjsrJYYbSvIPMVtFNt0v7lMY+yRZgSz5
 oipoLw5Xfl6v4PwsrckLZfwZgE+j41FjO9gfguvyeEoWUjr80Lp1xi4tWE7l3R9tPISY
 eDySOP8l0zqaHCiVre3eM0d83K8JTZAmnC7SAVBFQ1zcNvupC/ftjS4ePbli9gfQHh+S
 onygslKzC00E5mdUOcPr6G94dCN68feD11yxMzgKCuJmp4lHBeeZynaVoyNM8JGrzQ6m
 Jll+36t+qhbi/zn7MTmSl2mo18NrRtJTZxG0GKBzOcDk/wstf4agP9aE9EebO0R21bYD
 RepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=wKRiEgRg+/DU2DEnW3JXAo2ALm03Zt5EFSXAgxYeqSQ=;
 b=pcfDjQQoe6MEy4/F80+rNs82APyijUKybxZ9/yNbyx5NbLndEBWiZ6vrcQyVkuMLc1
 d/HGbucF2OkuGFCcp6w29jTs3neI3RDeLRvNdcNLjZlZiD+Fv0KroI0VMqscEBIBFlaF
 6viXOXdWwWQYHhh6JyE3x00Ug6bBe2Fcr22JmhSP8Yf6KIgPwd76FPo15EPLF8l4TEA6
 IlwPBGLAQ7L2G3PsYIeEGdPm2BmXQdU7Sxw+nK283br1UswOwvS3NciMv3EyK3IeX1w5
 p6lBeubcp+i1XbjzCY9ofNqvI1AQf1oxLgzudXEt9prz7flAXfFyDCvSS5TmV4nxbFmk
 4ymA==
X-Gm-Message-State: APjAAAXIy5fo9zi6dda5N4K/r72i2O9Rupe3chlnWe7Ke5Ka7mTIP+FM
 +9zK4CX8HwNPyzP1uofBH77/1HlW1+7TMNP1ujYFaQ==
X-Google-Smtp-Source: APXvYqxEgOhZD3PGSn1+kT2I99YeG1HucF3rfBzgNXbSwxMoFoKzl7eYRx6lZPZGhCgAiM9akAkguErs7fj6mhP+rzIR0Q==
X-Received: by 2002:a63:4042:: with SMTP id n63mr16008379pga.75.1566343304518; 
 Tue, 20 Aug 2019 16:21:44 -0700 (PDT)
Date: Tue, 20 Aug 2019 16:20:46 -0700
In-Reply-To: <20190820232046.50175-1-brendanhiggins@google.com>
Message-Id: <20190820232046.50175-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190820232046.50175-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v14 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_162146_591825_D9731244 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com,
 Iurii Zaikin <yzaikin@google.com>, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add entry for the new proc sysctl KUnit test to the PROC SYSCTL section,
and add Iurii as a maintainer.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Cc: Iurii Zaikin <yzaikin@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Luis Chamberlain <mcgrof@kernel.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f0bd77e8a8a2f..0cac78807137b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12965,12 +12965,14 @@ F:	Documentation/filesystems/proc.txt
 PROC SYSCTL
 M:	Luis Chamberlain <mcgrof@kernel.org>
 M:	Kees Cook <keescook@chromium.org>
+M:	Iurii Zaikin <yzaikin@google.com>
 L:	linux-kernel@vger.kernel.org
 L:	linux-fsdevel@vger.kernel.org
 S:	Maintained
 F:	fs/proc/proc_sysctl.c
 F:	include/linux/sysctl.h
 F:	kernel/sysctl.c
+F:	kernel/sysctl-test.c
 F:	tools/testing/selftests/sysctl/
 
 PS3 NETWORK SUPPORT
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
