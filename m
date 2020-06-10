Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C558E1F5D35
	for <lists+linux-um@lfdr.de>; Wed, 10 Jun 2020 22:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MZIYcQqnwPvry8XtaEa+lmkOH0RZxdiJVsZ6DGI+Bg=; b=KCiK9UgeYYGHeX
	5r0PDCQZK4ST+5ZOyLMWlFT2dz9g7Ypw/QmOr1UXCPkVHV5U/jpt3ep8v6FJ0+kjRKhiGZgY38GHJ
	FYkWw990rETwrDVw99QhRYZNnecdn6BjbkUW/gnjbR00+/6BaQgMoGAVxdrqeeOIlFzDO3EdP1TeJ
	bXks6JWGpZDgIuF/Xve+qe8GMN8W3dbE0R6DQNs6yppjM+BUHKeykckhR0UIQWWA7LjEcGJrxoA7A
	kECvdGVEFRapTxFA1PB6BCe1rePucEBep3tgt3psuqrwER2sFhtytG9Ea9T6hGFVt1KQ1Z2Ijnk1x
	9S5sHmysH8oWePoZkcIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj7Mn-00082i-0D; Wed, 10 Jun 2020 20:30:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj7Me-0007v0-H1
 for linux-um@lists.infradead.org; Wed, 10 Jun 2020 20:30:25 +0000
Subject: Re: [GIT PULL] UML changes for v5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591821024;
 bh=j7JnUzzkBQUS8Cb4iN2Pzvp+rtD8G88Uz7rNrgd+Pb0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=o6h0V6ggOWx3lPdY8BkpS1JisQxlSwRu0YOlhtpooecPVk5t0IR/fxp9U+bn+WUNZ
 V/2g453zvKF/SmsYT6vjv1aqkjBYB1kX1sXRMV6GIIHLuEt7PZtnti0FCskIR7pQGX
 mpkEaG1MYkOxCX1BJDs5WKE3SKJRGvWapzdoVsT8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1858220125.350.1591736510906.JavaMail.zimbra@nod.at>
References: <1858220125.350.1591736510906.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1858220125.350.1591736510906.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
 tags/for-linus-5.8-rc1
X-PR-Tracked-Commit-Id: f6e8c474390be2e6f5bd0b8966e19958214609ff
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 84fc461db99b2dc19e019c0a97725a3653687981
Message-Id: <159182102423.16227.12145075205238240772.pr-tracker-bot@kernel.org>
Date: Wed, 10 Jun 2020 20:30:24 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_133024_580275_4C7BCD41 
X-CRM114-Status: UNSURE (   0.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The pull request you sent on Tue, 9 Jun 2020 23:01:50 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.8-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/84fc461db99b2dc19e019c0a97725a3653687981

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
