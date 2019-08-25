Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DD89C27A
	for <lists+linux-um@lfdr.de>; Sun, 25 Aug 2019 09:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qMQkdQBzvyrla9ViUkVaW1JAlWd7z7ZI/xigFrr+XU=; b=W/h8SOzQOSSXpZ
	EO6bTDOuXNe60slxXI/fDroO/SYDJuflN/0Fw+KR8BfMK6deCqfMlV1bzJdkFGGjfC2/pn+bBLrQO
	mKigd7rHXq71/H67zBQvxfT+yHV3XWKPFPqOlCRKvpJqDF3+yW+hGn1xBaL2P/1Cw7eoOK7lGU4sy
	4nbj4UeuWpX9FXOwZfvomJM3NzRL7/Asi/cmAhDwqyytrnpweluS+z63ZpChIQs+PArpp4thVsUrt
	WJ9dIj1PvzwHWEUu/MTU+y7x8xMvLV84/mrPX4gpueg34yfdbZ9AJp4J/m7prpCQFjtA8st5TRNTA
	FLyhNRRlLwmfhbgm2AWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1n9p-0002VI-61; Sun, 25 Aug 2019 07:41:49 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1n9m-0002UT-Bn
 for linux-um@lists.infradead.org; Sun, 25 Aug 2019 07:41:47 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i1n9f-00052l-RL
 for linux-um@lists.infradead.org; Sun, 25 Aug 2019 09:41:39 +0200
Message-ID: <d929dc9c60b46ac222ca847fe8df7c0640713e4a.camel@sipsolutions.net>
Subject: Re: [PATCH] arch: um: implement memory protection
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Sun, 25 Aug 2019 09:41:39 +0200
In-Reply-To: <20190823225831.23517-1-johannes@sipsolutions.net>
References: <20190823225831.23517-1-johannes@sipsolutions.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_004146_406335_B8198476 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Sat, 2019-08-24 at 00:58 +0200, Johannes Berg wrote:
> 
> Note that you can now enable CONFIG_DEBUG_RODATA_TEST,
> but it's broken as the fixup is broken - it'll just
> crash with
> 
>  Kernel panic - not syncing: Segfault with no mm

It just occurred to me that I need to check what happens if it's
actually userspace talking the fault or something, maybe if it
erroneously tries to copy_o_user() with a read-only kernel address or
so.

Don't want to cause a panic() in that case, after all.

IOW, I'd feel much happier about this if I could make
CONFIG_DEBUG_RODATA_TEST work after all, but I gave up after an hour or
so of poking the exception handlers and trying to figure out how I could
make fixup tables work on UML. It might mean doing copy_from_user() in
assembly, which would be annoying.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
