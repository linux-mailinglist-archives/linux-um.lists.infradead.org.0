Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA541DC027
	for <lists+linux-um@lfdr.de>; Wed, 20 May 2020 22:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytFDlzPJY4P3xRK2e5mPQNUkK0PJkFPY46TCPU1c12k=; b=teeQFSAmwG5I0G
	nFru+ZN0j4sVtlHQoBfx+YF0qRkrpVd2REMMPNorEiI7yU3obDkn6fKgsN1ENA5g5ALPLo2X28frB
	0YfQ2wG6R5N178Bwppcif1jLDBstXj/wkqUQ5MUq4Nt+0KNa5cRmZYJX1bzFkiOkxL3JEi65gfb2a
	3fxjJxvSGRBlnD/C9X1tcy8pKYMYaLa3JQT1KaQEiLjU/p+IxwCME9FTdfge7ORYEMZ8dzwv1aScJ
	gV1VeD5tYiUzanTnyDlZV+mdeGXWQ2nImExfNlQv7gdglUGFWITKEbltX+oQlnNrJ+6DmnsmMSP2p
	hmSIhhIkKgQ2r0UEf2Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVM3-00058h-Fq; Wed, 20 May 2020 20:30:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVLn-0003C4-Ta
 for linux-um@lists.infradead.org; Wed, 20 May 2020 20:30:05 +0000
Subject: Re: [GIT PULL] UML fixes for 5.7 final
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590006603;
 bh=Pdgeve/9LRehUhDrVXdRjNVJLuNXHZmV9BvB1nGEGM0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=OUOP8yCrhBZ6BmTcGEFUG1YRCTJ8r2+415qdvX/Eu+2QNHvn1CrwMtLGmo/grbglQ
 auY6Q2vLNWEb1iYPWuRWySaHoHxbcOPGZOCedvtByUfNogr6vqZYDVoDDcxIyuw3pB
 ixcIy9XK4zjyrHrQul3yaK13IuCrCbNY3CGTJaK8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1547930539.249342.1590004176796.JavaMail.zimbra@nod.at>
References: <1547930539.249342.1590004176796.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1547930539.249342.1590004176796.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
 tags/for-linus-5.7-rc6
X-PR-Tracked-Commit-Id: 2e27d33d22afa3d12746f854d6a4fad7ad7b86de
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d303402c288340f9094fa0ba697600335a41bc3e
Message-Id: <159000660310.10849.13116492422203668761.pr-tracker-bot@kernel.org>
Date: Wed, 20 May 2020 20:30:03 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_133003_984596_1C9F5B65 
X-CRM114-Status: UNSURE (   1.04  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The pull request you sent on Wed, 20 May 2020 21:49:36 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.7-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d303402c288340f9094fa0ba697600335a41bc3e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
