Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB92B15BB15
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 10:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sBLp3D0Y3ffdR1YvekAXPH3G6G8oBg8UsqOp10BnFbE=; b=lXFtZXmTmRaLpq
	Z5MPQT0tjPc49ig7rS3gyLoKIIxxpuJju2RJ9dejQ2m+8mj+waR7dM7voCNZjuuJ7mdzj8mDXPVcd
	VDmqEToL+9JcCr11h4EoMxQ+7em5b2UNAwBT16mZyjiFplqPwIJkIj+cXc7WeKUXa9X6mWnOCxpTG
	az4MhfbVRo+TiWwo8l5jOFpFwYLNdK1OUSEyOAMxZwdEctXgYa5Bgi1l3GHgfLmvkAlD3BIAWDTCG
	gHEix6bmeKXEJhyPDxcdIMUk1bR4jxF7F2RUZ6fuTyNF/TBpljLLa49QFYW3W6nzVkVhCBLNBtkas
	ANY0WYHaG8qEcdNEk+qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2AO5-0007Vj-WA; Thu, 13 Feb 2020 09:02:22 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2AO3-0007Uv-M5
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 09:02:20 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1j2ANq-008F19-Gs; Thu, 13 Feb 2020 10:02:06 +0100
Message-ID: <817580a4bcfbd3ef3ce31dfc5876bb99c3fca832.camel@sipsolutions.net>
Subject: Re: [RFC PATCH v2] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 13 Feb 2020 10:02:05 +0100
In-Reply-To: <CACT4Y+ZB3QwzeogxVFVXW_z=eE2n5fQxj7iYq9-Jw68zdS=mUA@mail.gmail.com>
 (sfid-20200213_094451_311672_27C02820)
References: <20200210225806.249297-1-trishalfonso@google.com>
 <13b0ea0caff576e7944e4f9b91560bf46ac9caf0.camel@sipsolutions.net>
 <CAKFsvUKaixKXbUqvVvjzjkty26GS+Ckshg2t7-+erqiN2LVS-g@mail.gmail.com>
 <e8a45358b273f0d62c42f83d99c1b50a1608929d.camel@sipsolutions.net>
 <CACT4Y+ZB3QwzeogxVFVXW_z=eE2n5fQxj7iYq9-Jw68zdS=mUA@mail.gmail.com>
 (sfid-20200213_094451_311672_27C02820)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_010219_722409_76361B59 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 2020-02-13 at 09:44 +0100, Dmitry Vyukov wrote:

> > Right, but again like below - that's just mapped, not actually used. But
> > as far as I can tell, once you actually start running and potentially
> > use all of your mem=1024 (MB), you'll actually also use another 128MB on
> > the KASAN shadow, right?
> > 
> > Unlike, say, a real x86_64 machine where if you just have 1024 MB
> > physical memory, the KASAN shadow will have to fit into that as well.
> 
> Depends on what you mean by "real" :)

:)

> Real user-space ASAN will also reserve 1/8th of 47-bit VA on start
> (16TB).

Ah, but I was thinking of actual memory *used*, not just VA.

And of KASAN, not user-space, but yeah, good point.

> This implementation seems to be much closer to user-space ASAN
> rather than to x86_64 KASAN (in particular it seems to be mostly
> portable across archs and is not really x86-specific, which is good).

Indeed.

> I think it's reasonable and good, but the implementation difference
> with other kernel arches may be worth noting somewhere in comments.

Right, I guess that's the broader point. I was thinking mostly of the
memory consumption: if you run with UML KASAN, your UML virtual machine
will use around 12.5% more memory than before, unlike if you say have a
KVM virtual machine - whatever you reserve outside will be what it can
use inside, regardless of KASAN being enabled or not.

This is totally fine, I just thought it should be documented somewhere,
perhaps in the Kconfig option, though I guess there isn't a UML specific
one for this... Not sure where then.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
