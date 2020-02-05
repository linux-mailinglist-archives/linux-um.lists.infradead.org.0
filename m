Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 922A41526D7
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHFC5/jgnlc39WXywQNHGDUG+Kybv1nKxFrG8+Gd8ro=; b=OXUqGTw8apZT8A
	Ko2vmZgwVIBcfFUkjGl2uc/EhQwjvV6NqZti8R07Lo2IdBqIutXOrR5dYJJa9zsC6iA/23X7QL6pO
	OaRebb6Xkg3w10JCOcJgwIStMkbzNkHxSfHflPB18O9eGTVhig2tpzw7tkYjdlltfQ1z0ua1wxB3p
	sSS1yzGOga0Rq3wdgGZNhr0NoThRFrP4l8+ZS16uiRWFmoWd19Ybl9og+Z1AWmQBAmg+o5akF2vTf
	gu+Ah2MyAKkYv8lfQnyK9Bru5V/W1TWqCcgLR0xzGgUerHmR4Flw8t4ROsHz/gH8389jHGzU0DBet
	L2UV7EKX0KwyuxAWseUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izF97-00080h-87; Wed, 05 Feb 2020 07:30:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izF94-0007zS-GR
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:30:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id j9so734355pfa.8
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5Dna74YdYRlTvjEF+bamCzYS7zvkADnMfS5QZs5tBd4=;
 b=fCuCVCEc0XFRXau1LqxEA0/Cm7EL/NYr6Z8jlK7R/cfQBoTFNZdhV1oXktzh04ue5u
 Gn7NbeG9hcvhDAcdfkvH9ACcHa6gkjpeECMpVCxtwUR0HmIySPx6cjzjzfn0KCrSbMd7
 0Bd34f9A57BL9oVj3W8cLiAwT9vM/wFU2ef6AZqLbzeyCB/OIwytFNBk0iVy8mHH51eI
 pmmhUfvJlw9lZTuJFNSJzcFr5Z6uLZKz4F7qfeZ7GU7usepCHCt7MgdXWpijiHy3ajhF
 kecIghzPnWRAKMTsGSNCMzbZlHYAWerax5YbXZNUtVTKyrZbHQ1Q6rZH03+tqycR6JjX
 ENAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5Dna74YdYRlTvjEF+bamCzYS7zvkADnMfS5QZs5tBd4=;
 b=st+v4YjOowA/Pd/vqs5A478rYg+Ll/ziHlQYGAOyCvT/OvjQMeeMkRFw5w8g1cUZKR
 RKJJOHJieOv/whnYADqK68ADJguCPiX2WcPq/Rwty3dxD3f3Bqfl54AJdtd3QqnaLYIE
 k+XcMwGoZkzMNBri2xpycK5kahp/ikAUq93SnVO5+yyxZ8j58gz77urCeEmee4CxDnqw
 +Upjd1nUo4KGPR8gKCacEb3YWajyBHwmxVKgrpE1yf1iUFGhznilK/lQbIye0o75XYTl
 qbJdQt6HXvzvJ3dEa4l5FR3DPk/wGRqS7zar/UHugOzs4NT0kWNTMtCjwrxNgn86URCX
 TNCA==
X-Gm-Message-State: APjAAAUCB+dogIjGKaiTVi4zmUe9QaXXg7MDxnvYmIDPNttwtA0Bn6oo
 e9M7qfgrXDzcCp/Z6zbrdUo=
X-Google-Smtp-Source: APXvYqzJpryItzlRmuVT9f7SRrLUg5hEL4zCL+VSqfX/etnYD0qu7lnliQBvdtx8apM1fJj4CClMQw==
X-Received: by 2002:a62:4ecc:: with SMTP id
 c195mr35725224pfb.158.1580887845329; 
 Tue, 04 Feb 2020 23:30:45 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id r198sm25241079pfr.54.2020.02.04.23.30.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:30:44 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 45C0B202572F9A; Wed,  5 Feb 2020 16:30:43 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v3 01/26] asm-generic: atomic64: allow using generic atomic64 on
 64bit platforms
Date: Wed,  5 Feb 2020 16:30:10 +0900
Message-Id: <39e1313ff3cf3eab6ceb5ae322fcd3e5d4432167.1580882335.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1580882335.git.thehajime@gmail.com>
References: <cover.1580882335.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233046_572033_E429BF52 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-arch@vger.kernel.org, Octavian Purdila <tavi.purdila@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Akira Moroo <retrage01@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel-library@freelists.org,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

With CONFIG_64BIT enabled, atomic64 via CONFIG_GENERIC_ATOMIC64 options
are not compiled due to type conflict of atomic64_t defined in
linux/type.h.

This commit fixes the issue and allow using generic atomic64 ops.

Currently, LKL is only the user which defines GENERIC_ATOMIC64
(lib/atomic64.c) under CONFIG_64BIT environment.  Thus, there is no
issues before this commit.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
Cc: Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Boqun Feng <boqun.feng@gmail.com>
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
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
