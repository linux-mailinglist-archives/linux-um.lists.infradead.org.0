Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54F12654F
	for <lists+linux-um@lfdr.de>; Wed, 22 May 2019 16:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gD/t3jgV/3pGVFPihcUzgDJTeoCtOTD/z7AgH0eM1HM=; b=o9NOoJXnIpGAEL18KMVUl73bL
	xiuI9Ize170Gg87XYgbwYCjTIlSq+905smTXBAwK5ZC+9Df8uI81NVuza6GnRnKZKMighN8IG4ePI
	6XZaIC+zUrzmlQpjqpn4Vdj6uh42508YVTtPRNjo0SLSLySnf5Fyh+D7iNFOzthsEmfsb0/erb7UE
	suMe3i9vGRZ2vPmf2w18RjX8yu1iBZK4Z19ka9STS2ScdMAXVKKtVWTMnVImKP76rIKlzEEUKGjjh
	IjnRmuUEf2IUSOwD/SqE1oKM1Tw/6QqKswXhOt+uMTfUuFYnose9dliYcuCIHfXI8Ase7GoSODcj7
	+wPebYRbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRnQ-0005QH-K0; Wed, 22 May 2019 14:00:44 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRnM-0005Gk-R9
 for linux-um@lists.infradead.org; Wed, 22 May 2019 14:00:43 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hTRnG-0004Bo-ET; Wed, 22 May 2019 14:00:34 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hTRnE-0004HD-47; Wed, 22 May 2019 15:00:34 +0100
Subject: Re: custom virt-io support (in user-mode-linux)
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org,
 virtualization@lists.linux-foundation.org, qemu-devel@nongnu.org
References: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
 <ddeee710-d546-ff05-5c53-991a7d807067@kot-begemot.co.uk>
 <8b30e5cea2692d62fd7f486fc98effdb589a1412.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <f21ae7ac-ae56-71e6-cebd-f97c8912f5e1@cambridgegreys.com>
Date: Wed, 22 May 2019 15:00:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8b30e5cea2692d62fd7f486fc98effdb589a1412.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_070041_015137_8D077698 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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



On 22/05/2019 14:46, Johannes Berg wrote:
> Hi Anton,
> 
>>> I'm thinking about adding virt-io support to UML, but the tricky part is
>>> that while I want to use the virt-io basics (because it's a nice
>>> interface from the 'inside'), I don't actually want the stock drivers
>>> that are part of the kernel now (like virtio-net etc.) but rather
>>> something that integrates with wifi (probably building on hwsim).
> 
>> I have looked at using virtio semantics in UML in the past around the
>> point when I wanted to make the recvmmsg/sendmmsg vector drivers common
>> in UML and QEMU. It is certainly possible,
>>
>> I went for the native approach at the end though.
> 
> Hmm. I'm not sure what you mean by either :-)
> 
> Is there any commonality between the vector drivers? 

I was looking purely from a network driver perspective.

I had two options - either do a direct read/write as it does today or 
implement the ring/king semantics and read/write from that.

I decided to not bother with the latter and read/write directly from/to 
skbs.

> I can't see how
> that'd work without a bus abstraction (like virtio) in qemu? I mean, the
> kernel driver just calls uml_vector_sendmmsg(), which I'd say belongs
> more to the 'outside world', but that can't really be done in qemu?
> 
> Ok, I guess then I see what you mean by 'native' though.
> 
> Similarly, of course, I can implement arbitrary virt-io devices - just
> the kernel side doesn't call a function like uml_vector_sendmmsg()
> directly, but instead the virt-io model, and the model calls the
> function, which essentially is the same just with a (convenient)
> abstraction layer.
> 
> But this leaves the fundamental fact the model code ("vector_user.c" or
> a similar "virtio_user.c") is still part of the build.
> 
> I guess what I'm thinking is have something like "virtio_user_rpc.c"
> that uses some appropriate RPC to interact with the real model. IOW,
> rather than having all the model-specific logic actually be here (like
> vector_user.c actually knows how to send network packets over a real
> socket fd), try to call out to some RPC that contains the real model.
> 
> Now that I thought about it further, I guess my question boils down to
> "did anyone ever think about doing RPC for Virt-IO instead of putting
> the entire device model into the hypervisor/emulator/...".

Virtio in general no. UML specifically - yes. I have thought of mapping 
out all key device calls to RPCs for a few applications. The issue is 
that it is fairly difficult to make all of this function cleanly without 
blocking in strange places.

You may probably want to look at the UML UBD driver. That is an example 
of moving out all processing to an external thread and talking to it via 
a request/response API. While it still expects shared memory and needs 
access to UML address space the model should be more amenable to 
replacing various calls with RPCs as you have now left the rest of the 
kernel to run while you are processing the RPC. It also provides you 
with RPC completion interrupts, etc as a side effect.

So you basically have UML -> Thread -> RPCs -> Model?

> 
> johannes
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
