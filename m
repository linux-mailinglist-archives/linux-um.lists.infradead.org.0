Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97D81DDB96
	for <lists+linux-um@lfdr.de>; Fri, 22 May 2020 02:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVn8/rrZXfeFDo/5u4LZuV12WaxB+fcOfG39B3r9I10=; b=OL8apFDU9FG4BP
	8NfKoNUoIHEBNW4I9yD8nqmzyno9jnfv0sd2msQwomER7gdvu0XinVeBaJypY2tRjk2l3eUnRkWlp
	Mrwhz4qma2h/CEI54++Lu4JrqCRfP6/uDW6Ca2s1uVuz6PMKynVoZ0tswduPxp6iIPC5nIR/uCEa6
	Me2SkvKao0nkwPdADY1YVqFdrgufZjLu5XVMWCNiTSED4bR3vrramO1D9cxvlejbnJ5lTcBsVXjoY
	uFlLpdrv++5hlgV7Th5vNl31bqwfvWSyX3CkFNqYUTCvVsbb/xqsMJ58HPByUitYg6PqFTQ9wndgz
	LeU864yngKdj7zkV5eLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbvBN-0002VU-Rj; Fri, 22 May 2020 00:05:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbvBK-0002U3-Oh
 for linux-um@lists.infradead.org; Fri, 22 May 2020 00:05:00 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 234A2207D8;
 Fri, 22 May 2020 00:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590105898;
 bh=nOzaaU4D0Dp728Lmp1J3pE4tiMfeddkJwOIqDp8fw7U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KYkzfNVImZyFXO92ouqtFx4Wn+lahd/EenyTm9IWrUgKxLXTM7Mw4AaNfwE/cITko
 b+YC+mO7bXcilZnM+LaBWxom42ehoARofe5HFRsG96aBSpHIaegnxQtnKfkOS3J+AO
 Om4qy3Ilig1AZ97xiA9G4WIpQ+CrYDAPjondB7YM=
Date: Fri, 22 May 2020 09:04:50 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 14/23] tracing/kprobes: handle mixed kernel/userspace
 probes better
Message-Id: <20200522090450.a6ef7a53878c61d10340949a@kernel.org>
In-Reply-To: <20200521152301.2587579-15-hch@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
 <20200521152301.2587579-15-hch@lst.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_170458_843800_151154CE 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, 21 May 2020 17:22:52 +0200
Christoph Hellwig <hch@lst.de> wrote:

> Instead of using the dangerous probe_kernel_read and strncpy_from_unsafe
> helpers, rework probes to try a user probe based on the address if the
> architecture has a common address space for kernel and userspace.
> 

This looks good to me.

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you!

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  kernel/trace/trace_kprobe.c | 72 ++++++++++++++++++++++---------------
>  1 file changed, 43 insertions(+), 29 deletions(-)
> 
> diff --git a/kernel/trace/trace_kprobe.c b/kernel/trace/trace_kprobe.c
> index 4325f9e7fadaa..4aeaef53ba970 100644
> --- a/kernel/trace/trace_kprobe.c
> +++ b/kernel/trace/trace_kprobe.c
> @@ -1200,6 +1200,15 @@ static const struct file_operations kprobe_profile_ops = {
>  
>  /* Kprobe specific fetch functions */
>  
> +/* Return the length of string -- including null terminal byte */
> +static nokprobe_inline int
> +fetch_store_strlen_user(unsigned long addr)
> +{
> +	const void __user *uaddr =  (__force const void __user *)addr;
> +
> +	return strnlen_user_nofault(uaddr, MAX_STRING_SIZE);
> +}
> +
>  /* Return the length of string -- including null terminal byte */
>  static nokprobe_inline int
>  fetch_store_strlen(unsigned long addr)
> @@ -1207,30 +1216,27 @@ fetch_store_strlen(unsigned long addr)
>  	int ret, len = 0;
>  	u8 c;
>  
> +#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
> +	if (addr < TASK_SIZE)
> +		return fetch_store_strlen_user(addr);
> +#endif
> +
>  	do {
> -		ret = probe_kernel_read(&c, (u8 *)addr + len, 1);
> +		ret = probe_kernel_read_strict(&c, (u8 *)addr + len, 1);
>  		len++;
>  	} while (c && ret == 0 && len < MAX_STRING_SIZE);
>  
>  	return (ret < 0) ? ret : len;
>  }
>  
> -/* Return the length of string -- including null terminal byte */
> -static nokprobe_inline int
> -fetch_store_strlen_user(unsigned long addr)
> -{
> -	const void __user *uaddr =  (__force const void __user *)addr;
> -
> -	return strnlen_user_nofault(uaddr, MAX_STRING_SIZE);
> -}
> -
>  /*
> - * Fetch a null-terminated string. Caller MUST set *(u32 *)buf with max
> - * length and relative data location.
> + * Fetch a null-terminated string from user. Caller MUST set *(u32 *)buf
> + * with max length and relative data location.
>   */
>  static nokprobe_inline int
> -fetch_store_string(unsigned long addr, void *dest, void *base)
> +fetch_store_string_user(unsigned long addr, void *dest, void *base)
>  {
> +	const void __user *uaddr =  (__force const void __user *)addr;
>  	int maxlen = get_loc_len(*(u32 *)dest);
>  	void *__dest;
>  	long ret;
> @@ -1240,11 +1246,7 @@ fetch_store_string(unsigned long addr, void *dest, void *base)
>  
>  	__dest = get_loc_data(dest, base);
>  
> -	/*
> -	 * Try to get string again, since the string can be changed while
> -	 * probing.
> -	 */
> -	ret = strncpy_from_unsafe(__dest, (void *)addr, maxlen);
> +	ret = strncpy_from_user_nofault(__dest, uaddr, maxlen);
>  	if (ret >= 0)
>  		*(u32 *)dest = make_data_loc(ret, __dest - base);
>  
> @@ -1252,35 +1254,37 @@ fetch_store_string(unsigned long addr, void *dest, void *base)
>  }
>  
>  /*
> - * Fetch a null-terminated string from user. Caller MUST set *(u32 *)buf
> - * with max length and relative data location.
> + * Fetch a null-terminated string. Caller MUST set *(u32 *)buf with max
> + * length and relative data location.
>   */
>  static nokprobe_inline int
> -fetch_store_string_user(unsigned long addr, void *dest, void *base)
> +fetch_store_string(unsigned long addr, void *dest, void *base)
>  {
> -	const void __user *uaddr =  (__force const void __user *)addr;
>  	int maxlen = get_loc_len(*(u32 *)dest);
>  	void *__dest;
>  	long ret;
>  
> +#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
> +	if ((unsigned long)addr < TASK_SIZE)
> +		return fetch_store_string_user(addr, dest, base);
> +#endif
> +
>  	if (unlikely(!maxlen))
>  		return -ENOMEM;
>  
>  	__dest = get_loc_data(dest, base);
>  
> -	ret = strncpy_from_user_nofault(__dest, uaddr, maxlen);
> +	/*
> +	 * Try to get string again, since the string can be changed while
> +	 * probing.
> +	 */
> +	ret = strncpy_from_user_nofault(__dest, (void *)addr, maxlen);
>  	if (ret >= 0)
>  		*(u32 *)dest = make_data_loc(ret, __dest - base);
>  
>  	return ret;
>  }
>  
> -static nokprobe_inline int
> -probe_mem_read(void *dest, void *src, size_t size)
> -{
> -	return probe_kernel_read(dest, src, size);
> -}
> -
>  static nokprobe_inline int
>  probe_mem_read_user(void *dest, void *src, size_t size)
>  {
> @@ -1289,6 +1293,16 @@ probe_mem_read_user(void *dest, void *src, size_t size)
>  	return probe_user_read(dest, uaddr, size);
>  }
>  
> +static nokprobe_inline int
> +probe_mem_read(void *dest, void *src, size_t size)
> +{
> +#ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
> +	if ((unsigned long)src < TASK_SIZE)
> +		return probe_mem_read_user(dest, src, size);
> +#endif
> +	return probe_kernel_read_strict(dest, src, size);
> +}
> +
>  /* Note that we don't verify it, since the code does not come from user space */
>  static int
>  process_fetch_insn(struct fetch_insn *code, struct pt_regs *regs, void *dest,
> -- 
> 2.26.2
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
