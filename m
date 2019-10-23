Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6443DE1104
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ialIyO1cDdhgynb+K2GRkcdtIOdZvSp0yeq+66TqGu8=; b=D3VOu1BuwqigO1
	eexA7prjQguTzvq/EsZHbWpIWjdgnXbX9mSUZ9Przz9oNDd5aYGl94xdzvgemBwsvQGPoF5hHhEVr
	TAXDoLcMcm2X7ZVltu4TizYZKoLmTdaYUZ6xOuWSp5f41kA1XKXlp2YqN/X4xxvDTaJQXmnnubvV8
	X2YXozDAlhm3GjZ/T2hEM5m2087b1M1yjFfG/Tx7FhAptoJ2KzBnZrqFASrTZhsK2IrdvqMLQcsDc
	+ZYgjXZoHbk1LUlufy0TSLuPSlmXgCOI9mZ7I24pdXC4hx8Fk+BrmDkHps43+oKB698WCW9TKDFn6
	pTCcyMPqAX5gfxsom5Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QE-0001ib-1G; Wed, 23 Oct 2019 04:38:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QC-0001he-4m
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:38:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id d22so9450208pll.7
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9YvSwRshs5u7tTng/y5SfSRYHGzRFvn0hRtfC912iUE=;
 b=T/oRSn9sIs1/Ws5XgQQSuDJd7uYdUpaebFyIu6HO1shi1WKCFTpDxCFm79BO+6689n
 vKIqXophT3NViy5jIf3ldYEd0JcJI/eQQ7hlcZtrJjFd3WHeruvxLHK5/pcMYTJWIXXb
 tloGwYQD4g34PWMj01Zvod35Cu0emR6g+m9QiGFTxbG4Nkb5p1B/XBYbPcGXzGraWy4M
 3EFnHv1aSh0BtoBbKQfTSXpAYGxqwsU/m9qJwL8Iq3obuCnkW7WYa2g78/poycs9Rn9g
 XVUXEV8JkUKduGqDi+qBd733UuuzF8aq31BbNA8Cg5ggo47W7hgiSJ59516STNtPvFtC
 DE2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9YvSwRshs5u7tTng/y5SfSRYHGzRFvn0hRtfC912iUE=;
 b=T476une9EbGoDEBDN1CF0nccv7MyLwpJgCoFZp6Q6WO3RUUComBw7VyJhCx94SkrOj
 BVfztnWeveJxLTklMWHM2KQAVW4GDOXH7j3kslSbXPL4XH6iNLFqjgO3faV3qYS9ma8a
 6BvvxCCahoJd1z06+2G0M2Bdjx/lGn2HhKEdHdF7JuqumdvNyL28gTFZM6G61fDS7XBx
 6p+mOOspBdKo2OhsyjKg1JU9kYw7DJVAU0pkkr36SOjfe9sgrevrM8QYjITpLT0VgHno
 v7dx1ytWuP/0K9gmhaUU7I9YxNcCjg0vjwU55+XGaJLb4ytf3YVZs2SCYaVAFMgEtrln
 DQTQ==
X-Gm-Message-State: APjAAAU+u2Hp3lduO5T3gaxr+HbZEaWsMYEAPTYdKOjVVKr4Os4KcvGD
 pWWUK2udBL7XLXzyyBplRwEzYQ8MjYoVrA==
X-Google-Smtp-Source: APXvYqwQ7E5rOBB2Ih2knKirA/tat+4T2pa1o1tKeSLWY7Zk823XWhrbplm1xC64eGI1K6fAQ1b71w==
X-Received: by 2002:a17:902:9a88:: with SMTP id
 w8mr7640883plp.129.1571805535240; 
 Tue, 22 Oct 2019 21:38:55 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id m102sm18103565pje.5.2019.10.22.21.38.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:38:54 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 12BA32019957F4; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 01/47] asm-generic: atomic64: allow using generic atomic64
 on 64bit platforms
Date: Wed, 23 Oct 2019 13:37:35 +0900
Message-Id: <29a86a6d6018891f9dc90fefa864cd19fbc10b74.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213856_189440_63EE2B70 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 include/asm-generic/atomic64.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/asm-generic/atomic64.h b/include/asm-generic/atomic64.h
index 370f01d4450f..9b15847baae5 100644
--- a/include/asm-generic/atomic64.h
+++ b/include/asm-generic/atomic64.h
@@ -9,9 +9,11 @@
 #define _ASM_GENERIC_ATOMIC64_H
 #include <linux/types.h>
 
+#ifndef CONFIG_64BIT
 typedef struct {
 	s64 counter;
 } atomic64_t;
+#endif
 
 #define ATOMIC64_INIT(i)	{ (i) }
 
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
