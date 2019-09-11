Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB01AFDC7
	for <lists+linux-um@lfdr.de>; Wed, 11 Sep 2019 15:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bjUSXh2FxMngfq2VAPw5pwbz8Ej4kth7GkoLDuGUEKc=; b=dmp6uuT+W3VAYWTSZ4LSu4kIg
	HD0EfByn5XgVs9kV7TlXNeNrssxIZLOyIfCeyYaGcgvSyKe4fEAN0znuDgk/Y9lWusi4LRB/gBXdm
	ZvWtqYF6pM7ZEj2lYx0rmTwKYO15lXhGby4QU6ZqUnTQjCxZhg+LImKCUxlHTMFzHHrnuBMgSWWU1
	QxaNVYCorjsIheWFhPJZNjksLdYvowXT7PHCwNLioqkpV0RUvgaMoQ0E3/RXT4eeIlbEEKBCoZjAq
	iA/buMVh6HXsa/RH7lQMgz+kiCt73QSOb2EoyrG8DK4RzxAIBp1nRTn3uHoWJ8OkTm9FmDEJ3ykza
	BeH7jVfwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82kr-00042E-S8; Wed, 11 Sep 2019 13:33:53 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82kn-00041b-Kf
 for linux-um@lists.infradead.org; Wed, 11 Sep 2019 13:33:51 +0000
Received: from tun5.smaug.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i82ke-0007NI-Hl; Wed, 11 Sep 2019 13:33:41 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i82kc-0001yL-5N; Wed, 11 Sep 2019 14:33:40 +0100
Subject: Re: [PATCH v5 0/5] um: virtio support
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190911125122.20772-1-johannes@sipsolutions.net>
 <2b6ac17c16113892e27e82df9802264ef934d4d8.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <3ccfa0c9-7b5c-6135-693e-a9700dfdd19f@kot-begemot.co.uk>
Date: Wed, 11 Sep 2019 14:33:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2b6ac17c16113892e27e82df9802264ef934d4d8.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_063349_713908_184292D3 
X-CRM114-Status: GOOD (  12.17  )
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



On 11/09/2019 14:18, Johannes Berg wrote:
> On Wed, 2019-09-11 at 14:51 +0200, Johannes Berg wrote:
>> Yet another respin, with a small fix in the virtio platform data
>> freeing code.
> 
> I'm getting to the "tiny little fixes" territory, so would appreciate if
> you could give it a spin again.
> 
> I think quite possibly much of the issues you saw were just from the
> uninitialized variable we had in one of the early versions, and
> regardless of that the error messages should be more verbose now.
> 
> johannes
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 


I will try to find it a timeslot later today or failing that tomorrow 
morning.

Brhds



-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
