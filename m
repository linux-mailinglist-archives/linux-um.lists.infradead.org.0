Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F5BE1160
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05YuXDRZm7xHEs6WIKaKOli8pkB5eKM5uvtLxVhouGQ=; b=b1GWr86VlQxG+x
	kkpsewsg0b3BvREgTV7PVK5SpPChmdc5TFUuJ2ofblS9CyXLLbkBnm7Ji7UXhAVBbzBHA0sItHGGH
	DTsSV446aPkDoqvlKfZU8P0D66+JvtzPxsAZpgJ/7eJuonqucds9RmhoyaWPw9k3XiTAUQlMKgG/I
	ou3J1xX5OayL1pYF6nKNTRalypml5q/m84Ngd7gCLS6rhnWIHuDdxYIcKdEsonJW/R4NIWG5NXvSP
	77GK3OFFNzM/e4IsZ2XpIiHIqprg5ChoW381txChWHEBgENoPtScSpCbGhgL6bUfNuODWZIXrWXEh
	OqtgJzi+mwaD8/bet5Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8kl-00024H-Su; Wed, 23 Oct 2019 05:00:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8kh-0001YJ-0p
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:09 +0000
Received: by mail-pf1-x441.google.com with SMTP id 205so12120876pfw.2
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xl71jlKbv7BRgJ1xhbvzy/7DLhWE+idzRGxueSDb/Ho=;
 b=mbsInz/6YbGOW/jq+X9/Zzrheb6DZ/Qd9Yt7jVNDgx+83j/awoT/OYMBRQLlZ7oHcN
 D8AHBCskXpvHi2LYvryzkhYI+9DvnMD1+qmuOHUHp05b4/KSwfmdrUxjd7gEdi02nYPe
 shfo9dNf478d6lPKi9muwJfjf/oB+7CrX0eiSOFJ3erSyHIdMN2E5GuTFZv3OI5+s39z
 vjZ1Hzhl2YSK/sHhoT8nYKvFWDr7D2eLcHU9N44EtdKrcaxyCMAaWteiucLi76kODQkg
 +BqfW7hYrPF6A9dQvknBpy8RFXEVM512iDxP91m6ntmvNxiaOcjjqKZoh4DUdxOxbhKI
 qLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xl71jlKbv7BRgJ1xhbvzy/7DLhWE+idzRGxueSDb/Ho=;
 b=GH231qwU4eAjlKq4KhYiAq3RD9ubrBQtfIv3PoaIx8bUFXX142CzRFMU2ULx1o+OWs
 nHodEavSqYJLG6IlL+x9024owKGX6cogyD5qbz5taWo2cY3cwUj+VVI+gwfv0Ff6s1Zm
 cquocmVGgr7n9+p530ysgY7SGHMEHvFdLfypfF83ZHJVT6y+KFz/m1Rh53xtywZ9vyeK
 W0/rWt/ISmIBQ9tZS+NBbdtP3sC28+RmGDmCbfp+SGGudu3SSO6MHVNUxX2c8wHHVzGo
 jLO+D7lQAKDJlWLlnhxAmAxfxNMf9kyy8OPMIsGHAHM8mVYZbA0y+2Tt5g1BKCt5ZzSE
 RW1w==
X-Gm-Message-State: APjAAAX9QlwPC4IL8Zld9gEJaNTDr7x3J5gv0rmf2KrEceZwD8M7MK4x
 DqkJ4Anzdo/j0tOzIretu/F2bO+7GSJMkA==
X-Google-Smtp-Source: APXvYqxkPq86UvS57KLF1FYpYEB1n1u8YH154glk3B/+/ZTV5erHjy1QvfZGvkoEjJ3SEZpy3gwZFg==
X-Received: by 2002:aa7:956a:: with SMTP id x10mr8411540pfq.114.1571806806410; 
 Tue, 22 Oct 2019 22:00:06 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id n2sm21480858pgg.77.2019.10.22.22.00.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:05 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 6B4C7201995840; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 39/47] Revert "linux/linkage.h: replace
 VMLINUX_SYMBOL_STR() with __stringify()"
Date: Wed, 23 Oct 2019 13:38:13 +0900
Message-Id: <eb9db951afd13b7cca9b77abf804805078dddd32.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220007_087050_50B1D2F5 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

for lkl, mingw32 requires underscore-ed symbols.

This reverts commit 00979ce4fcc90d488c7f27f750097adc6b11bd07.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 include/linux/linkage.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/linux/linkage.h b/include/linux/linkage.h
index 7e020782ade2..d287823ee947 100644
--- a/include/linux/linkage.h
+++ b/include/linux/linkage.h
@@ -24,16 +24,16 @@
 
 #ifndef cond_syscall
 #define cond_syscall(x)	asm(				\
-	".weak " __stringify(x) "\n\t"			\
-	".set  " __stringify(x) ","			\
-		 __stringify(sys_ni_syscall))
+	".weak " VMLINUX_SYMBOL_STR(x) "\n\t"		\
+	".set  " VMLINUX_SYMBOL_STR(x) ","		\
+		 VMLINUX_SYMBOL_STR(sys_ni_syscall))
 #endif
 
 #ifndef SYSCALL_ALIAS
 #define SYSCALL_ALIAS(alias, name) asm(			\
-	".globl " __stringify(alias) "\n\t"		\
-	".set   " __stringify(alias) ","		\
-		  __stringify(name))
+	".globl " VMLINUX_SYMBOL_STR(alias) "\n\t"	\
+	".set   " VMLINUX_SYMBOL_STR(alias) ","		\
+		  VMLINUX_SYMBOL_STR(name))
 #endif
 
 #define __page_aligned_data	__section(.data..page_aligned) __aligned(PAGE_SIZE)
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
