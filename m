Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8B510C48C
	for <lists+linux-um@lfdr.de>; Thu, 28 Nov 2019 08:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nPyX4S9efy7DmKZFrCzi+FBQ1R6mH0qMTC7LqIeCM0c=; b=WTAaqKi1MBFgovzW+keCK+qoI
	h4iuZ3FCVQ40yrFUa3F33TXkG/ZTurPGkoGuwBNc32XgkFUrbyocnJHACtQ7A121RNYXQZZdT49CN
	y63ALhiZ54yP5URfoE29IKKtiv8exHnUPKudl7hZXZx8juyJ1ijxLWcM37++ZlW/ox+hxswlNFvlZ
	qlu7Z5aWnethxa9tl+d6lEWLTYe+VAyzal+m2op4WAxj/OUqxfKW7eIit/nllqhlqzMNA328Dy6ZB
	pJ36nCzFDMQ9b6idk5IfyEzYxREDsIscCK5lJeMXA/oWjMrvFWMFtTxxJIv74Qc0cz3sSoSAJacR+
	pPgQNui9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaEa6-00084n-Qt; Thu, 28 Nov 2019 07:51:18 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaEa3-00083s-Nd
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 07:51:17 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iaEZw-00064a-J8; Thu, 28 Nov 2019 07:51:08 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iaEZu-0003UN-3Z; Thu, 28 Nov 2019 07:51:08 +0000
Subject: Re: [PATCH -next] um: vector: use GFP_ATOMIC under spin lock
To: Wei Yongjun <weiyongjun1@huawei.com>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>
References: <20191128020147.191893-1-weiyongjun1@huawei.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <b4ebeac2-c180-0ca0-5170-e9ff2fac32e9@cambridgegreys.com>
Date: Thu, 28 Nov 2019 07:51:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191128020147.191893-1-weiyongjun1@huawei.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_235115_764179_D2B8E53A 
X-CRM114-Status: GOOD (  14.97  )
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
Cc: linux-um@lists.infradead.org, bpf@vger.kernel.org,
 kernel-janitors@vger.kernel.org, netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 28/11/2019 02:01, Wei Yongjun wrote:
> A spin lock is taken here so we should use GFP_ATOMIC.
> 
> Fixes: 9807019a62dc ("um: Loadable BPF "Firmware" for vector drivers")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>   arch/um/drivers/vector_kern.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> index 92617e16829e..6ff0065a271d 100644
> --- a/arch/um/drivers/vector_kern.c
> +++ b/arch/um/drivers/vector_kern.c
> @@ -1402,7 +1402,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
>   		kfree(vp->bpf->filter);
>   		vp->bpf->filter = NULL;
>   	} else {
> -		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_KERNEL);
> +		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_ATOMIC);
>   		if (vp->bpf == NULL) {
>   			netdev_err(dev, "failed to allocate memory for firmware\n");
>   			goto flash_fail;
> @@ -1414,7 +1414,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
>   	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
>   		goto flash_fail;
>   
> -	vp->bpf->filter = kmemdup(fw->data, fw->size, GFP_KERNEL);
> +	vp->bpf->filter = kmemdup(fw->data, fw->size, GFP_ATOMIC);
>   	if (!vp->bpf->filter)
>   		goto free_buffer;
> 
> 
> 
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.co.uk>

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
