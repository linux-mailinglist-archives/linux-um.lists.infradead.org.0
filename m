Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB2BB4A39
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 11:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mySe67K3fsau3NG/hVOMkyFIJoeyOvfkZhQb9Q98L2w=; b=kcPAwZRHZJOHZkCZKCeFZw9QQ
	S2A8uH5C3qdibQgMcwYv4/NGdqDZTP8Zp7NdqZAFwhayjn9t6/sXUhDU4hsD2By/6itjoqd4zV+2O
	WzkerqkFnn/IGtIme7WZatqW3wJeKPGM8FpcdB7KWxtB9EPBANPGsTXiHJxX17GiGQsbYM0h2ZYVn
	a1kupOmAkocUiY9DJ+13UVGCUuJbLYbrcM6jgPqhXFq72axdsFQeKkGFiEc+agpVGE9p96VZpKYyj
	XxysmJMYSv4Lo3sNfQKULUDQWI+HNeP0ff+VEnNqT0R9P8+PBYrFgVOsNGRETE2fr84rmjJGg+5Gy
	lBMNl0j5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9dS-0006Au-EU; Tue, 17 Sep 2019 09:18:58 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9d2-0005uB-JO
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 09:18:34 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iA9d0-0007Eg-KA; Tue, 17 Sep 2019 09:18:30 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iA9cy-0002vS-9H; Tue, 17 Sep 2019 10:18:30 +0100
Subject: Re: [RFC v2 2/2] um: implement time-travel=ext
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <1568671815-I895f9019593bd579566f14e5af9346e3c9b56f28@changeid>
 <1568671815-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
 <7583ac26d787ddf211473166136836f3472bf31e.camel@sipsolutions.net>
 <1dd9e658-a6cd-39dd-09c7-d68ebcd7078c@cambridgegreys.com>
 <bfbb45a544415446e38fb89c08bb234047affa2b.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <84277c4a-c2a9-2077-38e9-75bd9ce05ffa@cambridgegreys.com>
Date: Tue, 17 Sep 2019 10:18:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bfbb45a544415446e38fb89c08bb234047affa2b.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_021833_376628_E278BB6F 
X-CRM114-Status: GOOD (  12.76  )
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



On 17/09/2019 10:14, Johannes Berg wrote:
> On Tue, 2019-09-17 at 10:09 +0100, Anton Ivanov wrote:
> 
>> I hope you do not mind - will repeat my ask. Can we have a series off
>> let's say current 5.x with all patches ready for test/review.
> 
> Well, Richard applied almost everything. We also spoke about the "Fix
> LAST_IRQ usage" patch yesterday and he said he'd apply the one hunk of
> it that you didn't already fix.

Cool. I will wait for the PR then and start retesting vs DPDK/Bess.

> 
>> Some of your patches have 3-4 versions with a fixed version coming
>> nearly immediately thereafter and for some of them I am a bit lost which
>> versions should I test/review at present.
> 
> The only open patches now are on
> 
> https://patchwork.ozlabs.org/project/linux-um/list/
> 
> and I've just updated the state of my stuff there.

Ack. I will use what is there from now on. I was trying to keep on the 
mailing list and that did not quite work :)

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
