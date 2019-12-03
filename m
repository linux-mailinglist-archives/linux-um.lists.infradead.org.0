Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5DC10F480
	for <lists+linux-um@lfdr.de>; Tue,  3 Dec 2019 02:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGrL14QUHkdfdiRHtcN87c23fvsRyoJtj9RI7rQ8284=; b=A88ej732X7Ox7t
	nOIJAXerzM9wxc+Ihxc0GaB3c+g1AgeEQuFnjTVG0en1yCd0D6j3syDQtI8UFtzfq7OnJlE0pSapp
	UuUHeLxixMwGS+BzjPGIUuCzOEx2aRRnoxorAZjn91/kfHXaZf4KauPEpL7MnBx65DrhbV2C7iDcz
	/m/ONzE3s1sFn7hw4Y5Y66YTEeuYkssPTuFT0k5nIwjuVaA1iB8/rhZKEHJwy+NS3ls4kSUQfs0dJ
	KGIhaCMioxmeO7arpeL8atlLfADIkOAOksmupXCLyBW8SVkfoV2CNjaxu8BSroc96iTrte1ZyUKOp
	pB2Zj8GkfCvTEhFdIHpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibx19-0003kZ-Fi; Tue, 03 Dec 2019 01:30:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibx17-0003k5-E0
 for linux-um@lists.infradead.org; Tue, 03 Dec 2019 01:30:18 +0000
Subject: Re: [GIT PULL] UML changes for v5.5-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575336616;
 bh=IOaovBIYvr92zFfnKHiEh1+IA7205civJdeDvpjd0f0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=0/equPnpuOPxoltNUoG7eBs8j77vdgYZNuXXN2uEYxSCTbYdUBcp/z0MNf4lz+RLx
 iuhfAzSvxtJPY2GGw2AUL/gwya3EB0mlY93gzf8C5gUrrl4Dwtot7CAgTDzFJlmLE3
 LICNcBJKnw+MV2eZduNS0S8dwDB8YJrr9eBLbLEo=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1468911323.103246.1575231534725.JavaMail.zimbra@nod.at>
References: <1468911323.103246.1575231534725.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1468911323.103246.1575231534725.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
 tags/for-linus-5.5-rc1
X-PR-Tracked-Commit-Id: 9807019a62dc670c73ce8e59e09b41ae458c34b3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: fcaa0ad72d8a14736595bb48c49f9ebd62963d63
Message-Id: <157533661673.4888.7011091357254529423.pr-tracker-bot@kernel.org>
Date: Tue, 03 Dec 2019 01:30:16 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_173017_494580_1455018C 
X-CRM114-Status: UNSURE (   0.85  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 1 Dec 2019 21:18:54 +0100 (CET):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.5-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/fcaa0ad72d8a14736595bb48c49f9ebd62963d63

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
