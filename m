Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F176BE116D
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q10SpT5G1qzxm3D6nxgiFbQM0XOuNvCjeLwg8fckdVQ=; b=Oh736yo0fchR5V
	+uiBRTcSNHNphcPUKUPthtUOEJdtwV3VUQmb7b/sXVLkhnuFBn2E+uapa2Rf8ycqLmFPovsR01Ixg
	VFrGVUgic+CiFLMgVk/V2H8p89ZuSUeRRfe1wefjoXnCTCBKCKwx2EUrBtHRLeQYND/ZGeg8sceeN
	PRe3Q3OLphcxre8XuqMoEecvqG1GVMb1bCg6Y45mUkUONuAtoiJALXMmuU8Ysm1Ow1pVihAUSt3sg
	E5AnZmIIOnJ0j5ykkq4vPeq3P71h+TbyEvZEpUoEc05IR6hkUO6KTgM1XVdXueiniASb6Maqpzxsl
	FnFafKm1lDxr3aNHYAgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8kz-0002K1-GU; Wed, 23 Oct 2019 05:00:25 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8ko-0002BR-L8
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id e10so11368163pgd.11
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LUR/yr3BXmkRRb2sDHuFemauKHdZ0o5pfi50Nv2gVE4=;
 b=QMxNBkHve5lP6Hi1vXkPHEqbkldv6ynZ6z0310S1X/i+0SRNF4qTu3kHe0OfFjQ9PC
 sFZcjoi3gtF6FSNFDn73G1I1zWpAQF2Sjf6s2ESCzojg3OYsoe58phIzrP4VEs9HzWb2
 PKkmG6kZskErWz4GnTZ9Cc2TnFDdZ+Pmt+c4qRC+KGsoI4xRrtx9H3V/xH3/kqiMJ1nT
 RBiFLKHArpKNTZ/c5wHON1n6JQxCz+zBQbOH30n9QN6APhewsUA5RpaId6UXvQpMvXci
 i7zeD78Haee55qqJIwfv0ETRCckpiXpKShKYUeyzmyGX/DoSKkKYL6vSbPPYTvccM6BF
 a82Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LUR/yr3BXmkRRb2sDHuFemauKHdZ0o5pfi50Nv2gVE4=;
 b=B+hIxIAfeXWeCqybkf+9Upxgu9ufZkUx7eTW4ufgkoAWeZLK1pj3+in22hIrXJYi07
 UAUE6xmurEVSOLfpaftCn/4m+RBrDCdhjC8hjW5cJJTA8HLMmX/VvUqUxc5dEzrgr/rD
 LeUrfj2vl67gyA64HUsWmeCv0tNkn2Xd8jQI/vMAdNfepED0vTTDlM8sAr7vNgrcda1T
 UmztTLdjxvV10PCN4Hx5DmWc657hZePxXTC0BVTrAu5+L2SYeCmbIS8CI4gmFoscJfhn
 0VSgcdGa09FPsNitWHfV7CScUftHudjsFZc5ZF3vpxWUabDLT+qaM+ZCSnvMTQqJRbua
 BfvA==
X-Gm-Message-State: APjAAAWQL1CKoergDPzseHX+mn3bX9DYRLTBoWthk72qcK/14W7+oLmD
 mpW3QbTBNkgkPq5/fXOooHs=
X-Google-Smtp-Source: APXvYqyLPzB2cURvyElBxrTLyJ4+0beKcz/va7YYb0ZQ2wkgha/E3J2uqyBLvT9RNzmAz6ueqjWDpg==
X-Received: by 2002:a17:90a:be15:: with SMTP id
 a21mr9152893pjs.52.1571806813858; 
 Tue, 22 Oct 2019 22:00:13 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id 4sm5986334pfz.185.2019.10.22.22.00.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:11 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 5C83C20199583C; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 37/47] Revert "vmlinux.lds.h: remove stale
 <linux/export.h> include"
Date: Wed, 23 Oct 2019 13:38:11 +0900
Message-Id: <5decfab51b50756da127fdb66537c520c6c0fd95.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220014_700153_865C6FA3 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

From: Akira Moroo <retrage01@gmail.com>

This reverts commit 7953002a7c6561c93defd19c81737012ef5a10dc.

Signed-off-by: Akira Moroo <retrage01@gmail.com>
---
 include/asm-generic/vmlinux.lds.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index cd28f63bfbc7..8c923ca77d56 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -54,6 +54,8 @@
 #define LOAD_OFFSET 0
 #endif
 
+#include <linux/export.h>
+
 /* Align . to a 8 byte boundary equals to maximum function alignment. */
 #define ALIGN_FUNCTION()  . = ALIGN(8)
 
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
