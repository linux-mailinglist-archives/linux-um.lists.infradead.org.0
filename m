Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5BF148C7B
	for <lists+linux-um@lfdr.de>; Fri, 24 Jan 2020 17:48:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Os15fZ4rhCAr2bOCPwtJ0lDgyJMDf0jlqLfAmsrW/Tg=; b=UajytTtkqtxUmZn6aeyNuCvjI
	7B9jNSsdPWWqyieRDC5Ty2VVYXhJE9cxryFTXSw9GMjOdAmm27Yeb+3dn50wpHf+niI/damNNAiMj
	u3ktmaFFOAXc/yW7sGOLbEnvPU+35Zg1iDRnnox+rcB9dSMVwjsSKwMkHFxftYIlOEBA6jdb3W6xJ
	2KCnEbU4wdSOgb+WmgEMF836/sZVxNZsoTXz7BmPuaopyrQ0hFNwT8/P/yxfGYBWBDpgtatlsxNtT
	vuBOVnMEgJ4STFCBo9NWYv7c/sv4Tp6FQK4qlAuVhHtLVRKb+JlkvUWzHvr72VfXZilRejmrE4Jq2
	0++UTYJzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv280-0005Bh-F4; Fri, 24 Jan 2020 16:48:16 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv27x-0005BM-N9
 for linux-um@lists.infradead.org; Fri, 24 Jan 2020 16:48:15 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iv27r-0006Gu-PM; Fri, 24 Jan 2020 16:48:08 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iv27n-0005K8-Ga; Fri, 24 Jan 2020 16:48:06 +0000
Subject: Re: [PATCH] um: Fix some error handling in uml_vector_user_bpf()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200124101450.jxfzsh6sz7v324hv@kili.mountain>
 <36070c96-8e75-7d06-d945-87a9d366d0b9@cambridgegreys.com>
 <20200124164427.GF1870@kadam>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <de3bdae8-2dcd-490f-cdf2-67bf92a552e8@cambridgegreys.com>
Date: Fri, 24 Jan 2020 16:48:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200124164427.GF1870@kadam>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_084813_753446_E6A3AC02 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: kernel-janitors@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Song Liu <songliubraving@fb.com>,
 Alexei Starovoitov <ast@kernel.org>, Alex Dewar <alex.dewar@gmx.co.uk>,
 Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 24/01/2020 16:44, Dan Carpenter wrote:
> On Fri, Jan 24, 2020 at 12:52:18PM +0000, Anton Ivanov wrote:
>>
>>
>> On 24/01/2020 10:14, Dan Carpenter wrote:
>>> 1) The uml_vector_user_bpf() returns pointers so it should return NULL
>>>      instead of false.
>>> 2) If the "bpf_prog" allocation failed, it would have eventually lead to
>>>      a crash.  We can't succeed after the error happens so it should just
>>>      return.
>>>
>>> Fixes: 9807019a62dc ("um: Loadable BPF "Firmware" for vector drivers")
>>> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
>>> ---
>>>    arch/um/drivers/vector_user.c | 10 +++++-----
>>>    1 file changed, 5 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
>>> index ddcd917be0af..88483f5b034c 100644
>>> --- a/arch/um/drivers/vector_user.c
>>> +++ b/arch/um/drivers/vector_user.c
>>> @@ -732,13 +732,13 @@ void *uml_vector_user_bpf(char *filename)
>>>    	if (stat(filename, &statbuf) < 0) {
>>>    		printk(KERN_ERR "Error %d reading bpf file", -errno);
>>> -		return false;
>>> +		return NULL;
>>
>> I will sort this one out, thanks for noticing.
>>
>>>    	}
>>>    	bpf_prog = uml_kmalloc(sizeof(struct sock_fprog), UM_GFP_KERNEL);
>>> -	if (bpf_prog != NULL) {
>>> -		bpf_prog->len = statbuf.st_size / sizeof(struct sock_filter);
>>> -		bpf_prog->filter = NULL;
>>> -	}
>>> +	if (!pfg_prog)
>>
>> ^^^^^ ?
> 
> If we don't return here it leads to a NULL dereference.

It says pfg_prog

I cannot find this identifier :)

> 
> regards,
> dan carpenter
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
