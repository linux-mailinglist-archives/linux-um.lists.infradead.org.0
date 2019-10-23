Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C2CE1105
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Vc8oqKAAsG02L+eqBJjyDX0p2OGZbpsfkPooq0S+Tk=; b=I6hrvhSFbeAxpN
	M9gnWoI/ydxo3AEh3zi5b1hgzqkcabgl7C1xEDjXdTQB00RBrbjWoFg3WVZY7QGl2t0ga/ss/1teI
	L7IQWLJms2R6ypNGfxqYwnBSLmjo0iOf54JHNwbrgFuZH/R1Uh39T8GBZg6WCZpLfIptcGjQ+tBRJ
	Y00DJKmQ2gqIHAMpYOfLlzPyY40Avem2wknwlB3qearqa+4vZuA7swCTXfYX1pdHUFceqb9+/frSr
	jnzcg/Hj5VEqMFM0wLApZZxASUfNejBjRHgC2lfvJxmVLqeGCjw9svRAAOuyj2CB3QfDIHnPs8Vo+
	ku9mN9TNTwk9tqsnP4CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QH-0001kZ-Ak; Wed, 23 Oct 2019 04:39:01 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QC-0001hh-8k
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:38:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so12068063pfn.11
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mFKqSirk23YyazK71uMOfu45O1kHS0kn5mabYkPzwpg=;
 b=lgskwGaivmx1ikYMRsjrNxcwkkuYj+0c7A6t1szUTlhtD20BXXjwLtM8vL8aOBO6Ws
 3ULzCsMB9AVmzT9B17517c3vuhoz+zVCEVjXhaMu7IFDcW2GeScbWvDPGpBJCbraDBfR
 nEPTGwKAqJCJwcTHkvefQUwuRgsgh70HjLaCiDyTCwqnz3RwPAq1QBkszgvKUoSbNcTp
 IxzxEY573ecB1WLQmb5D7JMKcFjJ7NbToBypUREFqvkM+9/tzxrbLrXZM2/9DIFR6WeY
 zcAz2bVVfJd8Wr1Iv71xxv/3iMUU9Ol6h7n6MmiydpTEVdMs+cMCAx+A/4synK5Qdzxp
 YgRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mFKqSirk23YyazK71uMOfu45O1kHS0kn5mabYkPzwpg=;
 b=KDdCrHX2BPTW4wmV2qar+hQXmT2K1yztkGRxYhPLmXXSymjGD+56LQjVePK1l4Rqqb
 b0CqSQ0uP+B3Bgls0m4Vbq6R5wT/WW1y1vDkWy0/fd5FNjEwnPwMnGALL6g3kPUdV6nL
 qoWDR/P5JJ4mHn1OtIG608pd6SFmLPOgouqw3Vcs2rL/M5mFjkApWE9+0MObNCEMMJs0
 BAxe/LiII2y8lyt17aUGeHoepWTyFLpLji2FY2W3DyqhTRhm57s/7Ar+BA7faw2FEGDR
 eDTTcDZVc/flDIuC/qztLov/qSihsXukw3z6TI13mEGEX1aV3NSLJsFRVclYhqjUxKHZ
 di+g==
X-Gm-Message-State: APjAAAUwxOtH6cWW6f8erxAiZFV3k4qYyKaBPo9sVpik9V7v5OvBg8s+
 czGozYARGZVqDGABhdJ6yE1EklB5q6/jkQ==
X-Google-Smtp-Source: APXvYqw5Rx0dp6GZQi3X+5OCq8T1z8cTsSW1fNHii8UjSPkj9kr0TYrOQ1zrKBVckneTfPGL1Mu8Gg==
X-Received: by 2002:a63:4e58:: with SMTP id o24mr7516830pgl.72.1571805535559; 
 Tue, 22 Oct 2019 21:38:55 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id 20sm21188717pfp.153.2019.10.22.21.38.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:38:54 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 1B58A2019957F6; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 02/47] kbuild: allow architectures to automatically define
 kconfig symbols
Date: Wed, 23 Oct 2019 13:37:36 +0900
Message-Id: <c133f9df9611b72baedd882ca63590599e0a64d2.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213856_306954_04ABE796 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

This patch calls an architecture hook during the kernel config process
that allows the architecture to automatically define kconfig symbols.
This can be done by exporting environment variables from the
new architecture hook.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Makefile b/Makefile
index 0cbe8717bdb3..8c1f7422d0bc 100644
--- a/Makefile
+++ b/Makefile
@@ -605,6 +605,7 @@ endif
 export KBUILD_MODULES KBUILD_BUILTIN
 
 ifeq ($(dot-config),1)
+include arch/$(SRCARCH)/auto.conf
 include include/config/auto.conf
 endif
 
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
