Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE75F121C4E
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 23:07:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hefKz8oValxXVz23d8rzzyZeOIOnafBNnCFqhBYR14U=; b=t5/wUG7QS16TU6
	cKWEXSoWyOoN87tVwqOtrbOv/g+8FF+G8sw01A/N3Geaes+0exSLlP1xmAMxPCQaYVgi4gfl4UnkF
	8gN81oNLMKz2n6JM9jQ6xB41EPM9X1ZTEy8TJGyIdbITpTJsHC40MiTc4EZS6yzWbVEoJyk9OWn+g
	anq5Ld1QxmCiq7WHglrO9e/b2q8xf1IPzvEEjVRAacKc47tB00YBxApeSvdCEiBKCAxeJmYc2/Asn
	WWKm945BrwWaT/klLVLXHvHk6brLHvTTpAIh1Dwts//AM7wXBBejsFlvooiMtjBRMvsiY2CSexP9V
	kDc/X9FTVPDWzU1163Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyW0-0001qu-43; Mon, 16 Dec 2019 22:06:56 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyVx-0001q7-OX
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 22:06:55 +0000
Received: by mail-pf1-x449.google.com with SMTP id j7so7758753pfa.19
 for <linux-um@lists.infradead.org>; Mon, 16 Dec 2019 14:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=5GF2pWf6msGQN8etrt2iWOqdBHUuLXbl9k/FxNh5v+M=;
 b=TokXY0h0FaJqcvxseVpsJGN6ZtDjjoNbdzkLrp/FhUz5OP6IXO8ZCrIXDI+PY0fTd1
 oZhnN2G3IY35fYa0Vd6aKWkkKfpE0XctXn1bZnDNJ3CzEvoBqo+SatsbITCDLDy8ykR6
 fxtkiFTfU3rvec9vRRvpWD2YlOMxO6UMc5CK40/eVLYp3ezoi3Fvp6jASFpqrssHDfhQ
 JoNpxsQO2k472r0XC/Os5dmDPkCAIztjTmIo7eM+W0jioX/6cYwGsOxuL6giyAoe9ug1
 ox0hj9kulfl2piPDZK2eDsvD1R89K1OSaRpkkhQR4te1nq2plCbTPDiiJniBhzGPKAph
 Q0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=5GF2pWf6msGQN8etrt2iWOqdBHUuLXbl9k/FxNh5v+M=;
 b=ReouQjtPGpwGob1iur1tzAz2OBJjHBd3xl9VRoc5tq/p6TkjYEI+RGO4TvM2XWP53X
 Wn7MQNvDefJvKfupAURB3deDMszSotqHM771ImPALFF97bewr5JzkiJExmgt5cex8Ppf
 jIpGMGhrrmnlu/divTDwo7hJqW8lai1xl9oqjKZYtjunm4Tg0pHhoiY/duEf2YOeJmH9
 FDxpy1ZczRo2DtN2XuRH4b60OZBTmJmt+Mwzas4ePDJC7EGWkpoC5I6l16SX8k5t7kWL
 A9t/KwxPHB9nJTAB97zPTE0uO5KZ6gvcF0dGF8xhLNJZtZv+XV9ms2fXiKDUinLpC9Xo
 v/3w==
X-Gm-Message-State: APjAAAW29qJ+ScTlIamAw86nJmBV5ChAsvA+YWATztbWF5PA9KwzTHMG
 kmHvG8nrAekjCKkBQjs5JqF9Erw0uc2iaPEIx0O+cQ==
X-Google-Smtp-Source: APXvYqz7Zh96kKZmFQEhLR+5+8b03CjI/b3463pKKBrTBSZrKUfy+3thDSrMp+0LJ99EepEYrJc7YHRMsYbtyIxAiEtJhA==
X-Received: by 2002:a63:a350:: with SMTP id v16mr20232559pgn.87.1576534012471; 
 Mon, 16 Dec 2019 14:06:52 -0800 (PST)
Date: Mon, 16 Dec 2019 14:05:50 -0800
In-Reply-To: <20191216220555.245089-1-brendanhiggins@google.com>
Message-Id: <20191216220555.245089-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [RFC v1 1/6] vmlinux.lds.h: add linker section for KUnit test suites
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_140653_796098_42902C96 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
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

Add a linker section where KUnit can put references to its test suites.
This patch is the first step in transitioning to dispatching all KUnit
tests from a centralized executor rather than having each as its own
separate late_initcall.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Co-developed-by: Iurii Zaikin <yzaikin@google.com>
Signed-off-by: Iurii Zaikin <yzaikin@google.com>
---
 include/asm-generic/vmlinux.lds.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index e00f41aa8ec4f..99a866f49cb3d 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -856,6 +856,13 @@
 		KEEP(*(.con_initcall.init))				\
 		__con_initcall_end = .;
 
+/* Alignment must be consistent with (kunit_suite *) in include/kunit/test.h */
+#define KUNIT_TEST_SUITES						\
+		. = ALIGN(8);						\
+		__kunit_suites_start = .;				\
+		KEEP(*(.kunit_test_suites))				\
+		__kunit_suites_end = .;
+
 #ifdef CONFIG_BLK_DEV_INITRD
 #define INIT_RAM_FS							\
 	. = ALIGN(4);							\
@@ -1024,6 +1031,7 @@
 		INIT_CALLS						\
 		CON_INITCALL						\
 		INIT_RAM_FS						\
+		KUNIT_TEST_SUITES					\
 	}
 
 #define BSS_SECTION(sbss_align, bss_align, stop_align)			\
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
