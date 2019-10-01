Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 588EDC3FB9
	for <lists+linux-um@lfdr.de>; Tue,  1 Oct 2019 20:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jcPXkIQnGuHCT8JhfMYEy7cTsKKJx3QE2DXIvnSWqfg=; b=jCL5Gte2ISpsDz96dTErC2ulb
	xQBASMcj/o95Rx98/PuHrKHM2F+2Hxvr8XVaqOZV8CGA1q8mVcJWOxNQpgfm4RXZmgRyMOhcwEuB+
	p8wUEezwEgpG6/7Rjxy/TdgR0PTRMWaGn2H/tV44G1BONnz9D5VhiizKKMEY64XWqIrFDeBYWJ6iO
	bK/r1enBn7TkmF6A1Vd556TBQxBmqm/VOFHURdWVJRSASg9ftPer1D+nEb6sq1XlSlHeqePo4DS3+
	P9cazh2RePncf2UdmK7wbYjEpUwJRkg8laVSVjqMQI0ha7ucjqRMLfM05vomoKNZWbfW4kAp9yqRG
	jyGMgMPIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFMmP-0007up-LD; Tue, 01 Oct 2019 18:21:45 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFMmM-0007uT-Dy
 for linux-um@lists.infradead.org; Tue, 01 Oct 2019 18:21:44 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iFMmJ-0007Qd-BY; Tue, 01 Oct 2019 18:21:39 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iFMmH-0003it-13; Tue, 01 Oct 2019 19:21:39 +0100
Subject: Re: [PATCH v2] um: Loadable BPF "Firmware" for vector drivers
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20191001165537.3386-1-anton.ivanov@cambridgegreys.com>
 <6e5e87abcf0fa6453239678524be6049598dc080.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <539c878c-043b-defb-3545-39e233a5f007@cambridgegreys.com>
Date: Tue, 1 Oct 2019 19:21:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6e5e87abcf0fa6453239678524be6049598dc080.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_112142_473273_D248D300 
X-CRM114-Status: GOOD (  11.53  )
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
Cc: richard@nod.at
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 01/10/2019 18:32, Johannes Berg wrote:
> 
>> +/*
>> + * We cannot use the firmware.c loader API here because this is not a module
>> + *  and we do not have a proper device structure to pass to it as required
>> + *  by the firmware API
>> + */
> 
> I think you should delete the comment now :)

Mea culpa.

Will do that shortly.

I started following your suggestion about platform device and realized 
that we actually already have one :)

> 
> [...]
> 
>> +	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
>> +		goto flash_fail;
> 
> That is the standard firmware loader now after all.
> 
> johannes
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
