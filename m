Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B59B9187704
	for <lists+linux-um@lfdr.de>; Tue, 17 Mar 2020 01:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D64jap3K+1LcRy+HNizRzch6n4QGPqwW6zVolnJ24CQ=; b=FUnRAGyBhBaceY
	Kq3R3f6+P02aiok6t+w6UnNx8/KdLYbksgSNMCuVFqkRB1UytrKBU/qADZrzlpS+wZIEbhbV8HIpu
	T2KEjD94K58M2aI16z5JqkJHvKhvhcjszaxFxQyS2BJJVa6VmNXMJ38z87wB2bqbldo9EboIg78ze
	49Lr2qqe9N1m0oqRybEg5DGek8WGjj8DpcpBTzkytX6tZl+hp26gGvcLZrZudiZPnoMilt0dmp0kd
	NhPduNCLl+HjES16gGQHw+NSTF2KGdG0w+76PTwFdV8V8E0IoY8Q9HQpOSLsi5KMMjwHGGpJ9liql
	XJ5t2DLxnrouYupLsnhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE0MH-0008Ot-01; Tue, 17 Mar 2020 00:45:25 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE0ME-0008O7-EB
 for linux-um@lists.infradead.org; Tue, 17 Mar 2020 00:45:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: krisman) with ESMTPSA id D46C72711FF
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: jdike@addtoit.com
Subject: [PATCH 0/2] fixes to the hypervisor ubd thread
Date: Mon, 16 Mar 2020 20:45:05 -0400
Message-Id: <20200317004507.1513370-1-krisman@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_174522_607234_4E1D92A2 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: richard@nod.at, linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Gabriel Krisman Bertazi <krisman@collabora.com>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

While debugging a somewhat related issue, I ran into two issues I
believe can cause the hypervisor to write garbage to the pipe.

This was find by visual inspection and is only slightly tested.  It
seems to partially some the problems my test case shows.

Please, let me know what you think

Gabriel Krisman Bertazi (2):
  um: ubd: Prevent buffer overrun on command completion
  um: ubd: Retry buffer read on any kind of error

 arch/um/drivers/ubd_kern.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

-- 
2.25.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
