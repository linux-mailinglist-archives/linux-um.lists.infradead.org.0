Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A251816FB
	for <lists+linux-um@lfdr.de>; Wed, 11 Mar 2020 12:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VO522+O460k5b61CBnILvRf+VDdF1DRndFOF1BeqMZY=; b=t8ZX9C5aCRs7tC
	B2h1SYaV/oALfaqaSDGfJfMUlNSNszJ9Sr9RTLbZYmZdHtDic3BVLEulTeesQozPVr3qVhKQLsd+4
	gkL7RR3NMkAIg1fnAlFvh6awDzt+70OFTWSC/NQD6k7pT3y+yzCpKKZiB+nZBBjx281tO+7R0M7V2
	L00L4pVaODLiVHF3Y3hW/v2LZ+5Bn3odtgDK2Qss5qaNwjERIuVL4KIJcZWg33Gds7G/rjKyHyhLr
	SrKrOdTx5ZPziVP+nvJ+HwYcHsmyjHTW9Y3jysMIa0tOBLX8ixTK95aemKwV8+51D62bjsNCvYhd2
	R2zdXR1e6sfzOktF/Vdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzim-0005ho-F4; Wed, 11 Mar 2020 11:40:20 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzij-0005hL-MA
 for linux-um@lists.infradead.org; Wed, 11 Mar 2020 11:40:18 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jBziW-001C1S-CG; Wed, 11 Mar 2020 12:40:04 +0100
Message-ID: <e3bfa0844566db1a837534218fe128f66cfe2e79.camel@sipsolutions.net>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Patricia Alfonso <trishalfonso@google.com>, Jeff Dike
 <jdike@addtoit.com>,  Richard Weinberger <richard@nod.at>,
 anton.ivanov@cambridgegreys.com, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Dmitry Vyukov <dvyukov@google.com>, Brendan Higgins
 <brendanhiggins@google.com>, David Gow <davidgow@google.com>
Date: Wed, 11 Mar 2020 12:40:03 +0100
In-Reply-To: <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 (sfid-20200306_010352_481400_662BF174)
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
 <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_044017_723376_7499D4B3 
X-CRM114-Status: UNSURE (   5.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-um@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


> Pid: 504, comm: modprobe Tainted: G           O      5.5.0-rc6-00009-g09462ab4014b-dirty
> RIP:  
> RSP: 000000006d68fa90  EFLAGS: 00010202
> RAX: 000000800e0210cd RBX: 000000007010866f RCX: 00000000601a9777
> RDX: 000000800e0210ce RSI: 0000000000000004 RDI: 000000007010866c
> RBP: 000000006d68faa0 R08: 000000800e0210cd R09: 0000000060041432
> R10: 000000800e0210ce R11: 0000000000000001 R12: 000000800e0210cd
> R13: 0000000000000000 R14: 0000000000000001 R15: 00000000601c2e82
> Kernel panic - not syncing: Kernel mode fault at addr 0x800e0210cd, ip 0x601c332b

Same if I move it to the original place from your v2 patch
(0x100000000000):

Kernel panic - not syncing: Kernel mode fault at addr 0x10000e0c7032, ip 0x601c332b

Not sure what to do now?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
