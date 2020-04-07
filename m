Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC841A1643
	for <lists+linux-um@lfdr.de>; Tue,  7 Apr 2020 21:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUknU1r0GBNhyyFZ68xExrZ22sN0o8BO0mzRzzicFik=; b=ab+Ea3s38vLnYr
	/+UoTDLQQkaGiSg1h3oGaqNaP6bc7xjnCYu6QklIsrfhHKFdfByhx4Q9GRqKfLk+KH6I/snzfmYP3
	bMr/a5UULvlMduvfEg9wi1vh2n/hnmqPTU2FgrLEgP4jMzoh7bfY9/HKc7PMh+eOQuHMi+RrC+53m
	cpepsrZJPtawHwCjSDdTundbIYLs7noxeenb0nTtjIbv3hk+29dUql/EupmNbTP+57wzjp5hpYKvD
	t+hGXJf19U15qYWOIr/27+Ff/KgNlou2izEKMJ+aVLBUA69miENWFtb+GX0MUvQBeWaEQJnMAfoPP
	GA0jCdKp1YBGsYZNj8hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuJr-00009x-8P; Tue, 07 Apr 2020 19:55:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuJk-0008U7-AK
 for linux-um@lists.infradead.org; Tue, 07 Apr 2020 19:55:29 +0000
Subject: Re: [GIT PULL] UML changes for v5.7-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586289327;
 bh=h+jpQsLavRAbKi+4OpsN0OoieN218w7zKdWTyRmNNYU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Gb6bOspnHM/6P/mWENtFkhTrC/NSeWQ+Qs1EoMvxF+1xcJDFt4nMu8YhrXgE9nQSu
 yIDvFKwk2FlsnLbcjwlokhSjpniRSvd7WoABuI7hTt6BqYixLLToMx8U4QHRN5Av5I
 3LZY1wq2RGsP4oL2CGvcikqymLLt0oCMKhedQyfw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1397520880.91813.1586263074756.JavaMail.zimbra@nod.at>
References: <1397520880.91813.1586263074756.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1397520880.91813.1586263074756.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
 tags/for-linus-5.7-rc1
X-PR-Tracked-Commit-Id: 4a7c46247f9c620c0390a15cb00b6ef9576b9c23
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 762a9f2f0144246872d61bce60085f62992f4ca0
Message-Id: <158628932697.3792.16683492193078654566.pr-tracker-bot@kernel.org>
Date: Tue, 07 Apr 2020 19:55:26 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_125528_393196_5F4C39E9 
X-CRM114-Status: UNSURE (   0.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

The pull request you sent on Tue, 7 Apr 2020 14:37:54 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.7-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/762a9f2f0144246872d61bce60085f62992f4ca0

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
