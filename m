Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3181A226C
	for <lists+linux-um@lfdr.de>; Wed,  8 Apr 2020 14:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vLlXlyI5rTvPZa+Ab+/THqJ2Qh3HUEMaxColPsdbf+A=; b=mqjmU5SGWNB13ynQ6eq1H9WEc
	KXWBP5WxfSKyVRwhjwZbTDEI/0xIItAHmQ20LJLd1zt9+g1HGuAWEo1CyNfwTik8wj+Cv92oGl8AJ
	Uge88Bn4dkS9+iEOvVovhEbqs7HGHodYJZKwD6iJYSn12yz5txNi4R7eZzkN4RALRze6h1vnw24WB
	dvLcVHkEkNdZVYEA29v1lo1aIwg2x3gr5fbBkLQCFwWFTL7sfPnJsnoAQhFKIj5osruZoaoz6BGW1
	siQcOiGKc2Ocm8XrdbL/JBJO0spQnewmnvhB5FFioi+S7QCo/zKUrZ79uvSz3gyzrD21zXTWZYzD8
	9QGfW8t/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAIn-0007Xq-T2; Wed, 08 Apr 2020 12:59:33 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMAIk-0007Ww-O2
 for linux-um@lists.infradead.org; Wed, 08 Apr 2020 12:59:32 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jMAIg-0001yB-I7; Wed, 08 Apr 2020 12:59:26 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jMAIe-0006Th-1f; Wed, 08 Apr 2020 13:59:26 +0100
Subject: Re: Documentation for UML Vector network
To: Geert Uytterhoeven <geert@linux-m68k.org>, rrs@researchut.com
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
 <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
 <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
 <c6774e9e-7811-cbbb-eea5-83e5045b59e9@kot-begemot.co.uk>
 <41e0199cf2ad126bca3047d18e14493ab903bbe6.camel@researchut.com>
 <f64a6f99-8e20-9825-75eb-358054935807@kot-begemot.co.uk>
 <ac5e36bea0200b8613849ef529d84de54b3afe70.camel@researchut.com>
 <CAMuHMdWTOg9MR73qUEFtDB4fsV0Q1Li4+ZH+cQCfzxwXw2jBtg@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <aeefc761-30ea-e753-8d58-eb180e372d24@kot-begemot.co.uk>
Date: Wed, 8 Apr 2020 13:59:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWTOg9MR73qUEFtDB4fsV0Q1Li4+ZH+cQCfzxwXw2jBtg@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_055930_780554_F30E721D 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


On 08/04/2020 13:40, Geert Uytterhoeven wrote:
> Hi Ritesh,
>
> On Wed, Apr 8, 2020 at 1:05 PM Ritesh Raj Sarraf <rrs@researchut.com> wrote:
>> On Tue, 2020-04-07 at 17:36 +0100, Anton Ivanov wrote:
>>> I am happy to handle proposed changes as pull requests.
>> Thank you for following up on this one. There's one item I felt could
>> be expanded. I created a PR for it on the Github repo.
>>
>> I felt this was worth documenting because UML's prime selling point is
>> that it can run as a normal user.
>>
>> https://github.com/kot-begemot-uk/uml-howto-v2/pull/1
>> Netowrk configuration privilege
> Network

Thanks.

>
> And then there's slirp...

I know... it is something I need to figure out on how to do with the vector framework.

The patch proposed yesterday to add a generic fd transport goes half-way to fix that, all it needs is sorting out the helper to do the actual slirp processing.

>
> Gr{oetje,eeting}s,
>
>                          Geert
>
-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
