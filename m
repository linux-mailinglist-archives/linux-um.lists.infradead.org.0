Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B1DB9681
	for <lists+linux-um@lfdr.de>; Fri, 20 Sep 2019 19:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hN5NyAzsP+XNF1G3IbaNVTBfGMZg9srwkNJNoIc+N00=; b=lIyBN22ZM12UZH
	B0Ixd6IkyOhjAlq5ZyUNIAxMsZu5Jc6C+bHWhwQ5vUY0ofjdvr8aw5Zm4nJEezthgi6U1MFJ8AMCZ
	a+t49XSqmtfmbcQOivEDQJwu4FzbRTS24iP+kYJ68qRH8FNh9nihr3c+7yVHAVHYKlX+kgcVsxQfj
	s8DmwkC/nN9G00vhYgerkhTcTNGsgshfiVdrCZQX18G/JT3olLrz5wV2UKHB2J85zBqWnCT7ZybRP
	ydjQQP+yJLKXL30uuZEy8O2SOPu3FQFlkDsG77edbgO/R8kKlUxw5jLoHcOdOim9xG5CxC6GNfZT9
	CficaUbAtrv5uDYCEtDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBMjA-0005ku-Dz; Fri, 20 Sep 2019 17:29:52 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBMj6-0005jL-Uf
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 17:29:50 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iBMiy-0001xA-A5; Fri, 20 Sep 2019 19:29:40 +0200
Message-ID: <dad1a2ea4bc0272bf45ba83bec71e0f735409e30.camel@sipsolutions.net>
Subject: Re: linux-image-5.2.0-2-amd64: breaks UML all versions, both debian
 stock and compiled from source.
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Fri, 20 Sep 2019 19:29:38 +0200
In-Reply-To: <4eb157d9-421e-092d-c2e9-96a2205e8ba4@kot-begemot.co.uk>
References: <156897436056.2001.10040310871991691509.reportbug@sleer.kot.begemot.co.uk>
 <ded0fc52-3631-375f-e4b5-c18e93777c4f@kot-begemot.co.uk>
 <4eb157d9-421e-092d-c2e9-96a2205e8ba4@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_102948_990149_A11CAA9B 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: 940820@bugs.debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, 2019-09-20 at 16:57 +0100, Anton Ivanov wrote:
> Looks like the culprit is a different default elf start address on 5.x
> 
> What changes is not the sbrk(0) or _end - these are pretty much 
> identical as in 4.x. It is the START which after some "fixups" in 
> arch/um/kernel/uml.lds.S becomes __binary_start

Doesn't this just use sbrk(0) to basically detect the end of the
"regular" part of the binary that's mapped by the loader, i.e. basically
"uml_reserved"? At least that's what I thought when I looked.

And if so, perhaps we could detect all this differently? Or even place
the (mmap'ed) physical memory somewhere else? I'd think nothing really
should care if it's contiguous or not?

If we did that we wouldn't have the whole thing contiguous in memory,
but do we really need to? Hmm. Maybe we do, so we don't have huge page
tables or something?

But then again, isn't the difference basically where the binary is
mapped, maybe we could mark it as non-relocatable?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
