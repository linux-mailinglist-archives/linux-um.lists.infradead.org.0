Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB9FD8A54
	for <lists+linux-um@lfdr.de>; Wed, 16 Oct 2019 09:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D3YnhP3k8Z5T7h0mb4kgTfJFZAVTUaMtl3QeMxg2Ack=; b=fcKc/n60KMwYug
	CUdWhxR0Osh400Hj23dkGoCVuj4Ut0+Mgao5gwh+XyDRYJrckYq/dnFrHzwc6zsOxOwuYwGZ4Zw7s
	3d7QULaDnNFbO0UiErHbj2sqHA3h67/yx8LUVDMGdEIHf3poYAxCJmeYWL7qKoMIp/4hdH4IL8bSd
	VHgyBffPFmUqj1kIX0zS2HbM+iTTomGH2RV6Ff18YXgF89mzRGXAAbPzWNbhrYZD3oXiAeypWWBuC
	b7C81cSsOvLLrI+ULe7z6qksj22vVzkx41hiGSoUPok+zymVmScxTXrMRRWR+YhlXKnVhBwBOK2rl
	jvUZb9JSphmL9BuUT71Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKe82-0003e1-Pw; Wed, 16 Oct 2019 07:53:54 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKe80-0003d7-5Z
 for linux-um@lists.infradead.org; Wed, 16 Oct 2019 07:53:53 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iKe7v-0005h0-HA; Wed, 16 Oct 2019 07:53:47 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iKe7t-0007Zf-Cw; Wed, 16 Oct 2019 08:53:47 +0100
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: linux-um@lists.infradead.org
Subject: Build fix for VDE and PCAP drivers
Date: Wed, 16 Oct 2019 08:53:42 +0100
Message-Id: <20191016075343.28564-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_005352_236047_7448679A 
X-CRM114-Status: UNSURE (   5.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: richard@nod.at, 938962@bugs.debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi all,

A patch to fix the build for these follows.

I will stick to my original suggestion - pcap should be obsoleted in favour of
vector raw + BPF firmware load. The latter will work on interfaces where gso/gro
is enabled. The original pcap will fail on that due to the 1500 bytes size limit
in the legacy net code.

I had to dig the root cause here and figure out what is going on while working
on an AF_XDP transport as that had the same problem - it needed to pass -lbpf
-lelf -lz which could not be passed under the current build system.

A.



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
