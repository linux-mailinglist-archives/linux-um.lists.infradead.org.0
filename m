Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA9E1DDC18
	for <lists+linux-um@lfdr.de>; Fri, 22 May 2020 02:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9weVshLlO6yadqeBFw7PK4ITsJNWnx6+VF1qGGG3W4=; b=Cqh6DCEtK+Na+e
	L99P9Pgfb0+sCT0oNHPdBJK4PYWd3gQmbt2NXcvmJ/hoq58cmGkjnFCXZk9k78lk8fnJQ94YBiOtp
	28obES+EtfCVPfFjvFCITAD7JI3HubaYqomSOrywVk4eEGtUz6PEUKyYZzv1RkDpcD85XwYiPzjYQ
	mdjavTkJ1AWihjhuXBddVVq8ZIMkg3IZ/IP1l+f9jsdU8cwXHc5K3okKuL96qLIKCsfyy3BpNWxlb
	79G3qU8iQQyxH5tSQ60faOlpOKv2fXuEBXxaQver/gntRl1M3gtmcEp3VRG4zYoq5Fb7wy2vJJYp9
	mXuCicrXNXhEdzYMKLuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbvS8-0008DT-UK; Fri, 22 May 2020 00:22:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbvS5-0008Ca-Ux
 for linux-um@lists.infradead.org; Fri, 22 May 2020 00:22:19 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BF7A20825;
 Fri, 22 May 2020 00:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590106937;
 bh=UQBu9s+09ZRXhgbAFPY56Fnwnv0wKwGiaFArpYa/goQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CoNgODwuHX4WaU/4wf7BBMTIy5y5apCsVJb/nk5LzA7PjS9dtkTxf+x23sRxmB19K
 Nm8y7bAP+SetbndPW4bAnJO6ogntIKnO13z394/LWPcP8zcpAQ28nfqnNTM4OIhfYc
 Z2D014SfbcQR1RDa6rypeFF5ViJGPZWCWIeNXLME=
Date: Fri, 22 May 2020 09:22:11 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: clean up and streamline probe_kernel_* and friends v4
Message-Id: <20200522092211.dd45d126b7598c4bf2182859@kernel.org>
In-Reply-To: <20200521152301.2587579-1-hch@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_172218_017878_6CE1166D 
X-CRM114-Status: GOOD (  14.02  )
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

On Thu, 21 May 2020 17:22:38 +0200
Christoph Hellwig <hch@lst.de> wrote:

> Hi all,
> 
> this series start cleaning up the safe kernel and user memory probing
> helpers in mm/maccess.c, and then allows architectures to implement
> the kernel probing without overriding the address space limit and
> temporarily allowing access to user memory.  It then switches x86
> over to this new mechanism by reusing the unsafe_* uaccess logic.
> 
> This version also switches to the saner copy_{from,to}_kernel_nofault
> naming suggested by Linus.
> 
> I kept the x86 helpers as-is without calling unsage_{get,put}_user as
> that avoids a number of hard to trace casts, and it will still work
> with the asm-goto based version easily.
> 
> Changes since v3:
>  - cleanup how bpf and trace_kprobe perform the TASK_SIZE checks
>  - remove the unused dst argument to probe_kernel_read_allowed
>  - document the -ERANGE return value

This series looks good to me.

Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>

for this series.

Thank you!

> 
> Changes since v2:
>  - rebased on 5.7-rc6 with the bpf trace format string changes
>  - rename arch_kernel_read to __get_kernel_nofault and arch_kernel_write
>    to __put_kernel_nofault
>  - clean up the tracers to only allowd "mixed" reads when the kernel
>    has non-overlapping address spaces


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
