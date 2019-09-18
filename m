Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A04FB5D89
	for <lists+linux-um@lfdr.de>; Wed, 18 Sep 2019 08:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WR9ih2pdqS2nF5DzAwZN9iuxPDxOfxBjuai05Sm4kTE=; b=QXpsvjTDSOXBICiqy0EZj5qaE
	7kLyY4nqxV9dYEUSTDL29TYWkwLzXlefpBxNUoVoe2jCHcTddoEAF5Yo5As0w23L4MpCm+1ifuTzR
	xHS3oEdwL3thjdXZaRmHG0t465HjZAfEYSXLdBAV8KjzJ/STX+Vf1n75ML61SPg8SLO2GVLnD9DZD
	2sZ7NboWX+Ccm+kZXzCzRinjg0wg5fYqpZ3MWtV2l8lNtkwZwTkQ/Jdwd89OsN35OIKnPjbIlBvW2
	6FKU3/+ymLmIEt0mrSiZ3/K1vY/NfpjJZWV5SChucszyOyGbDFI9QT4pjCr3OBfNUSyC2jT3G9NZ+
	czOoCtFZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iATlb-0004dd-V2; Wed, 18 Sep 2019 06:48:43 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iATlX-0004dA-Tu
 for linux-um@lists.infradead.org; Wed, 18 Sep 2019 06:48:42 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iATlQ-0002Ix-Kk; Wed, 18 Sep 2019 06:48:34 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iATlO-00059Q-7R; Wed, 18 Sep 2019 07:48:32 +0100
Subject: Re: CONFIG_COMPAT for UM?
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <60f73376da11640d5b335512f052a583fd784fd8.camel@sipsolutions.net>
 <76d688c3-3d8b-fb59-3ad4-ef8dd9c023be@kot-begemot.co.uk>
Message-ID: <b3507d24-ebd9-8e7f-25a8-61c1891c37d4@kot-begemot.co.uk>
Date: Wed, 18 Sep 2019 07:48:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <76d688c3-3d8b-fb59-3ad4-ef8dd9c023be@kot-begemot.co.uk>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_234839_965922_A6F75133 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 17/09/2019 22:54, Anton Ivanov wrote:
> 
> 
> On 17/09/2019 21:47, Johannes Berg wrote:
>> Hi,
>>
>> It seems to me that it ought to be possible - at least if the host
>> kernel has 32/64 compatibility, to extend the same to the UML kernel?
>>
>> Has anyone ever given this a thought?
>>
>> I just realized that our test suite is based on 32-bit binaries ... :-)
>>
>> johannes
>>
>>
>> _______________________________________________
>> linux-um mailing list
>> linux-um@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-um
>>
> 
> I have run 32 on 64 with no issues. In fact, I had to build a product 
> prototype using that a while back because the target userspace load did 
> not have 64 bit support. Even vector IO works despite the differences 
> between 32 bit and 64 bit syscalls for that.
> 
> I am not sure we need to do anything here. What in particular do you 
> have in mind?
> 

Sorry, not thinking. Serves me right answering mails at 11pm.

I was thinking about running 32 bit instances on a 64 bit host.

Pure 32 bit userspace on 64 kernel - yeah... why not. Though to be 
honest, nearly all distributions now have multiarch support so the need 
for this is nowhere near as pressing as 10+ years ago when the first 
AMD64 processors came out.

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
