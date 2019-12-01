Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D78310E016
	for <lists+linux-um@lfdr.de>; Sun,  1 Dec 2019 02:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QysCtxRAhu1kXleCbCO+uAdXftsNH5+4GZ/Zn+OUC4=; b=eEf33u1NoM3lhx
	9ef5mXg2wRwW+DzAhRKtV6Se49NlE5SuFgjEFSGJgFn/Z2vYzvlhloaMugap9IxAmSY+8DgoUGGjc
	uh/LAOuFsDMGn1Gq0r4eQq8impCAp2dLOusPv3KgQADXMISpDbVGkQdBXmtklg7rKtlTbZ/4Dryy+
	oQO8sknYRd6qpEx6yPbHqZYh1gOcylkN5ITgY9FOirrRC5ukvKyQLta3zYsUJ1uJAhmfCiNnnwIR8
	uIi5b1bTcUOgwxkN07MMsB77KYAy0EEVGi2q2fi8ZzK6ftWUrSwXs/Uji2Jujrz2kRi7eSWdH/xqx
	F9tM7v1klEvLZnob/n0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibEDi-0003Sm-0C; Sun, 01 Dec 2019 01:40:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibEDZ-0002UY-Kd; Sun, 01 Dec 2019 01:40:10 +0000
Subject: Re: [GIT PULL] seccomp updates for v5.5-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575164403;
 bh=ajBvj1IaLYQkSA/v/7Hod991P4s7CVCuIKBejh5pxg0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=kDQly26WJo5YJvsn/LzUkhhjzAbbvTcxecHnSpiUFC8U97ES9N5DdXAy/GZSEdcMO
 okriinkm2YBXTi6WKKnlrAzV0PoPrCF2os90+EL++4P9JWLP7OjusJhRIZ5c4SPwIf
 trItpK1jsUwqxZLH+Rd885EDUMUrMh7dkdsR/JSk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <201911260818.9C5DC1E@keescook>
References: <201911260818.9C5DC1E@keescook>
X-PR-Tracked-List-Id: <linux-parisc.vger.kernel.org>
X-PR-Tracked-Message-Id: <201911260818.9C5DC1E@keescook>
X-PR-Tracked-Remote: https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git
 tags/seccomp-v5.5-rc1
X-PR-Tracked-Commit-Id: 23b2c96fad21886c53f5e1a4ffedd45ddd2e85ba
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b94ae8ad9fe79da61231999f347f79645b909bda
Message-Id: <157516440360.28955.6948106020327612727.pr-tracker-bot@kernel.org>
Date: Sun, 01 Dec 2019 01:40:03 +0000
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_174009_696942_7633D4D9 
X-CRM114-Status: UNSURE (   1.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Shuah Khan <shuah@kernel.org>, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Daniel Borkmann <daniel@iogearbox.net>,
 kernel test robot <rong.a.chen@intel.com>, x86@kernel.org,
 Yonghong Song <yhs@fb.com>, Borislav Petkov <bp@suse.de>,
 linux-um@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Will Drewry <wad@chromium.org>,
 linux-parisc@vger.kernel.org,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Tyler Hicks <tyhicks@canonical.com>,
 bpf@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Martin KaFai Lau <kafai@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 26 Nov 2019 08:25:28 -0800:

> https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git tags/seccomp-v5.5-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b94ae8ad9fe79da61231999f347f79645b909bda

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
