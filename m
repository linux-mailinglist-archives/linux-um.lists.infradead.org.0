Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6477112CFA
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 14:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xWm743kdKW9FB/kTU0pesiY9+4jQWTXFsi3bTvWmGK4=; b=k7JlFurQd3fGPAIC+wqfHUyWZ
	ETOCcEzzw6314a2qiFv6TTPvoMxCAa1Ug14YBlSOWVgL2wlT2dwrcWmFR+W7NDDFYDgxdx1qDPFuH
	99TFNvb9gQ7m9Z6y5XjDdyR58vYeb50e+MhnlTyrwtikiPnlGiquoqsIXEM2seOaDP2zsJRiHkOA0
	tZ+JsCnnOHho1uZEku3wHdyz8mgBFRhGK2iOOAHgtM4w/hI7Hy+bdV184IMTiQABjiV+FR/e7B+yz
	buSbkoxm83Ak4igM9DlDYZ3VxCNOgazkfOFl/6eKwBQ0h1OsIPOgy+xrIfomE/vbOIPUCdwBXdtHY
	Ijn2T/ikQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icV6H-0007yr-Rh; Wed, 04 Dec 2019 13:53:53 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icV6F-0007yV-CN
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 13:53:53 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icV6C-00076x-0C; Wed, 04 Dec 2019 13:53:48 +0000
Received: from [192.168.4.1] by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icUgn-00010d-Pb; Wed, 04 Dec 2019 13:27:35 +0000
Subject: Re: I get 5.4 fail to start
To: Johannes Berg <johannes@sipsolutions.net>,
 Geert Uytterhoeven <geert@linux-m68k.org>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
 <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
 <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
 <CAMuHMdVrLPKwXxfyG3-Y5yUF9KPrTzosydxN1rkBFcJXsWi86Q@mail.gmail.com>
 <a9620d0a-31cd-f208-76de-63406496e4a0@cambridgegreys.com>
 <86abb3cc-1557-b5de-9c35-fdc67855030c@cambridgegreys.com>
 <6aaec3f72344246f10b0fb65a08efae5d258be9a.camel@sipsolutions.net>
 <0bb1c370-8a63-a2e8-afd6-6e95acf9efb2@cambridgegreys.com>
 <5aa2eb4fc9721dbd8a1ceaf8fc6710b666128f25.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <4913d030-84c0-0eb9-f8b2-c006a1dd0757@cambridgegreys.com>
Date: Wed, 4 Dec 2019 13:27:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <5aa2eb4fc9721dbd8a1ceaf8fc6710b666128f25.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_055351_418586_238C485A 
X-CRM114-Status: GOOD (  13.18  )
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 04/12/2019 13:00, Johannes Berg wrote:
> 
>>> Oops. Try to revert it? We don't _really_ need it right now. It did work
>>> on my system, but there's a good chance that there's something gcc/libc
>>> dependent in there.
>>
>> It tests out fine if I revert it.
>>
>> I still do not understand how and why it managed to produce this weird
>> effect with ptrace though.
> 
> I agree that's odd, but since we don't need it, let's revert it anyway
> for now? I won't really have time to investigate it much right now.
> 
> johannes
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 
Let's see if there are any ideas on what is the root cause.

I am happy to test patches.

This can be observed on Debian buster at least on AMD hosts (I do not 
have Intel or Via 64 bit handy to test).

I already sent my config to the mailing list yesterday. I am happy to 
resend it off-list to anyone willing to try to reproduce this.

A.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
