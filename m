Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2AEB5DC4
	for <lists+linux-um@lfdr.de>; Wed, 18 Sep 2019 09:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69zQFShnX847WY9OkxISq4h+JCzN8lPE6QzUGvh+EBw=; b=p/8TZTgHF2oNYc
	u9IxG6whtRzPlYxnVFklt1HM9aPO6sg4Za4SAbsGPnHo63vlR9M1PE4Ft8gq1q7kWpn2iHopT3bcj
	WzU+yZ+Oeb1vsfDCPLPvrTxr6gl4zwrphU6vg9e/j/ZgE4ewZlnCz+9CjDQKysYXrd2yH+4mvPn+5
	T+YDwlhM142PowwpB1frH1fFdUi643UvxmG6CAkvOWcdwMMDz7YAW3BJjaKV0KZVR3k7tkwWgXeW1
	HmFe8JeMwC1pfbW5YHGlZX2/ImgBHPxrC/ApCc4OAngnEgU2jRCIno8muzDCF4MVOJV3kerALeRGR
	oq+2NOfRT8kgrp77QCOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAU3m-00021R-VE; Wed, 18 Sep 2019 07:07:30 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAU3j-000219-3i
 for linux-um@lists.infradead.org; Wed, 18 Sep 2019 07:07:28 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iAU3f-0003xV-1F; Wed, 18 Sep 2019 09:07:23 +0200
Message-ID: <5dad6c3e76e474b9f43df99ea235eb77389ce63f.camel@sipsolutions.net>
Subject: Re: CONFIG_COMPAT for UM?
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Wed, 18 Sep 2019 09:07:22 +0200
In-Reply-To: <b3507d24-ebd9-8e7f-25a8-61c1891c37d4@kot-begemot.co.uk>
References: <60f73376da11640d5b335512f052a583fd784fd8.camel@sipsolutions.net>
 <76d688c3-3d8b-fb59-3ad4-ef8dd9c023be@kot-begemot.co.uk>
 <b3507d24-ebd9-8e7f-25a8-61c1891c37d4@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_000727_152955_38E9CBEB 
X-CRM114-Status: UNSURE (   7.80  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-09-18 at 07:48 +0100, Anton Ivanov wrote:
> 
> I was thinking about running 32 bit instances on a 64 bit host.

Yeah, I guess I could run as a 32-bit instance, but I'd rather actually
use a 64-bit instance. If I ever manage to get KASAN running (among
other things) this will totally be required :)

> Pure 32 bit userspace on 64 kernel - yeah... why not. Though to be 
> honest, nearly all distributions now have multiarch support so the need 
> for this is nowhere near as pressing as 10+ years ago when the first 
> AMD64 processors came out.

True, it's not really of that much use these days. I guess it could be
helpful to test the compat code (ioctls) itself.

I've mostly worked around my problem by making the test suite bootstrap
64-bit compatible, which was annoying but doable :-)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
