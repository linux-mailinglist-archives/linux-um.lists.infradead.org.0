Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75C8DC0A6
	for <lists+linux-um@lfdr.de>; Fri, 18 Oct 2019 11:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jmw/OG/TqMersnM9A2FKAfCPVELbiNMfltZITX22lgc=; b=Xbl25JE8ajpJgQYIM16s7lD2F
	8WVpcpbWg81gNOM1SXUfAjlOxuXpAtgYmsYbZ6uVZoeS1E5mm0muJ2kzElXVMvfjBg5dXgCu0nE9N
	UFFQcXeHuOPgq2fbZ0RZ751e9a4kxx80tRrH/mUiyT4Nvubky/JPqLqTr/Wq4mPJZZCKDPJEwbXaX
	I/yoN0qE12BNXkGkNmTuCcAHuX4OuP12ZuToP3OYmFxt6i5aXQKhTQDL9BWtbfSVr4j2DpGsi4Vss
	alZaTLi44XWAk1yzp9B6W7/4NivwauTOTrahGT77Pr+GY4V8ZPPaoRkm/gBrtN2Y6tA8KgGDXph4S
	y+MKRjqog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOKN-0000WB-Kf; Fri, 18 Oct 2019 09:13:43 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOKK-0000VS-FJ
 for linux-um@lists.infradead.org; Fri, 18 Oct 2019 09:13:42 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLOKH-00060H-8J; Fri, 18 Oct 2019 09:13:37 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLOKE-00082H-VE; Fri, 18 Oct 2019 10:13:36 +0100
Subject: Re: uml segfault during I/O
To: Johannes Berg <johannes@sipsolutions.net>, rrs@researchut.com,
 linux-um@lists.infradead.org
References: <a1307b17bd3f51d84d9195760492d1ef284b6382.camel@researchut.com>
 <1ccf27d8-6b6a-7d08-acef-93077f07511b@cambridgegreys.com>
 <5dc5e0694d2fcf2f8bb083e3861fd1b39c768b8c.camel@researchut.com>
 <cf1294b2-e1cc-961c-e8e1-d070fe0ea94d@cambridgegreys.com>
 <c7135e15-d2e4-3bce-9584-9032ddca72fe@cambridgegreys.com>
 <4892b3ca-6b26-0b96-d21f-ac8b31fb2270@cambridgegreys.com>
 <b742bf38-9cf5-e62f-55df-915929fd526f@cambridgegreys.com>
 <7a2c14d38873a5c19f395cc7861fd9811589ca79.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <362559a4-c52e-0084-7e11-79502015914f@cambridgegreys.com>
Date: Fri, 18 Oct 2019 10:13:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7a2c14d38873a5c19f395cc7861fd9811589ca79.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_021340_513530_67768AA2 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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



On 18/10/2019 09:57, Johannes Berg wrote:
> On Fri, 2019-10-18 at 08:35 +0100, Anton Ivanov wrote:
>>
>> Still happening with 5.2.21, albeit a bit more difficult to reproduce.
> 
> Just randomly reviewing the code, isn't there a bug in io_thread()?

Indeed. Well spotted. It is good that a short write to a block device is 
so rare :)

> 
> --- a/arch/um/drivers/ubd_kern.c
> +++ b/arch/um/drivers/ubd_kern.c
> @@ -1602,7 +1602,8 @@ int io_thread(void *arg)
>                  written = 0;
>   
>                  do {
> -                       res = os_write_file(kernel_fd, ((char *) io_req_buffer) + written, n);
> +                       res = os_write_file(kernel_fd, ((char *) io_req_buffer) + written,
> +                                           n - written);
>                          if (res >= 0) {
>                                  written += res;
>                          }
> 
> johannes
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

I have verified this.

It is always in a requeue and always after the io thread has returned 
EAGAIN on the attempt to submit a request.

That part of the code has been tested very heavily before and it works 
fine in 4.19

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
