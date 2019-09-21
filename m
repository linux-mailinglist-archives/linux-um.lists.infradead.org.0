Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47116B9F5B
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 20:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CijPcQ2gkgWe+mpapZPqeRmJQpBrDYAVq2bowzL5L3c=; b=jiqyoU21xxGB3k
	pljSWOruoSbGmVEsMjWq2z7Gjc2AQOfR5sRSSP5ejd8vKpfW+ARvF2VReAo2n4vpR1RbOLnfEMmH3
	DRcKCQxr5+vhDZ8ZgvZl4N2gSvsdqX5O2lo8lsvagpVyuhmN6+c3Cxfw8loMEex2BmgKZWnOqqOla
	LTWn0lQj24n4rLb4Kl0LCEjQmhoolvRMXZ/xHDI63q50p1MrHCKH4ZpRAVMYkqSRcu6HOi7IHIV5e
	rKfBJUQDmQgbtOc4i5TTOdUndOmP0plcfC6ee9XfwZFTfnTK4tnWssuLWTjiVrynUYUKOU+txUuZd
	3Br2XKnUowdaD1W6ecKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBjvO-0002bm-Os; Sat, 21 Sep 2019 18:16:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBjuo-00023J-Oz
 for linux-um@lists.infradead.org; Sat, 21 Sep 2019 18:15:28 +0000
Subject: Re: [GIT PULL] UML updates for 5.4-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569089726;
 bh=ti+qmkfQ9p0whpjxawYmXFHbQHdzcbzIxQ1CN/5lKgE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=vvNlErjJnBddxcWBmx5kwH/BudZAnGh33g2ofQeEyWEQhe3c58C4ETB+wtb0Tyw8b
 t8idsbdOTujH+8mkRtVYjwAOF0ecuoUqrGkdl8BMYTLx40S3Cc3KGXeLKEvQsCGqjy
 iqSXudSt/yLifqlMj5lmtdU69H4lIX6YfT/A4Jb4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <466534311.3528.1569051399653.JavaMail.zimbra@nod.at>
References: <466534311.3528.1569051399653.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <466534311.3528.1569051399653.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
 tags/for-linus-5.4-rc1
X-PR-Tracked-Commit-Id: 73625ed66389d4c620520058d828f43a93ab4d0c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9dca3432ee063b70a4cfb3f0857d0aeef7b84fa8
Message-Id: <156908972643.32474.17755196014521384085.pr-tracker-bot@kernel.org>
Date: Sat, 21 Sep 2019 18:15:26 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_111526_829575_C8CD269B 
X-CRM114-Status: UNSURE (   0.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 21 Sep 2019 09:36:39 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.4-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9dca3432ee063b70a4cfb3f0857d0aeef7b84fa8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
