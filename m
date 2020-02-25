Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F71B16BB36
	for <lists+linux-um@lfdr.de>; Tue, 25 Feb 2020 08:48:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tTeGQNIoLB4UnoCDtIC2aezzdfpxzx92KnSYz6nFGvA=; b=Ymf1P60IYgj1P77b36KVm2iMw
	8BgH6+2sQ6dePAmSfEDhP6HsWOhMYvpFp6pkNbHNtvLpEq4oWiEVFKGFuVI81FixjUr4hkzhwzT7Y
	aAeEbiPhu0IdNGrSp0CsFnasKvCc45n408pTH6zrd87Q35+joYds8NkvYXtDYFU6Sv3R3tf4yvuT+
	nDxlkmd0eRzEkSlrh0iGpsqvbMPPiJbQjbtwUvyFp5P1PN37FiUO+kKRlr/6/wn6vJdUYGac6LvhU
	w8JFgNCCmGIpiMGXO5r/wqUHIt95D77UhAWf5NboSIBgD5v+EaOTFusxKPdoTwUi8I1w6OFhMc6X3
	HkCeXtuPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6UxK-0005f1-E2; Tue, 25 Feb 2020 07:48:38 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6UxH-0005ee-IQ
 for linux-um@lists.infradead.org; Tue, 25 Feb 2020 07:48:37 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6UxE-0000yW-BM; Tue, 25 Feb 2020 07:48:32 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6UxC-0007kR-16; Tue, 25 Feb 2020 07:48:32 +0000
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
 <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
 <4e7757cf-148e-4585-b358-3b38f391275d@cambridgegreys.com>
 <CA+FuTSdOCJZCVS4xohx+BQmkmq8JALnK=gGc0=qy1TbjY707ag@mail.gmail.com>
 <93cb2b3f-6cae-8cf1-5fab-93fa34c14628@cambridgegreys.com>
 <CA+FuTScEXRwYtFzn-jtFhV0dNKNQqKPBwCWaNORJW=ERU=izMA@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <6b83116c-2cca-fb03-1c13-bb436dccf1b3@cambridgegreys.com>
Date: Tue, 25 Feb 2020 07:48:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CA+FuTScEXRwYtFzn-jtFhV0dNKNQqKPBwCWaNORJW=ERU=izMA@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -0.7
X-Spam-Score: -0.7
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_234835_611621_2AFBA9F7 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: cambridgegreys.com]
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
Cc: Eric Dumazet <eric.dumazet@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Network Development <netdev@vger.kernel.org>, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 24/02/2020 22:22, Willem de Bruijn wrote:
> On Mon, Feb 24, 2020 at 4:00 PM Anton Ivanov
> <anton.ivanov@cambridgegreys.com> wrote:
>>
>> On 24/02/2020 20:20, Willem de Bruijn wrote:
>>> On Mon, Feb 24, 2020 at 2:55 PM Anton Ivanov
>>> <anton.ivanov@cambridgegreys.com> wrote:
>>>> On 24/02/2020 19:27, Willem de Bruijn wrote:
>>>>> On Mon, Feb 24, 2020 at 8:26 AM <anton.ivanov@cambridgegreys.com> wrote:
>>>>>> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
>>>>>>
>>>>>> Some of the locally generated frames marked as GSO which
>>>>>> arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
>>>>>> fragments (data_len = 0) and length significantly shorter
>>>>>> than the MTU (752 in my experiments).
>>>>> Do we understand how these packets are generated?
>>>> No, we have not been able to trace them.
>>>>
>>>> The only thing we know is that this is specific to locally generated
>>>> packets. Something arriving from the network does not show this.
>>>>
>>>>> Else it seems this
>>>>> might be papering over a deeper problem.
>>>>>
>>>>> The stack should not create GSO packets less than or equal to
>>>>> skb_shinfo(skb)->gso_size. See for instance the check in
>>>>> tcp_gso_segment after pulling the tcp header:
>>>>>
>>>>>            mss = skb_shinfo(skb)->gso_size;
>>>>>            if (unlikely(skb->len <= mss))
>>>>>                    goto out;
>>>>>
>>>>> What is the gso_type, and does it include SKB_GSO_DODGY?
>>>>>
>>>>
>>>> 0 - not set.
>>> Thanks for the follow-up details. Is this something that you can trigger easily?
>>
>> Yes, if you have a UML instance handy.
>>
>> Running iperf between the host and a UML guest using raw socket
>> transport triggers it immediately.
>>
>> This is my UML command line:
>>
>> vmlinux mem=2048M umid=OPX \
>>       ubd0=OPX-3.0-Work.img \
>> vec0:transport=raw,ifname=p-veth0,depth=128,gro=1,mac=92:9b:36:5e:38:69 \
>>       root=/dev/ubda ro con=null con0=null,fd:2 con1=fd:0,fd:1
>>
>> p-right is a part of a vEth pair:
>>
>> ip link add l-veth0 type veth peer name p-veth0 && ifconfig p-veth0 up
>>
>> iperf server is on host, iperf -c in the guest.
>>
>>>
>>> An skb_dump() + dump_stack() when the packet socket gets such a
>>> packet may point us to the root cause and fix that.
>>
>> We tried dump stack, it was not informative - it was just the recvmmsg
>> call stack coming from the UML until it hits the relevant recv bit in
>> af_packet - it does not tell us where the packet is coming from.
>>
>> Quoting from the message earlier in the thread:
>>
>> [ 2334.180854] Call Trace:
>> [ 2334.181947]  dump_stack+0x5c/0x80
>> [ 2334.183021]  packet_recvmsg.cold+0x23/0x49
>> [ 2334.184063]  ___sys_recvmsg+0xe1/0x1f0
>> [ 2334.185034]  ? packet_poll+0xca/0x130
>> [ 2334.186014]  ? sock_poll+0x77/0xb0
>> [ 2334.186977]  ? ep_item_poll.isra.0+0x3f/0xb0
>> [ 2334.187936]  ? ep_send_events_proc+0xf1/0x240
>> [ 2334.188901]  ? dequeue_signal+0xdb/0x180
>> [ 2334.189848]  do_recvmmsg+0xc8/0x2d0
>> [ 2334.190728]  ? ep_poll+0x8c/0x470
>> [ 2334.191581]  __sys_recvmmsg+0x108/0x150
>> [ 2334.192441]  __x64_sys_recvmmsg+0x25/0x30
>> [ 2334.193346]  do_syscall_64+0x53/0x140
>> [ 2334.194262]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> That makes sense. skb_dump might show more interesting details about
> the packet.

I will add that and retest later today.

> From the previous thread, these are assumed to be TCP
> packets?

Yes

> 
> I had missed the original thread. If the packet has
> 
>      sinfo(skb)->gso_size = 752.
>      skb->len = 818
> 
> then this is a GSO packet. Even though UML will correctly process it
> as a normal 818 B packet if psock_rcv pretends that it is, treating it
> like that is not strictly correct. A related question is how the setup
> arrived at that low MTU size, assuming that is not explicitly
> configured that low.

The mtu on the interface is normal. I suspect it is one of the first packets
in the stream or something iperf uses for communication between the server and
the client which always ends up that size.

> 
> As of commit 51466a7545b7 ("tcp: fill shinfo->gso_type at last
> moment") tcp unconditionally sets gso_type, even for non gso packets.
> So either this is not a tcp packet or the field gets zeroed somewhere
> along the way. I could not quickly find a possible path to
> skb_gso_reset or a raw write.

Same. I have tried to trace a possible origin and I have not seen anything which may cause it.

> 
> It may be useful to insert tests for this condition (skb_is_gso(skb)
> && !skb_shinfo(skb)->gso_type) that call skb_dump at other points in
> the network stack. For instance in __ip_queue_xmit and
> __dev_queue_xmit.
> 
> Since skb segmentation fails in tcp_gso_segment for such packets, it
> may also be informative to disable TSO on the veth device and see if
> the test fails.

Ack.

> 

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
