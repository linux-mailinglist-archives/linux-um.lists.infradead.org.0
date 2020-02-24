Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A7B16A672
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 13:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZB/Hk2jpFsFN1TesNeVT5qcDRxWewOwBdHwI2201Xc8=; b=MGX6Sts9yxiQmSPfYOvEVVKaQ
	/llX30R+AIx+ukjo+0+5JuJQnwZPLh6aS1XWRcyKscUHv+3ZcJ+zfKGYZhGV6WnKcIGsRaKnJJzL0
	S0hwA7+xHhWx79eE47DhzcJt7v7dCvQUErRTMKGamzRegvC4NhRnoG/+KIBT2najlQfcokLeXOF+s
	wCupMB122pCenkvuqfFhDMZrQLeW1TV2lvjZJr9Ke1mg12eNnSFJJAH8i1cUC1auGWtITWbZYS7XR
	2AWIfRT0NfJROV6w15Td4vsIpnaOVSRJY9xUZ16Mf2lHnMXk1kIdz1S9DpZa4K0uS4zKIZ11GOgIY
	Ajef4zXBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6DCd-0006Zj-61; Mon, 24 Feb 2020 12:51:15 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DCZ-0006ZD-P1
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 12:51:13 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6DCV-0005cj-GO; Mon, 24 Feb 2020 12:51:07 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6DCT-0007nS-51; Mon, 24 Feb 2020 12:51:07 +0000
Subject: Re: [PATCH v2] virtio: Work around frames incorrectly marked as gso
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20200224101912.14074-1-anton.ivanov@cambridgegreys.com>
 <20200224074516-mutt-send-email-mst@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <ca0ca1b6-b453-cba0-adb0-42a9517743e9@cambridgegreys.com>
Date: Mon, 24 Feb 2020 12:51:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200224074516-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Spam-Score: -0.7
X-Spam-Score: -0.7
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_045111_813408_E86E2C4A 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: cambridgegreys.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, jasowang@redhat.com, linux-um@lists.infradead.org,
 eric.dumazet@gmail.com, virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 24/02/2020 12:46, Michael S. Tsirkin wrote:
> On Mon, Feb 24, 2020 at 10:19:12AM +0000, anton.ivanov@cambridgegreys.com wrote:
>> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
>>
>> Some of the locally generated frames marked as GSO which
>> arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
>> fragments (data_len = 0) and length significantly shorter
>> than the MTU (752 in my experiments).
>>
>> This is observed on raw sockets reading off vEth interfaces
>> in all 4.x and 5.x kernels I tested.
> 
> A bit more info on how to reproduce couldn't hurt here.

Will do, a v3 will follow shortly.

> 
>>
>> These frames are reported as invalid while they are in fact
>> gso-less frames.
>>
>> This patch marks the vnet header as no-GSO for them instead
>> of reporting it as invalid.
>>
>> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> 
> Acked-by: Michael S. Tsirkin <mst@redhat.com>
> 
> Eric - as you looked at this in the past, would you mind acking please?
> 
>> ---
>>   include/linux/virtio_net.h | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/include/linux/virtio_net.h b/include/linux/virtio_net.h
>> index 0d1fe9297ac6..94fb78c3a2ab 100644
>> --- a/include/linux/virtio_net.h
>> +++ b/include/linux/virtio_net.h
>> @@ -100,8 +100,8 @@ static inline int virtio_net_hdr_from_skb(const struct sk_buff *skb,
>>   {
>>   	memset(hdr, 0, sizeof(*hdr));   /* no info leak */
>>   
>> -	if (skb_is_gso(skb)) {
>> -		struct skb_shared_info *sinfo = skb_shinfo(skb);
>> +	struct skb_shared_info *sinfo = skb_shinfo(skb);

I need to move this a few lines up - the kernel build robot is quite rightfully complaining.

>> +	if (skb_is_gso(skb) && sinfo->gso_type) {
>>   
>>   		/* This is a hint as to how much should be linear. */
>>   		hdr->hdr_len = __cpu_to_virtio16(little_endian,
>> -- 
>> 2.20.1
> 
> 

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
