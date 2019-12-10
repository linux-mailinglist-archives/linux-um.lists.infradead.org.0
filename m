Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCCD119CD0
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 23:34:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=USZ7/HDxXVTNwgYk3FA9K2EmolRqec97WcpXvnSg87A=; b=qbKVwDibb9Xqn5
	pMHSwBudz03BeKmfNGLeUFreGz+T8ByIU5zmcdJfboIrocWZHCWgd6BkkJL+Xkki8NWGkHHEcyJcf
	Y2jwRujZd5A6WyPSVRw8fMDXLGQ76EYARGpy1u84OOsPk/I2rAoRcACrNOk6MUt36n2pMJAx0Ejuv
	lpivqx9nRFk8xlccf+o4zCTnYwW/bL6eJXhSb5GtX0hATsrpuekK7HmfHMJxkXvgnT1l2EzVo/IUs
	2gMt7QjPGnM7OcdumTdFL/R1SF88dOYN5+6bLrcMWC3nxmF7F0R6Dv7HYyw1gDVhTBqbZ2z42za26
	Q3Bz2AHtDQ1azOB/TqNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieo5Y-0005ww-0L; Tue, 10 Dec 2019 22:34:40 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieo5H-0005je-L4
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 22:34:25 +0000
Received: by mail-pj1-x1049.google.com with SMTP id gx23so1409562pjb.11
 for <linux-um@lists.infradead.org>; Tue, 10 Dec 2019 14:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=WyGQWTgeim8bwKoFOiUnJz7Undlykbo+pgfr/YAwFko=;
 b=ZcytyTHhIQ3z3v6rorH//toMRsPrq5A5FEwV+XNywJ6H04iFLGFJcdqgwHMzxpBro/
 bdSICwm6sSAe6qu0oqcgukb3gxEFT9YmDGTySFtYbVTfoRgDqZyYB00grc+aqUBBVS7q
 +BlaZOH1enfb1JQ3JYXza1nifzabu4leYZaR21eiWqa/kLkM3KAdkIwILbnzNB085uj7
 NRnsgZezUcCpnucg2F2O2vc6PATVMrFzi2vcx9RMdOMGfFFJMBOVuR6lf0bOjvW/KQ8G
 DjrBRaHpw2NRSeIV8Dr+CWIwZnLKa3TW81hpK4xV0wj+yDlw4OX17HViD2vJBXbDdKKx
 KyJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=WyGQWTgeim8bwKoFOiUnJz7Undlykbo+pgfr/YAwFko=;
 b=di30o5tTAo9pVGBG0zmsc2I1WD9Xw8JQjUrSVJ3A3sGNv7LfjFBcbYm2TKLDf/rw5u
 XGfSMmwrF2tMUpi4m1H7lgPkLQCan5N6qXvPnLaKbGSwkEvyxx8DJoGhW929bPO0TgkU
 VTRkra+eg15ImSRMOL+HS0jtT+XBnmx94ABO5ZQAF3vUGx8bCPivkwY/oG8SgnY2kosT
 Vq5fyetUbFkQhrlx9Nshvgu1QTaW6OAgI4AQEBpt8kXUuYCxkhUZ60b1NtMELaQZBINc
 5XluzU3+EX05QwVKqMhvxj1Kt3czqKpdzRFutjuGDPH7XAGcreVmGRJY8JhewzpdMru4
 szlw==
X-Gm-Message-State: APjAAAVWker2IP/hn2gFibEH+CivJKCGRrYYIpm3+GH9eq1F3+RtYjNf
 cApybrmmhrlO49jR9edvMoCWeJnDg7k9kpOj7YyuRQ==
X-Google-Smtp-Source: APXvYqzBhm64QQRnyzHjRsE2Z2suVedl3rsxqSuWpTvM5OF8TDVrWA+ITcfgSim81cqyaLNSx01t/VTS7sF0EEFqFx/5dg==
X-Received: by 2002:a63:ed56:: with SMTP id m22mr453813pgk.261.1576017262168; 
 Tue, 10 Dec 2019 14:34:22 -0800 (PST)
Date: Tue, 10 Dec 2019 14:34:03 -0800
Message-Id: <20191210223403.244842-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH v1] um: drivers: mark non-vector net transports as obsolete
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_143423_714720_4ADA5C8A 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

UML_NET_VECTOR now supports filters compiled with pcap outside of UML;
it also supports: EoGRE, EoL2TPv3, RAW (+/- BPF), TAP and BESS.

While vector drivers are not 1:1 replacements for the existing drivers,
you can achieve the same topologies and the same connectivity at much
higher performance (2.5 to 9 Gbit on mid-range Ryzen desktop) - the old
drivers test out in the 500Mbit range on the same hardware.

For all these reasons, the non-vector based transports are now
unnecessary, and some, most notably pcap and vde are maintenance
burdens. Thus, it makes sense to at least start thinking about removing
the non-vector transports, so for now, mark them as obsolete.

Link: https://lore.kernel.org/lkml/15f048d3-07ab-61c1-c6e0-0712e626dd33@cambridgegreys.com/T/#u
Suggested-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---

I pretty much stole the commit message from Anton's comments in the
above link. Anton, if you would like me to credit you as a co-developer,
feel free to respond with the tags and I will include them on the next
revision.

---
 arch/um/drivers/Kconfig | 81 +++++++++++++++++++++--------------------
 1 file changed, 41 insertions(+), 40 deletions(-)

diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
index 388096fb45a25..72d4170557820 100644
--- a/arch/um/drivers/Kconfig
+++ b/arch/um/drivers/Kconfig
@@ -147,7 +147,7 @@ config UML_NET
 	  make use of UML networking.
 
 config UML_NET_ETHERTAP
-	bool "Ethertap transport"
+	bool "Ethertap transport (obsolete)"
 	depends on UML_NET
 	help
 	  The Ethertap User-Mode Linux network transport allows a single
@@ -167,14 +167,13 @@ config UML_NET_ETHERTAP
 	  has examples of the UML command line to use to enable Ethertap
 	  networking.
 
-	  If you'd like to set up an IP network with the host and/or the
-	  outside world, say Y to this, the Daemon Transport and/or the
-	  Slip Transport.  You'll need at least one of them, but may choose
-	  more than one without conflict.  If you don't need UML networking,
-	  say N.
+	  NOTE: THIS TRANSPORT IS DEPRECATED AND WILL BE REMOVED SOON!!! Please
+	  migrate to UML_NET_VECTOR.
+
+	  If unsure, say N.
 
 config UML_NET_TUNTAP
-	bool "TUN/TAP transport"
+	bool "TUN/TAP transport (obsolete)"
 	depends on UML_NET
 	help
 	  The UML TUN/TAP network transport allows a UML instance to exchange
@@ -185,8 +184,13 @@ config UML_NET_TUNTAP
 	  To use this transport, your host kernel must have support for TUN/TAP
 	  devices, either built-in or as a module.
 
+	  NOTE: THIS TRANSPORT IS DEPRECATED AND WILL BE REMOVED SOON!!! Please
+	  migrate to UML_NET_VECTOR.
+
+	  If unsure, say N.
+
 config UML_NET_SLIP
-	bool "SLIP transport"
+	bool "SLIP transport (obsolete)"
 	depends on UML_NET
 	help
 	  The slip User-Mode Linux network transport allows a running UML to
@@ -201,16 +205,13 @@ config UML_NET_SLIP
 	  has examples of the UML command line to use to enable slip
 	  networking, and details of a few quirks with it.
 
-	  The Ethertap Transport is preferred over slip because of its
-	  limitations.  If you prefer slip, however, say Y here.  Otherwise
-	  choose the Multicast transport (to network multiple UMLs on
-	  multiple hosts), Ethertap (to network with the host and the
-	  outside world), and/or the Daemon transport (to network multiple
-	  UMLs on a single host).  You may choose more than one without
-	  conflict.  If you don't need UML networking, say N.
+	  NOTE: THIS TRANSPORT IS DEPRECATED AND WILL BE REMOVED SOON!!! Please
+	  migrate to UML_NET_VECTOR.
+
+	  If unsure, say N.
 
 config UML_NET_DAEMON
-	bool "Daemon transport"
+	bool "Daemon transport (obsolete)"
 	depends on UML_NET
 	help
 	  This User-Mode Linux network transport allows one or more running
@@ -225,13 +226,10 @@ config UML_NET_DAEMON
 	  has examples of the UML command line to use to enable Daemon
 	  networking.
 
-	  If you'd like to set up a network with other UMLs on a single host,
-	  say Y.  If you need a network between UMLs on multiple physical
-	  hosts, choose the Multicast Transport.  To set up a network with
-	  the host and/or other IP machines, say Y to the Ethertap or Slip
-	  transports.  You'll need at least one of them, but may choose
-	  more than one without conflict.  If you don't need UML networking,
-	  say N.
+	  NOTE: THIS TRANSPORT IS DEPRECATED AND WILL BE REMOVED SOON!!! Please
+	  migrate to UML_NET_VECTOR.
+
+	  If unsure, say N.
 
 config UML_NET_VECTOR
 	bool "Vector I/O high performance network devices"
@@ -245,7 +243,7 @@ config UML_NET_VECTOR
 	drivers.
 
 config UML_NET_VDE
-	bool "VDE transport"
+	bool "VDE transport (obsolete)"
 	depends on UML_NET
 	help
 	This User-Mode Linux network transport allows one or more running
@@ -263,11 +261,13 @@ config UML_NET_VDE
 	That site has a good overview of what VDE is and also examples
 	of the UML command line to use to enable VDE networking.
 
-	If you need UML networking with VDE,
-	say Y.
+	NOTE: THIS TRANSPORT IS DEPRECATED AND WILL BE REMOVED SOON!!! Please
+	migrate to UML_NET_VECTOR.
+
+	If unsure, say N.
 
 config UML_NET_MCAST
-	bool "Multicast transport"
+	bool "Multicast transport (obsolete)"
 	depends on UML_NET
 	help
 	  This Multicast User-Mode Linux network transport allows multiple
@@ -284,15 +284,13 @@ config UML_NET_MCAST
 	  has examples of the UML command line to use to enable Multicast
 	  networking, and notes about the security of this approach.
 
-	  If you need UMLs on multiple physical hosts to communicate as if
-	  they shared an Ethernet network, say Y.  If you need to communicate
-	  with other IP machines, make sure you select one of the other
-	  transports (possibly in addition to Multicast; they're not
-	  exclusive).  If you don't need to network UMLs say N to each of
-	  the transports.
+	  NOTE: THIS TRANSPORT IS DEPRECATED AND WILL BE REMOVED SOON!!! Please
+	  migrate to UML_NET_VECTOR.
+
+	  If unsure, say N.
 
 config UML_NET_PCAP
-	bool "pcap transport"
+	bool "pcap transport (obsolete)"
 	depends on UML_NET
 	help
 	The pcap transport makes a pcap packet stream on the host look
@@ -304,11 +302,13 @@ config UML_NET_PCAP
 	  <http://user-mode-linux.sourceforge.net/old/networking.html>  That site
 	  has examples of the UML command line to use to enable this option.
 
-	If you intend to use UML as a network monitor for the host, say
-	Y here.  Otherwise, say N.
+	NOTE: THIS TRANSPORT IS DEPRECATED AND WILL BE REMOVED SOON!!! Please
+	migrate to UML_NET_VECTOR.
+
+	If unsure, say N.
 
 config UML_NET_SLIRP
-	bool "SLiRP transport"
+	bool "SLiRP transport (obsolete)"
 	depends on UML_NET
 	help
 	  The SLiRP User-Mode Linux network transport allows a running UML
@@ -328,9 +328,10 @@ config UML_NET_SLIRP
 	  that of a host behind a firewall that masquerades all network
 	  connections passing through it (but is less secure).
 
-	  To use this you should first have slirp compiled somewhere
-	  accessible on the host, and have read its documentation.  If you
-	  don't need UML networking, say N.
+	  NOTE: THIS TRANSPORT IS DEPRECATED AND WILL BE REMOVED SOON!!! Please
+	  migrate to UML_NET_VECTOR.
+
+	  If unsure, say N.
 
 	  Startup example: "eth0=slirp,FE:FD:01:02:03:04,/usr/local/bin/slirp"
 
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
