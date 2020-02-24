Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE9616B0A8
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 20:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ujbiQdCmpmJhxjSaYLh8GIVTIPsKx9qppDn6Xo7h3Dg=; b=RnTvi/jg7xTsnh3pknO9dJvDw
	DnF/2HSEeFjAPxBjRFRLah2hb0Yk6WEY7Oxu50QHloui+C1MraOgrQb9cRBJPcsAutRtrnSJSj/1c
	PGY5sUo366V1dDrv1veQLhHTAb+J0Xm6ikaxIyzIwPKUHC+1YwYalA6mBbIqd/fb4TpzDEvdPKTmU
	PdOQuohw/WhWC2o4QNh5MLcsu29Bwz7X6N+fYi6tOQCVq91e3jLSzuCavgM/QeSlbo3mNwvT57R04
	f3SAX1UC7vffZB2mOBzTJ6zZVFi9206f5RojwBlLDssgspIWA8hxm/bp2qVkGgtOxqyQ+HhzzjFGc
	3kCxzJSYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Jor-0005pO-0Q; Mon, 24 Feb 2020 19:55:09 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Jon-000504-78
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 19:55:06 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6Joh-00075V-AA; Mon, 24 Feb 2020 19:54:59 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6Jof-000240-6F; Mon, 24 Feb 2020 19:54:59 +0000
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
 <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <4e7757cf-148e-4585-b358-3b38f391275d@cambridgegreys.com>
Date: Mon, 24 Feb 2020 19:54:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -0.7
X-Spam-Score: -0.7
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_115505_269310_7F944555 
X-CRM114-Status: GOOD (  12.74  )
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

On 24/02/2020 19:27, Willem de Bruijn wrote:
> On Mon, Feb 24, 2020 at 8:26 AM <anton.ivanov@cambridgegreys.com> wrote:
>>
>> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
>>
>> Some of the locally generated frames marked as GSO which
>> arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
>> fragments (data_len = 0) and length significantly shorter
>> than the MTU (752 in my experiments).
> 
> Do we understand how these packets are generated? 

No, we have not been able to trace them.

The only thing we know is that this is specific to locally generated 
packets. Something arriving from the network does not show this.

> Else it seems this
> might be papering over a deeper problem.
> 
> The stack should not create GSO packets less than or equal to
> skb_shinfo(skb)->gso_size. See for instance the check in
> tcp_gso_segment after pulling the tcp header:
> 
>          mss = skb_shinfo(skb)->gso_size;
>          if (unlikely(skb->len <= mss))
>                  goto out;
> 
> What is the gso_type, and does it include SKB_GSO_DODGY?
> 


0 - not set.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
