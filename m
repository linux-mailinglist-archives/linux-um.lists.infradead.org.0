Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF65F3F1B
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slf5KCZ/sIsTQOi+bh0JJfhnXS4bnYgqyu0NNQfQA2E=; b=niYe8FEwK9UHOR
	1q7SwiBmMAikJpdz9+jqvc0rN/MgTKilVGPlRfAWYCPL7DqlilFPhKM8s6E4lCY4GyVf0T29SXj+k
	fqcV29ydxCR1rCw/DudDlV6Q9nHckon0UeafzI9mWgspXTx+LcPSWuvIPzE1n2vRRmIH7MqJwOeH+
	PmZxwBqLRT4yezYRhu8ZD2caW/nM61g4GQSLEbqBdWISd0mI0rXK7fby58F9I/kYaD5MDDlFpoIDf
	owweYByYz8ma95Bi5/7EQxzq7vgSwRHNXqJQEXtUw5TPQ/JJZs70/ANEsww6X57hQEy5PUJy0NO8D
	sJ1OaoXWp5XJFnl7OMcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQR-0003Yl-Qo; Fri, 08 Nov 2019 05:03:11 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQO-0003Vt-OT
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:10 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so3863292pfp.5
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JdQzqUTDdPCKipZzqeoQ0qh0njqgqODS3douIl8T/zE=;
 b=jB1Lfa1l0s66Jca6rqG2rk+hhfVNudDnUrxGClndqRmaBL/Uc+LvWED/pEB4aQkj4S
 WkEqi3v7CHuvUwpWzy3SHLty94jNRDOsjcPAZNjXXsd8+HlJxph2NiJgnTU+r7ZSs6/9
 uSFw851rCyDAKGfmAX8OfAX6PDY80qr64a+poRCHSTu0NzVO3qxhjzyGMApKcQWzwm6d
 Ugi1y1OtjD3H6bvMPA4xz9YqA/W14RmO9Weym0N56Hph7cce/q80YSL3ejKj859Qo9PD
 P6MQibhaB+uxWG53g7UdjZ2nF/A0xSzMBAQN4NnBigE+HFFaelu2qBAuODgRupawESkS
 jmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JdQzqUTDdPCKipZzqeoQ0qh0njqgqODS3douIl8T/zE=;
 b=Q198hn0rF8gbocmJSuVSaa9tQY+30C+FiqMqbRS66ql5cj7wHTbTyhg68JQFz/6NAk
 dR4EhGymMuQN1WbIkmI3wMZmDF/6+cSG/5h2BllPNhfpRqGlypAljNjJuCuCsQKVdyHb
 YoZREGAkhlQiTPGhwE4LkRNNUQfG2TK3qxoSecCIbRoEi9RHac/x1WmINKSsbZyyHCC8
 zZO4Lf7I4yGphuDqxwwYEFRcJ2caWTWHtZbAb0yD5JLGq/SkLmOsn4ewJrkeDRQ5+ihR
 4WgD1coZu2FfhAmIR65lTuvM+UPv20dkToXRo59BwVvlUZyrL7pBSz8SehWcHVghlu/f
 qWyQ==
X-Gm-Message-State: APjAAAXHTsHMt4QRJVHM+7njI/Qa/QpXXVL2npvzSD93F/+DLr/AUFXi
 rWCwb028QFHSMYdOVhEGzEs=
X-Google-Smtp-Source: APXvYqwK4vVInJ5LQ9Ah05ybRRGnhlZ51+XIbpE/dDIfAjYDRM5yQj3F+GlZzuoX/H+iFmDjP+Zpwg==
X-Received: by 2002:a63:eb08:: with SMTP id t8mr9673784pgh.49.1573189384295;
 Thu, 07 Nov 2019 21:03:04 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id y22sm4661021pfn.6.2019.11.07.21.03.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:03 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id A3628201ACFC47; Fri,  8 Nov 2019 14:03:01 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 02/37] arch: add __SYSCALL_DEFINE_ARCH
Date: Fri,  8 Nov 2019 14:02:17 +0900
Message-Id: <d2d52cac3eff859b8cef0bc755cb6ae4590f27a6.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210308_834490_40174EAD 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
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
