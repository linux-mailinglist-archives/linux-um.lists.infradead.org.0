Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072771F875B
	for <lists+linux-um@lfdr.de>; Sun, 14 Jun 2020 09:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GVuSV5oBBoyFSwLTZ5mZvb2x3NeXKWVXMzXPjSAPt7E=; b=FVJw8dAr5c0EYma8Zkg34UfrB
	IYYiMEkH7itHb54I/3qR+jh8P6aTQfzBzhcUXKM4vwpuemI663I+qE3qD64ZUgWiSXa6zubuWDRvY
	qd/Fd6M6lYA8viw1mUnMSDHOnMYpt0U5QvYTqjoAxEFpv+/UB1MU9VWpIfXfh+bshzJEVHi1W/fFd
	v6GrW/v7DWLIr3J2bfenF9a/Mu8YXBW1+InrvvEuLX6P+mJi9VLb0HK6MAugpTyJ8rKQTjV+Ilsdx
	/R6YyrCqE42aba2ri/cJ5/M/B3yzvv+wRxb40OEDIAnfhHQKI5txOOHy1d5iutOiCa2ovgFMQy97U
	GovDVoahg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkMgE-00060y-Pq; Sun, 14 Jun 2020 07:03:46 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkMgA-00060M-UE
 for linux-um@lists.infradead.org; Sun, 14 Jun 2020 07:03:44 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jkMI9-0000V4-Ik; Sun, 14 Jun 2020 06:38:53 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jkMI7-0007NR-F6; Sun, 14 Jun 2020 07:38:53 +0100
Subject: Re: [PATCH] Fix null pointer dereference in vector_user_bpf
To: Gaurav Singh <gaurav1086@gmail.com>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@chromium.org>, Alex Dewar <alex.dewar@gmx.co.uk>,
 =?UTF-8?Q?Marc-Andr=c3=a9_Lureau?= <marcandre.lureau@redhat.com>,
 "open list:USER-MODE LINUX (UML)" <linux-um@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:BPF (Safe dynamic programs and tools)" <netdev@vger.kernel.org>,
 "open list:BPF (Safe dynamic programs and tools)" <bpf@vger.kernel.org>
References: <20200614012001.18468-1-gaurav1086@gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <39158d22-9997-32ef-c599-7e6a98988a38@cambridgegreys.com>
Date: Sun, 14 Jun 2020 07:38:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200614012001.18468-1-gaurav1086@gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_000342_971030_C9937AB3 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 14/06/2020 02:19, Gaurav Singh wrote:
> The bpf_prog is being checked for !NULL after uml_kmalloc
> but later its used directly for example:
> bpf_prog->filter = bpf and is also later returned upon
> success. Fix this, do a NULL check and return right away.
> 
> Signed-off-by: Gaurav Singh <gaurav1086@gmail.com>
> ---
>   arch/um/drivers/vector_user.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
> index c4a0f26b2824..0e6d6717bf73 100644
> --- a/arch/um/drivers/vector_user.c
> +++ b/arch/um/drivers/vector_user.c
> @@ -789,10 +789,12 @@ void *uml_vector_user_bpf(char *filename)
>   		return false;
>   	}
>   	bpf_prog = uml_kmalloc(sizeof(struct sock_fprog), UM_GFP_KERNEL);
> -	if (bpf_prog != NULL) {
> -		bpf_prog->len = statbuf.st_size / sizeof(struct sock_filter);
> -		bpf_prog->filter = NULL;
> +	if (bpf_prog == NULL) {
> +		printk(KERN_ERR "Failed to allocate bpf prog buffer");
> +		return NULL;
>   	}
> +	bpf_prog->len = statbuf.st_size / sizeof(struct sock_filter);
> +	bpf_prog->filter = NULL;
>   	ffd = os_open_file(filename, of_read(OPENFLAGS()), 0);
>   	if (ffd < 0) {
>   		printk(KERN_ERR "Error %d opening bpf file", -errno);
> 

Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>
-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
