Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48BF16EB64
	for <lists+linux-um@lfdr.de>; Tue, 25 Feb 2020 17:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDzclQLr093Szh2X0hq7wMji/TMXCP2Z6AIgArWQDg8=; b=qa2RAPnfU65k6h
	Xw/seasq8dEi8buMQ/cgAYYlJGXjLVk+c0DWZ4D3J654jwIjvZ7UCfZVZuJvZNJzwPrtC0qqnaIsD
	ZX+u0h02k2zSGHXW9hKHxjTpTU/6s7mK5IoI18G1eS4y8c1a7uZlf6daFzTkZcwrqecpFZqIcRjVl
	0p954TiKEGmXfNSkMjQU0lnakgHTtMEqm3+TleA+6I/jeCVDRxqJVkVo4EM43LTkgldLb6U/v+95Q
	dTWTHoBzQP1QVEcz+1CVkwOg9N6XtPMyHaAZGyanIVD7mOdxTs2ueES1X5ImxJg6FmqCnU0k6KuUw
	9+EmYJOhgOhZ3ZGE+B7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6d2j-0005tW-UX; Tue, 25 Feb 2020 16:26:45 +0000
Received: from mail-yw1-xc34.google.com ([2607:f8b0:4864:20::c34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6d2h-0005sm-ME
 for linux-um@lists.infradead.org; Tue, 25 Feb 2020 16:26:45 +0000
Received: by mail-yw1-xc34.google.com with SMTP id f204so8382737ywc.10
 for <linux-um@lists.infradead.org>; Tue, 25 Feb 2020 08:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rL2KupnlYqJ2dvd/WydzRlF4ALj76HqAWQrRaiCSOiA=;
 b=OKvDPG0T/NdpGDbvKbWDtJm0WyckOwd2BNKQxvPehlONKdHAS9y54/AIfcBwfKY/S9
 kjpCOyRFb1IrGZ4sGYB2FK1WWHR/zsSJFLdSOTyuoQHB2uLJPddwkp26inIXC4IY8VQs
 anpoZBQpyOBqIBEQK88k4GqzrqcQGFJpER9MU2SyI+HDpfIqSboVH9xlOW0qn6ZI/1x4
 sL8f7HxQcF7Qtr8FEpHipb2RrxWy5LioHME0vpOrhthFA+0l0Y4ndCxnW35u1lrcDmGP
 /t+zNU67eCDcBwyXTt8zcXMeHduBCtboNFnsV9vnJc6LUmnwjQJsVBQkBaX48ebDRAKf
 uHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rL2KupnlYqJ2dvd/WydzRlF4ALj76HqAWQrRaiCSOiA=;
 b=FW50o0W6v0VtBqfpeS7YJoUqzbxlCN6Ws13P44xVF7hQFJcEzKedhs7LLwuXAnoFnJ
 RIClpVASOGmQDYBF/+HqeAlxkc9C/5EmcmRlAttc1FCwgLvVgVCA44pZpigVT0ybqwPh
 WFwFCbqx6C5XIQRG4VEAppz8WPf/pVfDgfOXp5fD7aLCdPDgbWiL0ZUawm+G9IJvPPSU
 NUJdMRn2ijB177CjZVH/wXbC4g1z+FM4xgTqrXX+3Mq3zHTM3gZdk5ny/Agu8dFmMNWi
 kC+NMT8prjts9TgvBsLLvnFenHBw2TsRox2rdFJYOfgwZAaRl2VhZ205Yr7xUmyTL/WG
 V9ew==
X-Gm-Message-State: APjAAAUCSyMwj2jRho5UYkc+kWoynXaUl91wbbhoqFuxehyDk8NzIE5F
 hE+oEsiMy02HwyPMkZcudmbfn+r4
X-Google-Smtp-Source: APXvYqw8hCGA4SndlOxS5S70xwLlgSfh/c3Xpo192fB4fpz4C6Ry4njdXre4ixuZrpxwePo9zt5nBQ==
X-Received: by 2002:a25:6ac1:: with SMTP id f184mr50955ybc.469.1582648000395; 
 Tue, 25 Feb 2020 08:26:40 -0800 (PST)
Received: from mail-yw1-f43.google.com (mail-yw1-f43.google.com.
 [209.85.161.43])
 by smtp.gmail.com with ESMTPSA id q8sm6878987ywa.79.2020.02.25.08.26.39
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Feb 2020 08:26:39 -0800 (PST)
Received: by mail-yw1-f43.google.com with SMTP id n184so8404521ywc.3
 for <linux-um@lists.infradead.org>; Tue, 25 Feb 2020 08:26:39 -0800 (PST)
X-Received: by 2002:a0d:dfc5:: with SMTP id
 i188mr48138488ywe.172.1582647998463; 
 Tue, 25 Feb 2020 08:26:38 -0800 (PST)
MIME-Version: 1.0
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
 <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
 <4e7757cf-148e-4585-b358-3b38f391275d@cambridgegreys.com>
 <CA+FuTSdOCJZCVS4xohx+BQmkmq8JALnK=gGc0=qy1TbjY707ag@mail.gmail.com>
 <93cb2b3f-6cae-8cf1-5fab-93fa34c14628@cambridgegreys.com>
 <CA+FuTScEXRwYtFzn-jtFhV0dNKNQqKPBwCWaNORJW=ERU=izMA@mail.gmail.com>
 <6b83116c-2cca-fb03-1c13-bb436dccf1b3@cambridgegreys.com>
 <cd1b4084-af6b-7fd9-f182-8b32a3c8d837@cambridgegreys.com>
In-Reply-To: <cd1b4084-af6b-7fd9-f182-8b32a3c8d837@cambridgegreys.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Tue, 25 Feb 2020 11:26:01 -0500
X-Gmail-Original-Message-ID: <CA+FuTSebC064cZXTz_n7jXLrtAcuXxp2N_jiAdi3v2=A6fBBJw@mail.gmail.com>
Message-ID: <CA+FuTSebC064cZXTz_n7jXLrtAcuXxp2N_jiAdi3v2=A6fBBJw@mail.gmail.com>
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_082643_746287_72330283 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c34 listed in]
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

> >>>> An skb_dump() + dump_stack() when the packet socket gets such a
> >>>> packet may point us to the root cause and fix that.
> >>>
> >>> We tried dump stack, it was not informative - it was just the recvmmsg
> >>> call stack coming from the UML until it hits the relevant recv bit in
> >>> af_packet - it does not tell us where the packet is coming from.
> >>>
> >>> Quoting from the message earlier in the thread:
> >>>
> >>> [ 2334.180854] Call Trace:
> >>> [ 2334.181947]  dump_stack+0x5c/0x80
> >>> [ 2334.183021]  packet_recvmsg.cold+0x23/0x49
> >>> [ 2334.184063]  ___sys_recvmsg+0xe1/0x1f0
> >>> [ 2334.185034]  ? packet_poll+0xca/0x130
> >>> [ 2334.186014]  ? sock_poll+0x77/0xb0
> >>> [ 2334.186977]  ? ep_item_poll.isra.0+0x3f/0xb0
> >>> [ 2334.187936]  ? ep_send_events_proc+0xf1/0x240
> >>> [ 2334.188901]  ? dequeue_signal+0xdb/0x180
> >>> [ 2334.189848]  do_recvmmsg+0xc8/0x2d0
> >>> [ 2334.190728]  ? ep_poll+0x8c/0x470
> >>> [ 2334.191581]  __sys_recvmmsg+0x108/0x150
> >>> [ 2334.192441]  __x64_sys_recvmmsg+0x25/0x30
> >>> [ 2334.193346]  do_syscall_64+0x53/0x140
> >>> [ 2334.194262]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> >>
> >> That makes sense. skb_dump might show more interesting details about
> >> the packet.
> >
> > I will add that and retest later today.
>
>
> skb len=818 headroom=2 headlen=818 tailroom=908
> mac=(2,14) net=(16,0) trans=16
> shinfo(txflags=0 nr_frags=0 gso(size=752 type=0 segs=1))
> csum(0x100024 ip_summed=3 complete_sw=0 valid=0 level=0)
> hash(0x0 sw=0 l4=0) proto=0x0800 pkttype=4 iif=0
> sk family=17 type=3 proto=0
>
> Deciphering the actual packet data gives a
>
> TCP packet, ACK and PSH set.
>
> The PSH flag looks like the only "interesting" thing about it in first read.

Thanks.

TCP always sets the PSH bit on a GSO packet as of commit commit
051ba67447de  ("tcp: force a PSH flag on TSO packets"), so that is
definitely informative.

The lower gso size might come from a path mtu probing depending on
tcp_base_mss, but that's definitely wild speculation. Increasing that
value to, say, 1024, could tell us.

In this case it may indeed not be a GSO packet. As 752 is the MSS + 28
B TCP header including timestamp + 20 B IPv4 header + 14B Eth header.
Which adds up to 814 already.

Not sure what those 2 B between skb->data and mac_header are. Was this
captured inside packet_rcv? network_header and transport_header both
at 16B offset is also sketchy, but again may be an artifact of where
exactly this is being read.

Perhaps this is a segment of a larger GSO packet that is retransmitted
in part. Like an mtu probe or loss probe. See for instance this in
tcp_send_loss_probe for  how a single MSS is extracted:

       if ((pcount > 1) && (skb->len > (pcount - 1) * mss)) {
                if (unlikely(tcp_fragment(sk, TCP_FRAG_IN_RTX_QUEUE, skb,
                                          (pcount - 1) * mss, mss,
                                          GFP_ATOMIC)))
                        goto rearm_timer;
                skb = skb_rb_next(skb);
        }

Note that I'm not implicating this specific code. I don't see anything
wrong with it. Just an indication that a trace would be very
informative, as it could tell if any of these edge cases is being hit.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
