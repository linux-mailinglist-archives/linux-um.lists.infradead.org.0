Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE74145EC
	for <lists+linux-um@lfdr.de>; Mon,  6 May 2019 10:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0OJfMLcH8jxppJZIY76UA0tN67/+Il7AqMCt8O+25c=; b=ZOhCUbBO3SdYwT
	ruJblSdG+g/M14qwqmaeYz0QVtBW1tWXA66bIi9YRQOuXqNrOlguUC3VTfK0pWD6w0oH/FxO3zrXN
	ubWUEjjzvqOgJplCDLuWpY5aznfSRqg2XRjbUtbJI0tDQwPNkhZQG0BiOWLNOyN+ddsIcrlihm+QV
	RAh7kaZDI0z/rj0naWHTKSmiEpXTU2Z/O+BYydzXjmCo0aieU5TWNDxQok2p/LIWO9Znpnpm4GmaT
	amy3PcKMJjV42ifr0lPIGAJad7r6PuCnBiNVPbOuRv/3XzUAAbHwP8HcLr7yN8p8S3kZHRFOdVKsw
	dUuFEtst8PlFLgjOtCvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYqj-00036K-5C; Mon, 06 May 2019 08:19:49 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYqe-0002x7-To
 for linux-um@lists.infradead.org; Mon, 06 May 2019 08:19:47 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hNYqW-0007RA-BZ; Mon, 06 May 2019 10:19:36 +0200
Message-ID: <87441c0a5114f7a1ed904cefc8c4219a3f823779.camel@sipsolutions.net>
Subject: Re: [PATCH 3/3] arch: um: support virtual time
From: Johannes Berg <johannes@sipsolutions.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Anton Ivanov
 <anton.ivanov@cambridgegreys.com>
Date: Mon, 06 May 2019 10:19:35 +0200
In-Reply-To: <CAMuHMdXi7Yd9p8dahixBbH=kuY1Zmyz3OHCxrH9tKDo23cGHhw@mail.gmail.com>
 (sfid-20190506_094518_502940_F26CF509)
References: <20190503213249.30008-1-johannes@sipsolutions.net>
 <20190503213249.30008-3-johannes@sipsolutions.net>
 <95430ca975e73addc7f65e331488bc280974fd72.camel@sipsolutions.net>
 <9f844312-dca3-d20e-485b-13c1f249edb0@cambridgegreys.com>
 <CAMuHMdXi7Yd9p8dahixBbH=kuY1Zmyz3OHCxrH9tKDo23cGHhw@mail.gmail.com>
 (sfid-20190506_094518_502940_F26CF509)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_011945_397642_57F0DBCB 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2019-05-06 at 09:45 +0200, Geert Uytterhoeven wrote:
> On Sat, May 4, 2019 at 10:43 PM Anton Ivanov
> <anton.ivanov@cambridgegreys.com> wrote:
> > On 04/05/2019 20:05, Johannes Berg wrote:
> > > On Fri, 2019-05-03 at 21:32 +0000, Johannes Berg wrote:
> > 
> > I can understand your use case for patch 3. What I am not clear is where
> > should that config option live. It should be somewhere under
> > debug/kernel hacking with a sufficient number of big fat warnings so
> > people do not enable it accidentally by mistake.
> 
> I think enabling the config option should not also enable the feature, but
> just add code that allows to enable the feature by a kernel command line
> option, and/or by a special file in debugfs.

Hmm. Might be doable with a command line argument, I don't think having
the kernel boot in "real time" and then continue running at some point
from "virtual time" when enabled via debugfs makes sense, and I also
don't see how you could really switch back and forth without a lot of
effort in the code.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
