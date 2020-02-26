Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAF9170880
	for <lists+linux-um@lfdr.de>; Wed, 26 Feb 2020 20:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlqZumjvW/3WHJRxyquzsF9cSibAzsgkxapd9X3qp3c=; b=IRf2B6U1V9p2bX
	FURmKsnXB4KXiUOewgdL4MpHU7qTVnpVUJ6jR5sWTh0LB8hzFMQ6A1IjR0Se516qi1UCIvG4Osrf+
	Il7SujqI+vUpfONabYzBR80K5fXQ/ikTvg9Mf+lZcIaOeNH8F9MAgt2cBUkL99lwgBZeXAyb0xrfi
	bdmhcP59jKytBFcybw6gwd5KkWmJb6Ad2tJs8EyLPFYt+4L5FyPJllbC8eC6ybahI+op4g/5+I5gR
	kK/sw5awdAuGRQ6jUpI4oHsZTMbvipvkZ33bjcM2LbKjHP50qFG2nrRd3BzGQdK/cC9/zt2RZdv7a
	PWe1xuarO45BQTbhxVNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j723q-00064A-5u; Wed, 26 Feb 2020 19:09:34 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j723n-00063U-2f
 for linux-um@lists.infradead.org; Wed, 26 Feb 2020 19:09:32 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 83BCB15AA10AB;
 Wed, 26 Feb 2020 11:09:22 -0800 (PST)
Date: Wed, 26 Feb 2020 11:09:22 -0800 (PST)
Message-Id: <20200226.110922.2164858284509225676.davem@davemloft.net>
To: anton.ivanov@cambridgegreys.com
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 26 Feb 2020 11:09:22 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_110931_123111_31A286E9 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: eric.dumazet@gmail.com, mst@redhat.com, netdev@vger.kernel.org,
 jasowang@redhat.com, linux-um@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: anton.ivanov@cambridgegreys.com
Date: Mon, 24 Feb 2020 13:25:50 +0000

> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> 
> Some of the locally generated frames marked as GSO which
> arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
> fragments (data_len = 0) and length significantly shorter
> than the MTU (752 in my experiments).
> 
> This is observed on raw sockets reading off vEth interfaces
> in all 4.x and 5.x kernels. The frames are reported as
> invalid, while they are in fact gso-less frames.
> 
> The easiest way to reproduce is to connect a User Mode
> Linux instance to the host using the vector raw transport
> and a vEth interface. Vector raw uses recvmmsg/sendmmsg
> with virtio headers on af_packet sockets. When running iperf
> between the UML and the host, UML regularly complains about
> EINVAL return from recvmmsg.
> 
> This patch marks the vnet header as non-GSO instead of
> reporting it as invalid.
> 
> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

I don't feel comfortable applying this until we know where these
weird frames are coming from and how they are created.

Please respin this patch once you know this information and make
sure to mention it in the commit log.

Thank you.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
