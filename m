Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEE71E5261
	for <lists+linux-um@lfdr.de>; Thu, 28 May 2020 02:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dWn9YS/GpFJ0PA9IKQu9AFlvqgUQg9Nu5sAyuWA95Y=; b=f7IRieTgEYQE8U
	ZuSgLJClsUYaXRveujDHFAWN8Ri/pdlguWlnSL3peVGJx3/P6WGOmI3RzUOtIExQ/GLIxsCB1G3rn
	FmelIXM6muecV27UtdoJWZnqkGqQJvu0uBKRw2zBb4VdZvq/YuKYV7w8+1p2tB+je0q0qkzhiBdQs
	/BZ62ujt3qisnm+MlzqLJflnYsJtqF62jfq2r/BPrx6sSpMtHnAAxaO4YZIHQvcdclIj4o5T/mVeE
	K+mSYuiL3AIUwfD0e45CV4U8A4S7Sqj5eWbjwGiI5//fNq2HRmcTQ3yoPgc5gNy7U8gYlUvUtiBav
	KmQWcsn6E5qo/ed2jHmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je6pr-0003GS-3u; Thu, 28 May 2020 00:55:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je6po-0003Fy-JH
 for linux-um@lists.infradead.org; Thu, 28 May 2020 00:55:49 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A70B8207CB;
 Thu, 28 May 2020 00:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590627348;
 bh=LVt+v07eAhhKUzT7NqWt/6bOrLAfS45SVvYmNSlojo4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jv37DevlwxDmCOqr9Zb5+P2Xeq5ZWKgzCjORE0J9RBB7bJfqb3n8CvDivIWERcESE
 VM38R5KdZwFEAuJzap4U8cYrCW2Bkn8bZDTrxsIVze5ZoSzUpmeMIKrR/RqWTuadrt
 WomSlE/Kd+KPBoOd1wYzuXZRNXU+tR00icpmem+o=
Date: Wed, 27 May 2020 17:55:47 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 10/23] maccess: unify the probe kernel arch hooks
Message-Id: <20200527175547.0260fb90d76734d4e0f56def@linux-foundation.org>
In-Reply-To: <20200521152301.2587579-11-hch@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
 <20200521152301.2587579-11-hch@lst.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_175548_656305_EC6FF905 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Masami Hiramatsu <mhiramat@kernel.org>,
 bpf@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 17:22:48 +0200 Christoph Hellwig <hch@lst.de> wrote:

> Currently architectures have to override every routine that probes
> kernel memory, which includes a pure read and strcpy, both in strict
> and not strict variants.  Just provide a single arch hooks instead to
> make sure all architectures cover all the cases.

Fix a buildo.

--- a/arch/x86/mm/maccess.c~maccess-unify-the-probe-kernel-arch-hooks-fix
+++ a/arch/x86/mm/maccess.c
@@ -29,6 +29,6 @@ bool probe_kernel_read_allowed(const voi
 {
 	if (!strict)
 		return true;
-	return (unsigned long)vaddr >= TASK_SIZE_MAX;
+	return (unsigned long)unsafe_src >= TASK_SIZE_MAX;
 }
 #endif
_


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
