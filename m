Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838169C598
	for <lists+linux-um@lfdr.de>; Sun, 25 Aug 2019 20:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q//BB/oYClsMwNztjx6/LbSnYMdP48BDWS3EpreXR2Q=; b=KfP4HGBZeT4JtX
	uFT/AK/uGm+cAi0nRcK+QBZz67tnhQjdKdw8VYYQVl37fpSeHMaG1KM4xfOtkY1J/FGjF/sKiWpqb
	C4Xc2v9icXLln/eB4DLyKrZt59zrYIfoJeT20CRNRYqItsBdim7MLC1kIkOe/OVSo230bHCCNTAts
	oFNM5tyNydwS91axPlyPwkZcfkuy18iMtbcR2+odkQ4DhGEHb5hig7N8Ghl67gS0Yfk2MKNAdlPpg
	DKIoSsj8VLVs8DdsyF1DQTHNS6qjJlpkAfnDaYtf2fujay0swYQxodo8NpsVLz1ar/43VFrItoUW+
	/9VQpVp+g4HDCTqjwGbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1xVv-0007v8-T1; Sun, 25 Aug 2019 18:45:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1xVl-0007dR-RD
 for linux-um@lists.infradead.org; Sun, 25 Aug 2019 18:45:11 +0000
Subject: Re: [GIT PULL] UML fixes for 5.3-rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566758707;
 bh=L75zu3z7BrzP6ONcgSvhorpHOCnujJ6am1fME82Vo/Q=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=sVQ6pbD+ii7sxgvWb3kwItDiov4Go0ircCw3Ht0FQsFXPkcs2eBTHHPuoKeHN90i+
 xjcsYxESGsPzAvEuiNWc8oAYXRXyfWeoOeFiHJk4HUomdsXpK17pgN3nR4k+/6K161
 ikW71Sp/hrRT3eH5eItqC6LlnAtup+v+OdvXOao4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1911490926.73826.1566741715800.JavaMail.zimbra@nod.at>
References: <1911490926.73826.1566741715800.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1911490926.73826.1566741715800.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
 tags/for-linus-5.3-rc6
X-PR-Tracked-Commit-Id: e0917f879536cbf57367429d084775d8224c986c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 32ae83ffec6373c226d177bdbbbb156962cc638e
Message-Id: <156675870739.26029.6141227322739942733.pr-tracker-bot@kernel.org>
Date: Sun, 25 Aug 2019 18:45:07 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_114509_909249_2B78C704 
X-CRM114-Status: UNSURE (   0.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

The pull request you sent on Sun, 25 Aug 2019 16:01:55 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.3-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/32ae83ffec6373c226d177bdbbbb156962cc638e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
