Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043FF10C4BA
	for <lists+linux-um@lfdr.de>; Thu, 28 Nov 2019 09:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cevM8pR/3p0VaZPegs5fMKAo94AXMfsNKY4zZC6i9SU=; b=dUxT8ZjYKAnIXq
	OK9eZ/5m/Zvw1UGPqS9aiHXip9uf5jacR9L4V/ZbJky/mUu7AEIclyOTk0J+5knQARY412oa1siRl
	60IH61Zf+Ba2xDx0EiI6kO24F6oNAvNawf+QBZ7SnLwhB+tVGjbnl76BUW+m4Nbdi0iRwehy2ic6l
	aZ5s4JIOeVPPMBcyOjwuweW6CBHLIW8rTpJ6kIoM7X8JKQq/J2enujyfrnQDT06cwoBRx7g6rC0VQ
	rtOT0y+n8lHGeg9tf6nHtWrF56T4kwGMc9YpYLVDu8pRkyDPBCO07itvZ2uw7A0KSGYtGvlYKvd7I
	R0fuCFMZIMUsPiJrJXtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaErs-000506-Eo; Thu, 28 Nov 2019 08:09:40 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaErp-0004zO-Vf
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 08:09:39 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAS88v0Y029315;
 Thu, 28 Nov 2019 08:08:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=m8xZoqkSZ9Xt2dJrSiFu2oXtxbhboFnxWIo7JzxqbrM=;
 b=nPWfDfA4emBenHb+u9aKjJDYZz0wvgK3IYFwqyjYpc7YXrQ0rLITJOPCnm7wAvT+nejm
 VshCxHgZjJWi1B4pnRnOgqC9sXQy2EX80k+Wdi9pLJWLoLQUeUFItvgkcNA0V7ziLFxr
 pO733aFAnksPRrz6IKI9rGnjXPzTpgzv5TvZ/rJYxSs3pi2c6po6hps/a1ZhzR2QJeir
 0mlahPXmg1z0OMEojjly0Xs1d8n7sBUIlmpc5C0aO80Eru6VygoQUHdsB/L/QopOZMZM
 +qdoWZsv9A42WfBVYQajVBfmoiBqOL02bXC77m4ayr3nrXkh9B+ZiJT06giuAaP/OU1D 5w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2wevqqj1pm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 Nov 2019 08:08:56 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAS7wpnG172480;
 Thu, 28 Nov 2019 08:06:53 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2wj3crdwg5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 Nov 2019 08:06:53 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAS86qxm005753;
 Thu, 28 Nov 2019 08:06:52 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 28 Nov 2019 00:06:51 -0800
Date: Thu, 28 Nov 2019 11:06:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH -next] um: vector: use GFP_ATOMIC under spin lock
Message-ID: <20191128080641.GD1781@kadam>
References: <20191128020147.191893-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128020147.191893-1-weiyongjun1@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9454
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911280067
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9454
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911280068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_000938_102533_C192F8FD 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 kernel-janitors@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 02:01:47AM +0000, Wei Yongjun wrote:
> A spin lock is taken here so we should use GFP_ATOMIC.
> 
> Fixes: 9807019a62dc ("um: Loadable BPF "Firmware" for vector drivers")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  arch/um/drivers/vector_kern.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> index 92617e16829e..6ff0065a271d 100644
> --- a/arch/um/drivers/vector_kern.c
> +++ b/arch/um/drivers/vector_kern.c
> @@ -1402,7 +1402,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
>  		kfree(vp->bpf->filter);
>  		vp->bpf->filter = NULL;
>  	} else {
> -		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_KERNEL);
> +		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_ATOMIC);
>  		if (vp->bpf == NULL) {
>  			netdev_err(dev, "failed to allocate memory for firmware\n");
>  			goto flash_fail;
> @@ -1414,7 +1414,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
>  	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
            ^^^^^^^^^^^^^^^^

Is it really possible to call request_firmware() while holding a
spin_lock?  I was so sure that read from the disk.

regards,
dan carpenter

>  		goto flash_fail;
>  
> -	vp->bpf->filter = kmemdup(fw->data, fw->size, GFP_KERNEL);
> +	vp->bpf->filter = kmemdup(fw->data, fw->size, GFP_ATOMIC);
>  	if (!vp->bpf->filter)
>  		goto free_buffer;
> 
> 

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
