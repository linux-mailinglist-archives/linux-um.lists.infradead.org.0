Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1DD14B038
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 08:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d773P49KfsRzYU7SgKI9hfkT/tJwF4/veYBg1PsKxNk=; b=AmgooRk/+zr16x
	vKFaTyQohiGb6C02AktFvnQVsP23fFovWSdVVpxAJ5xNZq8SM16aR2uoDrp90g02FhD4JJLxMWITx
	HlAajf9dr+unTYYuQBjX+nHGGqsT3hHbOhmmOo2fEoRaJ9dpYoIN82pwmrN1iHebg5HVIB4NJWEGc
	c9jm12bPbz1UPh+GAfRFYj8Wk4spul1Fymm8tmsErD3p/sKPQSG7cIIV4hyV+BrUWb7b+O3SeK9S3
	rPcOQrnYgHsZZtjqiZn9CMuexysc8OONsKKak2+wxvAQxZ7GAihyZDO2owdgH10Q8FdsGdk8ATb9S
	oieKc159e4OG3Vj08+dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwLAe-0004qn-11; Tue, 28 Jan 2020 07:20:24 +0000
Received: from mail-pj1-x104a.google.com ([2607:f8b0:4864:20::104a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwLAc-0004pH-34
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 07:20:23 +0000
Received: by mail-pj1-x104a.google.com with SMTP id ds13so953328pjb.6
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 23:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=GWHGFk+tfCHvu/qeG8h3yhiMIdqay1deL3woZTxVWJc=;
 b=Fmsd/wxUUyxkz1Z6qM0r0RkypL0fOEHozNsNaZpYgWUn5bll19sW638dyuJWud6WFE
 mkQXUTsINjW8p/0aIJ9Px3JJnE0tLlxui4Ay2uXa4EAnUjgJqyXJ127ebWMJgyugOwUe
 HKaz+i/1o7x2R3F/+KoD3rZft6qDJ7sJpzE73MrvYoPk/YEIDLLtHA2H1V46OZKf5JFE
 D8+CUicqNyWC1f7beM4bEicUD2XIYC0yfRKT/4fkVQc1NuINeHE+s+lbvUL3Fc5UiIny
 AxqghwkUQciLsKR60QKfaPCbCi3/uhAClhQMgjbMIMVgXtFJ/XcE4Ub26q4LhGU7qOcE
 fPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=GWHGFk+tfCHvu/qeG8h3yhiMIdqay1deL3woZTxVWJc=;
 b=DJYOIGDlW/XShKmi7cVZQI8T1ajT3Aps6IF82zlG9F2W8efuXNnHf8BJ5HAYsOx35R
 9ynCsA7nHxPUCzMBXEQb/Qy4CE8VUR+lQZRzvtFcsSqeRA/xBrrCu7UIEDDSn0djfTBt
 0p+8POPFfRoEvYW5X9h5G21wPL1GLcRv5rAh6zos9AocY3xze9mfcK5mlTNTWGRfUipL
 dJ08IQHAABZZaStxFoDggJl5GWUBoxoxwuVUwfyOSZTN92prIn7pmfThMI3hguWPyCpK
 yaX5HuJso1mQ1VX/FvNu+Z41gWonYzPui+DT9WrzIKij1nn2OIZ1n4zyU3HnpGjNkNdJ
 vdcg==
X-Gm-Message-State: APjAAAVnKLM+uy7Nrmg+dQnr/iCYneObXdsnJG9fgYuuQC7PIfNkxY55
 IkGpL983a8rP8lcznLs1/dQNj1hjJxvRzYpjXDhKSQ==
X-Google-Smtp-Source: APXvYqypywQG2gYZge4fgQ89ZnPWWXjpZ4aK4qljq8Qu2reaQNXfA+YsY3M5yDRXuo44nsf6Cp429z3ZpkmkTuhetTXF2A==
X-Received: by 2002:a63:2cd6:: with SMTP id
 s205mr18113288pgs.258.1580196020528; 
 Mon, 27 Jan 2020 23:20:20 -0800 (PST)
Date: Mon, 27 Jan 2020 23:19:57 -0800
In-Reply-To: <20200128072002.79250-1-brendanhiggins@google.com>
Message-Id: <20200128072002.79250-3-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200128072002.79250-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 2/7] arch: um: add linker section for KUnit test suites
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_232022_129032_A0796C80 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add a linker section to UML where KUnit can put references to its test
suites. This patch is an early step in transitioning to dispatching all
KUnit tests from a centralized executor rather than having each as its
own separate late_initcall.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 arch/um/include/asm/common.lds.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/um/include/asm/common.lds.S b/arch/um/include/asm/common.lds.S
index 7145ce6999822..eab9ceb450efd 100644
--- a/arch/um/include/asm/common.lds.S
+++ b/arch/um/include/asm/common.lds.S
@@ -52,6 +52,10 @@
 	CON_INITCALL
   }
 
+  .kunit_test_suites : {
+	KUNIT_TEST_SUITES
+  }
+
   .exitcall : {
 	__exitcall_begin = .;
 	*(.exitcall.exit)
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
