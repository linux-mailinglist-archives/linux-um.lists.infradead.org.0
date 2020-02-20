Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53967166743
	for <lists+linux-um@lfdr.de>; Thu, 20 Feb 2020 20:36:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lFjbGYqZd+jh7Qdo+iog6fok4mfuZFo6aO48VqQfWAw=; b=lAgsgIM1BW+6l+msNDW13lvp6
	84iIjpnFH/H5UY+KOQvadO+BNk7MSUhxG3nzAxidWMsLSElE8qDQjLTqedLs4PIVyNDffT7JjIaY3
	GewvfBrkWBND90XCbuX5IOpFwSG8Mfj/iYELJnm+zm+z0losVinTyUG1oH/uYSewenKQadYJhi3ZU
	89CxVFGrMwNwi1nlYgCCPEsz1pfu2BusLS1+TfI++mpKeRmpH3yV0Cv3aTqSst3DfYKepw47d9rID
	ZkMWgCxZFbSNISXc3ZXwasMmCfV6ey8ynIgdao8kqnPvHFFhYDlajslwCF52LLiEhDz3fbJMwzo2H
	QfvW6+E0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4rcU-00017q-Go; Thu, 20 Feb 2020 19:36:22 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rcR-00017M-SH
 for linux-um@lists.infradead.org; Thu, 20 Feb 2020 19:36:21 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j4rcQ-0007PL-C4; Thu, 20 Feb 2020 19:36:18 +0000
Received: from [151.251.251.9] (helo=[192.168.14.3])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j4rcN-0003n2-QF; Thu, 20 Feb 2020 19:36:18 +0000
Subject: Re: [PATCH 2/2] um: Delete never executed timer
To: Leon Romanovsky <leon@kernel.org>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>
References: <20200220084014.238768-1-leon@kernel.org>
 <20200220084014.238768-3-leon@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <1b9d7916-92b6-c438-274a-4198e97827b2@cambridgegreys.com>
Date: Thu, 20 Feb 2020 19:36:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200220084014.238768-3-leon@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_113619_915463_5D8406FD 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Leon Romanovsky <leonro@mellanox.com>,
 linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 20/02/2020 08:40, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@mellanox.com>
> 
> 
> The "#ifdef undef" construction effectively disabled the timer.
> It causes to the fact that this timer did nothing, so delete it.
> 
> Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> ---
>   arch/um/drivers/net_kern.c | 12 ------------
>   1 file changed, 12 deletions(-)
> 
> diff --git a/arch/um/drivers/net_kern.c b/arch/um/drivers/net_kern.c
> index af07733c2dc8..1802cf4ef5a5 100644
> --- a/arch/um/drivers/net_kern.c
> +++ b/arch/um/drivers/net_kern.c
> @@ -274,17 +274,6 @@ static const struct ethtool_ops uml_net_ethtool_ops = {
>   	.get_ts_info	= ethtool_op_get_ts_info,
>   };
> 
> -static void uml_net_user_timer_expire(struct timer_list *t)
> -{
> -#ifdef undef
> -	struct uml_net_private *lp = from_timer(lp, t, tl);
> -	struct connection *conn = &lp->user;
> -
> -	dprintk(KERN_INFO "uml_net_user_timer_expire [%p]\n", conn);
> -	do_connect(conn);
> -#endif
> -}
> -
>   void uml_net_setup_etheraddr(struct net_device *dev, char *str)
>   {
>   	unsigned char *addr = dev->dev_addr;
> @@ -455,7 +444,6 @@ static void eth_configure(int n, void *init, char *mac,
>   		  .add_address 		= transport->user->add_address,
>   		  .delete_address  	= transport->user->delete_address });
> 
> -	timer_setup(&lp->tl, uml_net_user_timer_expire, 0);
>   	spin_lock_init(&lp->lock);
>   	memcpy(lp->mac, dev->dev_addr, sizeof(lp->mac));
> 
> --
> 2.24.1
> 
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
