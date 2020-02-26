Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDB416F8D0
	for <lists+linux-um@lfdr.de>; Wed, 26 Feb 2020 08:53:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lihe+XeIg49KMnjPut1KY7yfwURQWeBIU8nsKgYAN1U=; b=IsGwfgiIsnmS5b78gegOkNlzD
	2Ajxk5rH3/47MWXmR8b2f94AyRjNdlQ6q28Fu+A3AXGF7jqRzgVmH/XQwQZKBiaGXwXqm2nCuSfRy
	tK2l3PjEm7OabZ1rGyiJjL85xtJUiRw71FjQExOP2C0B3lDSsjJ6bcnWyF1BNGXbvlpGH7/LKX361
	jCsJlbjqXqgAdwBMbe5BhMNGZ9ZXhw3b4uAgCE9FnS0Ne8UXbHkvqoDHqxUZFHltuhWdX2JpD/mqk
	wdc2TXy5UxSB24HeDWJLthSHDUvJmTWgxI0lWEP3TVgnz29aVXBWKAg89JFwUfodAH7nbDlxXaGFA
	KV0bUKVAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rVT-0002e0-GC; Wed, 26 Feb 2020 07:53:23 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rVQ-0002dS-TS
 for linux-um@lists.infradead.org; Wed, 26 Feb 2020 07:53:22 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6rVK-00054O-IM; Wed, 26 Feb 2020 07:53:14 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6rVI-0004Iu-4J; Wed, 26 Feb 2020 07:53:14 +0000
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
 <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
 <4e7757cf-148e-4585-b358-3b38f391275d@cambridgegreys.com>
 <CA+FuTSdOCJZCVS4xohx+BQmkmq8JALnK=gGc0=qy1TbjY707ag@mail.gmail.com>
 <93cb2b3f-6cae-8cf1-5fab-93fa34c14628@cambridgegreys.com>
 <CA+FuTScEXRwYtFzn-jtFhV0dNKNQqKPBwCWaNORJW=ERU=izMA@mail.gmail.com>
 <6b83116c-2cca-fb03-1c13-bb436dccf1b3@cambridgegreys.com>
 <cd1b4084-af6b-7fd9-f182-8b32a3c8d837@cambridgegreys.com>
 <CA+FuTSebC064cZXTz_n7jXLrtAcuXxp2N_jiAdi3v2=A6fBBJw@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <f7983902-6f53-fe5f-263b-6555b5a1e883@cambridgegreys.com>
Date: Wed, 26 Feb 2020 07:53:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CA+FuTSebC064cZXTz_n7jXLrtAcuXxp2N_jiAdi3v2=A6fBBJw@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -0.7
X-Spam-Score: -0.7
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_235320_950206_3B120D2C 
X-CRM114-Status: GOOD (  21.84  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: bootlin.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Eric Dumazet <eric.dumazet@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Network Development <netdev@vger.kernel.org>, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 25/02/2020 16:26, Willem de Bruijn wrote:
>>>>>> An skb_dump() + dump_stack() when the packet socket gets such a
>>>>>> packet may point us to the root cause and fix that.
>>>>>
>>>>> We tried dump stack, it was not informative - it was just the recvmmsg
>>>>> call stack coming from the UML until it hits the relevant recv bit in
>>>>> af_packet - it does not tell us where the packet is coming from.
>>>>>
>>>>> Quoting from the message earlier in the thread:
>>>>>
>>>>> [ 2334.180854] Call Trace:
>>>>> [ 2334.181947]  dump_stack+0x5c/0x80
>>>>> [ 2334.183021]  packet_recvmsg.cold+0x23/0x49
>>>>> [ 2334.184063]  ___sys_recvmsg+0xe1/0x1f0
>>>>> [ 2334.185034]  ? packet_poll+0xca/0x130
>>>>> [ 2334.186014]  ? sock_poll+0x77/0xb0
>>>>> [ 2334.186977]  ? ep_item_poll.isra.0+0x3f/0xb0
>>>>> [ 2334.187936]  ? ep_send_events_proc+0xf1/0x240
>>>>> [ 2334.188901]  ? dequeue_signal+0xdb/0x180
>>>>> [ 2334.189848]  do_recvmmsg+0xc8/0x2d0
>>>>> [ 2334.190728]  ? ep_poll+0x8c/0x470
>>>>> [ 2334.191581]  __sys_recvmmsg+0x108/0x150
>>>>> [ 2334.192441]  __x64_sys_recvmmsg+0x25/0x30
>>>>> [ 2334.193346]  do_syscall_64+0x53/0x140
>>>>> [ 2334.194262]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>>>>
>>>> That makes sense. skb_dump might show more interesting details about
>>>> the packet.
>>>
>>> I will add that and retest later today.
>>
>>
>> skb len=818 headroom=2 headlen=818 tailroom=908
>> mac=(2,14) net=(16,0) trans=16
>> shinfo(txflags=0 nr_frags=0 gso(size=752 type=0 segs=1))
>> csum(0x100024 ip_summed=3 complete_sw=0 valid=0 level=0)
>> hash(0x0 sw=0 l4=0) proto=0x0800 pkttype=4 iif=0
>> sk family=17 type=3 proto=0
>>
>> Deciphering the actual packet data gives a
>>
>> TCP packet, ACK and PSH set.
>>
>> The PSH flag looks like the only "interesting" thing about it in first read.
> 
> Thanks.
> 
> TCP always sets the PSH bit on a GSO packet as of commit commit
> 051ba67447de  ("tcp: force a PSH flag on TSO packets"), so that is
> definitely informative.
> 
> The lower gso size might come from a path mtu probing depending on
> tcp_base_mss, but that's definitely wild speculation. Increasing that
> value to, say, 1024, could tell us.
> 
> In this case it may indeed not be a GSO packet. As 752 is the MSS + 28
> B TCP header including timestamp + 20 B IPv4 header + 14B Eth header.
> Which adds up to 814 already.
> 
> Not sure what those 2 B between skb->data and mac_header are. Was this
> captured inside packet_rcv? 

af_packet, packet_rcv

https://elixir.bootlin.com/linux/latest/source/net/packet/af_packet.c#L2026

> network_header and transport_header both
> at 16B offset is also sketchy, but again may be an artifact of where
> exactly this is being read.
> 
> Perhaps this is a segment of a larger GSO packet that is retransmitted
> in part. Like an mtu probe or loss probe. See for instance this in
> tcp_send_loss_probe for  how a single MSS is extracted:
> 
>         if ((pcount > 1) && (skb->len > (pcount - 1) * mss)) {
>                  if (unlikely(tcp_fragment(sk, TCP_FRAG_IN_RTX_QUEUE, skb,
>                                            (pcount - 1) * mss, mss,
>                                            GFP_ATOMIC)))
>                          goto rearm_timer;
>                  skb = skb_rb_next(skb);
>          }
> 
> Note that I'm not implicating this specific code. I don't see anything
> wrong with it. Just an indication that a trace would be very
> informative, as it could tell if any of these edge cases is being hit.

I will be honest, I have found it a bit difficult to trace.

At the point where this is detected, the packet is already in the vEth 
interface queue and is being read by recvmmsg on a raw socket.

The flags + gso size combination happened long before that - even before 
it was being placed in the queue.

What is clear so far is that while the packet has invalid 
gso_size/gso_type combination, it is an otherwise valid tcp frame.

I will stick the debug into is_gso (with a backtrace) instead and re-run 
it later today to see if this can pick it up elsewhere in the stack.

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
