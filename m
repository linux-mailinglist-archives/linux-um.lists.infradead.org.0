Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF98511958F
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 22:21:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LkmRCXqpznFk8PqokytD+IRATgDdz1fg3a3p5rhdlQ8=; b=ckabsT1JrxzgSh
	lfKPv3ke3W8XFVzDILmhU6uOMrvqEHyiTg3MqcX7mEk1oMtKcjGZtN4is1UrntP0+rQtOxDOzbA+C
	Il6sKzQRVAawSxaZwwFL0tTE8loI+VegAFb9ssx6Ffac8/wP2gd+O5t8+RFR5FwtWR8QHkMzhtGBJ
	pqyRkro2e8BsKcIgT8kNkJYikxq5AuTqAeVrnVbse2CV3wUyUb3r/2fEYhDnH/IVw5vAdhKPfqBmt
	qZdYu2Ai5rAt6vg2DTcm05GNljP9JzGBnaOsT33+iRBlC//7ZC+/1Aetc9tNh3BSdOgi+RjF7kK4N
	/wiDgVV7pqVyuCUx3adg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemwv-0005CJ-0m; Tue, 10 Dec 2019 21:21:41 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemwq-0005BX-Tc
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 21:21:38 +0000
Received: by mail-pl1-x64a.google.com with SMTP id 62so507507ple.19
 for <linux-um@lists.infradead.org>; Tue, 10 Dec 2019 13:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=lYWJU9mvbN8ZZQpV5vaQjJWA70IiddBps1EyTVgkqkw=;
 b=NfH2O+lryCV2AegD49JGcu6PkPoGlRhKASnh0FYIZV8uRkL7ubtmdT+H8B5kdISW0i
 15kPrDgWYFbv2pVFrkCR6iEYgJ6ggyFR6I74zpZ00YE1JkZYw5TUN7nT12CKzKpUkbu1
 Z9H1VaO+v28ZJH4Q5NsiYvWwwrN7UHm0oF7KvptbH/DNMDYLme3MhPBB/DF1vFYyOxDO
 PbXpjlPOngLIafacL67+0yc9eAHPcQlMzgNsPh5segouTJOFE60sEK+wyZH3t8vhKe4p
 Teo0fUTgeXBZMMqpBklZryfrVj02Dv/YBmWlCCTNEFrQcOvDwrzWwXVKMiNrF1QoOEuD
 z3zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=lYWJU9mvbN8ZZQpV5vaQjJWA70IiddBps1EyTVgkqkw=;
 b=TCK3Czr97r6qv31GPYI8searMSFN0L7rQpUvWWT5GENnnzUB27iQVmoRRp/BGA1kGx
 iNukFsTQFx0Rz/EWD71v25Y5ri3kDRb9OtNZpNCLb7ImIPdT83P1heJ+AxyRPYkHkLtV
 Ofx+5NzpuNRSvxgUCgBvbDIo8sGsU3z3xN0Eqwdfn+n39gPmUaFwOiptFsYdgrG9TsPM
 CE+ZHPrWJ0eHnreKCkcLPYdE6TT05A7dP6n9wiEky/Yc6hI79r+fnLNJB2WnMmkf9j4y
 3XkTS+NUoYC/OFQTsd8N107rlI64Uxs5wVI90tyVlz4Qeojtvcx6CYBUFt2R+kdHD/l9
 Ze4Q==
X-Gm-Message-State: APjAAAVGL3piLymv4S9uloXR6bw46Sy5SYMGO/EWd3vaqGGVFMMQsT3b
 B0WRBvQWRUi5ZpiN7vUl7HbIguaLL7wvvkoVbL+inA==
X-Google-Smtp-Source: APXvYqxvcAlmugwFUoHQj5y95SwQMNbPwznXe1OSMy95bIkfqfMmVov6bZ97VOQQ0xZzCtGkz7j6YZCmoaxW0K4PakU7yQ==
X-Received: by 2002:a63:fd43:: with SMTP id m3mr192307pgj.164.1576012894761;
 Tue, 10 Dec 2019 13:21:34 -0800 (PST)
Date: Tue, 10 Dec 2019 13:21:08 -0800
Message-Id: <20191210212108.222514-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH v1] uml: make CONFIG_STATIC_LINK actually static
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_132136_978122_611571F6 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: davidgow@google.com, Brendan Higgins <brendanhiggins@google.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 johannes.berg@intel.com
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
 arch/um/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 2a6d04fcb3e91..1ddc8745123f2 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -63,6 +63,7 @@ source "arch/$(HEADER_ARCH)/um/Kconfig"
 
 config STATIC_LINK
 	bool "Force a static link"
+	depends on !UML_NET_VECTOR && !UML_NET_VDE && !UML_NET_PCAP
 	default n
 	help
 	  This option gives you the ability to force a static link of UML.
@@ -72,6 +73,9 @@ config STATIC_LINK
 	  Additionally, this option enables using higher memory spaces (up to
 	  2.75G) for UML.
 
+	  NOTE: This option is incompatible with some networking features which
+	  depend on features that require being dynamically loaded (like NSS).
+
 config LD_SCRIPT_STATIC
 	bool
 	default y
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
