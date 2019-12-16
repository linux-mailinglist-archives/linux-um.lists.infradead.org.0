Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A98121C50
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 23:07:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JrtMx4nGZvDV4HiNaBZR4PmmUgyPGuX+pH562ZH0jk=; b=gSLxU8Lt0W1gqL
	BfzZAwOLCHfKoG9bjbblDD/XH1q71RJiDHOLsoqHHt0SRpAbWzylUH8ldBdtQg5GqaFp5CURA4Rpm
	xKg64yszjzeeC7vmZ3C9ApGnpJBTNNltCsXkGZ//t7muz46XIAAtStLzlFeZz7NpPsCzYkoBttOiq
	kLJcXthNKjfirxBM1BgPtEFHOJAq6asPZPiSQtpALC53x7Z/2tC/4Ua5A9y2DDh2XJ8XxnLq/IRi+
	FXoGJujf5vMtlSi/V1uO3Lx9Kr6FqEX+AE7VW6fZqBxAwv7Wn+7N/ZvNsdEApkU0meWrX476iR6PJ
	ucsLozEp57XRgopn+68Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyW3-0001sh-9k; Mon, 16 Dec 2019 22:06:59 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyW0-0001qs-HN
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 22:06:57 +0000
Received: by mail-pg1-x54a.google.com with SMTP id d9so6005600pgd.10
 for <linux-um@lists.infradead.org>; Mon, 16 Dec 2019 14:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=YrbllExGb6NsWygYEF2barQHzhEld5JNWw7UJUUR3A8=;
 b=bGU/TMzHT8t1jHkPRMHorm6ZH+kS5NyIJFKxyLm+Jkb2Pge5M7rd+zZgm2+XK7IggH
 58+fAHsLstoRBKR4oSp0awoxKcmZn/vdwak7Ok6hW/9zQp6qjTGTCjvSYQM4QWyPYFXU
 bZLt/DOJBPHWPkNBHlfbB17DP8F1Yi138OSSXfwuqRMnlbFDqGiKO4aiFX16zURzXZjm
 y2QdB3uD5FFiZra6BzFKDqLLdSu7s0YZlLGs48ZPu1EBHyVhiWQlbtBIWUT5ZpBNetkL
 8p0derp2Urlgej5DMKZQwSV7gXlDYUJvoMtyGKZo7sLadNMXYzCVWfNvyQ+QRF6yoA+P
 MtwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=YrbllExGb6NsWygYEF2barQHzhEld5JNWw7UJUUR3A8=;
 b=MJk12jV/KRPWQd5ost7V2HmvRxZiSLKzmIwUDzK+Ge6CWpozygMd8YtkWN880rk9dy
 86YyewVzmNd9A283gu4mgbbxNPKewOj8B6Yv4sPisgcz6ek/DS3DEPUCR2BelhQvcC3k
 OkOHlw1wh2LS0yTT07yIGxa6fdnOSqfR532kTH7/5PbJlD0UyhzQPNkoDCuCDFOdKfJs
 LBsAI21xDMLg90Gme/4Qzk3PfuZCllTLZuaLz67a76nimls+QuIJV9V6sH3Abb1IOH6r
 XIoMF/ZpslAUTvY/zYIIoNbUcyvWPvv+0lm7zyFKR1b8vkSn/kVmdCWLgNDlJI8Faec4
 iurg==
X-Gm-Message-State: APjAAAW87ahZF+TiQBdKVPD8qvsZ2W6Tu1E9aGxpPT8uIeI2g9RU5p6u
 AQuLZjusDRDUdzyBj4PCBGN/XlD4TSpGyp7FacT34A==
X-Google-Smtp-Source: APXvYqxrelSmb8kJZfwAxsqH/X93e7hDs660BOk608W2qWxwl/pKbx/L56EOVl3cXeaGEHwoy1HG/gK9hYm+dvGXKNnr0A==
X-Received: by 2002:a63:d249:: with SMTP id t9mr21497292pgi.263.1576534014906; 
 Mon, 16 Dec 2019 14:06:54 -0800 (PST)
Date: Mon, 16 Dec 2019 14:05:51 -0800
In-Reply-To: <20191216220555.245089-1-brendanhiggins@google.com>
Message-Id: <20191216220555.245089-3-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [RFC v1 2/6] arch: um: add linker section for KUnit test suites
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_140656_572973_97B92DFB 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 knut.omang@oracle.com, linux-kernel@vger.kernel.org,
 linux-um@lists.infradead.org, mcgrof@kernel.org,
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
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
