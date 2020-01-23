Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4DE147524
	for <lists+linux-um@lfdr.de>; Fri, 24 Jan 2020 00:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FKeIfDIwFwbu2PuJuJCjapbZMbHf6Uxqhiq09XivW9A=; b=r07JaYWy66jzuy
	MA+3HXQrioIdQFUxMMYRSnUZ8r4UIfwzzJmjJ0eoEljqgkx+fv3Cj/a0CBmsCkfRVd9ntVtWNnXyT
	J/e/jgX9BiaCD3SSawzb0N6c0ed45wyEeTDCez1aMbZrFVgYZVc0Job8mu/wyOXbXy5CMP5czydbH
	J+1/kTlWi/QCaJ+25EZOy7piP2FBcx03wYuLjXREf6wE9gcS6lhp5LPlzyoWELC3WArZv/Z3+riZN
	wmAGE5d1uVWITFfwpdDECDI7wKIuHymXpwj7t4yDcfDb5RkAoWqG5u2Rp7IEhvnGxIcIpFLUnbLic
	GgxGmyMvl+I0TiJDJjfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iumNg-0004Zd-GI; Thu, 23 Jan 2020 23:59:24 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iumNd-0004Yz-9e
 for linux-um@lists.infradead.org; Thu, 23 Jan 2020 23:59:23 +0000
Received: by mail-pf1-x449.google.com with SMTP id r127so213631pfc.11
 for <linux-um@lists.infradead.org>; Thu, 23 Jan 2020 15:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=taYXiMSvG/uOaWszHXNY3LIQcqdsQdZuQaVnEsyfgN4=;
 b=X9ZZUmQCdFs3o0xNe3+a2C4Q/lpN3y90i7OPOgw8+bGTRkrAQwpN6gGiTFeZ2JR44C
 vMbVwSw1/C/YVthi+ePmCJjl+nqJFlPnMna01e7d3lSWe/GrOkQX8NFNZZpOPkni8UqW
 aiffVoXahEftvoB+wQpe9YS+2/B+YKdPeHB+ZlSuWMIgmbbDKa100IIaISWeB0OquqJL
 fo0IzJpTh5hSuYaQH9eIAEDn4vOdGkCiM3zASdah+l1bHwAAEyNz6ROyEIiN2FFA05LU
 P4+XGcpqX1Sw0l/BbUCUBZ22LzzckjxeoujgJk6s4Zn1G3ps6YVr/hPcD0dH/0xYIheO
 hnNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=taYXiMSvG/uOaWszHXNY3LIQcqdsQdZuQaVnEsyfgN4=;
 b=Je0rg2WDdwsika7/8yfeVHIzo3GQnGoTfgXbPx1mcZQeos5F93Xs+X4olKlhtTR1h5
 nXwA/PYydSPipLkR7oOLU6073wOfkURrbfGyA1itq9ZyE9z6NDQQJhFRIJ2LdUyPMwdM
 jblyUnkh+MgIZI5JEbPYmIvhfmai8xPqkIoLS9FD0mcCykmWp2K9BuRilyqaUb8uPuNc
 L+Nu2JEU8ol1rvWair+rcUA5gd9Q/j+Ul9mPjqlVlQ0Zbcki7DqkPLRciCKcbU94fOX2
 3fDY7pd/6sCKLWjhOM3ANbPRaEO1IdaW266wm+fcRMEI92MqAdrqb0BRBQITXC+/wvCg
 kpPQ==
X-Gm-Message-State: APjAAAUB0tnWuKqRwZljvypZrzRKiB1IWG5vLrNYkKYbAR0Dwa3+RCQS
 f7J8xAgTllaiBkwAD6ooyVDe0xgRaWS2RqUlIgyBjg==
X-Google-Smtp-Source: APXvYqyDIp+eGmrYp3/rfPhDduqurXLOKZW+c8hSrVPuXFgIDBtOVRKHnifIEoajdXNfOrzKOOaJj0Mi9uj6fqXTRVQmeg==
X-Received: by 2002:a63:744f:: with SMTP id e15mr1054047pgn.344.1579823959193; 
 Thu, 23 Jan 2020 15:59:19 -0800 (PST)
Date: Thu, 23 Jan 2020 15:59:14 -0800
Message-Id: <20200123235914.223178-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2] uml: make CONFIG_STATIC_LINK actually static
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 geert@linux-m68k.org, james_mcmechan@hotmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_155921_654988_ED53105B 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Changes since last revision:

Incorporated Geert Uytterhoeven's suggestion of using a separate
FORBID_STATIC_LINK config option that each driver incompatible with
static linking selects.
---
 arch/um/Kconfig         | 7 +++++++
 arch/um/drivers/Kconfig | 3 +++
 2 files changed, 10 insertions(+)

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 0917f8443c285..27a51e7dd59c6 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -62,8 +62,12 @@ config NR_CPUS
 
 source "arch/$(HEADER_ARCH)/um/Kconfig"
 
+config FORBID_STATIC_LINK
+	def_bool n
+
 config STATIC_LINK
 	bool "Force a static link"
+	depends on !FORBID_STATIC_LINK
 	default n
 	help
 	  This option gives you the ability to force a static link of UML.
@@ -73,6 +77,9 @@ config STATIC_LINK
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
