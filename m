Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A708A9C7
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 23:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRhHvgThWXfShBiuYFv3tgIaowNM7fas9lESqPmo7DQ=; b=fNGJIyVD63ycK6
	vDQK5dIKUOJJ3Wd5+HjLLx7Ghn55fCdFnEL9B4jWcDgEPfa9wsSOSbI3bj/BjDwNHmTwQya95Xvr9
	5zz46s7UutfC0SsJNn/eJM6rRPVN6PXAnLBs3ucijqvwgfcmqPWZFlBbmATpDwOfVPPJJeJZIEJi4
	lUmulbGWCRjBHU/WEEpwOneOPxEdIgAI0yt1LvlgNa3Dth2GLaQnbDBgApMyH2XCMuFsmLLuTBaJB
	X0NNwA8ipZE5JqaMk7gNrdNgl6KF7u59FccGVsyl8jCA0dZ5hHNwFlbo6gvaTjmrE9UJRAqJMXiyQ
	vbfGmLkoPF7U5roP71PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIEN-0004IJ-9W; Mon, 12 Aug 2019 21:51:55 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIEE-00048Q-6L
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 21:51:47 +0000
Received: by mail-pf1-x449.google.com with SMTP id e25so67127104pfn.5
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 14:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+V6H61t/WhJBtoDgPI8KA/pTwpjh8ARqkJflJLJFNkA=;
 b=B1M/tQczf/XakLDt4Inap3j9ElF/nZDax8kM67P0+4rSAEH7C64FdFFYSLrRzqKkYX
 0BjVEzzXsoy4prlbQ9UO0XjUaVioPsJepUdinCXmNmWblyLhMttRjyNxD395r0K07Uzq
 +/vSotQ5Btm7RMFUZCamhb3TLsBzJCaWms2wf2rRuXQexO/KFVHurKufzwuszAO9xl8y
 /c8iAdvW+4Z8pgK6ZZu2qf3nKfh7SLjj/Z2XrgIF3XmS8VDTsFKsRyWO7EKfHlCChLLB
 Ynh+8+O0K3H3ODFi/7qj3ZBp5fP0ts2nLOsZEEbcDm3suCCsaDUMEh0gh9cDLV1vqruy
 dkgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+V6H61t/WhJBtoDgPI8KA/pTwpjh8ARqkJflJLJFNkA=;
 b=YNbzLVBT0FsXHQiEPVR5yIGpmWjY9UPeSUNinHU34jDJEoyteURbfbFlrSjpAxmLnF
 /SSJ8FFzNS2AYwE2cE5ILHQzPty7c5Jd8K96Im+nfOqihTGN4rF58WcDLEIDLj8f7k4J
 JIoILgy4p04pTLvbRYyYWLyXVI6KLsY5o7WBwqxNnXuYd64XM8RBdujj/LfViLsUo7fk
 xr1DWftd3DOsnDkI9TvHEPjQhjJyf8aS9ggC9jdHAWyQvWH53hSP5bBL9/tiCVqGMSo9
 Symry9TyHaWYhBaDNitT37OtObofZ6p4KJcEYMNFKeIULnJI6qlgtcVDfWZJE6mIWzEa
 lOIg==
X-Gm-Message-State: APjAAAXtb4FZnA+X+6CRHFxjOxysyUUfPXnzwSCzGbzj0YffF7rf98UT
 m3vH/I/R6d+2b7q9D6egZS6ThY9LJ6kFVOHSFzs=
X-Google-Smtp-Source: APXvYqy+gBnwTRFqFtcaUPFVCV+RN8fBOs7JrKztEUXGWzHzMhKgSUKueSt0oxa7kDLjRP4KiZmrddRZ5NjXndqtJSs=
X-Received: by 2002:a65:68d9:: with SMTP id k25mr32098928pgt.337.1565646704006; 
 Mon, 12 Aug 2019 14:51:44 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:37 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 04/16] um: prefer __section from compiler_attributes.h
From: Nick Desaulniers <ndesaulniers@google.com>
To: akpm@linux-foundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_145146_279181_E336993B 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 miguel.ojeda.sandonis@gmail.com, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-um@lists.infradead.org, clang-built-linux@googlegroups.com,
 netdev@vger.kernel.org, jpoimboe@redhat.com, sedat.dilek@gmail.com, yhs@fb.com,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/um/kernel/um_arch.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index a818ccef30ca..18e0287dd97e 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -52,9 +52,9 @@ struct cpuinfo_um boot_cpu_data = {
 	.ipi_pipe		= { -1, -1 }
 };
 
-union thread_union cpu0_irqstack
-	__attribute__((__section__(".data..init_irqstack"))) =
-		{ .thread_info = INIT_THREAD_INFO(init_task) };
+union thread_union cpu0_irqstack __section(.data..init_irqstack) = {
+	.thread_info = INIT_THREAD_INFO(init_task)
+};
 
 /* Changed in setup_arch, which is called in early boot */
 static char host_info[(__NEW_UTS_LEN + 1) * 5];
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
