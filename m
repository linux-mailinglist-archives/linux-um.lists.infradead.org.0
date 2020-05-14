Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F62B1D2480
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 03:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sT/ikF9qWX+JdryeP9249YrdY7BbGymO74m2KHusUo=; b=FeTIH+z7RCXuBd
	XjgwHGRsKJzo/0jWLuKmhjpTUwTIsnBmE/T1DOc3wiX+R1vLGJR2+V6GXtO5etCvSsbZkWDJJGCSB
	UD9cSGfMdlSEmBgjleiTTwAEkjoft7u7XbjD2jbns7bo1x5iJ/EgNP9cokKEIkwz2B1ZDPKkZwD2D
	P+F5IFD/RyecTbcyhFow40WzAXToRDyWa940QH1g0VRLTIRk8SXLcbAeQ8G3Utb9KOijliOs5q3H5
	j1kbt46WNloAT16vcjwk5ZgnlO1zfEFBVRpMB/Ydyi8hFoXsV8H6/eS8JA+VDLTmcrrMjNmh8lIIR
	BMtSN/wvyPrpv1C0WdWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2RC-0008LQ-Qs; Thu, 14 May 2020 01:13:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2RA-0008Ky-Ez
 for linux-um@lists.infradead.org; Thu, 14 May 2020 01:13:25 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18FB2205ED;
 Thu, 14 May 2020 01:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589418804;
 bh=E3TK4XJbiog9RqVvd1coo4BBYDYxNPOeooso1RPW9+o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=b38mEvyZRSzT8rHakz4cXiV/smUzpawoP/W25qu1jycv3OKF/Tee8zvKw12mAkxX2
 sMGDcbWVx9Rf4NXP29meINeTtJKaxPsH/WnZQ5G2Y/aMSZwnJKOW6PoAPJkE+Y4yEJ
 mgEjAnRg8ItCq5lHHZoRmJZSU0MdT1D0NFPbudbQ=
Date: Thu, 14 May 2020 10:13:18 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 10/18] maccess: unify the probe kernel arch hooks
Message-Id: <20200514101318.1c14647e41b7038b99b91fcd@kernel.org>
In-Reply-To: <20200513160038.2482415-11-hch@lst.de>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-11-hch@lst.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_181324_524772_32C7B444 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Christoph,

On Wed, 13 May 2020 18:00:30 +0200
Christoph Hellwig <hch@lst.de> wrote:

> @@ -36,14 +50,20 @@ long __weak probe_kernel_read(void *dst, const void *src, size_t size)
>   * probe_kernel_read() suitable for use within regions where the caller
>   * already holds mmap_sem, or other locks which nest inside mmap_sem.
>   */
> -long __weak probe_kernel_read_strict(void *dst, const void *src, size_t size)
> -    __attribute__((alias("__probe_kernel_read")));
> +long probe_kernel_read_strict(void *dst, const void *src, size_t size)
> +{
> +	return __probe_kernel_read(dst, src, size, true);
> +}
>  
> -long __probe_kernel_read(void *dst, const void *src, size_t size)
> +static long __probe_kernel_read(void *dst, const void *src, size_t size,
> +		bool strict)
>  {
>  	long ret;
>  	mm_segment_t old_fs = get_fs();
>  
> +	if (!probe_kernel_read_allowed(dst, src, size, strict))
> +		return -EFAULT;

Could you make this return -ERANGE instead of -EFAULT so that
the caller can notice that the address might be user space?

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
