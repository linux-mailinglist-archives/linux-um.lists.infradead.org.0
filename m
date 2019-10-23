Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBB3E116E
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slf5KCZ/sIsTQOi+bh0JJfhnXS4bnYgqyu0NNQfQA2E=; b=MFfzFQovVlumYW
	o1K/Yfb45WSAmtrXU2Y3cl4bQEaJpn+5cBndkaS4ypRNYeKurZgqmt+qd8DqEDzlzPovBP5PnCKbr
	MycsUhy3uC72otJ9XSaNl9U+yXPNwSg4UssUnkOXLl2wnNinOiCxXYt7hALWsJAI7wV08HFdCNsXN
	M09Vzkn1CKn1zcImUat658Sw5IiSQI9gnD4On8l9ubvmg5SGCpiIZhAMcD3Ov3O3ZbCNdPPlx/QdB
	YGJ2Z+pGiAXsDEra3G6Kbp1NVzhNmSi302EePbjzoaK7WNADM+ni31jBkCsRk01/lD1BdDyuBClf9
	Bp41aBQsCqM4xfqHshaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8l0-0002Kv-4d; Wed, 23 Oct 2019 05:00:26 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8kq-0002Cb-6U
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id v5so4745760ply.10
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JdQzqUTDdPCKipZzqeoQ0qh0njqgqODS3douIl8T/zE=;
 b=PYI7Jof4Tzl3bYtk56ybAZ8q5GEaauucxA5qSAu8zUxoPJRCvSya0L0+rBH9gYANDi
 upCsBPK+mIPdYJ7S9bIllbSP7Lxwbam4bXVXpcYVBt5kUlke/QJjQMBa67k8DQWtZPlC
 ESOK10K4LM/hVHf5NqRzSgIkT9l8flyaV2YLaOBRBNajLdLAcrincWvawLEVJ6+emPDC
 ieP5JqVoYWhSJXDEAsUY9KrIQ1Vp8VQx/JtX4KDM358yZcPzQ3arcTK1NOP4EjE6xDyr
 xvykTb6qcafYyeQoOVTxIQyTd8mub3TI2YSL9EfHP7CHQhPjnNpmfr6qYElXD2oYhlAY
 60bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JdQzqUTDdPCKipZzqeoQ0qh0njqgqODS3douIl8T/zE=;
 b=L/0X0FZ1DRDs5urDBsr2SHer+mHQZ5wJeeI3qR1oa6GPuNzw/Z8xP0QEZxlP7W4pM6
 GHDClRzAmiVQ3pTzTnTdpf5BPfL1cDdKxikyqSHErT/oW5cdmkteqdvBXz5/y/+0ASMD
 5YwhZFDCglGJmAm1O1D2wFprraaqJPoKjM12JBVT/uoCxjTsKVOICrwffY6nt3ZgMoIs
 zZAbAJtqD/N7cVhNLCEVirZZxnPiHKiz7fPBT8tqBeLFpUydHxdcNhaliGkl3phd0P03
 bpBG81XsOA+YMIlc9Y9DssAaw4nFngmH7yyTyEATrVUC487Pr3uRPTEaP9xuZVRHaz5S
 iqIw==
X-Gm-Message-State: APjAAAUvTZrOqb6/VijJAAWl8qarGSghuTZOc+Nr1rSREyCsWjU2jUEa
 IvGh4V6nmmhqxz3Eyzfow9hxW270FhN0xA==
X-Google-Smtp-Source: APXvYqy7pPVYUnliFc6rCJeotwtBO4ag4J7naAckSjyw+Z6YF9bIxcO7Jzzvvcu3KFxL67o7hMJDMA==
X-Received: by 2002:a17:902:b70f:: with SMTP id
 d15mr3742975pls.210.1571806815432; 
 Tue, 22 Oct 2019 22:00:15 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id r18sm25602290pgm.31.2019.10.22.22.00.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:14 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 46042201995836; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 34/47] arch: add __SYSCALL_DEFINE_ARCH
Date: Wed, 23 Oct 2019 13:38:08 +0900
Message-Id: <b194e2bc0599332deb753aec7949eee13e68dfb4.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220016_275174_9EF131B8 
X-CRM114-Status: UNSURE (   8.74  )
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

This allows the architecture code to process the system call
definitions. It is used by LKL to create strong typed function
definitions for system calls.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 include/linux/syscalls.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
index 88145da7d140..77e52fe19923 100644
--- a/include/linux/syscalls.h
+++ b/include/linux/syscalls.h
@@ -203,9 +203,14 @@ static inline int is_syscall_trace_event(struct trace_event_call *tp_event)
 }
 #endif
 
+#ifndef __SYSCALL_DEFINE_ARCH
+#define __SYSCALL_DEFINE_ARCH(x, sname, ...)
+#endif
+
 #ifndef SYSCALL_DEFINE0
 #define SYSCALL_DEFINE0(sname)					\
 	SYSCALL_METADATA(_##sname, 0);				\
+	__SYSCALL_DEFINE_ARCH(0, _##sname);			\
 	asmlinkage long sys_##sname(void);			\
 	ALLOW_ERROR_INJECTION(sys_##sname, ERRNO);		\
 	asmlinkage long sys_##sname(void)
@@ -222,6 +227,7 @@ static inline int is_syscall_trace_event(struct trace_event_call *tp_event)
 
 #define SYSCALL_DEFINEx(x, sname, ...)				\
 	SYSCALL_METADATA(sname, x, __VA_ARGS__)			\
+	__SYSCALL_DEFINE_ARCH(x, sname, __VA_ARGS__)		\
 	__SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
 
 #define __PROTECT(...) asmlinkage_protect(__VA_ARGS__)
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
