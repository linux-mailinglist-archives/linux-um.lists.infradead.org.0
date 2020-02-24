Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F011716B3CE
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 23:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2rMO2YPEcfhBqdwti0zxDae//pi8sqp08hhKj8KvAI=; b=Yz9mnfMHjF0ADR
	mgMU59bIMhrOHYFRtYCDN6tuZ+rodwR86I8AXuD9KXMup6l+CvO3q7yp4zO+UFQFWIUnX+75c+Wqu
	sPoWpj9WxQ79LAIrkSqwaFpyBwOXSAmcD2+8yAAwoCDoK9ZnfHIInM2L1mHVpD9mLGizxSP+hBtvI
	LuEsjemPcG3yo54F9hzOu3V6Oc9ObL2WqeGJev704kZpR7WUxWfIueGjHRl01qvEJL8maaHlIzoZr
	xlxV7f4RnSGPpMJY5JMQv43E12dPfWTslE7DIZJs3AL5uw7K+FurfkTGBS+wBu3Po2/4T39HKFhRM
	U9JHRYykEMihb/xEQk1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6M81-00021p-FJ; Mon, 24 Feb 2020 22:23:05 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6M7x-0001zr-VD
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 22:23:03 +0000
Received: by mail-yb1-xb44.google.com with SMTP id u47so5453453ybi.1
 for <linux-um@lists.infradead.org>; Mon, 24 Feb 2020 14:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iIizJAEddYE5v2sRf7GK1m99egmUw1JIn0Bcjp91PV4=;
 b=OO0BIgOyMX6u0FWjNR04H+ROmegaW4ctwdstMEDamEI8u5ZW9lr8B8ps9XTHmNQWMm
 QZPw9guviba7sZsZoV5oSIUzmyztDGhVTrQiwYUe4Wg4mWUI5WRJ++YGBIHa1U+aGqee
 QGDQyTYFzemFM1GhfhzLW1uYFAd5spj36Ad2ViMf2Tjv6MRy4BBgLtKI9v7NUZj6cO2f
 XyhLn1YKMjAp3XlZVg6BqqrDonQR6TK5swVL+nr31U6MM7xAqjYpHCV6lCn0L6y7N8JN
 dyHPOBbobLB0rCyzfofj3n9R9LcfBRcWTi5yexgeSA/9ILM6QabFUQUNKuQt4bu9UjuI
 WW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iIizJAEddYE5v2sRf7GK1m99egmUw1JIn0Bcjp91PV4=;
 b=L5QrLAlLDPpnCiBTpc11klpSUI+joyYqHsOBiYpQ6BCvIosjI3Qbv+guTIQefwzX5Q
 cHyz9zqTH8P8MTOGmkh1QGEyGo2lZjHPD9X+tepy1SnHyI8IrjXtyhM61ga6AFiTXy2y
 Ta0aW/xySvu9ymHEyJYHm0SHq+HT+bb5DZeJnKkI0P7yez8vgCLSDLQ+nVp/VMAK7HM2
 upspuPO8U1vpFY14akPqNe5qjhsBkB9VhZKPQJ6K9Y46nvD2w4qatbmKcNx+vS7Me9xW
 dLJkt5oZH24H0YTjfszRdJ10hASHQaZsqkfQjGZmJwjP3Od1BW2s/4eP0C3nR615Pjfj
 rHlA==
X-Gm-Message-State: APjAAAXbBKgQdv1cT0z+36gIxUeR++t8b0a7mUw9Bl6lIIXO2kgBozrw
 dl+ITRhqH6WswHQ4htHZbi6vrLfI
X-Google-Smtp-Source: APXvYqztpWDyVJN4cK8GV54+bcKOOa2g2OvzEesO9mac+UGFNELAoU2P2DmqDApWs9JVqFggxLb0lA==
X-Received: by 2002:a25:c693:: with SMTP id
 k141mr49830354ybf.252.1582582980033; 
 Mon, 24 Feb 2020 14:23:00 -0800 (PST)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com.
 [209.85.219.179])
 by smtp.gmail.com with ESMTPSA id o13sm6068335ywo.20.2020.02.24.14.22.59
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 14:22:59 -0800 (PST)
Received: by mail-yb1-f179.google.com with SMTP id x9so3341282ybl.5
 for <linux-um@lists.infradead.org>; Mon, 24 Feb 2020 14:22:59 -0800 (PST)
X-Received: by 2002:a25:1042:: with SMTP id 63mr47817640ybq.165.1582582977755; 
 Mon, 24 Feb 2020 14:22:57 -0800 (PST)
MIME-Version: 1.0
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
 <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
 <4e7757cf-148e-4585-b358-3b38f391275d@cambridgegreys.com>
 <CA+FuTSdOCJZCVS4xohx+BQmkmq8JALnK=gGc0=qy1TbjY707ag@mail.gmail.com>
 <93cb2b3f-6cae-8cf1-5fab-93fa34c14628@cambridgegreys.com>
In-Reply-To: <93cb2b3f-6cae-8cf1-5fab-93fa34c14628@cambridgegreys.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Mon, 24 Feb 2020 17:22:21 -0500
X-Gmail-Original-Message-ID: <CA+FuTScEXRwYtFzn-jtFhV0dNKNQqKPBwCWaNORJW=ERU=izMA@mail.gmail.com>
Message-ID: <CA+FuTScEXRwYtFzn-jtFhV0dNKNQqKPBwCWaNORJW=ERU=izMA@mail.gmail.com>
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_142302_012371_71205E00 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [willemdebruijn.kernel[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 Network Development <netdev@vger.kernel.org>, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 4:00 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
> On 24/02/2020 20:20, Willem de Bruijn wrote:
> > On Mon, Feb 24, 2020 at 2:55 PM Anton Ivanov
> > <anton.ivanov@cambridgegreys.com> wrote:
> >> On 24/02/2020 19:27, Willem de Bruijn wrote:
> >>> On Mon, Feb 24, 2020 at 8:26 AM <anton.ivanov@cambridgegreys.com> wrote:
> >>>> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> >>>>
> >>>> Some of the locally generated frames marked as GSO which
> >>>> arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
> >>>> fragments (data_len = 0) and length significantly shorter
> >>>> than the MTU (752 in my experiments).
> >>> Do we understand how these packets are generated?
> >> No, we have not been able to trace them.
> >>
> >> The only thing we know is that this is specific to locally generated
> >> packets. Something arriving from the network does not show this.
> >>
> >>> Else it seems this
> >>> might be papering over a deeper problem.
> >>>
> >>> The stack should not create GSO packets less than or equal to
> >>> skb_shinfo(skb)->gso_size. See for instance the check in
> >>> tcp_gso_segment after pulling the tcp header:
> >>>
> >>>           mss = skb_shinfo(skb)->gso_size;
> >>>           if (unlikely(skb->len <= mss))
> >>>                   goto out;
> >>>
> >>> What is the gso_type, and does it include SKB_GSO_DODGY?
> >>>
> >>
> >> 0 - not set.
> > Thanks for the follow-up details. Is this something that you can trigger easily?
>
> Yes, if you have a UML instance handy.
>
> Running iperf between the host and a UML guest using raw socket
> transport triggers it immediately.
>
> This is my UML command line:
>
> vmlinux mem=2048M umid=OPX \
>      ubd0=OPX-3.0-Work.img \
> vec0:transport=raw,ifname=p-veth0,depth=128,gro=1,mac=92:9b:36:5e:38:69 \
>      root=/dev/ubda ro con=null con0=null,fd:2 con1=fd:0,fd:1
>
> p-right is a part of a vEth pair:
>
> ip link add l-veth0 type veth peer name p-veth0 && ifconfig p-veth0 up
>
> iperf server is on host, iperf -c in the guest.
>
> >
> > An skb_dump() + dump_stack() when the packet socket gets such a
> > packet may point us to the root cause and fix that.
>
> We tried dump stack, it was not informative - it was just the recvmmsg
> call stack coming from the UML until it hits the relevant recv bit in
> af_packet - it does not tell us where the packet is coming from.
>
> Quoting from the message earlier in the thread:
>
> [ 2334.180854] Call Trace:
> [ 2334.181947]  dump_stack+0x5c/0x80
> [ 2334.183021]  packet_recvmsg.cold+0x23/0x49
> [ 2334.184063]  ___sys_recvmsg+0xe1/0x1f0
> [ 2334.185034]  ? packet_poll+0xca/0x130
> [ 2334.186014]  ? sock_poll+0x77/0xb0
> [ 2334.186977]  ? ep_item_poll.isra.0+0x3f/0xb0
> [ 2334.187936]  ? ep_send_events_proc+0xf1/0x240
> [ 2334.188901]  ? dequeue_signal+0xdb/0x180
> [ 2334.189848]  do_recvmmsg+0xc8/0x2d0
> [ 2334.190728]  ? ep_poll+0x8c/0x470
> [ 2334.191581]  __sys_recvmmsg+0x108/0x150
> [ 2334.192441]  __x64_sys_recvmmsg+0x25/0x30
> [ 2334.193346]  do_syscall_64+0x53/0x140
> [ 2334.194262]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

That makes sense. skb_dump might show more interesting details about
the packet. From the previous thread, these are assumed to be TCP
packets?

I had missed the original thread. If the packet has

    sinfo(skb)->gso_size = 752.
    skb->len = 818

then this is a GSO packet. Even though UML will correctly process it
as a normal 818 B packet if psock_rcv pretends that it is, treating it
like that is not strictly correct. A related question is how the setup
arrived at that low MTU size, assuming that is not explicitly
configured that low.

As of commit 51466a7545b7 ("tcp: fill shinfo->gso_type at last
moment") tcp unconditionally sets gso_type, even for non gso packets.
So either this is not a tcp packet or the field gets zeroed somewhere
along the way. I could not quickly find a possible path to
skb_gso_reset or a raw write.

It may be useful to insert tests for this condition (skb_is_gso(skb)
&& !skb_shinfo(skb)->gso_type) that call skb_dump at other points in
the network stack. For instance in __ip_queue_xmit and
__dev_queue_xmit.

Since skb segmentation fails in tcp_gso_segment for such packets, it
may also be informative to disable TSO on the veth device and see if
the test fails.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
