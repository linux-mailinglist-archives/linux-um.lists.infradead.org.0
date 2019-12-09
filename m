Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906FC116905
	for <lists+linux-um@lfdr.de>; Mon,  9 Dec 2019 10:19:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yj7fmLyBnHisIG161rNKabjgZfoLCP5TuA6YIOVz7ew=; b=tsaqlAzI1Hvpe+GPMFeQppsCi
	ezeH6EEThqbyRpve1G0yZgE7NycqltOjXRZtOQRZAAZp12CaHvmgpQ6p0OTorhXpHOGE/EoL3ufJ/
	Atq6kEjQBoHME1QVCqwQvYxZF/n2Um5dRcajjlqcVIIOKlxBt/rWjTDwuNhEzmPjWNnBuVxKRFCQH
	vPyO5oWF7ctvwEPhF14Gt6+8+k4XyiAMF2A6vWR30CvuDnVQosOtA++pPHzkNQrq11Uvg/b3PDlKg
	DXIMeOHAQkxMtyDv+41OEr2KFkGx3KTYczmSBPxEJMYj6WO2NGvY5dbHT93KYUXjXOMWxT1fg0R8l
	u97lZyr9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFCF-0000Ds-4W; Mon, 09 Dec 2019 09:19:15 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFCC-0000Ci-6c
 for linux-um@lists.infradead.org; Mon, 09 Dec 2019 09:19:14 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieFC7-0006JT-E3; Mon, 09 Dec 2019 09:19:07 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieFC5-0002Rh-0m; Mon, 09 Dec 2019 09:19:07 +0000
Subject: Invalid GSO - from 4.x (TBA) to 5.5-rc1. Was: Re: 64 bit time
 regression in recvmmsg()
To: Arnd Bergmann <arnd@arndb.de>
References: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
 <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
 <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
 <a5b9709d-b93b-46e1-ab18-a94ab921ccf7@cambridgegreys.com>
 <9dc1be66-5c55-8b3d-875b-4e1206914e78@cambridgegreys.com>
 <CAK8P3a1KcRcpUB2PdA17tnHN_dDs2Y02zPtkgM22Z-JdugAkfQ@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <e96aebcc-907a-d86f-ea8f-f5b10f74f39b@cambridgegreys.com>
Date: Mon, 9 Dec 2019 09:19:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1KcRcpUB2PdA17tnHN_dDs2Y02zPtkgM22Z-JdugAkfQ@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_011912_245948_6C389AD1 
X-CRM114-Status: GOOD (  12.39  )
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
Cc: netdev <netdev@vger.kernel.org>, linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 06/12/2019 20:06, Arnd Bergmann wrote:
> On Fri, Dec 6, 2019 at 6:50 PM Anton Ivanov
> <anton.ivanov@cambridgegreys.com> wrote:
>> On 29/11/2019 16:34, Anton Ivanov wrote:
>>
>> I apologize, problem elsewhere. I have narrowed it down, it is a host
>> regression at the end, not a recvmmsg/time one.
>>
>> The EINVAL is occasionally returned from the guts of packet_rcv_vnet
>>
>> https://elixir.bootlin.com/linux/latest/ident/packet_rcv_vnet
>>
>> in af_packet. I am going to try to figure out exactly when it happens
>> and why.
>>
>> My sincere apologies,
> 
> No, worries, I'm glad it wasn't me this time ;-)

At some point in late 4.x (I am going to try narrowing down the 
version), gso code introduced a condition which should not occur:

We have

sinfo(skb)->gso_type = 0

while

sinfo(skb)->gso_size = 752.
skb->len = 818
skb->data_len = 0

As a result we get a skb which is GSO, but it has a no GSO type.

This shows up in virtio_net_hdr_from_skb() which detects the condition 
as invalid and returns an -EINVAL

A few interesting things.

1. Size is always 752.

2. I have found it while tracing an -EINVAL when using recvmmsg() on raw 
sockets. No idea if it shows up elsewhere.

3. The environment under test is reading/writing to a raw socket opened 
on a vEth pair configured as follows:


ip link add l-veth0 type veth peer name p-veth0 && ifconfig p-veth0 up
ifconfig l-veth0 192.168.97.1 netmask 255.255.255.252

the UML linux instance used as a reader/writer relies on 
recvmmsg/sendmmesg raw socket with vnet headers enabled.

virtio_net_hdr_from_skb() is called from the af_packet packet_recv_vnet 
function.

This condition simply should not occur. A skb with no data in the frags, 
gso on, gso size less than MTU and no type looks bogus.


> 
>       Arnd
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
