Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E53ABBBBF
	for <lists+linux-um@lfdr.de>; Mon, 23 Sep 2019 20:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWtds0EEncM01qzBll0Reb3KAFWM3WhlBflYw5apk0Y=; b=Bvjr8Rom3Dojcy
	Q4ti7KI83OgTyNnP8kTwdCMIf1edubWFswdL0lvsaykzmMehP7HwtdeUDqWeSaWEN/UExqlB6xUMw
	Egd8UPo+jcsJVXyMq5Ph+QB3Z8XZy+56KRITFyJpmE1hbfJ6EmlZuB5DWO+jLOl7f5UTlEsL44C5R
	xWqxYF7/XjW7+ovSefTAgAUscmst/P2RaS228NqpRcocBW05gWptQC3S+RX49IK0iBViEecIpcbCO
	u3/kKooE699HkdsjAEcnFbN68hiVT9MJfTG2ad3EMuTvhTSz9H0oP5QDwSaH4iX+qEt+7WTgHt46O
	JTZ+O0Ba9lmhTZ91PUdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCTI3-0007ij-J2; Mon, 23 Sep 2019 18:42:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTHq-0007Xe-68
 for linux-um@lists.infradead.org; Mon, 23 Sep 2019 18:42:15 +0000
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF1BE2196E
 for <linux-um@lists.infradead.org>; Mon, 23 Sep 2019 18:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569264133;
 bh=jh64/+Mh1tv9gqnwGn/6R1p+9BuONhUOHdnYdG9WQDo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LN56fypZJ27Zy37NVd37Wcdv7C172QPewnf72fmSvvDoGl5X0KRe6wXjM1ewQpfs4
 eOSnwnw+Ly8K/VMFrH3FkF5KFJLkKtfB/7gHXKjG3xohQ+zmxI5/f95uYmMw2eA0HB
 6PmYQmkxLC8Q/jJTww3thq8tRCJ25rU8yJf1ajYM=
Received: by mail-wm1-f52.google.com with SMTP id 3so10384343wmi.3
 for <linux-um@lists.infradead.org>; Mon, 23 Sep 2019 11:42:12 -0700 (PDT)
X-Gm-Message-State: APjAAAXWLgJMgdHVm+JJ1lwEq6RhY/n1V4EQS4xm+mv3Bwni+4lnMfuQ
 LWPN5L1Syj/+YMgqc6M8JtbuOdIMSG+dZhA8kaTzLw==
X-Google-Smtp-Source: APXvYqzlorbAOK1pZewfmhFMCZa9D1IW2om6vHHCEX4YXqvLd98q3SRZFESbOSIcQdidWUK/iViVSejOT+cnBl7sG/4=
X-Received: by 2002:a7b:c353:: with SMTP id l19mr695433wmj.173.1569264131365; 
 Mon, 23 Sep 2019 11:42:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
 <20190923094916.GB15355@zn.tnic>
In-Reply-To: <20190923094916.GB15355@zn.tnic>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 23 Sep 2019 11:41:59 -0700
X-Gmail-Original-Message-ID: <CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com>
Message-ID: <CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com>
Subject: Re: [PATCH] seccomp: remove unused arg from secure_computing()
To: Borislav Petkov <bp@alien8.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_114214_246269_E752C412 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-s390 <linux-s390@vger.kernel.org>, Will Drewry <wad@chromium.org>,
 Kees Cook <keescook@chromium.org>, Parisc List <linux-parisc@vger.kernel.org>,
 X86 ML <x86@kernel.org>, linux-um@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Andy Lutomirski <luto@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 2:49 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Sep 20, 2019 at 03:19:09PM +0200, Christian Brauner wrote:
> > While touching seccomp code I realized that the struct seccomp_data
> > argument to secure_computing() seems to be unused by all current
> > callers. So let's remove it unless there is some subtlety I missed.
> > Note, I only tested this on x86.
>
> What was amluto thinking in
>
> 2f275de5d1ed ("seccomp: Add a seccomp_data parameter secure_computing()")

IIRC there was a period of time in which x86 used secure_computing()
for normal syscalls, and it was a good deal faster to have the arch
code supply seccomp_data.  x86 no longer works like this, and syscalls
aren't fast anymore ayway :(

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
