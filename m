Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7CE1490C6
	for <lists+linux-um@lfdr.de>; Fri, 24 Jan 2020 23:14:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0c0v3pybLO5tNGKwe2l4Tg60sK4w8cEZH4Lif+Li0IQ=; b=A0fPC+AtY3GWlL
	kqxWYXE0kNm7H2TrO1QXmkcfNYcRc7P6lZyr52Pf1x8vMMWsOcE4o9wR+desX1AAaFX7iXyoeC9a6
	uFvXXBxdJbsYsT8imbQWtFpbKK4VUaQAIKtSjHkjqTTysuy7juKV3+wmbNNYm17AiKD1YK2hZ+aql
	/x195gosjAOWDLbFzZWi2Z3PbK/Kx0vcrhZhYBcQanJxpaf4aMj7C2u4JxJCvqtFKD/JJRmO3HLg2
	udhjpsZQ5RF9GmmHwI5sKk+C+cwEyJnAA4yU0JOhIu+8doDjh//NQ4EAhyPQbqkBymBthcdogpB8J
	an13WvJW357q9jvBaKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv7DS-0004dJ-Rc; Fri, 24 Jan 2020 22:14:14 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv7DQ-0004cJ-AM
 for linux-um@lists.infradead.org; Fri, 24 Jan 2020 22:14:13 +0000
Received: by mail-pg1-x54a.google.com with SMTP id r30so2196153pgm.8
 for <linux-um@lists.infradead.org>; Fri, 24 Jan 2020 14:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=geC9hix2m9kGrQA1AgAiVyPdofDuegQV+sdp/6AkzSY=;
 b=iRRfETWsjhw5goUymtnni7SUDlPk6D3OkS7laA0F9rkl54bMDWiXkDJ7ERP1BIuaBB
 k6kbMx7VK4npLy4YL/S/gNA+fOiStTiTERkqqGsT1tGRgOEiIiILDVwFv/yZLXnlkfkl
 5Y2MURsG+KtkoyhNxpcyV+CfIdagtezZOcSbUhuWpkiowJkTJgG0upIx34t57wnvQZtU
 eiKc9urpSafdnhhHqAumxMZR/YOZdeYnDvCGv9zjIFeu5jP4K5+jeb3M3zrcdTfNHjdo
 QrF0K6Bnh2WwqYbuHZ2OOe9xZzFknDtYnVZZqhaaHdJkC9fFLb7OZw6/cKVFQjd9/8Tt
 42wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=geC9hix2m9kGrQA1AgAiVyPdofDuegQV+sdp/6AkzSY=;
 b=a+bxcRIugw+EPPRDGyahtyPZkKHt0mncTudBgiSO/ZXBwahJQXI5BfryGoYwDST3lS
 6GdBhZvPG3mlCMUsH0YMmnmOgwhmYy3ouh+GtBiPrnnALzRPc14NZ0Mk5+kLeZ3IRQ4F
 vO8vNy1jnQ8yEYvCvN7P/zkqAMTdAqHORjNoMCzAI5e5XLErTaF9jbhbgIbM4My5SWYg
 nLZZHH7ozDbA+W1t0kPezvc1qvzdLEteV2psJmSufpDrOm4QmqLWZ+sDXedOZLWsVp8i
 6AmG/IMa1Yhu+jQVzckApfvO6NRW+d4gLNr7JWd4b7dLVBm4a/qI8xnZGRinmuEOcWSl
 u17A==
X-Gm-Message-State: APjAAAXTPXPpAuWNj4KPnJ4QXZMxGtt6swQnbkoIt/TMKyVUn5zXL7wg
 hQJngH6ZCHwyoFm86OrAQwjqiLZxL/AvPiOQixgRMQ==
X-Google-Smtp-Source: APXvYqyjUL9L/ftdar4bI9P2UlBlPlPH9Vl4aalxzJKewNpcsHgpqmvaINWiaQE9S4toNIr+Sijydu+SjX69SbztXbHu2w==
X-Received: by 2002:a63:364f:: with SMTP id d76mr6652376pga.215.1579904047529; 
 Fri, 24 Jan 2020 14:14:07 -0800 (PST)
Date: Fri, 24 Jan 2020 14:14:01 -0800
Message-Id: <20200124221401.210449-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v3] uml: make CONFIG_STATIC_LINK actually static
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 geert@linux-m68k.org, james_mcmechan@hotmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_141412_358104_805D7687 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Brendan Higgins <brendanhiggins@google.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, davidgow@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently, CONFIG_STATIC_LINK can be enabled with options which cannot
be statically linked, namely UML_NET_VECTOR, UML_NET_VDE, and
UML_NET_PCAP; this is because glibc tries to load NSS which does not
support being statically linked. So make CONFIG_STATIC_LINK depend on
!UML_NET_VECTOR && !UML_NET_VDE && !UML_NET_PCAP.

Link: https://lore.kernel.org/lkml/f658f317-be54-ed75-8296-c373c2dcc697@cambridgegreys.com/#t
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 arch/um/Kconfig         | 8 +++++++-
 arch/um/drivers/Kconfig | 3 +++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 0917f8443c285..28d62151fb2ed 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -62,9 +62,12 @@ config NR_CPUS
 
 source "arch/$(HEADER_ARCH)/um/Kconfig"
 
+config FORBID_STATIC_LINK
+	bool
+
 config STATIC_LINK
 	bool "Force a static link"
-	default n
+	depends on !FORBID_STATIC_LINK
 	help
 	  This option gives you the ability to force a static link of UML.
 	  Normally, UML is linked as a shared binary.  This is inconvenient for
@@ -73,6 +76,9 @@ config STATIC_LINK
 	  Additionally, this option enables using higher memory spaces (up to
 	  2.75G) for UML.
 
+	  NOTE: This option is incompatible with some networking features which
+	  depend on features that require being dynamically loaded (like NSS).
+
 config LD_SCRIPT_STATIC
 	bool
 	default y
diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
index 72d4170557820..9160ead56e33c 100644
--- a/arch/um/drivers/Kconfig
+++ b/arch/um/drivers/Kconfig
@@ -234,6 +234,7 @@ config UML_NET_DAEMON
 config UML_NET_VECTOR
 	bool "Vector I/O high performance network devices"
 	depends on UML_NET
+	select FORBID_STATIC_LINK
 	help
 	This User-Mode Linux network driver uses multi-message send
 	and receive functions. The host running the UML guest must have
@@ -245,6 +246,7 @@ config UML_NET_VECTOR
 config UML_NET_VDE
 	bool "VDE transport (obsolete)"
 	depends on UML_NET
+	select FORBID_STATIC_LINK
 	help
 	This User-Mode Linux network transport allows one or more running
 	UMLs on a single host to communicate with each other and also
@@ -292,6 +294,7 @@ config UML_NET_MCAST
 config UML_NET_PCAP
 	bool "pcap transport (obsolete)"
 	depends on UML_NET
+	select FORBID_STATIC_LINK
 	help
 	The pcap transport makes a pcap packet stream on the host look
 	like an ethernet device inside UML.  This is useful for making
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
