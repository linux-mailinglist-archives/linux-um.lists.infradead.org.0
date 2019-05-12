Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A7B1AE54
	for <lists+linux-um@lfdr.de>; Mon, 13 May 2019 00:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bu45llrqz9NWbkoGMWTvt8Sb9FxhtG4DZKHU9IYAb/A=; b=kJ2kfJcW2aLFqx
	HxPOBc2y2yUeHJ+t8hWScgq/EDSlcGkjBWcu/o7M+hKKBqlT2EITRnteX8f7RfkBjTYOc3w49xiym
	cw6cCQKKJdMS2XLDMpSUbNZleFJLm9G8KwaQ/ABXIgk5nQMeo7DyO3PGL+d5Lso50TBIvPf2Hom+y
	DbGh4p2JIlKB9JkDf/D7k3pItRPBUMwrXBJV8cIzcGek1SRgjUyw8c6ZHguPjYdEKP8ganhlisthJ
	6lubo0WSI0H3F+HEFSA5kTxMrRY4R28kvzuknsmeSV7GvZxWc/HsQhwKy4bZwR2ZGw2bq8ylzkeNz
	4uY8olSVoxIvKebpzECA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPwuD-0001VQ-Ky; Sun, 12 May 2019 22:25:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPwu9-0001UM-Tz
 for linux-um@lists.infradead.org; Sun, 12 May 2019 22:25:15 +0000
Subject: Re: [GIT PULL] UML changes for v5.2-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557699913;
 bh=RC/SFlx7pUbr2aKhL4Qp9KVW6/GsSP/cHWqzfSXiEmM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=OYlesAXjP5WgQ6rWpenReliwyxNAwioEGooqA8ISK+Y1W7Lrm47rwel6Mf66r2os6
 RVrLw3rgQ7ggOC9MUGwPqMwu44E+uYRFXB3rLdTppPggu3HN6gBCmGmjGEacB1Q0Tl
 9/7WAQtZ6PsJXYr3MRrPzgRt40H17LUtCbe/OQHg=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1836274340.56055.1557697309728.JavaMail.zimbra@nod.at>
References: <1836274340.56055.1557697309728.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1836274340.56055.1557697309728.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
 tags/for-linus-5.2-rc1
X-PR-Tracked-Commit-Id: 1987b1b8f9f17a06255877e7917d0bb5b5377774
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 983dfa4b6ee556563f7963348e4e2f97fc8a15b8
Message-Id: <155769991315.32032.11407094999268511120.pr-tracker-bot@kernel.org>
Date: Sun, 12 May 2019 22:25:13 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_152513_987779_F23914BF 
X-CRM114-Status: UNSURE (   0.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-um <linux-um@lists.infradead.org>,
 torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 12 May 2019 23:41:49 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.2-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/983dfa4b6ee556563f7963348e4e2f97fc8a15b8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
