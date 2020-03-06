Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EB617B742
	for <lists+linux-um@lfdr.de>; Fri,  6 Mar 2020 08:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S7hNpOC5CqZVljG2wg3Pxmr1u/74iDf6FbKsbteB6/8=; b=tugeBpJCAad3yKRvA0P5LrNW2
	A9asOroppq5klfJ52355y2ndbwQjhO7KHm4xehy9fx12blElMuFUrbMhNC1I/ILBHE1bBjfdLb4X8
	H8ugZNIE1PqfJT25fcenpvy5iXub6p2uXgz6kOmkGSeXsBpnMhZKaVXsdu9b6r7rQ5BLh9Ifxpjtz
	qcgeKkqkhLHz24L5ymNfxuegivMeaRBKqrZVOW5cvocJRq/AmAaVuu9dza7poSiawTiXfUZrpcydQ
	nKO6eOfQ/AZgkbQxuil9wFlDUzlsMw2KhBW993Hkga0FfSYw6DxwE9he8IJiReVW1YAsQm0LKv+WQ
	Zc4w+eFVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA7Hr-0001fQ-Pu; Fri, 06 Mar 2020 07:20:47 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA7Hn-0001eZ-Vc
 for linux-um@lists.infradead.org; Fri, 06 Mar 2020 07:20:45 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jA6vx-00052L-Va; Fri, 06 Mar 2020 06:58:10 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jA6vv-0004hT-MA; Fri, 06 Mar 2020 06:58:09 +0000
Subject: Re: [PATCH net-next 1/7] um: reject unsupported coalescing params
To: Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net
References: <20200306010602.1620354-1-kuba@kernel.org>
 <20200306010602.1620354-2-kuba@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <fd59e667-38cb-6b16-8a27-311c7da523d0@cambridgegreys.com>
Date: Fri, 6 Mar 2020 06:58:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306010602.1620354-2-kuba@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_232044_018390_A092BB26 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mkubecek@suse.cz, merez@codeaurora.org, pv-drivers@vmware.com,
 GR-Linux-NIC-Dev@marvell.com, doshir@vmware.com, leon@kernel.org,
 linux-rdma@vger.kernel.org, richard@nod.at, jdike@addtoit.com,
 linux-um@lists.infradead.org, edumazet@google.com, jgg@ziepe.ca,
 dledford@redhat.com, netdev@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, manishc@marvell.com, jasowang@redhat.com,
 kvalo@codeaurora.org, hayeswang@realtek.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 06/03/2020 01:05, Jakub Kicinski wrote:
> Set ethtool_ops->supported_coalesce_params to let
> the core reject unsupported coalescing parameters.
> 
> This driver did not previously reject unsupported parameters.
> 
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>   arch/um/drivers/vector_kern.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> index 0ff86391f77d..e98304d0219e 100644
> --- a/arch/um/drivers/vector_kern.c
> +++ b/arch/um/drivers/vector_kern.c
> @@ -1508,6 +1508,7 @@ static int vector_set_coalesce(struct net_device *netdev,
>   }
>   
>   static const struct ethtool_ops vector_net_ethtool_ops = {
> +	.supported_coalesce_params = ETHTOOL_COALESCE_TX_USECS,
>   	.get_drvinfo	= vector_net_get_drvinfo,
>   	.get_link	= ethtool_op_get_link,
>   	.get_ts_info	= ethtool_op_get_ts_info,
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
