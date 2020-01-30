Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B1714E5E8
	for <lists+linux-um@lfdr.de>; Fri, 31 Jan 2020 00:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d773P49KfsRzYU7SgKI9hfkT/tJwF4/veYBg1PsKxNk=; b=ltFLUzFoUkm+X9
	4kYfVTqoSXH3rERawMRLHm6iQI5UQ1zoRhD5NmfRlvwmN+CRirrKJ7ep/k40E3xn2NFbtSeaRkLUi
	FNydNlxSMQ2/zoWh49Pg3lAbFQyO9I4hI5JrK01eKgx6FXhKY2V65EJD0Rw3hjFolVMdSHAbFWUnH
	IB3UfOtj470ERoCpg4RoR8LkB6Snpxt3FBhZaDTf1DonD8+HQSZS4xEZH1vtF9HkfiHPG2QUiWeeS
	DarHEpc1QzhcoN71gTq6/EbDka2ddMJKshznNSjNYJDxGw0vOdseVuVJqRK10L+VStAINTNh8E1em
	0FXndT80l93sdbUoogjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIvN-0006Bo-Vz; Thu, 30 Jan 2020 23:08:37 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIvL-00069o-GF
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 23:08:36 +0000
Received: by mail-pf1-x44a.google.com with SMTP id r127so2753198pfc.11
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 15:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=GWHGFk+tfCHvu/qeG8h3yhiMIdqay1deL3woZTxVWJc=;
 b=SK7qbAbMVIMUgyE42nQVDPyGZ3xVFHv0chQcoZWlALn4b+uUTa/V5PsexsEkn4W2Kb
 bZ7asnJNgDPXfOBetYqJnB9J2XcNvSCZ2/XQ46hFJbZuHTPb4tjLrji35a2EH5gEYQHX
 Vkr9rAsWvphKeh+EesgLzV0XxJ8zZnKFtmATHJ3yzTibY5hSi70Lnx1UCkTYJAuNwZlh
 OicLwo5w9sN3kYYpjEk4VGqXocphh9jYWtcIwf1NuOdGOcvYH5uehNSugKLXxfxcIe4+
 5dUSUaen9Esm8+Jozb1twYu1kudX5eI+ybO5b2ahw9UpOS7dJqKDb5rKEe1YFZwBGUag
 JZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=GWHGFk+tfCHvu/qeG8h3yhiMIdqay1deL3woZTxVWJc=;
 b=RgDF49RPYv8AndplWnRv2TBizdnxopOXgFC8DbM21hRaMTBCHjiKOP9aMc6Cm6yRL+
 oMCDcLGxNej2m5ze0L9AgMxCCxz+NuWB/soH23fCEOb5DakGbnJBFUc6dk2AU5+PT0gL
 Tz5evxVNu/EgWCvwjA2QfEfMBsvcubOuwtP/uqWOw9drQh7oWLwz4GyyiSTQ360yH/Yi
 6LdamRQYNQveQFQlyMSmoQhpfsysqK16UqA7xoHd28z6IYzebReNzfharshMjtnBRrmi
 W7Xlo+plH94w3FoxdQm5cQ+6obtZTK/umWe2ybH8utcB7jf7KOp7FyxAMahzxb9FQNRA
 6wNQ==
X-Gm-Message-State: APjAAAXsIA1d2JCAR4y9Ulpiocq0VZyy/m9hwFCFJDIYA8Hj3BgH0nMr
 cRJsFlWLFuBkgETjr3Ujv328pqfYkLUK2vslTqO9tg==
X-Google-Smtp-Source: APXvYqzh84slKzyUU7Hf8lA5m17FvOWJKZUYYrXcCEAGxMB3WhDFDTTWmSv14cUPAQuwHTR0/deMhklQVof4n1fVyRG7sw==
X-Received: by 2002:a65:4142:: with SMTP id x2mr7048130pgp.393.1580425714304; 
 Thu, 30 Jan 2020 15:08:34 -0800 (PST)
Date: Thu, 30 Jan 2020 15:08:07 -0800
In-Reply-To: <20200130230812.142642-1-brendanhiggins@google.com>
Message-Id: <20200130230812.142642-3-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 2/7] arch: um: add linker section for KUnit test suites
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_150835_539299_698920AA 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
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
