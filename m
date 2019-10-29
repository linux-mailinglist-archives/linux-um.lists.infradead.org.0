Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C37E82D6
	for <lists+linux-um@lfdr.de>; Tue, 29 Oct 2019 08:58:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXGTv8MsOBMhFOCkVg5UTcWxkuB4OHfjuH/G2z+7YzY=; b=aPhAMWjqStAJgr
	dAFsA9Oxtn4djtIFaWfjbc1dCcUosTLOWDWM09JiMdah0N6yOMlx526UjZnf/fgLCKfL/cnm8iQ6A
	5DfBDFYb3VMWNaH+JgMEVKErvD0fQt87ULLkPNKuSkuWRzyvBxqRQ33NhW+BEDAywxs5ZpE79lgst
	EjO+WW/vj3eLqPbtjG/+4Cr0pVUS6AdC55b2f/OwZG72nFA1jBWA9Xj8bxJZeiBDbRa3pTI+9IPHP
	nQgA2/5mVOikLy8AQVdFaPFVBM6DhlGe8rPVXxpwfqgTm2ZZfSGKSKkHCPIYDeXVdgK6+t5Uv4InK
	jTypA0H5+n+vTV3XOgDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMO4-00015U-Rp; Tue, 29 Oct 2019 07:57:56 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMO2-0000nX-AV
 for linux-um@lists.infradead.org; Tue, 29 Oct 2019 07:57:55 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iPMNu-0002ja-Tf; Tue, 29 Oct 2019 08:57:47 +0100
Message-ID: <9df8075205912512a9a0ec7eb0393ff74d3c4bbb.camel@sipsolutions.net>
Subject: Re: [RFC PATCH 03/47] lkl: architecture skeleton for Linux kernel
 library
From: Johannes Berg <johannes@sipsolutions.net>
To: Hajime Tazaki <thehajime@gmail.com>, jiangshanlai@gmail.com
Date: Tue, 29 Oct 2019 08:57:43 +0100
In-Reply-To: <m2a79k3tyf.wl-thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
 <0b1464dd4904ee2b049fef624895ead3fe6aa555.1571798507.git.thehajime@gmail.com>
 <CAFLxGvzqPzZtUSzymWgnhGnr6qgcDe9ue6Q8ALMS-r_Y+KXVOw@mail.gmail.com>
 <m2a79mx6br.wl-thehajime@gmail.com>
 <CAJhGHyBy4ok+Sg7TyLaaksqEBDanmZgsk6ujRqXU1KFcu+DHZQ@mail.gmail.com>
 <m2a79k3tyf.wl-thehajime@gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_005754_368723_522E4632 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: levex@linux.com, mattator@gmail.com, cem@freebsd.org,
 richard.weinberger@gmail.com, liuyuan@google.com, staal1978@gmail.com,
 motomuman@gmail.com, linux-um@lists.infradead.org, retrage01@gmail.com,
 petrosagg@gmail.com, tavi.purdila@gmail.com, xiaoj@google.com,
 mark@stillwell.me, pscollins@google.com, phh@phh.me, sigmaepsilon92@gmail.com,
 luca.dariz@gmail.com, edisonmcastro@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

> You're right: current patchset only share Makefile(s)
> between UML and LKL.  This is the first step toward the
> unification in my plan, described in the milestone of the
> cover letter (copy-pasted below).
> 
> > Milestone
> > =========
> > (snip)
> > 1. Put LKL code under arch/um (arch/um/lkl), and build it in a
> > separate way from UML.
> > 2. Share common parts of implementation between UML and LKL.
> > 3. Reimplement UML features with LKL API (if we wish)
> 
> For the step 2, [PATCH 46/47] and [47/47] are the kind of
> examples for this level of unification (sorry for the very
> dirty code).
> 
> For the step 3, I don't have any WIP code nor detailed plan.
> Implementing ptrace-based (or similar) syscall interception
> would be one of the development (I believe there are more).
> 
> Offering UML feature-sets, keeping compatibility, while
> benefiting from LKL (e.g., various underlying environment
> support) would be very high-level goal since there are many
> users of UML (various test tool projects, including coming
> Kunit).

Aren't you going about this the wrong way around?

I mean, this reads like you're proposing to start from LKL and
reimplement UML on top of it, but we currently have UML in the tree and
LKL isn't. Seems backward to me.

Also, looking at the patches, I'm not a huge fan of the whole "drop LKL
into UML". UML is already complex enough as is, with its memory model
and all, mixing in LKL makes it way more complex.

I don't think "drop LKL under UML" was what people had in mind when they
suggested that the two merge ...

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
