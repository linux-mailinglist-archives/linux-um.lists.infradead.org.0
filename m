Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B24D1038
	for <lists+linux-um@lfdr.de>; Wed,  9 Oct 2019 15:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SyM0aLC7n0eLtJ8ca17ajl4QkWVRH3qwr3zzf1JXDoU=; b=aLG1u3odGe7Ho+
	BBU8GobL27gOwURHp3pwmASf21vBDN6nAcxf740fOMD25clex+VnA7NwMFyOD1RsG3A59q8Y6xD+P
	UZloW3IjujK8rH5MrHKBi1aJ3PAsHRpnuGqlZB5QEQDrsDsnNuVjPHwpJlHiixCbqZZBNYbBgKBt3
	Yk3tRnUjaegKppLgQCZOhU6X3Tr9hDIAc45RHA1z42NHHcDrdC1paSpUBFNy2yHVPTtVz8MYlk7x7
	P7tOQrepF2pGXa4MJeSOIdSvxEzRrdSvlvieIchGz4VTHEDS3XOh3R0rqThrVZeU68A0KcgnGNcid
	dHaAo+fEY9ouMvbHqXmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIC6z-0005ID-Na; Wed, 09 Oct 2019 13:34:41 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIC6w-0005GO-OU
 for linux-um@lists.infradead.org; Wed, 09 Oct 2019 13:34:40 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iIC6n-0008D0-R5
 for linux-um@lists.infradead.org; Wed, 09 Oct 2019 13:34:30 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>) id 1iIC6l-0000aj-FC
 for linux-um@lists.infradead.org; Wed, 09 Oct 2019 14:34:29 +0100
To: linux-um@lists.infradead.org
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: RFC - make it possible to add iomem at runtime.
Message-ID: <841ebee1-8ef3-b4d8-ba60-925461ad6ee9@cambridgegreys.com>
Date: Wed, 9 Oct 2019 14:34:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_063438_797292_A7E19C7B 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi all,

I am looking at adding an af_xdp network transport. As a part of its 
initialization it needs to allocate a memory area to be shared for tx/rx 
buffers. I would like to do that without dipping into the "normal" UML 
memory pool if possible.

The only way to allocate this at present is to pass it as an iomem 
"region". This, however, is a bit dated and limited - it assumes an 
existing file on a block device which is added at boot and not changed 
after that. I cannot for example allocate at runtime and map that as iomem.

I was wondering if we can relax the "on-boot" only requirement and allow 
allocations to happen during runtime as the drivers get initialized. 
This will make implementing af_xdp and/or tpacket as well as various 
memifs as network transports much easier.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
