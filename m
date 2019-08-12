Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFB48A60A
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 20:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nW1J/YwATKqWyLAoVK0ezaEb8jAbLopZalIad6l7kaw=; b=aPjryg+eSH0gY2
	D4IUAhS3kU5R1ISpvtuYKzrAi6W4sZFOvfpl7JUabL8z48qMO0r6V/j7ZA2soVzi71HeoEiPNa+PZ
	Ts6EqaWJc2FcvKVrZrrOGNfN6ZZqV2y2vbh+FFemdYDGzCuy4FUnvfoAU6KKqgjftM29z+BMmWrIw
	+HTIYUoXncFYepF4ItzcA89gMlNs+JVzCjTXMP/uaYCeYNpH6BXtpqkJ24KRGn61fMLVFsTTz+Ksw
	Ek+9d1II2Uln88D9tw1w/syKleSXhWLL5YImW4lUO0+fJznLpiZJ6z26L457PoQN9h909uL9jxz0Y
	/bqHXvjZQQ06KHD/x8AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxF0i-0005Bf-BT; Mon, 12 Aug 2019 18:25:36 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxF0d-00058N-BN
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 18:25:32 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id i199so894084yba.1
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 11:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=wKRiEgRg+/DU2DEnW3JXAo2ALm03Zt5EFSXAgxYeqSQ=;
 b=nZnW3WMQCz05l6ICEKDk76hmQbTheMtNmdq6JZ/QeZtYLtrZAiLqFFk1eMlHLSI2Od
 tokkC6/x0TWcLVC526+YvItwTB3ptDoHYp4j+cKEDqvfWUkOE8rrgMYMDQMcytdEnpVK
 Javjy9SQgBLtDD2dU2xplDFS+oxT0Ga2sX3Ril4r8MutRMQa14VuakHxFBNsWNrIAS4h
 DIRtjGVGWR9OjKG7snnTFLDSjqbzGtpfYXGEzsQCXJHzRILzFeuxO2G2H0dY4nW8xd59
 l8IM2CEN0WEFxIOai8A1vQcyPfIG9qh+YILDCG39P1E9EDx0psdbHXaGAxoXDAVQ1+6l
 UrzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=wKRiEgRg+/DU2DEnW3JXAo2ALm03Zt5EFSXAgxYeqSQ=;
 b=bOixnKPfvZ+49gQxvAlu25ewsfkb96eJXfvA2oIJ+qUwLEfycaq87Wu5rD/LKX5Jte
 vrQB73DjldYG2sWQQ8DLjW27CqKF1wbVDPRu5FfW+29crmU2/EvdrBZtKzXC3+aC9Zx1
 PHyWzbf0EOWEsaDxBXgDEsZVbu/yZTKeRDDqsk+fyLiZbyCyRvphgm0ypbJZDaYlHmW9
 56R+3ndcQQ5nakQUKg05l4McfYjlZEMzrTCJoRU2vaAlk7JccVMo3zyFXZUBfagTbhzR
 /l0Au4NMD1QC7ab17ds9SxR3hFLw51JKaeuMc5042ob6hn9HUsU9CWWvGy5YgyfszEiG
 E5CA==
X-Gm-Message-State: APjAAAWJ7HI5+PjOOgPbKNtBH/Z33Tvf48pfXE0H129+CEhYtyglfBHA
 VnxJbEmHlqylHkjYhFa21BvYU12TWjr5lrr9cPDDMA==
X-Google-Smtp-Source: APXvYqxpxYTLOV5V1kn9LOQBhsmrb/fq8obCcCZvetERJ23Gxs2qvszs3YbcjsnmIpYv/bSBR6DeRIUcOWhVdcSb2iYi7g==
X-Received: by 2002:a0d:ea06:: with SMTP id t6mr22043435ywe.186.1565634328967; 
 Mon, 12 Aug 2019 11:25:28 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:24:21 -0700
In-Reply-To: <20190812182421.141150-1-brendanhiggins@google.com>
Message-Id: <20190812182421.141150-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v12 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_112531_438841_CE3C2B0B 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
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
