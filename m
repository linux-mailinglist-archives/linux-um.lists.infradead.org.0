Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250F215A778
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 12:15:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uA1Vzm0l9hpc6Y9qA/7IeDumShC/DRE6qXKmqGe1sQI=; b=MWEJxeWxMlzVFbYMsrOu0AKsp
	BjPw/xAXxf9iztKb9VD9Fja3YOt2FvYDSd31iyoD22FmsrsLjC/vY8WJz67Th2ZnAsKkJJGbW6cqb
	9Olc7wclCht/2WRChukY1tyQ6s8TKazXF9VhRJigoWMShCL9bLWX9Md7IJ3mdsZdOHotef6qyjf32
	rXGL4fhZgF1t9S98BNQ4pjbRp0rrA++XlYTeENtv55S1mQ/PmWz+MP+9rd2nOf2ivJCLvqNyxz3jk
	wlKUlKxNUCWFrRv8bYMOij3Yd0uKVcS9kpfmFeL2NsfU9HFQVfVcLPH3naY7zZmlDmfs3tZUEAdLh
	LZVw38BiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pzS-0004qo-1V; Wed, 12 Feb 2020 11:15:34 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pzO-0004gz-Kf
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 11:15:32 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1j1pzJ-00045G-Sa; Wed, 12 Feb 2020 11:15:26 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1j1pzH-00026D-J7; Wed, 12 Feb 2020 11:15:25 +0000
Subject: Re: Documentation for UML Vector network
To: rrs@researchut.com, linux-um@lists.infradead.org
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
Date: Wed, 12 Feb 2020 11:15:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_031530_677490_25A6ED0C 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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



On 12/02/2020 10:38, Ritesh Raj Sarraf wrote:
> Hi,
> 
> I see in the latest changes for Linux in Linus's tree, that the
> previous networking modes have been marked obsolete.
> 
> Is there any official documentation on how to use the new Vector
> network in UML ? Or does it stand transparent to the users ?
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 
1. A patch to make it transparent replacement for whatever is possible from the old transports is in the queue

2. I was going to spend most of next week to rewrite the bits and pieces from my website on how to use it and incorporate them into the official docs and submit them as a patch to Documentation.

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
