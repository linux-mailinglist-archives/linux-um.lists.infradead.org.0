Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D907B196E
	for <lists+linux-um@lfdr.de>; Fri, 13 Sep 2019 10:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EI4aBSFWOjzAEdn3WNREHbCzYbtRREwbgCVJjSOKKCU=; b=sEgv6u6cacsOWx
	96dccVXEDAABzADmW1ZP6wueVYri5mkwVuPGGISKtXqnp68et3dmcGWhREeW+u6lelpOmKli1YBxS
	UX5SPS9TLuR86jD3aegPinPnn2n7OfCCGjEKyIAXoIV6DpGD2wPR6qePFC8ojKzLpH4bUEqz46zcT
	x/St0HQOZ4jZkZCTRpBCsLAv5pvYBsiJx/4ILmbePJbO6KXjc263ddSbC8ikJo5yqUgRWt6XOQGw7
	m+qSjRBvRiSFnp4v9NAgvDEH4hEFzE32Bo84b6gyo5aFzxvcVB8yXoGURlI29G27w8KUZo4bypDrC
	lxNaG/dWioRsJUc7Zvtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8gl1-0001Ag-1j; Fri, 13 Sep 2019 08:16:43 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8gkP-0000yT-7p
 for linux-um@lists.infradead.org; Fri, 13 Sep 2019 08:16:07 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i8gkK-0008ML-8c; Fri, 13 Sep 2019 10:16:00 +0200
Message-ID: <69bf4022f3c6b7af20b2188673d3c0563c340f5e.camel@sipsolutions.net>
Subject: Re: [PATCH v5 0/5] um: virtio support
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Fri, 13 Sep 2019 10:15:59 +0200
In-Reply-To: <9e8e9db8-eafb-9132-21a2-762ea09b501a@kot-begemot.co.uk>
References: <20190911125122.20772-1-johannes@sipsolutions.net>
 <2b6ac17c16113892e27e82df9802264ef934d4d8.camel@sipsolutions.net>
 <3ccfa0c9-7b5c-6135-693e-a9700dfdd19f@kot-begemot.co.uk>
 <9e8e9db8-eafb-9132-21a2-762ea09b501a@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_011605_284974_C4C713BB 
X-CRM114-Status: GOOD (  10.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, 2019-09-13 at 09:14 +0100, Anton Ivanov wrote:

> It does not build as is at the moment, you need to add
> 
> EXPORT_SYMBOL(uml_reserved);
> 
> to ./kernel/um_arch.c
> 
> I could not find that anywhere in the patch series so it is probably 
> lingering in your tree from somewhere else.

Oh, no, but I've been using it built-in rather than as a module, sorry.

> It will be a good idea to respin everything including the patches it 
> depends vs current 5.x head so that we have a "definitive test with 
> this" version to work with.

I guess I'll have to test build it a bit more in various configs :)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
