Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09380B57E3
	for <lists+linux-um@lfdr.de>; Wed, 18 Sep 2019 00:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tDgTNkC4P5oXH+oubHFpkXnN1w4qPHbYaNx8Y5eig8M=; b=Zbr9nNRgvckTg0ktWc/o4LyP5
	N81xBKhutt4GdNe2Ne6f6Zakenjz7WVbD2WFe8J1E6nDHP7peJG/aqepXay75UPhddlICuh4JFFro
	LLx4+okpC7kaVNbcONGroDjDds8JTJpdbheeu1knxBGgDKo3/FJkE2QA/3QFik1tWB2RcHAyCvX3/
	g1bf74tS0Y4KqI0CVwnnbYD1dwweDZmOoTvOnTiZ9spE8GzBbArSKOr29XDItNFr5mf3FkqmmdQGq
	+VXLWqPE52QJxzs1nUraSzOcrmkJCvD59ibtFoDLUJaNZicj+ajFztUoKngk8m8fW3ghAgCgiJp2k
	qfZEEOlEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iALdV-0007WR-NG; Tue, 17 Sep 2019 22:07:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iALdU-0007T9-0k
 for linux-um@bombadil.infradead.org; Tue, 17 Sep 2019 22:07:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n9GVF0sAvdBsbCGpxN1NDXcOvGfPXZKT2HCvKhx0dsY=; b=ULJPWrZ5u++m7pd8x77sTVrwuk
 NyAFJRw0Fp4A1O00cB3YlejY/VxMfrV9XO72A78ZLDnM+QKSpTtf4TxNSk+CKYZajHhiVSe0APgyx
 LxzeF0jEr6fCmiu5klgITuOh/iBbSskjYzxLOIDAVoM8tbQIPSykaz2udR8H9g7/q8tmBHthW94iU
 YIRnkXM0X2nHmmCq0n+Xjq3yRXwgLZHInnY2WUaC/IAddOkXQLDpLW4pFRQlp4WyrtctCwoLLqE/G
 bkrsGbMz8hwf9B7dHNeyq+2zAxKcI8qt5iCOnqyXTBbO5vrfDYhER18BVYJC3M1IiKrYkBMyGNdX9
 9OyGqNfA==;
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by casper.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iALRf-0005YS-Vu
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 21:55:37 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iALQJ-0000lz-GP; Tue, 17 Sep 2019 21:54:11 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iALQH-0005OA-16; Tue, 17 Sep 2019 22:54:11 +0100
Subject: Re: CONFIG_COMPAT for UM?
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <60f73376da11640d5b335512f052a583fd784fd8.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <76d688c3-3d8b-fb59-3ad4-ef8dd9c023be@kot-begemot.co.uk>
Date: Tue, 17 Sep 2019 22:54:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <60f73376da11640d5b335512f052a583fd784fd8.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_225536_058259_13D83478 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 17/09/2019 21:47, Johannes Berg wrote:
> Hi,
> 
> It seems to me that it ought to be possible - at least if the host
> kernel has 32/64 compatibility, to extend the same to the UML kernel?
> 
> Has anyone ever given this a thought?
> 
> I just realized that our test suite is based on 32-bit binaries ... :-)
> 
> johannes
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

I have run 32 on 64 with no issues. In fact, I had to build a product 
prototype using that a while back because the target userspace load did 
not have 64 bit support. Even vector IO works despite the differences 
between 32 bit and 64 bit syscalls for that.

I am not sure we need to do anything here. What in particular do you 
have in mind?

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
