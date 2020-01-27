Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7CD14AA93
	for <lists+linux-um@lfdr.de>; Mon, 27 Jan 2020 20:36:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCt+Yaci9P3bMT09EqHzdIL8z3x/uEjhrt8AJxGHOxk=; b=XlYk1q+oexQVuy
	JmdrHtgsgX/ZbS0VWExO8pbUm9zloCgggNgmLqIVKRjtga8Qv3gdEmWJKeaf/GmuG9DwDxZancama
	OSAd3yX+V3PC2sw0c68zzwYjMIW8sh0nHhgGQ3xlLCxAbeLaaCkyb7RcpueuX2P2aZwPucoNYsI6R
	CdX5pM3ftAxuD/0ff7RxuwBBFwNxAdvsek2kd/xiYf9EabI/q+D2RxlFlTjMYXvq0ZMy8ZMAfjF6O
	PN/yaexLqiCXEhGq2JT2jbelW6iC3WxXNHWMqVpUHnMmXEER/OkVIyW8ludTt7LggqSRO9VWA7jDY
	I98PNJaU2aomaMWyi2/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwABR-0003w4-3I; Mon, 27 Jan 2020 19:36:29 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwABO-0003uU-89
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 19:36:27 +0000
Received: by mail-pl1-x64a.google.com with SMTP id bd7so4308768plb.0
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 11:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=MBXtYUj1QxYipcDyqZexYNOHIwmMYcL9qVU9w76TqMU=;
 b=kq/LGvpRySXRu0yzwNcC9o5kvB/Lf3EYScRJ6TjobnkWY/KSMsX71QlvFbaUrcvNdo
 4TgexVq0q81r+Xgp3UVJwsvgjPZJZfOT0/i6OVXMNdyBf+0uQWKenONfiKRj1Fss6TUH
 uwDT8piaaknCsIiJbuQsD2ibYnoPwH+ua7g4NIFN+B4RoH3urbqrk11neJCl+cSjEw31
 lDIkR549+4xbzG68w/SuYa2PPrvpKuD4p/tzg5d+h4Ct+2mdRTZlZVpv85a4qOIY5R8F
 VklCupGL8s3FhI9JtzU/r/U/hwb3VjcPY/dG2CCsgHEr2z0BkYH6rjBGituOCbP170LT
 aKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=MBXtYUj1QxYipcDyqZexYNOHIwmMYcL9qVU9w76TqMU=;
 b=H/mNW3Id76VNxkD/pvkuxPppRPHa3gIpX6l1rvdLGxLJzAU5/X7gXo34fW71YLirei
 lZl+xt0lHvLKTlhJtqR3zThp4JnCmBD6/aSfbgO98zgKiknElm726kJ2Q6YyslYKUz2r
 iWvMJOzPYLcnvomy81ZRI5oPUqsKM+HIqEfdWmDhEUZBjGUHjWMpTBJZ2AgRGf4zfLE0
 nu2HVr0bnUCoM6yP2fk3LoIfSq/NEi0iynfgvP13A4oMwF5X5ylrcczdvSols487ZGEf
 m5qxLDiNOLed31RJpP5Tp2SkMVZkXJ1YsBDz9rbSKsNPBd0fPNY6mhEcUuSifkDMm/Qx
 gfgQ==
X-Gm-Message-State: APjAAAUO500l9kttMgXKC6FIinfM/WUF7Y8+GO6IMkOblhHF2A61SqK/
 jLSuwR772sRerlv6oghn+NkI99LdauV9u4qbZEmkgw==
X-Google-Smtp-Source: APXvYqzw4bcDZfIlq+zGGc1Fi/VjEsM3ED5HMkJFARpf6yPisIbRpOks2FuWI9Odc+UqXEL26ieYokh9OM7CembMrnve0Q==
X-Received: by 2002:a63:78c:: with SMTP id 134mr20129191pgh.279.1580153784147; 
 Mon, 27 Jan 2020 11:36:24 -0800 (PST)
Date: Mon, 27 Jan 2020 11:35:49 -0800
In-Reply-To: <20200127193549.187419-1-brendanhiggins@google.com>
Message-Id: <20200127193549.187419-3-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200127193549.187419-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [RFC v1 2/2] arch: um: turn BTF_TYPEINFO support off
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 akpm@linux-foundation.org, changbin.du@intel.com, 
 yamada.masahiro@socionext.com, rdunlap@infradead.org, keescook@chromium.org, 
 andriy.shevchenko@linux.intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_113626_290313_A0C5BE1D 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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
Cc: Brendan Higgins <brendanhiggins@google.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, davidgow@google.com, heidifahim@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_DEBUG_INFO_BTF=y doesn't work on UML:

scripts/link-vmlinux.sh: line 106: 17463 Segmentation fault      LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
objcopy: --change-section-vma .BTF=0x0000000000000000 never used
objcopy: --change-section-lma .BTF=0x0000000000000000 never used
objcopy: error: the input file '.btf.vmlinux.bin' is empty
Failed to generate BTF for vmlinux
Try to disable CONFIG_DEBUG_INFO_BTF
make: *** [Makefile:1078: vmlinux] Error 1

So turn off ARCH_HAS_BTF_TYPEINFO support off for the UM architecture.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 arch/um/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 0917f8443c285..53e13d8b210e0 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -6,6 +6,7 @@ config UML
 	bool
 	default y
 	select ARCH_HAS_KCOV
+	select ARCH_NO_BTF_TYPEINFO
 	select ARCH_NO_PREEMPT
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_ARCH_SECCOMP_FILTER
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
