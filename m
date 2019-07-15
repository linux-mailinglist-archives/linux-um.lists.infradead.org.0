Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7893681D0
	for <lists+linux-um@lfdr.de>; Mon, 15 Jul 2019 02:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rqk8CVMlzHDYPAZT/YUYkjHQUOQE2ot/tDuTMI/TZY=; b=uesmj2FMkedMzi
	3TOeiLGmR253sziJE5wrEUcSYawgSBwRkcycisBGYE/8OxfSLL10JzHBb3aAaNWcOZMuSc7mc47jz
	EcTzu4wDv0UhLtCno0xJ1ijL558zjRBAakQnsZe4gYz4HqXxh4yIWSkYe03OAdIeuN8VwGbBaVkgJ
	7qSHDfeHhUy0xh1t2WB/gX3VUwxN1INtuVI6UySkGoO34BAKfSnGGXS/5DmslI2Ay0mYRY6Wsecho
	bTgpw3KN6jktjj1b3/GxELuv88qoFXWzdmk1JaPdp8pANxdA7UJWH4MCK6kImFr2XAi3DxT3nRh9y
	ewa7BpKa6AouiP+i63Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmosw-0007p8-IM; Mon, 15 Jul 2019 00:30:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmosj-0007dt-Cz
 for linux-um@lists.infradead.org; Mon, 15 Jul 2019 00:30:18 +0000
Subject: Re: [GIT PULL] UML changes for 5.3-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563150617;
 bh=HZoYn2+uheIa1RwUTP6rzrmJiKVQiN4EHyhGCQR83dc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=HHCZL7+NmmFjAizwm0Tqe2nxlLviaVBeHdB1y3dRnjTQCnxbLjNmPyR8ttLibHJpo
 7DECiPIjIScUhbGtbw9F4z3yIt4rRfAVxdGpT7jULPhTBmi3hAjJlFcvxNUutBmden
 MSzgZrc5yzfOWoKPidVF6EkbSZh5Q4qFPto87I1c=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1979519421.38685.1563130920671.JavaMail.zimbra@nod.at>
References: <1979519421.38685.1563130920671.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1979519421.38685.1563130920671.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
 tags/for-linus-5.3-rc1
X-PR-Tracked-Commit-Id: b482e48d29f1461fd0d059a17f32bcfa274127b3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f2772a0e4833d1af1901b6f1a38136fb71d1350c
Message-Id: <156315061715.32091.3262692367550162371.pr-tracker-bot@kernel.org>
Date: Mon, 15 Jul 2019 00:30:17 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_173017_450632_5A74165C 
X-CRM114-Status: UNSURE (   0.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-um <linux-um@lists.infradead.org>,
 torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 14 Jul 2019 21:02:00 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.3-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f2772a0e4833d1af1901b6f1a38136fb71d1350c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
