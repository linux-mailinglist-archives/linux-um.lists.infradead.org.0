Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C975E116A
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMfxEENljh//g1qYSU8fqUvA9gzDoFSeToQgUcW1rcs=; b=MF5InY37+h/tQy
	5sebFE6O9pU9u13qtFB1km/qOVi2Xkv7uieuY2hzQ66Xx8T/cj9Ux7E2GBijYpHaQYMRwRy76AtT+
	QY7ogDa3Aju0qmJr+wz5m2K9b4N9mlEMXHHYSfJtetMJPLKHa6jsufn8MGK+w/rSnQ2a7OgQhKqDA
	XOinA1bqPsMS+d/T6ruIf0BQAkJVqDsuYNymro9UB+wE6/oKu3sn54EnVR7MgdT5e42+yJzaXCk8t
	hcuzgvHmc6dDBVh9wjgUeCcRN5uMK2AOrqPwsbXz04qhzbVxjtF3Q0cuCpiPswIw9M7KK7s42U3Yw
	Ndgri1u+ag6PnRdnfgFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8kx-0002Ha-Ga; Wed, 23 Oct 2019 05:00:23 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8km-00029V-I7
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id c184so2600998pfb.0
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1GhXfUJNHjiAU9iKXIVdPMmtyyj3hWU8Zy22ixBkj9Y=;
 b=r7+JD+TLxVy3yaF9xGP9MfeDMQ/IQ4bYP6Dn7SUtAVa4q2bbNj/wvg48P+J19ykQgB
 8cAr7ft55jjk065Oyc7rHRidNJkjZ5pI5n59MIFIR2O5vYVWA4LjkHfbXED31FKMBced
 n1wJ4Ijm1z7pIbPRk46kjuERne7z4EmxixE/tZJPipZHwpxXA4kub13lvAMOOIWZONIG
 25NZai3cVMaqVbBnBAND37jYuh+JsMebfIj6/Oo6WzbUcoqnZ6PyltJ6yRfPDN/S3BBg
 J7ruR7XSEh7J8nWg2wIapPIHC+V7bkEsStprD5jFVH6vKq2j5xLLu+fxrS8TTFsjp9c8
 YaRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1GhXfUJNHjiAU9iKXIVdPMmtyyj3hWU8Zy22ixBkj9Y=;
 b=Z7s/OKp9msLK1bKdxYI9OTrxTnyuJbNa3bWYHeztb4j+adBJKs2WUT+yWdwKRLA7X1
 7JiKKe3/uB437BSggDdTK7sTRt5ITIIY0pwuirMlqj9GcFMYkL7J2vdKQ6FJ5a+MHTMH
 Cfoj5xpQn/9eDDNkovaONwQLoSK2VEe0882/fN6UF0XPkrtbPZJVFPHyAMDkxcuZVfHE
 eSCNFHf4nQnoM5F5bwLuqnkJgfflhBykKrVTxGoESqrQVSqKMeva5TeYSxCDAyAyg+lO
 tLFjnTro0oZ6eZBMcftmFimbSi0/3c4Fr5wb6urc2jTPVScB+qBQSyuXCZz/u8I7T+dv
 Svjg==
X-Gm-Message-State: APjAAAV/KInI2MYxd6FXKEPvL15XrQ5IgLxZy1dOfH2jdF7MzsQR2Tzk
 1qf0c0rSv3PdjF7SlBn99iwfLUUelzNhFQ==
X-Google-Smtp-Source: APXvYqwScfx4hcly60X9+WIYHpUXehN8GCPIP2iKm3e0/epe5BSybiDTp8UuXakw7GUVmizKEkQFEg==
X-Received: by 2002:a62:4d04:: with SMTP id a4mr8462331pfb.71.1571806811758;
 Tue, 22 Oct 2019 22:00:11 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id s191sm18969092pgc.94.2019.10.22.22.00.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:10 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 3E92B201995834; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 33/47] signal: use CONFIG_X86_32 instead of __i386__
Date: Wed, 23 Oct 2019 13:38:07 +0900
Message-Id: <119948eaca3e92c7bf92faf1a37722c1c21ecb88.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220012_685908_D18DF7B9 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

This allows um/lkl to build/run ?
[XXX: need to check if this requires or not]

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 kernel/signal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/signal.c b/kernel/signal.c
index 534fec266a33..561de0e1e66a 100644
--- a/kernel/signal.c
+++ b/kernel/signal.c
@@ -1241,7 +1241,7 @@ static void print_fatal_signal(int signr)
 	struct pt_regs *regs = signal_pt_regs();
 	pr_info("potentially unexpected fatal signal %d.\n", signr);
 
-#if defined(__i386__) && !defined(__arch_um__)
+#ifdef CONFIG_X86_32
 	pr_info("code at %08lx: ", regs->ip);
 	{
 		int i;
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
