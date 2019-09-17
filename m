Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E5AB4FA1
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 15:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NdFTva5qA98NCI6qe1cvBRlj9nuz8KnGNnxxSfVTjwM=; b=QyMPb9ZS8rYYeglgMoN7+Rhsm
	ANTwkW1gaRqKg4d7CqbWaBPo0Cjt/qLa4GWGO3vKpnd6BuZuTZyG/lz9DDmmESVNjCOBbmJ3V0JxC
	ZsDfo81Z1JjvsKkr8/UIyrvFSuxVM/bf7A0kiPSlhO5Ufi2ahI528KDJnEUVfyz+PZzDtaNBOfXKh
	hCJHFk4l3CdImDXdyL+U8b9jcnMlxZMaPzysmZpyD+VIxyL+RBGv2UVa7kNeANnyZvcu/LD7Gxhwf
	mSx1h7KWuOitN1KaKL/nxBioxAIXN2bZmtSYd4kZJysfBldAe2lDVHdWhQUqf+/+tNf5/ngmY7rg5
	IZAfUoXQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADpP-0001sX-Me; Tue, 17 Sep 2019 13:47:35 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADpM-0001sA-A9
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 13:47:34 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iADpH-0007wo-0p; Tue, 17 Sep 2019 13:47:27 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iADpE-0003o6-LI; Tue, 17 Sep 2019 14:47:26 +0100
Subject: Re: [RFC v3 2/2] um: implement time-travel=ext
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190917132943.20102-1-johannes@sipsolutions.net>
 <1568726354-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
 <a8a2a033d8dc988c34d321425b7d0baa65b8df81.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <ddaf73a2-762a-91d2-40ab-d432e363d52b@kot-begemot.co.uk>
Date: Tue, 17 Sep 2019 14:47:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a8a2a033d8dc988c34d321425b7d0baa65b8df81.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_064732_355451_458FFBBA 
X-CRM114-Status: GOOD (  12.39  )
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


On 17/09/2019 14:35, Johannes Berg wrote:
> On Tue, 2019-09-17 at 15:29 +0200, Johannes Berg wrote:
>>   struct virtio_uml_vq_info {
>>   	int kick_fd, call_fd;
>>   	char name[32];
>> +#ifdef CONFIG_UML_TIME_TRAVEL_SUPPORT
>> +	struct virtqueue *vq;
>> +	vq_callback_t *callback;
>> +	struct time_travel_event defer;
>> +#endif
> There's a bit of a question here - should I put all these ifdefs?
>
> It *should* compile fine without them, and throw away the unused
> functions, but this structure will still be bigger, and the vq
> initialization will still be done. Everything else should go away since
> time_travel_mode is tested (and is defined to NONE) / empty inlines are
> called if CONFIG_UML_TIME_TRAVEL_SUPPORT isn't set.
>
> Though, come to think of it, I probably broke modular builds again here.

:)

>
> Anyway, I won't send a new version soon I think, comments welcome and
> I'll see how the qemu changes progress.

As I said - I am going to wait for Richard's next PR so I have a settled 
tree and I will get on with testing. I should have a bit more time then 
as well as ONS Europe will be out of the way. At the moment all of my 
time is being eaten by various k8 related stuff for that.

>
> johannes
>
>
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
>
-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
