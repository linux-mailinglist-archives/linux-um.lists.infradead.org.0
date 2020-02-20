Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25F2166740
	for <lists+linux-um@lfdr.de>; Thu, 20 Feb 2020 20:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pvn+0uB1F+NOTTmVIMpCFT8OQ8gdaryUCM2B3PiuJw8=; b=HWM7tX9nmhv1H9JnzDlpbMg/R
	9cRykCEmEymEmqqYyCmPV/Wtb3u3/bCj6c23msoWXPmKGcMhpr7IX6hATzotW2elWLopeuU73n7gL
	DqBFMPL40PKu7zka/gkCu6Zp9oGRACT3ViznPIz4RneglYJX7V+PGwb2Z4AbbIup57jtCvNU4TXGT
	Q68Z8sjZvQIVJvhz25fg/MXGdF1rJ2li8mJ00s/81aBrK8/RMtYIzf5lfM8+99MVO2/W/xrNq2t+c
	iGQOu9QvI9Fm+B1LhAVL61hO7Fh8LL26hBOyssszLkIYOBs6zWIjJcZUuSKNd/wic29X1ahYuUQNy
	1Zx2PQE5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4rbW-00013C-5g; Thu, 20 Feb 2020 19:35:22 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rbT-00012V-U8
 for linux-um@lists.infradead.org; Thu, 20 Feb 2020 19:35:21 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j4rbO-0007P5-RR; Thu, 20 Feb 2020 19:35:15 +0000
Received: from [151.251.251.9] (helo=[192.168.14.3])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j4rbM-0003m8-1K; Thu, 20 Feb 2020 19:35:14 +0000
Subject: Re: [PATCH 0/2] Remove dead code and driver version
To: Leon Romanovsky <leon@kernel.org>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>
References: <20200220084014.238768-1-leon@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <c26c2741-fdb5-a492-2b7b-8973650f15e8@cambridgegreys.com>
Date: Thu, 20 Feb 2020 19:35:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200220084014.238768-1-leon@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_113519_966583_752FEB39 
X-CRM114-Status: GOOD (  10.72  )
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
> Hi,
> 
> This short series is an outcome of the change in ethtool [1] to provide
> proper driver version that will work reliably. The second patch is
> removal of useless timer setup.
> 
> Code is compile tested only.
> 
> [1] https://lore.kernel.org/linux-rdma/20200127072028.19123-1-leon@kernel.org/
> 
> Leon Romanovsky (2):
>    um: Don't overwrite ethtool driver version
>    um: Delete never executed timer
> 
>   arch/um/drivers/net_kern.c    | 13 -------------
>   arch/um/drivers/vector_kern.c |  2 --
>   2 files changed, 15 deletions(-)
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
