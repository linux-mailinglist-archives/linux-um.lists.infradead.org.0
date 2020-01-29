Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD59614C4B1
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 03:45:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8WiaBV/w7KyF97klnISn9Qm9kbisUx3yk3ZEvU+1R0=; b=M+cR6kgkIQCEfv
	JhQcUq0f5zZq1PBD3ghhyIPVl8dPRT1j05fyBlAaEbKXnAOVM9S2npVe+qAhLv8585A+QAOz2i7N9
	ZBHMGZqp2VrlpJrMkr1c7yKBihrg29DikxjUqvxCuyxFcj87EcR63awk+8SF6X7BbUJooQU1t3urX
	JR/A1sdiU723NrJrr9ExtLLBbG+IPndaXfu3SSqU4Ze+1TGEDCixxytGBGY+OuXzg9uE2nm5IhnAC
	m5FMUFg9okv+1J5P+IekTbSHQmqaeWTJtcFFQoCnpc5p1jyghTFnYamNxIQJrEvtTwH+cprGFDlvB
	J0un0hirliqtXLGiGvug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwdLo-0006xZ-Kz; Wed, 29 Jan 2020 02:45:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwdLm-0006cm-G7
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 02:45:07 +0000
Subject: Re: [GIT PULL] uml updates for 5.6-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580265905;
 bh=bb6Unxg9OUmrUkSHwUqeiee1T9xhm2drQELfuj87QZI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=vM2YQy+6ULmaVqRnHE6j3RGeUjaRmm8FqEc83yeuJ+/Zyhy2LW26sxfT/i3VAFiu/
 doRdmab2OM+m43eOA+CZFV6wxnNx4vbJBJnJGNWcFI3mv1HK3ckSxJhoYt8PL307Ox
 BDTWGL6TlyACo0OummU0D+5cX0OSa15z6Opvglwo=
From: pr-tracker-bot@kernel.org
In-Reply-To: <aaf07936-6fd2-be40-15dc-f87e8e84091d@cambridgegreys.com>
References: <aaf07936-6fd2-be40-15dc-f87e8e84091d@cambridgegreys.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <aaf07936-6fd2-be40-15dc-f87e8e84091d@cambridgegreys.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
 tags/for-linus-5.6-rc1
X-PR-Tracked-Commit-Id: d65197ad52494bed3b5e64708281b8295f76c391
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: fad7bdc9b054a3dc2f5e77a8061c07aead6f5a5e
Message-Id: <158026590586.23129.18144901503354575122.pr-tracker-bot@kernel.org>
Date: Wed, 29 Jan 2020 02:45:05 +0000
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_184506_575044_239DF053 
X-CRM114-Status: UNSURE (   0.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-um@lists.infradead.org, Richard Weinberger <richard@nod.at>,
 johannes@sipsolutions.net, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 28 Jan 2020 09:24:07 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git tags/for-linus-5.6-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/fad7bdc9b054a3dc2f5e77a8061c07aead6f5a5e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
