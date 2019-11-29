Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9948710D316
	for <lists+linux-um@lfdr.de>; Fri, 29 Nov 2019 10:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=53sIGZGL+HHHWCbb46m19QiRJN7u3pdVUhma9++SBec=; b=m2ge2HRlGidgZ763qqfkyOIA7
	m1NAiYw3ZxK9l6CPbpgYh2QqYuFnPtI43DGZAbWps5JJbSFdHbrXy4YNGTyc79i+9VDQIhBBf02BH
	ONlVdLuEdtjrSwZ6JZPozcA1Oj1SSqEGHpmL8ndEztMFg3qACIPZvsh2CdUM/QCv4LUqDo8G6Uj2S
	YnAuOuxUg2WyBbseQMmiPUUzswsNus5wGLKWYkxDmB/KkXs93jZR8JOWT/gN9NQVs9ytD5vmGLTSz
	u7tsZLIYd+9ZwppoUr25+RxPntZF0SljEIOFtRo6pDUuHEuNOxmEegNNttLvVWTkHyBxxlYs0RwB1
	pMu+rG/XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iacNK-0007Pw-D4; Fri, 29 Nov 2019 09:15:42 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iacNH-0007P6-9h
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 09:15:41 +0000
Received: from sslproxy06.your-server.de ([78.46.172.3])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1iacN8-0004Ma-KY; Fri, 29 Nov 2019 10:15:30 +0100
Received: from [2a02:1205:507e:bf80:bef8:7f66:49c8:72e5] (helo=pc-11.home)
 by sslproxy06.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1iacN8-000C4L-8d; Fri, 29 Nov 2019 10:15:30 +0100
Subject: Re: [PATCH] um: vector: fix BPF loading in vector drivers
To: anton.ivanov@cambridgegreys.com, linux-um@lists.infradead.org
References: <20191128174405.4244-1-anton.ivanov@cambridgegreys.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <1416753c-e966-e259-a84d-2a5f0a166660@iogearbox.net>
Date: Fri, 29 Nov 2019 10:15:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191128174405.4244-1-anton.ivanov@cambridgegreys.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25647/Thu Nov 28 10:49:14 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_011539_335994_10B551DB 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: songliubraving@fb.com, richard@nod.at, kernel-janitors@vger.kernel.org,
 ast@kernel.org, weiyongjun1@huawei.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, kafai@fb.com, dan.carpenter@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 11/28/19 6:44 PM, anton.ivanov@cambridgegreys.com wrote:
> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> 
> This fixes a possible hang in bpf firmware loading in the
> UML vector io drivers due to use of GFP_KERNEL while holding
> a spinlock.
> 
> Based on a prposed fix by weiyongjun1@huawei.com and suggestions for
> improving it by dan.carpenter@oracle.com
> 
> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Any reason why this BPF firmware loading mechanism in UML vector driver that was
recently added [0] is plain old classic BPF? Quoting your commit log [0]:

   All vector drivers now allow a BPF program to be loaded and
   associated with the RX socket in the host kernel.

   1. The program can be loaded as an extra kernel command line
   option to any of the vector drivers.

   2. The program can also be loaded as "firmware", using the
   ethtool flash option. It is possible to turn this facility
   on or off using a command line option.

   A simplistic wrapper for generating the BPF firmware for the raw
   socket driver out of a tcpdump/libpcap filter expression can be
   found at: https://github.com/kot-begemot-uk/uml_vector_utilities/

... it tells what it does but /nothing/ about the original rationale / use case
why it is needed. So what is the use case? And why is this only classic BPF? Is
there any discussion to read up that lead you to this decision of only implementing
handling for classic BPF?

I'm asking because classic BPF is /legacy/ stuff that is on feature freeze and
only very limited in terms of functionality compared to native (e)BPF which is
why you need this weird 'firmware' loader [1] which wraps around tcpdump to
parse the -ddd output into BPF insns ...

Thanks,
Daniel

   [0] https://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git/commit/?h=linux-next&id=9807019a62dc670c73ce8e59e09b41ae458c34b3
   [1] https://github.com/kot-begemot-uk/uml_vector_utilities/blob/master/build_bpf_firmware.py

>   arch/um/drivers/vector_kern.c | 38 ++++++++++++++++++-----------------
>   1 file changed, 20 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> index 92617e16829e..dbbc6e850fdd 100644
> --- a/arch/um/drivers/vector_kern.c
> +++ b/arch/um/drivers/vector_kern.c
> @@ -1387,6 +1387,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
>   	struct vector_private *vp = netdev_priv(dev);
>   	struct vector_device *vdevice;
>   	const struct firmware *fw;
> +	void *new_filter;
>   	int result = 0;
>   
>   	if (!(vp->options & VECTOR_BPF_FLASH)) {
> @@ -1394,6 +1395,15 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
>   		return -1;
>   	}
>   
> +	vdevice = find_device(vp->unit);
> +
> +	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
> +		return -1;
> +
> +	new_filter = kmemdup(fw->data, fw->size, GFP_KERNEL);
> +	if (!new_filter)
> +		goto free_buffer;
> +
>   	spin_lock(&vp->lock);
>   
>   	if (vp->bpf != NULL) {
> @@ -1402,41 +1412,33 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
>   		kfree(vp->bpf->filter);
>   		vp->bpf->filter = NULL;
>   	} else {
> -		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_KERNEL);
> +		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_ATOMIC);
>   		if (vp->bpf == NULL) {
>   			netdev_err(dev, "failed to allocate memory for firmware\n");
> -			goto flash_fail;
> +			goto apply_flash_fail;
>   		}
>   	}
>   
> -	vdevice = find_device(vp->unit);
> -
> -	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
> -		goto flash_fail;
> -
> -	vp->bpf->filter = kmemdup(fw->data, fw->size, GFP_KERNEL);
> -	if (!vp->bpf->filter)
> -		goto free_buffer;
> -
> +	vp->bpf->filter = new_filter;
>   	vp->bpf->len = fw->size / sizeof(struct sock_filter);
> -	release_firmware(fw);
>   
>   	if (vp->opened)
>   		result = uml_vector_attach_bpf(vp->fds->rx_fd, vp->bpf);
>   
>   	spin_unlock(&vp->lock);
>   
> -	return result;
> -
> -free_buffer:
>   	release_firmware(fw);
>   
> -flash_fail:
> +	return result;
> +
> +apply_flash_fail:
>   	spin_unlock(&vp->lock);
> -	if (vp->bpf != NULL)
> +	if (vp->bpf)
>   		kfree(vp->bpf->filter);
>   	kfree(vp->bpf);
> -	vp->bpf = NULL;
> +
> +free_buffer:
> +	release_firmware(fw);
>   	return -1;
>   }
>   
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
