Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D791D264B6
	for <lists+linux-um@lfdr.de>; Wed, 22 May 2019 15:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a2A/CxFs3M3bn/hgllc4vZ5gb4VOXCbIBjP6qX76yAA=; b=YQ5/0tb9aFJ9Lu+hKGHm/cYw4
	t6G0YOkXVx0yEMGxOUOoRpq9Jb1kcCu1REm8f+qubtMXlMm6OnLtDx8qLdNdLvkTNX8tMB7C9GJPi
	9AkTFw1w9SboF0OxUopz9wZibqFthR6bOBFtkGy6FzMg2Bt3A/+pij24OhQ7WQKMrVK2Id582Pa5H
	dlwPSRcTxFQTCfQjnzH9pI8Usbdb3DGlgSvHygf0qVh8hogYJtO0c9E6oY5X0Ffr1CNQdWxIsF/LD
	0Pf8jP/sWWjFGu0b2CVBpx3TolNpzc4Dz3FHEiZ7Buy0dTd1X7IXLaLkjuNYMiPV1ISbeJVHvcMvL
	hxjGjH9Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRIR-0000IJ-Iz; Wed, 22 May 2019 13:28:43 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRIO-0000HP-Hv
 for linux-um@lists.infradead.org; Wed, 22 May 2019 13:28:42 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hTRIH-00045N-3j; Wed, 22 May 2019 13:28:33 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hTRIE-0003iF-IX; Wed, 22 May 2019 14:28:32 +0100
Subject: Re: custom virt-io support (in user-mode-linux)
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org,
 virtualization@lists.linux-foundation.org, qemu-devel@nongnu.org
References: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <ddeee710-d546-ff05-5c53-991a7d807067@kot-begemot.co.uk>
Date: Wed, 22 May 2019 14:28:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_062840_728391_BCE4E698 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 22/05/2019 14:02, Johannes Berg wrote:
> Hi,
> 
> While my main interest is mostly in UML right now [1] I've CC'ed the
> qemu and virtualization lists because something similar might actually
> apply to other types of virtualization.
> 
> I'm thinking about adding virt-io support to UML, but the tricky part is
> that while I want to use the virt-io basics (because it's a nice
> interface from the 'inside'), I don't actually want the stock drivers
> that are part of the kernel now (like virtio-net etc.) but rather
> something that integrates with wifi (probably building on hwsim).
> 
> The 'inside' interfaces aren't really a problem - just have a specific
> device ID for this, and then write a normal virtio kernel driver for it.
> 
> The 'outside' interfaces are where my thinking breaks down right now.
> 
> Looking at lkl, the outside is just all implemented in lkl as code that
> gets linked to the library, so in UML terms it'd just be extra 'outside'
> code like the timer handling or other netdev stuff we have today.
> Looking at qemu, it's of course also implemented there, and then
> interfaces with the real network, console abstraction, etc.
> 
> However, like I said above, I really need something very custom and not
> likely to make it upstream to any project (because what point is that if
> you cannot connect to the rest of the environment I'm building), so I'm
> thinking that perhaps it should be possible to write an abstract
> 'outside' that lets you interact with it really from out-of-process?
> Perhaps through some kind of shared memory segment? I think that gets
> tricky with virt-io doing DMA (I think it does?) though, so that part
> would have to be implemented directly and not out-of-process?
> 
> But really that's why I'm asking - is there a better way than to just
> link the device-side virt-io code into the same binary (be it lkl lib,
> uml binary, qemu binary)?
> 
> Thanks,
> johannes
> 
> [1] Actually, I've considered using qemu, but it doesn't have
> virtualized time and doesn't seem to support TSC virtualization. I guess
> I could remove TSC from the guest CPU and add a virtualized HPET, but
> I've yet to convince myself this works - on UML I made virtual time as a
> prototype already:
> https://patchwork.ozlabs.org/patch/1095814/
> (though my real goal isn't to just skip time forward when the host goes
> idle, it's to sync with other simulated components)
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

I have looked at using virtio semantics in UML in the past around the 
point when I wanted to make the recvmmsg/sendmmsg vector drivers common 
in UML and QEMU. It is certainly possible,

I went for the native approach at the end though.

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
