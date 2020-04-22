Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3C11B46A8
	for <lists+linux-um@lfdr.de>; Wed, 22 Apr 2020 15:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cco+TGyAEq99JsyN68pmrJV3ayvPFoAeLJ809CtRp5M=; b=Jy3M02+pF0pi+h10U5UyGwC7U
	ATZOpeFizOA6RgtLxNBK0gcx4c+Kb/pdZgSX9hEANyMg5PAB2zpKCF7HZJPaOuah7pTdlAk73R96R
	ZE+R9TfLxIxiON0YvxzGUBLXc2UsFrAjmXB3xzpkUucRr4pVcS03JKhV+gtwL6CtoaRca5mvHcscj
	lyNC/UrHhJSBN53iaHCGvbg7QFLNujKi/KbSa26kSpcwTz0gYZdZQ7vG9rSZfe1hlW5aSNpEvaXls
	WFVIIvxivNpTxtlAvpAg4mV271uSJGSrQI8POg1V+kVpbDCqpVMzPZwy7vMWpEuj1+wrmluvEimmq
	Z0GL8VCSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRFp6-0001Rl-LO; Wed, 22 Apr 2020 13:53:56 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRFp3-0001Qn-Lw
 for linux-um@lists.infradead.org; Wed, 22 Apr 2020 13:53:55 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jRFp1-0008E7-S8; Wed, 22 Apr 2020 13:53:52 +0000
Received: from [192.168.4.1] by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jRFoz-00006b-AW; Wed, 22 Apr 2020 14:53:51 +0100
Subject: Re: UML HowTo rewrite
To: Johannes Berg <johannes@sipsolutions.net>
References: <7fbb1a33-5fed-6c61-6c2a-ca47932669a7@cambridgegreys.com>
 <6d00f01fa378b5cb9273e05ab90adc58f6c6ab8f.camel@sipsolutions.net>
 <1a7a4aa7-aa01-9747-202a-b93ffb5c657a@cambridgegreys.com>
 <cbf1b59a-e6d5-5870-76dc-60455fb179fa@cambridgegreys.com>
 <28e23bdd281be6368ed75883ca73ea57de4faaad.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <6fd55233-8fd0-4ec3-7481-b303f79bda8d@cambridgegreys.com>
Date: Wed, 22 Apr 2020 14:53:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <28e23bdd281be6368ed75883ca73ea57de4faaad.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_065353_717790_1206CB56 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-um@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 22/04/2020 14:47, Johannes Berg wrote:
> On Wed, 2020-04-22 at 14:30 +0100, Anton Ivanov wrote:
>> The initial content is more or less in place.
> Great. I actually saw it (you posted a link to a PR before) and pointed
> a colleague who was interested in what I'm doing with all my time-travel
> simulation and UML to it. I told him feedback would surely be welcome :)
>
>> Comments and PRs to change/add things are welcome.
>>
>> https://github.com/kot-begemot-uk/uml-howto-v2
> Are you going to submit it to the Documentation/ folder in the kernel?

Yes. A couple of revisions, reviews and PRs first though :)

>
> I'd much prefer to contribute changes to the kernel after it lands
> there, otherwise I'd have to jump through (legal) approval hoops ...

Easier to deal with the early "high flux" change rate when it is out of 
tree.

>
>
> Btw, one thing that I think is useful to document is how to run
> *without* an image - you don't need a full OS inside. Most of my use
> cases just run something like
>
> ./linux mem=256M root=none hostfs=/ rootfstype=hostfs rootflags=/ init=/some/script.sh

hostfs and hostfs use as root is in the Advanced section.

As I do not use it, can you review it (it is mostly copied from the old 
howto).

IMHO hostfs can be significantly improved by using inotify. It has been 
on my TODO list for a while now.

>
> Would be a worthwhile addition, I think?
>
> Anyway, like I said above, I'm happy to contribute to this but would
> prefer if it's in the kernel first.

I have a little bit more content to add to the Developing section, but as I said - I am happy to do it after we add it to the tree if everyone thinks that this is better.

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
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
