Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EDBC3FBC
	for <lists+linux-um@lfdr.de>; Tue,  1 Oct 2019 20:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ubq7LsskrBq/YfmN+Jr23rTi7viGemCsfHz3jfT5S50=; b=ZiIDNxIsBi+l1tHY5q+K4hEAu
	KrxZWilGwB+p5tTF75BIyAjyL8w6wCS2wxozyXx9fIsmvsyWBgcdxUqnFsJhwFakxppOQorQ/sPj3
	vJSyF8UnQ/N22Hm0LeMZ7mpel212673zjy5XCJUcORD1Z6wKylXSRPaaQ6+CZ+PE5BiJasM3w60q/
	XHsGA0j48ej14NkDTcYgs2O0KpExFym1hWljmNkMRX8HQgJmpI5yrFEujpgYe87dRfF7pVj0psLM3
	lUG4ISsd8fdapnBE979HYk/Ycjr1gLZyBtCldqa9oCTd8HMzLStzo4yBWILguQDpjVV/Hv0DLIU76
	vDefjCFQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFMnn-0007zI-U8; Tue, 01 Oct 2019 18:23:11 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFMnk-0007yl-QG
 for linux-um@lists.infradead.org; Tue, 01 Oct 2019 18:23:10 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iFMnj-0007Qn-OW; Tue, 01 Oct 2019 18:23:07 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iFMnh-0003mz-Jb; Tue, 01 Oct 2019 19:23:07 +0100
Subject: Re: [PATCH v2] um: Loadable BPF "Firmware" for vector drivers
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20191001165537.3386-1-anton.ivanov@cambridgegreys.com>
 <0c6503e6b74ed1f25457d9919552fbfe48b68f37.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <1a5ed73e-be91-5f0b-d061-213e90c48316@cambridgegreys.com>
Date: Tue, 1 Oct 2019 19:23:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0c6503e6b74ed1f25457d9919552fbfe48b68f37.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_112308_849815_F382EE88 
X-CRM114-Status: GOOD (  10.44  )
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

On 01/10/2019 18:33, Johannes Berg wrote:
> On Tue, 2019-10-01 at 17:55 +0100, Anton Ivanov wrote:
>>
>> +	vp->bpf->filter = kmalloc(fw->size, GFP_KERNEL);
>> +	if (!vp->bpf->filter)
>> +		goto free_buffer;
>> +
>> +	memcpy(vp->bpf->filter, fw->data, fw->size);
> 
> Also, that's really just kmemdup().
> 
>> +	release_firmware(fw);
>> +
>> +	vp->bpf->len = fw->size / sizeof(struct sock_filter);
> 
> and that's a use-after-free, afaict?
> 
> johannes
> 
> 
> 
Ughhh... well spotted. New version later today.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
