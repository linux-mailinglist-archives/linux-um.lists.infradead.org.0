Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C97B1526D6
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1W4fUQFwKJznmGMBvacX0m3GMjUSJ5ECTU2v0M5Kg4=; b=D+vD4JSBDkWQwm
	5VWZnAgEfRLNbwiZz1cq7RQPlTMJaFEjdjzmOH6AfMlj9SNuDmoNd/HPSPbUvUngnESRveBUsmid9
	PdLh9EdLgRNJrZgdakG3PX2vhdNFZCCKnrl5n6Ymg/tPzNqCCfKmyL57srjjtVKZfpjOGT3EHIlP+
	Pw7PFn6jQX5/ktOsAMqXYbWtG8rMcSQKrIqLLvdnDQce9h8l/sY8GGIXUFn9sBd/lnqBa7bvUYcUf
	drZ5YJcPK9oV16SoB3VmDzb4Xb6ZTVsgGJaKpFThpKyM5YCxjB5uolUg2CPBnkTlmjuqKgzpZ+vbn
	ILuBl1UM7cmKSHWZYCsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izF98-00081E-Ch; Wed, 05 Feb 2020 07:30:50 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izF94-0007zV-Pm
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:30:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id b9so513149pgk.12
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vg6BkPgdBnIv8FR0F7bUnVnyFArf9a6FL/TT2MUcngc=;
 b=GXOBtyBB3q0A2TeT+nsp7OGGr45mpZgvSN8MfaQ6CucjuRQnhPwYwu2AsXGc89/wb9
 D4CAtw1uRbMwE4lGkZ+XAOo8YVSa657IaTgBFNT6hERj836Y56HO7jwzb3vdxG+Be+9C
 DnpUTpH0CasiES8Pt3ykHhBaNPJvLPiGmeCkXG8HHBcvomBO+J340diD5wIFYYXOlNBq
 1zq8SQJSEHZGnSlKsqA9bqybKxkPlaehOCwkWVAPL0R7tks7QPzygPwnuaMugA/Us+hb
 TgiCJ7wtPHsnF8tNFfaTxLlTb7BWlv+fDUm+IrdC9eFvVBGneivW181WTT//CuSMki1f
 V30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vg6BkPgdBnIv8FR0F7bUnVnyFArf9a6FL/TT2MUcngc=;
 b=aI1Z/K8JGjjkjrCAkh0ZbyEfDFvr8PjTUGQrhgFZIjNM6O+VvzvFB7+bLRa11nwmW6
 FcsokhJw2klU5oHgmOGID3UPY1+8M9SQv3KFx5iNbM6YoEMAU64ZKqGtoCG9EmJ590Ha
 FNzeohT0hKR068gcEtGRyOeeKBkf01xWAYyquV7IdKhRjNFLtV/4GjX2OCLIDzYWFFJ8
 FOZJVwvl4w96TER01XboE8/IBgi5mnk8AslJbwYCaXH9eGTNEXBVKT3rn+/vjxn+Gxe2
 a5K1B6bMGZdQpqfyn3x6caNdnpu+GniAL1WwAPeOnJgnz+vLALK23VEHC90JD+NmksIz
 6KWg==
X-Gm-Message-State: APjAAAU/PBelf1Yk83GtPq/h53ltT2V97Ec8l1bW1F2OJvnRg18Ydzwu
 XFXYepaJRL1xK12rFxQCA18=
X-Google-Smtp-Source: APXvYqxvb2HbJGv3QZjO8DsJt6hJRNg/peW1+u/siA8n6J18Wwo/T9osvHo5c6KjaSQHqf+JoAdjJw==
X-Received: by 2002:a63:f403:: with SMTP id g3mr35969352pgi.62.1580887845691; 
 Tue, 04 Feb 2020 23:30:45 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id c74sm11679902pfb.135.2020.02.04.23.30.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:30:44 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 4C4C6202572F9C; Wed,  5 Feb 2020 16:30:43 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v3 02/26] arch: add __SYSCALL_DEFINE_ARCH
Date: Wed,  5 Feb 2020 16:30:11 +0900
Message-Id: <67cc975b4ce5aaf1ce0e955d321a7487cf27d6a8.1580882335.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1580882335.git.thehajime@gmail.com>
References: <cover.1580882335.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233046_834238_D97172FB 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 5262b7a76d39..d61069aa869a 100644
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
