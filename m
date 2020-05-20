Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848811DB0E4
	for <lists+linux-um@lfdr.de>; Wed, 20 May 2020 13:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6LTSq1Htsb1fq1YDboeMLLQgqhGVHTHfU2uyrtbD1M=; b=O7z2WUqPv7I19w
	+e79ivctzJ0q0sar+TEoIk95nRloRsjMCABGSYMYaRE1bizzVASkNAW1LWK1BOWDlcP/f3TAIUvxd
	Hzm3otrdUv+AXyY6MTm051l84EWKKVtQstmTHi1iNnajt+lUSOtVzhcekbvqMJ3WQQ/ysySfFqd8R
	pnyPEphwwE5LDb0Ax3LFsYKaw531TD2SYAzkysFMrysaGwKGbCR2XmB+fem1zdBcCllMDgcT/98f5
	+rPrmp3XJb1GXkfsJE8N+nwCtWczS8tu0WWbuNPXb6AYjtP/19WyNHlphDC9kCDV+qpniPOQoAFq4
	wdmyb9hXvY7Qw39cdyfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMV6-0004ny-Us; Wed, 20 May 2020 11:03:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMV4-0004n2-86
 for linux-um@lists.infradead.org; Wed, 20 May 2020 11:03:03 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54C63206F1;
 Wed, 20 May 2020 11:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589972581;
 bh=utyPQ/u7bwlzb7x8dQEbcEoU71e3JC9vp1bcYs20I9U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rngQvLz2MUGKZpewOVsH0Gp996X30NtOhiZA6Cbl0hEqhTknZQkQtDQFiHZHAEToY
 fgDm7RfVUybJvMWZuXAQNFp0jtJjFgHde5QiBByfKknhdpkLQu8UBIfHPc464pgZrb
 8JcdoCjPSOev7Zt6WeeVeI+PkJexXjdwsOwSI3WI=
Date: Wed, 20 May 2020 20:02:55 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 20/20] maccess: return -ERANGE when
 copy_from_kernel_nofault_allowed fails
Message-Id: <20200520200255.3db6d27304f0b4c29c52ebcc@kernel.org>
In-Reply-To: <20200519134449.1466624-21-hch@lst.de>
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-21-hch@lst.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_040302_310096_B45EA78D 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-parisc@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 15:44:49 +0200
Christoph Hellwig <hch@lst.de> wrote:

> Allow the callers to distinguish a real unmapped address vs a range
> that can't be probed.
> 
> Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Hi Christoph,

Can you also update the kerneldoc comment too?
Other than that, this looks good to me.

Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you!

> ---
>  mm/maccess.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/mm/maccess.c b/mm/maccess.c
> index 1e7d77656c596..4010d64189d21 100644
> --- a/mm/maccess.c
> +++ b/mm/maccess.c
> @@ -25,7 +25,7 @@ bool __weak copy_from_kernel_nofault_allowed(void *dst, const void *unsafe_src,
>  long copy_from_kernel_nofault(void *dst, const void *src, size_t size)
>  {
>  	if (!copy_from_kernel_nofault_allowed(dst, src, size))
> -		return -EFAULT;
> +		return -ERANGE;
>  
>  	pagefault_disable();
>  	copy_from_kernel_nofault_loop(dst, src, size, u64, Efault);
> @@ -69,7 +69,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
>  	if (unlikely(count <= 0))
>  		return 0;
>  	if (!copy_from_kernel_nofault_allowed(dst, unsafe_addr, count))
> -		return -EFAULT;
> +		return -ERANGE;
>  
>  	pagefault_disable();
>  	do {
> @@ -107,7 +107,7 @@ long copy_from_kernel_nofault(void *dst, const void *src, size_t size)
>  	mm_segment_t old_fs = get_fs();
>  
>  	if (!copy_from_kernel_nofault_allowed(dst, src, size))
> -		return -EFAULT;
> +		return -ERANGE;
>  
>  	set_fs(KERNEL_DS);
>  	pagefault_disable();
> @@ -174,7 +174,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
>  	if (unlikely(count <= 0))
>  		return 0;
>  	if (!copy_from_kernel_nofault_allowed(dst, unsafe_addr, count))
> -		return -EFAULT;
> +		return -ERANGE;
>  
>  	set_fs(KERNEL_DS);
>  	pagefault_disable();
> -- 
> 2.26.2
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
