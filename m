Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661191D5E43
	for <lists+linux-um@lfdr.de>; Sat, 16 May 2020 05:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWAWTkzPm22MRvmFtXGPJOo1hd9lMzr8fiYLHPUAKFQ=; b=MqE/65dJDfCY97
	PcKK3Ov6218ik3hpduGO3fWX3vQERFpuEkbm+ZLOBdQUUzDSBICrTVRH0mGwvVkzZ6Kz/S+7JwAla
	IJgKrA8BdPV4aefnw/iRp1QzcmsFZw9/5iRxVwnJJfnLbPO5EO2gK4t7SViJF/nwFIwYGPUvpp7sC
	+wA9MUBL/h7oO5vJcWohpIFnDQ9QAHPPZXMH3uDU076sOVLMXtPZqF23Qw1di4RPGk3RKagx1FeHq
	ZHbQU9599601puKeaMUnu4iW+kxBNZoIS+2ZYnQwI2TwO1lhYJK/8FsfHmWD0Qmhu5FljAjAU5gap
	R9KkfUekmt5rzTCP9Cdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZnjC-0000A7-BF; Sat, 16 May 2020 03:43:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZnj9-00009X-7q
 for linux-um@lists.infradead.org; Sat, 16 May 2020 03:43:08 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 773F320728;
 Sat, 16 May 2020 03:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589600585;
 bh=9Yr3NqlaT8J3yD/oIp4iOMhtlWnif5o5ocW4LHaILdM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gyBQnTy1kkqh/qqbQgXTvgoLZUb4vpkCq+qjNMxNfH2LO1uD/nFf2CQ93t2pqZ2HH
 Nvv3z8XinGroioseW6l362KaQNKI1k7UrzuUhEywWLMpAOhwLDsF/32qhs84qDVP/z
 cpTKthgjLlt17JXXUVZs8KirdFerSU19m7odBjKc=
Date: Sat, 16 May 2020 12:42:59 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 14/18] maccess: allow architectures to provide kernel
 probing directly
Message-Id: <20200516124259.5b68a4e1d4670efa1397a1e0@kernel.org>
In-Reply-To: <20200513160038.2482415-15-hch@lst.de>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-15-hch@lst.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_204307_323761_E0C476C4 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Christoph,

On Wed, 13 May 2020 18:00:34 +0200
Christoph Hellwig <hch@lst.de> wrote:

> Provide alternative versions of probe_kernel_read, probe_kernel_write
> and strncpy_from_kernel_unsafe that don't need set_fs magic, but instead
> use arch hooks that are modelled after unsafe_{get,put}_user to access
> kernel memory in an exception safe way.

This patch seems to introduce new implementation of probe_kernel_read/write()
and strncpy_from_kernel_unsafe(), but also drops copy_from/to_kernel_nofault()
and strncpy_from_kernel_nofault() if HAVE_ARCH_PROBE_KERNEL is defined.
In the result, this cause a link error with BPF and kprobe events.

BTW, what is the difference of *_unsafe() and *_nofault()?
(maybe we make those to *_nofault() finally?)

Thank you,

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  mm/maccess.c | 76 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 76 insertions(+)
> 
> diff --git a/mm/maccess.c b/mm/maccess.c
> index 9773e2253b495..e9efe2f98e34a 100644
> --- a/mm/maccess.c
> +++ b/mm/maccess.c
> @@ -12,6 +12,81 @@ bool __weak probe_kernel_read_allowed(void *dst, const void *unsafe_src,
>  	return true;
>  }
>  
> +#ifdef HAVE_ARCH_PROBE_KERNEL
> +
> +#define probe_kernel_read_loop(dst, src, len, type, err_label)		\
> +	while (len >= sizeof(type)) {					\
> +		arch_kernel_read(dst, src, type, err_label);		\
> +		dst += sizeof(type);					\
> +		src += sizeof(type);					\
> +		len -= sizeof(type);					\
> +	}
> +
> +long probe_kernel_read(void *dst, const void *src, size_t size)
> +{
> +	if (!probe_kernel_read_allowed(dst, src, size))
> +		return -EFAULT;
> +
> +	pagefault_disable();
> +	probe_kernel_read_loop(dst, src, size, u64, Efault);
> +	probe_kernel_read_loop(dst, src, size, u32, Efault);
> +	probe_kernel_read_loop(dst, src, size, u16, Efault);
> +	probe_kernel_read_loop(dst, src, size, u8, Efault);
> +	pagefault_enable();
> +	return 0;
> +Efault:
> +	pagefault_enable();
> +	return -EFAULT;
> +}
> +EXPORT_SYMBOL_GPL(probe_kernel_read);
> +
> +#define probe_kernel_write_loop(dst, src, len, type, err_label)		\
> +	while (len >= sizeof(type)) {					\
> +		arch_kernel_write(dst, src, type, err_label);		\
> +		dst += sizeof(type);					\
> +		src += sizeof(type);					\
> +		len -= sizeof(type);					\
> +	}
> +
> +long probe_kernel_write(void *dst, const void *src, size_t size)
> +{
> +	pagefault_disable();
> +	probe_kernel_write_loop(dst, src, size, u64, Efault);
> +	probe_kernel_write_loop(dst, src, size, u32, Efault);
> +	probe_kernel_write_loop(dst, src, size, u16, Efault);
> +	probe_kernel_write_loop(dst, src, size, u8, Efault);
> +	pagefault_enable();
> +	return 0;
> +Efault:
> +	pagefault_enable();
> +	return -EFAULT;
> +}
> +
> +long strncpy_from_kernel_unsafe(char *dst, const void *unsafe_addr, long count)
> +{
> +	const void *src = unsafe_addr;
> +
> +	if (unlikely(count <= 0))
> +		return 0;
> +	if (!probe_kernel_read_allowed(dst, unsafe_addr, count))
> +		return -EFAULT;
> +
> +	pagefault_disable();
> +	do {
> +		arch_kernel_read(dst, src, u8, Efault);
> +		dst++;
> +		src++;
> +	} while (dst[-1] && src - unsafe_addr < count);
> +	pagefault_enable();
> +
> +	dst[-1] = '\0';
> +	return src - unsafe_addr;
> +Efault:
> +	pagefault_enable();
> +	dst[-1] = '\0';
> +	return -EFAULT;
> +}
> +#else /* HAVE_ARCH_PROBE_KERNEL */
>  /**
>   * probe_kernel_read(): safely attempt to read from kernel-space
>   * @dst: pointer to the buffer that shall take the data
> @@ -114,6 +189,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
>  
>  	return ret ? -EFAULT : src - unsafe_addr;
>  }
> +#endif /* HAVE_ARCH_PROBE_KERNEL */
>  
>  /**
>   * probe_user_read(): safely attempt to read from a user-space location
> -- 
> 2.26.2
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
