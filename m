Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5A187347
	for <lists+linux-um@lfdr.de>; Fri,  9 Aug 2019 09:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cA2ZGi8u++tH6wrvHJfvp65/HSK5fEmJHbnJeHrtoag=; b=qK+
	0ZE++NlvR64ZiXPV8OmNLmO9OnMwsQv5B2Q/bFBT8F3ojLXm/aQqmGptog2YygcGKrX/SaIQg0V2E
	mg0qkAzWqqZrxhR7dP7NGZmvTz/j/oON5LBwfK+PfqoGYPj5eOBmmLQzqEBP/k1Cs3qZQRWNiOw+B
	apZoFOW/LMqiLgAk3e9AunYe39wzdoM1ib/3g9SdPA4snwjPo+/WRsjvS/tb53yS7QvuTeToCWT6Y
	wu73p2EqMlr497mPsZxIxTwv2zim1NhGe7+gyBq68sIIyF0Bx130tMjC9LE+73OhhaEbRAap/vgdh
	nM3Xg6FjIvlR0VCXIvk8oQWPggl2B/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzVl-0001zM-HQ; Fri, 09 Aug 2019 07:40:29 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzVi-0001z3-BH
 for linux-um@lists.infradead.org; Fri, 09 Aug 2019 07:40:27 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvzVh-0006oe-1p; Fri, 09 Aug 2019 07:40:25 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hvzVf-0003ns-1x; Fri, 09 Aug 2019 08:40:24 +0100
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: New Vector patch series 
Date: Fri,  9 Aug 2019 08:40:16 +0100
Message-Id: <20190809074020.14351-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.11.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_004026_521940_65E7A061 
X-CRM114-Status: UNSURE (   3.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: richard@nod.at
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi List, hi Richard,

I have updated the patchset to 5.3-rc4 
The IRQ initialization patch has been abandoned in favour of the one
which Johannes Berg has supplied as a part of the vhost-user patch
series.

Brgds,

A.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
