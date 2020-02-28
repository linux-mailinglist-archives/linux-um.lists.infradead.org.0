Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7359172E22
	for <lists+linux-um@lfdr.de>; Fri, 28 Feb 2020 02:21:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnWtrQhUScYRmbEgVIFzX81hmAi55FxzlpWE+pVLdy4=; b=Y/WiGAPf8coNkk
	Vo5D9mxNtlbWBABc6mcZ8lcEZW7VItWMlH9jpUJx9pGDGo+ud0eemWhaTUQI4orBe0tdp6KE3ZqHT
	SYDeNhLArpfP0HDNo1NW+JQRpjFcb2zgSi2QpxtA9VHpmYpZoKCHkuQ81Un2LIPVGWW7cVzTxsoH9
	ijyc31zVrkMobgbF/GYYHUICblqgtytWU8l1m+SB/C+5xzCbGPgUHDHJ8HlSkWRDh+6mXobYUD3ga
	M13evmgz2J6H/cxQkRq5XMNFBNXyCZbUWrRfat/e4C0bqHl514SE3uJeWDTCMdsyODsnnp0yCImS9
	iiPcUWmbMZ8GM/MVDW9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7UL8-0006i0-8V; Fri, 28 Feb 2020 01:21:18 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7UL5-0006g9-Ga
 for linux-um@lists.infradead.org; Fri, 28 Feb 2020 01:21:16 +0000
Received: by mail-yw1-xc49.google.com with SMTP id c125so2597149ywf.0
 for <linux-um@lists.infradead.org>; Thu, 27 Feb 2020 17:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=MkaS0G1bk+Q5OhBTj99Zlxgrs85NSvS6F5H6SOsXVyU=;
 b=IH1npzZ+v8JTFD9rsz35zQYEul6R/W7yA2D6y+OHVbHvXqTHNvw94iwhkAAP2DDbVi
 GBl13bzJPRjEuu19+D47ufplr6qg9wjANWrvanrNpgcqF3wYeITyoFt3EBjPEKAChMee
 DeaGGyUBsY44m410q88ZWKqK3we31TbcCkm2I/9FYqcTsjtfZrtU59w7sW8UgKR1PAJe
 CAKr9zLHEDRGuRNAQVHoLYwNfztD6WsUdwPciC+p1QF6ZslfNc/x8Hy7CBCjDGP7F1O7
 OMmtpISW28bF/hQBE0TciN5jdd+8PFqiw4ehn8+83YXO6s8MOtXeeqCaCT+kJgk3y0WI
 ockg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=MkaS0G1bk+Q5OhBTj99Zlxgrs85NSvS6F5H6SOsXVyU=;
 b=lAYuIrP9G/aTygMu41V8RNxVqLZTyQZq0RqzNzCSA2Z+D2m9Xc9gUv72Hv538a3jtL
 UVU3uJButuUbXIm/teQYCHiVgi6b6q0p8qC/B3u9RMN7iAm5BMVgEH3HdQdS4A+Zwwhd
 HMqFP9wFVcgLvaWV7yBbd/+eqMhw2LAB5sG6wrFKwt80GeXLQu6xrPkxis6aXfWJkpO5
 r7gU6FEApZ6KHMKKxzr26GeU37N5h7uE8UwCZNuLVwCvweRZaAqKBEwzs1U3NMz3pNFv
 o1d9snAKO/nNWyoTckaAZqCLJ3xkhA8MPn1z/mYhHWCVCjPqED4x7N2vSV7/+35lzWim
 hivg==
X-Gm-Message-State: APjAAAWN5rEaosnx1gbLhCvaZ1TrXRCnh6qR/H8rpaJmflE/WTgG9vrX
 Hugdm0ODxDMQfOYfDbJeYe9bum3ICu2/lK1QP1cPtw==
X-Google-Smtp-Source: APXvYqw/2+N2t2lLq1K+89TJ7bx2qoTvJJopuhhqt7f6cbBPG3uSnhVLpCVqqF2LFAFntCjNNsq3zJIjfvM4Xn6GSUj6sQ==
X-Received: by 2002:a0d:c584:: with SMTP id h126mr2210425ywd.173.1582852873384; 
 Thu, 27 Feb 2020 17:21:13 -0800 (PST)
Date: Thu, 27 Feb 2020 17:20:36 -0800
In-Reply-To: <20200228012036.15682-1-brendanhiggins@google.com>
Message-Id: <20200228012036.15682-8-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200228012036.15682-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v3 7/7] Documentation: Add kunit_shutdown to
 kernel-parameters.txt
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_172115_551023_F626A521 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add kunit_shutdown, an option to specify that the kernel shutsdown after
running KUnit tests, to the kernel-parameters.txt documentation.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 Documentation/admin-guide/kernel-parameters.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index dbc22d6846275..6ad63e98916f9 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2099,6 +2099,14 @@
 			0: force disabled
 			1: force enabled
 
+	kunit_shutdown	[KERNEL UNIT TESTING FRAMEWORK] Shutdown kernel after
+			running built-in tests. Tests configured as modules will
+			not be run.
+			Default:	(flag not present) don't shutdown
+			poweroff:	poweroff the kernel after running tests
+			halt:		halt the kernel after running tests
+			reboot:		reboot the kernel after running tests
+
 	kvm.ignore_msrs=[KVM] Ignore guest accesses to unhandled MSRs.
 			Default is 0 (don't ignore, but inject #GP)
 
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
