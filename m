Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E765714ACCE
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 00:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjCL3DuizmAMrCRJh/P4klDjCeg/Jh5cQ+ucgscw7p8=; b=KqWHKCxqk7d5cg
	AEMf2kqKZicVpMDPFbp1+Y3YQAthRUX6QSDD5TDaG6rBBchKzhLHYTFGvh/txDEcJklSlj6xkLb3W
	uQvs9cuiHnZpsatH9EhoGs8Ak+aX9sK9XJIdQxtsPj02E5HO4Ej/QCWzxAMBkpqVL+tm7WLjXAhQX
	+UxuoqU7iQEqkCYXhSfxTUyhcHJBn3TxJEX5u49DM/8uwCCVwbp0QNiKJi07YprmCF06u0TV7kFLw
	B9Q+VHUnqpS1gP1KZ1bCsxCEjZt4Q9/gLQurx4SSAZBQnej/emXKd5Ppc+9fKV8MEzDKVpIj86RnX
	ujjUPLPl+F6G7mLnbgdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwEE7-00080d-Ej; Mon, 27 Jan 2020 23:55:31 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwEDs-0007ki-Su
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 23:55:18 +0000
Received: by mail-pf1-x449.google.com with SMTP id k26so7459595pfp.20
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 15:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=lQAaJOF70jpkpbgo3OKWXwDeISOpcrqAl/nKJxxpz8I=;
 b=rNFOFNSB6Pg92/nVyITfWgqaiTYud0bMb33xDqixTNQOq/2QFKGJTspVwiGjqiEHol
 pXrIgNPQkcZ7yhcGyUNMxOYTDeyNi4nk5v0DLZVGW7f35WCj4CpYY0BV+QiCJ7/LjfTK
 wR/VvA3wAETdLgOYcFLndJ4cWSttfI7XnOE6Hude8Dtm6Flirqve4TknqZl+mMgPzuwT
 1yJCA6VDlssrOkxal2JQTghrhpXiTXUoqltV/Sw/XeKRv4pVSnzUSrAisz2jLrfFewwj
 xidGeyZfGUpJnurRqT5xDSrGmpDJ9rs3o1HBrNb/E3XWPuPQV72R9bC+ltwtlkjGQabS
 Ms5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=lQAaJOF70jpkpbgo3OKWXwDeISOpcrqAl/nKJxxpz8I=;
 b=MU7KjPSCgVG9f44gutiHH0D5U5IGqgpdJ89pWG8AHnQJX753jBS/qbioplxFwYA8xt
 EYCLc7j59I/tTr4nPnc9myJ7ZNlG9impME/Y/Hhwa9Ms1mToU0X5zC+OZ/6FoTH0QuoX
 xWqz0Vs9fzBliacc3qOx/YLur1D2Akew/7q3sM6eZ606N/i1rQWGyJ6VWx5sIoIuopKw
 BqJCG4jmKthUVmlofDNKzUwCLsBQfYR6AYITVUV684AMAgLiwpkrIxzT9ItkS11mkhkb
 +eVrImrkelNM87lEaOIikN3ftZUgjKk4SshjWw+xFEkeqqT44BzzMcHzZLZ9D14RMzpt
 m4iA==
X-Gm-Message-State: APjAAAUpyUBkN0KAgOt5ONrAsThXbqFytoTsxsqWHomgDqXM3ongNEfE
 sAcfumPvNU19IeUpLWwZ76jTzx3fsRJTR3jsgailjQ==
X-Google-Smtp-Source: APXvYqyPdtbN9DZT8FHWQNBJKmpfTGEpiSZRuvKVXpp6IV7WTXe3QBgDE+xT1lY2W+Mc5+T5G2jPTWwGlbE8hQlH33U92g==
X-Received: by 2002:a63:fa50:: with SMTP id g16mr21686970pgk.202.1580169314974; 
 Mon, 27 Jan 2020 15:55:14 -0800 (PST)
Date: Mon, 27 Jan 2020 15:53:56 -0800
In-Reply-To: <20200127235356.122031-1-brendanhiggins@google.com>
Message-Id: <20200127235356.122031-6-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200127235356.122031-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 5/5] power: avs: qcom-cpr: add unspecified HAS_IOMEM
 dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Kevin Hilman <khilman@kernel.org>, Nishanth Menon <nm@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_155517_143345_C13B827C 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org, linux-um@lists.infradead.org,
 heidifahim@google.com, Brendan Higgins <brendanhiggins@google.com>,
 linux-kernel@vger.kernel.org, davidgow@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_QCOM_CPR=y implicitly depends on CONFIG_HAS_IOMEM=y;
consequently, on architectures without IOMEM we get the following build
error:

/usr/bin/ld: drivers/power/avs/qcom-cpr.o: in function `cpr_probe':
drivers/power/avs/qcom-cpr.c:1690: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/power/avs/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/power/avs/Kconfig b/drivers/power/avs/Kconfig
index b8fe166cd0d9f..cdb4237bfd02e 100644
--- a/drivers/power/avs/Kconfig
+++ b/drivers/power/avs/Kconfig
@@ -14,7 +14,7 @@ menuconfig POWER_AVS
 
 config QCOM_CPR
 	tristate "QCOM Core Power Reduction (CPR) support"
-	depends on POWER_AVS
+	depends on POWER_AVS && HAS_IOMEM
 	select PM_OPP
 	select REGMAP
 	help
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
