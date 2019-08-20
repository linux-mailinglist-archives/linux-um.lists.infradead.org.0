Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B00A95854
	for <lists+linux-um@lfdr.de>; Tue, 20 Aug 2019 09:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MT6KZ3fqUTQNeV9BfjvVdTzDLH1zifQaE1vbV0u4zbA=; b=GZmKQZjgc/ZyRiA6L21MB4c/A
	LW07jZp500dz91Vun9GKPzePUJjmwvkQoknbDQMK/mmK2flZFv/mmwy42OUZHBjKt+twnHRXtXy4w
	RjqUf2K02CGocwy25bvu4HgrWdnTodWV+j5gN22Oo7WgVy4ugdx/lKyrmwsHJU7d2VWxUbC8TeiFe
	NLs9PynOppEozj5lcd/3uz3GiFq1WappGLUZQwRxihavqfZ//xxXxwCTDMnDJU+Wmplt+lX47JioR
	D5qMUQdbt/JMPh9Dg2emVIj//ZJvJO+bG7aFbRcGKI511WYWSUZlx8vHWGamqyhuXTC435lAnAK2a
	1G37leDLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyZn-0006Xs-QG; Tue, 20 Aug 2019 07:29:07 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyZk-0006WU-Ds
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 07:29:06 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hzyZd-0006Hb-7Z; Tue, 20 Aug 2019 07:28:57 +0000
Received: from [85.255.237.25] (helo=[192.168.43.240])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hzyZZ-0007Fh-PH; Tue, 20 Aug 2019 08:28:57 +0100
Subject: Re: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
To: Johannes Berg <johannes@sipsolutions.net>,
 "Geron, ErelX" <erelx.geron@intel.com>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <aa0e9645-add5-0169-95d0-e11dc36dcfaa@cambridgegreys.com>
 <57a7df50-0a87-a8a6-7cd7-e4aa2ef35f1d@cambridgegreys.com>
 <3ffcf614-ce0e-949c-b0dd-49551866f7cf@cambridgegreys.com>
 <55F06090E0044C4F985D9B415677B33F4E42700B@HASMSX110.ger.corp.intel.com>
 <fcf30eb6-b26c-f9d8-eb3f-c2475b8a298d@cambridgegreys.com>
 <7296b73881732bb4d4bd7cff2e5ad4f192f6eec7.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <6714a1cc-ff35-38e2-3538-f4f435e79b1b@cambridgegreys.com>
Date: Tue, 20 Aug 2019 08:28:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7296b73881732bb4d4bd7cff2e5ad4f192f6eec7.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_002904_596418_0D4D0DD3 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 20/08/2019 08:18, Johannes Berg wrote:
> On Thu, 2019-08-15 at 06:03 +0100, Anton Ivanov wrote:
>>
>> rc = vhost_user_get_config(vu_dev, offset, buf, len)
>>
>> if (unlikely(rc)) {
>> 	printk(KERN_ERR "vu get returned error %i", rc);
>> 	WARN();
>> }
> 
> Just for the record, IMHO that's better written as
> 
> rc = vhost_user_get_config(...);
> WARN(rc, "vu_get_config returned error %d\n", rc);
> 
> since that will embed the message/error code into the warning message.
> 
> johannes
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

Agree.

In either case, the current WARN() and WARN_ON in the patch should be 
revised to ensure that the error code is not lost.

-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
