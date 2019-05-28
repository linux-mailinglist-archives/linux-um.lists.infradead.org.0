Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2502D0C4
	for <lists+linux-um@lfdr.de>; Tue, 28 May 2019 23:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ykrXUrlrktALCLcBBnjWyMnYDoGo9rPu2zBsTjwKiUI=; b=bNBctMKbWxyNQ1
	yPpT7i7I/ths0SrETsBl0Y8VkuYQc54WnepEtYq7zsMUZY2t/0PvAVNRfn7BqB9CUEXGWX6Omr2pz
	2h49NuZrEajd1PsCf5pQicR1Rjsg+dk3KG2ggfwvqbsRPvZOfzevxk9CzBfK4QBvyzcODNX6mEYfc
	Zrzh3jQQ+tl2Cpba60bC0ysj9QuRTpNgFmaj07b8RVOQH0/YT91yycM/vwV/mPnuFKtg20Hrm/IRB
	gENgrCOqE4eCU65ZGZgvZ+vudjinYF/LWIohLgGcbu4YJScWM6dY2gLSLLo1zpoE230SoDobMssHS
	i9nDwqt0mXYNrDtHu9bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVjCy-0004Uj-IT; Tue, 28 May 2019 21:00:32 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVjCv-0004UR-3g
 for linux-um@lists.infradead.org; Tue, 28 May 2019 21:00:30 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hVjCp-0000pK-BS; Tue, 28 May 2019 23:00:23 +0200
Message-ID: <a5611c91d4883c7ef91dc14a72946e18bf5809b6.camel@sipsolutions.net>
Subject: TRACE_IRQFLAGS_SUPPORT seems incomplete
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org, Richard Weinberger
 <richard.weinberger@gmail.com>
Date: Tue, 28 May 2019 23:00:21 +0200
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_140029_144914_A35861B9 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: j@w1.fi
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

Now I've tried for a while ... but can't figure it out.

It looks like TRACE_IRQFLAGS_SUPPORT is incomplete, we're getting lots
of warnings like

[    0.000000] ------------[ cut here ]------------
[    0.000000] WARNING: CPU: 0 PID: 1 at kernel/locking/lockdep.c:4220 check_flags+0xa4/0x255
[    0.000000] DEBUG_LOCKS_WARN_ON(current->hardirqs_enabled)
[    0.000000] Call Trace:
[    0.000000]  [<60047243>] show_stack+0x13b/0x155
[    0.000000]  [<60521206>] dump_stack+0x2a/0x2c
[    0.000000]  [<600652af>] __warn+0x10c/0x151
[    0.000000]  [<6006538b>] warn_slowpath_fmt+0x97/0x99
[    0.000000]  [<600a3355>] check_flags+0xa4/0x255
[    0.000000]  [<600a554e>] lock_acquire+0x6c/0x1a0
[    0.000000]  [<60539298>] _raw_spin_lock+0x30/0x83
[    0.000000]  [<600b6d41>] handle_edge_irq+0x23/0x13d
[    0.000000]  [<600b2b17>] generic_handle_irq+0x23/0x27
[    0.000000]  [<600454ab>] do_IRQ+0x39/0x54
[    0.000000]  [<6004556d>] sigio_handler+0xa7/0x111
[    0.000000]  [<6005badf>] sig_handler_common+0xa9/0xbf
[...]
[    0.000000] possible reason: unannotated irqs-off.


I've tried to put the right trace_irqflags_{on,off} calls in places like
sig_handler_common(), but I can only seem to shift the warning around.

Has anyone looked at this? You need to enable CONFIG_PROVE_LOCKING,
CONFIG_DEBUG_LOCKDEP and CONFIG_TRACE_IRQFLAGS for this to show up, but
I think Jouni had some others that might be related, without having
enabled CONFIG_DEBUG_LOCKDEP.

Thanks,
johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
