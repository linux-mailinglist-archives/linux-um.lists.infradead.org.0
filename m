Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A56581B83BB
	for <lists+linux-um@lfdr.de>; Sat, 25 Apr 2020 06:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hiqXK3dDwwD5zF53JIjM0bb7krY8nqJ4r7iNgUxBXIM=; b=efKPxKUYNwpN6W
	qKDt+zJkFFyBfpiqtjab2NbOHUJFYwo7dZHESoBNY2IEvyFducr8IXVNDOBymc0XY1ai6q/kot8q3
	5Q2oNEAuvAEYTwoFo6s++50EqnsnjgkV2FtRm1L1czltyqHXempw7FqHBo7xbYdLt6eH3FTQNvoSK
	QRq1b5eIW+aI0vybEM7xJmoiZ4WHQOcZl2wkt6KxtDfkFVoD+8SL9+xS+QHJH/NEEX+yTtU1Jma5l
	DVEcR2vLIdegDTcoRYLGsP670VHg4R1CGDi4FXPYah/iEp4ryQJt/0K4ulU0uHTpLr1x6LVwa2xkS
	N5T5Yf6ZGOPJNKrV8mbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSCQV-00080I-SF; Sat, 25 Apr 2020 04:28:27 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSCQT-0007zT-0m
 for linux-um@lists.infradead.org; Sat, 25 Apr 2020 04:28:26 +0000
Received: by mail-pf1-x449.google.com with SMTP id r198so11151443pfc.8
 for <linux-um@lists.infradead.org>; Fri, 24 Apr 2020 21:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=jlWm2W56cPxF9swXmGH8NRqkrkbQu6KJvx19LPVmMj4=;
 b=USf3A4Bo7Zr8p6MaHrHFt3d//e574hrCNQpuIO9UKVHA7Gx+vJCaDGq9godA8VTfAO
 t4buVW4N0SOLBVmFRG+pw2l1Zjf5E1tp/jz9eZGXAjs31Ez3z2aTi1fJrWAP7+PKtXXO
 9ERRoDsujoOlLS1+vxQKFcDNU37rcWQ82d4kSAYkHwUx5aC6kQXtahOPVdmP5xBHcF2P
 GIBnrKvHG/Hv006bRZn/XWEVXItQ3PWsA1QaTFHc2Z4iqpXyJHb9y58604S3yfdGHULj
 i6I3YOtD0c6rNszhHZlFwd+5jRxu9rGu8IwKBYMbcMGc3wSCXN6eDwwv+hAPs2S2oT/j
 L5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=jlWm2W56cPxF9swXmGH8NRqkrkbQu6KJvx19LPVmMj4=;
 b=rAfJRuBqd7bz/xrmQZrRdJQ8h0/cjVt3W+YmJpd9oap8RdeEo2hSl6g3NulqLl2rC8
 01gOJJ1bgQt8BQLupOlUoQG4/WbuauRe7NUWi/t0i7IREPbnjJvllJP8vhAIhd9T6/Xs
 BjbTUIVem5dZW+LcOWRZcrBTZaLNzKAjx/p3nigTi+vNV/ljWZ7wzVryw5rvT+9BQSUo
 cz4GbgMbIdqgwJvWbSBz/wPnKz/qH7DxLCm/krRxD8rZ0SMawLpvz53x+KwBIynHZowL
 pVOc5mUx+pg3/4LQmI3//o0x091wPYxIbE3vQIRv++shYFU3iQLTLCUh3MIrakjjriXJ
 jWNw==
X-Gm-Message-State: AGi0PubDNqn658Xd2KfldUV1uKwwXTRcavkqLjZEYAfC+Vg9sfWU6mP7
 N7SZwYCSyE2gcWBAlLsZGzp9vN3uVsEcHg==
X-Google-Smtp-Source: APiQypKmbTXULY46nA3boun6yFxN3mnnz6RPfPbLSPhfo7WU3zVgjZhi1VF7XdY9fAWy3Y58zhtWQIDdrvV8sg==
X-Received: by 2002:a17:90a:df15:: with SMTP id
 gp21mr3536242pjb.2.1587788900064; 
 Fri, 24 Apr 2020 21:28:20 -0700 (PDT)
Date: Fri, 24 Apr 2020 21:28:14 -0700
Message-Id: <20200425042814.132920-1-davidgow@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH] um: Fix "time-internal.h" include in xor.h
From: David Gow <davidgow@google.com>
To: Johannes Berg <johannes.berg@intel.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_212825_083317_05739D92 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 David Gow <davidgow@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

It looks like the wrong header was included in xor.h, breaking make
allyesconfig on UML (or, more specifically, kunit.py run --alltests).

----------------------
In file included from crypto/xor.c:17:
./arch/um/include/asm/xor.h:3:10: fatal error: shared/timer-internal.h: No such file or directory
    3 | #include <shared/timer-internal.h>
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~
----------------------

Replacing this with "linux/time-internal.h" builds fine.

Fixes: d65197ad5249 ("um: fix time-travel=inf-cpu with xor/raid6")
Signed-off-by: David Gow <davidgow@google.com>
---
 arch/um/include/asm/xor.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/include/asm/xor.h b/arch/um/include/asm/xor.h
index 7a3208c47cfc..36b33d62a35d 100644
--- a/arch/um/include/asm/xor.h
+++ b/arch/um/include/asm/xor.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #include <asm-generic/xor.h>
-#include <shared/timer-internal.h>
+#include <linux/time-internal.h>
 
 /* pick an arbitrary one - measuring isn't possible with inf-cpu */
 #define XOR_SELECT_TEMPLATE(x)	\
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
