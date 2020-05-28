Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC0E1E539E
	for <lists+linux-um@lfdr.de>; Thu, 28 May 2020 04:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFD0Os/uxtWBo5HehA1bh0Ts2fg6XqRtM3j/lGdASFM=; b=poQ6ra5f/Pu72l
	JW+rBBKCUnMOGnH2t3CcrhckCvZpPHuxOvnUOt2HPNLYT20Nkkzmz6nPKQWp09kLStU596q0V65xN
	wNUY6iKsBH2A5FgDFQY1vwoCCYN2/5Fym0HKcoXp2lgj0jCHRjbpwyuEJ9RXK4IRpyjHCfEiOpAKy
	ui3zLS4l1dpdwUqmLksppF0v8OOcc9QnrQcjAzsVwtRMtDJL5F2qfY/7u/m4SlvjVUqQXOpTvTsN9
	2aDwZICeywlDxuNgJRZLtmy+Q0YcrWUFmUg9NbUBhGvetRcwQnAOG4VJSH+Pwoyyqx1dz+LCagGAq
	2U3ty0nJuIVwllypfEPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7uT-0000X9-Ef; Thu, 28 May 2020 02:04:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7uQ-0000WB-TI
 for linux-um@lists.infradead.org; Thu, 28 May 2020 02:04:40 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7583D207CB;
 Thu, 28 May 2020 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590631473;
 bh=Bm2dTuY2AQspqM7SzMj2c/DT+ozxm6kUi6HWpA8TsHk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=P1CBXYMU6KgliH8T3/2k6OMetj5IIP9IfCeW6vXHFuAVES38CNoXgmhsLExw5WPRS
 BGr2sIDNzBzrcfeE+DMAJESNZIIeUKJWWPI8HGY2ObOdmL8XyU7KUun0WVlXahBjEC
 cDYAJp751q754Z0TTj9fuvNilxFW+islAyRbCf+k=
Date: Wed, 27 May 2020 19:04:32 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 12/23] bpf: handle the compat string in
 bpf_trace_copy_string better
Message-Id: <20200527190432.e4af1fba00c13cb1421f5a37@linux-foundation.org>
In-Reply-To: <20200521152301.2587579-13-hch@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
 <20200521152301.2587579-13-hch@lst.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_190438_982948_704E9763 
X-CRM114-Status: GOOD (  17.66  )
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

On Thu, 21 May 2020 17:22:50 +0200 Christoph Hellwig <hch@lst.de> wrote:

> User the proper helper for kernel or userspace addresses based on
> TASK_SIZE instead of the dangerous strncpy_from_unsafe function.
> 
> ...
>
> --- a/kernel/trace/bpf_trace.c
> +++ b/kernel/trace/bpf_trace.c
> @@ -331,8 +331,11 @@ static void bpf_trace_copy_string(char *buf, void *unsafe_ptr, char fmt_ptype,
>  	switch (fmt_ptype) {
>  	case 's':
>  #ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
> -		strncpy_from_unsafe(buf, unsafe_ptr, bufsz);
> -		break;
> +		if ((unsigned long)unsafe_ptr < TASK_SIZE) {
> +			strncpy_from_user_nofault(buf, user_ptr, bufsz);
> +			break;
> +		}
> +		fallthrough;
>  #endif
>  	case 'k':
>  		strncpy_from_kernel_nofault(buf, unsafe_ptr, bufsz);

Another user of strncpy_from_unsafe() has popped up in linux-next's
bpf.  I did the below, but didn't try very hard - it's probably wrong
if CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE=n?

Anyway, please take a look at all the bpf_trace.c changes in
linux-next.


From: Andrew Morton <akpm@linux-foundation.org>
Subject: bpf:bpf_seq_printf(): handle potentially unsafe format string better

User the proper helper for kernel or userspace addresses based on
TASK_SIZE instead of the dangerous strncpy_from_unsafe function.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Ingo Molnar <mingo@elte.hu>
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 kernel/trace/bpf_trace.c |   13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

--- a/kernel/trace/bpf_trace.c~xxx
+++ a/kernel/trace/bpf_trace.c
@@ -588,15 +588,22 @@ BPF_CALL_5(bpf_seq_printf, struct seq_fi
 		}
 
 		if (fmt[i] == 's') {
+			void *unsafe_ptr;
+
 			/* try our best to copy */
 			if (memcpy_cnt >= MAX_SEQ_PRINTF_MAX_MEMCPY) {
 				err = -E2BIG;
 				goto out;
 			}
 
-			err = strncpy_from_unsafe(bufs->buf[memcpy_cnt],
-						  (void *) (long) args[fmt_cnt],
-						  MAX_SEQ_PRINTF_STR_LEN);
+			unsafe_ptr = (void *)(long)args[fmt_cnt];
+			if ((unsigned long)unsafe_ptr < TASK_SIZE) {
+				err = strncpy_from_user_nofault(
+					bufs->buf[memcpy_cnt], unsafe_ptr,
+					MAX_SEQ_PRINTF_STR_LEN);
+			} else {
+				err = -EFAULT;
+			}
 			if (err < 0)
 				bufs->buf[memcpy_cnt][0] = '\0';
 			params[fmt_cnt] = (u64)(long)bufs->buf[memcpy_cnt];
_


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
