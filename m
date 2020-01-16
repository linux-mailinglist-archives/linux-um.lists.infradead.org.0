Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E2513E2B6
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 17:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SJJijFASBbpT3tN+bwNFiM66j1+gIQJCufaVRHDpQ8=; b=IUE9RRNflPG+vR
	l8J6C/84v/BzCOHkpCsn0ZMKy3UnGFtHUd/1UVRJQTXp6RUVgNu06hyV+zTpl+NP4GsGieYPHYp7G
	mwL3QPp1ngdCh9MNLyB/8VeBnEZeNIEpvul3N9kspdyXotGbSlelrO8plicv5ShZyB9qc0lvceZ0r
	Sf4TRuapEvC4g5f4A7+6f4YASqZI19LEeFNoX0kgK4KqA0S08YGVlJsyZNOL1maMVOyDZnxWI9khE
	NkEX/fHl9sqG0eVQcUxUKsif5awBd63Dxjk6NFIqjFiDf109fd0nIWwtk4ilUR7iA7IF3VdvkFNVJ
	/Jw4dsyFxL5LatpJWFfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Sx-0005dY-Gi; Thu, 16 Jan 2020 16:57:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8PE-0000fR-MQ
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 16:54:07 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C27220730;
 Thu, 16 Jan 2020 16:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193644;
 bh=H4TGDuj/IGoXsgjHYEbP9PeZK/cLYnM2Qg5WbYMX6t8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HFY2y+5wVsgRnfh/grr4YpYsMtEWr/4pXQyoEV08VaOXdIFYdmn9MO0Mb2rzJ3M9w
 5EeB1naN0O5TRqrLlC6V1VC2tnFCzHnFOJm7CA8qO5OCZkaj2UIo0ve9ibkZ0YL4nF
 qV3qquKA7x4yvXlfN+FBRljZpV2yAbHAsKmho1is=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 175/205] um: Don't trace irqflags during shutdown
Date: Thu, 16 Jan 2020 11:42:30 -0500
Message-Id: <20200116164300.6705-175-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085404_782731_02EDFF15 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-um@lists.infradead.org, Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

[ Upstream commit 5c1f33e2a03c0b8710b5d910a46f1e1fb0607679 ]

In the main() code, we eventually enable signals just before
exec() or exit(), in order to to not have signals pending and
delivered *after* the exec().

I've observed SIGSEGV loops at this point, and the reason seems
to be the irqflags tracing; this makes sense as the kernel is
no longer really functional at this point. Since there's really
no reason to use unblock_signals_trace() here (I had just done
a global search & replace), use the plain unblock_signals() in
this case to avoid going into the no longer functional kernel.

Fixes: 0dafcbe128d2 ("um: Implement TRACE_IRQFLAGS_SUPPORT")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/um/os-Linux/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/os-Linux/main.c b/arch/um/os-Linux/main.c
index 8014dfac644d..c8a42ecbd7a2 100644
--- a/arch/um/os-Linux/main.c
+++ b/arch/um/os-Linux/main.c
@@ -170,7 +170,7 @@ int __init main(int argc, char **argv, char **envp)
 	 * that they won't be delivered after the exec, when
 	 * they are definitely not expected.
 	 */
-	unblock_signals_trace();
+	unblock_signals();
 
 	os_info("\n");
 	/* Reboot */
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
