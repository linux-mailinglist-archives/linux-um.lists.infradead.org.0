Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A53F197EC1
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTAd1AVVDfiJxV8jShqVb+6l32c8JPu2Fp4oYyVaEEM=; b=VOf3yU0wde3gfq
	T0p9C0JKVtiVntj1O6YKEBWk/nx5FKTZM1CuFKd5wAgG61zaeDmdmYcndkXOy8irE0xkBEd7VKOyG
	f8KaRWmyj5Exp4J9GHi9QHuCRCUVy//KDAnUNbQciBNmpwSfYXNKHfSvVjFntrtatCzhufk6nJlD9
	Q5U+in9ch5yLlVySpcr4SxOinIS6BVJDT8X1Vplgh9bndJVaqKboLDAMRW9pE9pbyA+Bu0KTdlINp
	QNFg9YGbz8SHr7r6U1vo9IrmAdtoWNPF4ewbl74R+ZoeNLjnlMvhIS0amPh/EHbiMEgu+05B7VcVc
	PsYmV/LhpWjIxVWMHmtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvgT-0004S8-TV; Mon, 30 Mar 2020 14:46:37 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvgQ-0004RM-8K
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:46:35 +0000
Received: by mail-pj1-x1043.google.com with SMTP id kx8so7412707pjb.5
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BBNV7mCHl8ARll4ecc1sVG2Qhvtdfex91jBAy7FeD5E=;
 b=Xg7FkvV8uCD5UbuTMsSG7MouNqxGXREwGo2CzFyIyiHdAtB7sXqI3tOWVghjtUEYh0
 aXs+eWoOseSRSsH8JiqitZJK8BWXHmUUiLOCkuDb98VU3Phrph1MBzuTmTuW6DQsnW+E
 GruUp/0qfCRyDEsZ7tNIhn5CwEzk3RhKUl4sSSZYIOmzXcvrQcnlQMp78LfHMoJgypw1
 823cbowoiSUn/YmTyfTQhqIUOUMM03B9YXiNZb/Y8kJply0edBKDKPirKYjqlSFI24q1
 Z63y+/vmE+nTUoUwxQJKEeO9u7H/Mg3U6ITyXYlSHKvFhld8eynK6CJ9z8eW2eAEV1T7
 dlnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BBNV7mCHl8ARll4ecc1sVG2Qhvtdfex91jBAy7FeD5E=;
 b=UZDfv3JKCMaxWzQKdk5NOfxb0caz+MV9cwl3KvjswnOadTz7bzbF0sLdsQ3b1P/2Rt
 sxJIUzFgbwmvNDXKk9TDcYn+E0JQrmIk5aItL9tg3QA2Ug6k4etWCnIOThON1aLxbK/G
 l4CcuDaVUa3iXyc0AwH7vBmC3sy5vsVS0fswYWiYgDRK5g1zPORqBaokPZBi2tW4uCRl
 yuXZwqesKwiC7tRUtqnww8QlWa5i3D9XOMxxJ+uIxGnBSgezV+pe4inAnzNbNWn+/BOt
 nXW1Nd7gpAM3a8CrK9smRpkLeb40nLrbhu5tjSYFqReI3wFEkulugyJ8xnwPBPHCkksv
 FW8Q==
X-Gm-Message-State: ANhLgQ1/T5+CHshtJFisqYmBmpVLOvPdDGjBBhWCMOwWGS5k8otkRbKv
 s/9ZqxCsycisf4LzR6Ms1iM=
X-Google-Smtp-Source: ADFU+vuzOLitTeL+ZQiw6hgGpxorkO+zvB0TOdLFdQtE28ZuSntUjkSNVSQ9+B/KwzIkHl+Y7e0+XA==
X-Received: by 2002:a17:90a:f98d:: with SMTP id
 cq13mr16273240pjb.105.1585579593306; 
 Mon, 30 Mar 2020 07:46:33 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id h198sm10333214pfe.76.2020.03.30.07.46.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:46:32 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 2A534202804C0F; Mon, 30 Mar 2020 23:46:31 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 01/25] arch: add __SYSCALL_DEFINE_ARCH
Date: Mon, 30 Mar 2020 23:45:33 +0900
Message-Id: <9b9d47a8be1c38561d0fc3e4478628e4bb6056ef.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074634_301524_054A2022 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-api@vger.kernel.org, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

This allows the architecture code to process the system call
definitions. It is used by LKL to create strong typed function
definitions for system calls.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
Cc: linux-api@vger.kernel.org
---
 include/linux/syscalls.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
index 1815065d52f3..e45815a3ee10 100644
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
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
