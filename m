Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EEE6A52B
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 11:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nh4u1a2pmvRZfIg8JpAm/mm7fIbH/j3S6fe2kuZ0mAs=; b=TTJQ8H+rS7ma4a
	8jUKwfvl/OMI9JaKs3NrhUU6M1MEtdJmmCtWcyhrA6SCC933pZa4YwtRh4wkhnt5wQ2+td5e3sz6P
	3M5RaN0s/KpFbj4jPIjsflYv1g5iOYckQ+If39wkOx341TIZ6r4g/IWnep8/lZzsqPfW7dBm6rSLQ
	XHNVZPbnurTOAkW9fc5Dm2ju7QVTXRNmqlARTztX1Y6HRcIOeGguOjwr9s3J55THIGfL1ZHWl3ptB
	l9Bc2nTAc7faaAp4Q11wMIF/W37iY+PFyqHdntlarp1zrrkj2l5NoxNjYUX4gDbIo3+1omEJnIkhr
	XhDkOEEsYguYfIlKuygg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJzf-0005xf-Vk; Tue, 16 Jul 2019 09:43:31 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJzb-0005uE-Uv
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 09:43:29 +0000
Received: by mail-qt1-x849.google.com with SMTP id q26so17547066qtr.3
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 02:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ZxnEgoL+cAyfHeVT/PTT350Q+1yvdmLsRRNYnQGVvxQ=;
 b=agf+GEiYnsYgxKD+eX5Zr5iEIqArx1Ez38XIbM2zUwF+jCw6OW0eiE0IgwfAqlYXox
 CAlVrX0S8SSRU55Z1c2rRDq12LD77C9G+XVjbkBrq+fkTqHfsXI0imV9hRWG2ZvAS90m
 2c2uu0Q5uOb5hjdGFavlWbaLRn7upGPzUKOzK02UL9T78K8BX3ChJODaDGUQANK3tPoP
 aanOhJtLspMRoBYoEfxxmcWUNqIwsdubLyUHNMtGnlY+Dn7tSIfvpJ5APdl+8eBRmxio
 MMVAlOANOtJkxj5KLwb8vlKV1dJwolhgVqeUMfvFcmaoCLbrxapgKv6CSKy5nEgrqNu4
 rBUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ZxnEgoL+cAyfHeVT/PTT350Q+1yvdmLsRRNYnQGVvxQ=;
 b=hrvFAaXWHkzN9AXEzcWOz9HnWAS5coye0kBWNaldwThjoxaa/w2tsjBxOOkZFMeO/L
 g/wd+zzBystqldUt2edYFcm0QwT+PGVYq5UYhfNOIN1AtinS+jOHMsxsb7ZF0iD1Q2sL
 b8CTeRciFNFj0GAqQVFNb8kgfGU7HzG9l6GA52pzQ+DwgjUXMnGYVSK1EmbeaDry4Zwh
 J3HvdKIY2XzuSQkaDFNNIzogIXuDperNukQny7DrroUn2M6eXnTjt/6Wd495RL+4qC8G
 6lD9Inq2BaO1GYVJy9+yt9RIoDvHPoPrM6ZqJ7ML/hqUR0qxbsQ9lZdJyXxW+lV4ErT4
 HMTA==
X-Gm-Message-State: APjAAAUu4pMOrja7GYs45TYPIGIlaRkOKzyNxl7Wbt5rdYCFL1bBtUr5
 gmXj3utDZ44XRU8fkQqVuE+KMRE3WGzvjyL7v2Vqbg==
X-Google-Smtp-Source: APXvYqzMr4UyHcoIfs203SmG1cldh3k+yn6h1nFlHx/9asdbVsmVxWorXsh8GDjT9ds0pMy9e7bEiUsj6ezLI7PPblj01Q==
X-Received: by 2002:a37:4b46:: with SMTP id y67mr20389260qka.66.1563270205950; 
 Tue, 16 Jul 2019 02:43:25 -0700 (PDT)
Date: Tue, 16 Jul 2019 02:42:50 -0700
In-Reply-To: <20190716094302.180360-1-brendanhiggins@google.com>
Message-Id: <20190716094302.180360-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190716094302.180360-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v10 06/18] kbuild: enable building KUnit
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_024328_013786_0F1DFBB2 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
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
index 48a80beab6853..10428501edb78 100644
--- a/Kconfig
+++ b/Kconfig
@@ -30,3 +30,5 @@ source "crypto/Kconfig"
 source "lib/Kconfig"
 
 source "lib/Kconfig.debug"
+
+source "kunit/Kconfig"
diff --git a/Makefile b/Makefile
index 3e4868a6498b2..0ce1a8a2b6fec 100644
--- a/Makefile
+++ b/Makefile
@@ -993,6 +993,8 @@ PHONY += prepare0
 ifeq ($(KBUILD_EXTMOD),)
 core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
 
+core-$(CONFIG_KUNIT) += kunit/
+
 vmlinux-dirs	:= $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
 		     $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
 		     $(net-y) $(net-m) $(libs-y) $(libs-m) $(virt-y)))
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
