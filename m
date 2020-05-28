Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719451E5525
	for <lists+linux-um@lfdr.de>; Thu, 28 May 2020 06:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7JbNLSsm43VczNqjXdiuDxjbJPP2Ynn424UFOJE2g4=; b=EFPh4O34vGuIA3
	sksASCmvnbedrWQexBpR3/tQ4/4z7x8bjnP9tDqmhZbzwG/5v8qoOAuvYAZBKARhsjhGQ8TbqqiLX
	VbCV8CZCpl7Ft44nPjFClklYmENTSpmd1c3cF8rUMxsuHyainrc2aWvXMdG5hviEW+2w+Y2ogVqJj
	jSrJHbgkQbRsu6cEkLZuiDM1eaBC7An4cmm9AbSfl3b9Ug6NBWoddzdK7osiOkS/49R+WWCzH4WXg
	iTbmjkqw5LoK3zdLDZ6OcIQ7ivLsjykBbbD0F4TXaHTcNM/snzFDFdG1lWWuYT2BRRPA1uQulus8j
	edoU9hktmjWAvc6ga0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeAKs-0005ff-5b; Thu, 28 May 2020 04:40:06 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeAKo-0004di-7H
 for linux-um@lists.infradead.org; Thu, 28 May 2020 04:40:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C991B68B05; Thu, 28 May 2020 06:39:57 +0200 (CEST)
Date: Thu, 28 May 2020 06:39:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: Yonghong Song <yhs@fb.com>
Subject: Re: [PATCH 12/23] bpf: handle the compat string in
 bpf_trace_copy_string better
Message-ID: <20200528043957.GA28494@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
 <20200521152301.2587579-13-hch@lst.de>
 <20200527190432.e4af1fba00c13cb1421f5a37@linux-foundation.org>
 <2b64fae6-394c-c1e5-8963-c256f4284065@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b64fae6-394c-c1e5-8963-c256f4284065@fb.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_214002_428047_CFDA68D8 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-mm@kvack.org, bpf@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 07:26:30PM -0700, Yonghong Song wrote:
>> --- a/kernel/trace/bpf_trace.c~xxx
>> +++ a/kernel/trace/bpf_trace.c
>> @@ -588,15 +588,22 @@ BPF_CALL_5(bpf_seq_printf, struct seq_fi
>>   		}
>>     		if (fmt[i] == 's') {
>> +			void *unsafe_ptr;
>> +
>>   			/* try our best to copy */
>>   			if (memcpy_cnt >= MAX_SEQ_PRINTF_MAX_MEMCPY) {
>>   				err = -E2BIG;
>>   				goto out;
>>   			}
>>   -			err = strncpy_from_unsafe(bufs->buf[memcpy_cnt],
>> -						  (void *) (long) args[fmt_cnt],
>> -						  MAX_SEQ_PRINTF_STR_LEN);
>> +			unsafe_ptr = (void *)(long)args[fmt_cnt];
>> +			if ((unsigned long)unsafe_ptr < TASK_SIZE) {
>> +				err = strncpy_from_user_nofault(
>> +					bufs->buf[memcpy_cnt], unsafe_ptr,
>> +					MAX_SEQ_PRINTF_STR_LEN);
>> +			} else {
>> +				err = -EFAULT;
>> +			}
>
> This probably not right.
> The pointer stored at args[fmt_cnt] is a kernel pointer,
> but it could be an invalid address and we do not want to fault.
> Not sure whether it exists or not, we should use 
> strncpy_from_kernel_nofault()?

If you know it is a kernel pointer with this series it should be
strncpy_from_kernel_nofault.  But even before the series it should have
been strncpy_from_unsafe_strict.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
