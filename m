Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C5D1182D8
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 09:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x1GbBgNXZVgnl2X9mjzVdaa85qBgSfqLV6aLAdoWt5Y=; b=ZiiMjhd6w1+5uTxWoKvCmlHWa
	DsHhZE7MWt5j7n/BBHnsmVoFdc1HCThC0yMt0fSEgmY/lkCWzSiXfmPERGszhI2R1WMY/M78a0Mtm
	eIxYqHViNf0lBvRncfNvCzedNYEijJxp4+G2Pt6u2zdypXygLaupKZtQG5YB4Cop6cjBV6PVOQ+PP
	dw5Z3zcREqb9OxHHExVNrZHt0RPRfUryY8kdoki3aoqOrQJi62/cAoY9xxU/MYEZ8Oejgx3LCCOI+
	1c8m6nrHSmoyKc4CYa+wj+6pL67xVx2XipDWLgnMvhixGBZcGLILtqCJi386WHqY44mw8TTqfIqxS
	mlw48bsqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebID-0006Kt-Gh; Tue, 10 Dec 2019 08:54:53 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebIA-0006K2-Rb
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 08:54:52 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iebI8-0001cm-5Y; Tue, 10 Dec 2019 08:54:48 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iebI5-0005XO-Rv; Tue, 10 Dec 2019 08:54:47 +0000
Subject: Re: [PATCH v1] uml: remove support for CONFIG_STATIC_LINK
To: Johannes Berg <johannes@sipsolutions.net>,
 Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>
References: <20191209230248.227508-1-brendanhiggins@google.com>
 <1406826345.111805.1575933346955.JavaMail.zimbra@nod.at>
 <2eecf4dc-eb96-859a-a015-1a4f388b57a2@cambridgegreys.com>
 <346757c8-c111-f6cf-21d2-b0bffd41b8a8@cambridgegreys.com>
 <7da5a054f533eabf2ffa110c236f011bf9d23954.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <f658f317-be54-ed75-8296-c373c2dcc697@cambridgegreys.com>
Date: Tue, 10 Dec 2019 08:54:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <7da5a054f533eabf2ffa110c236f011bf9d23954.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_005450_893985_5E210262 
X-CRM114-Status: GOOD (  15.94  )
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
Cc: Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, davidgow@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 10/12/2019 08:28, Johannes Berg wrote:
> On Tue, 2019-12-10 at 07:34 +0000, Anton Ivanov wrote:
> 
>>> Further to this - any properly written piece of networking code which
>>> uses the newer functions for name/service resolution will have the same
>>> problem. You can be static only if you do everything "manually" the old
>>> way.
>>
>> The offending piece of code is the glibc implementation of getaddrinfo().
>>
>> If you use it and link static the resulting binary is not really static.
> 
> However, this (getaddrinfo) really only applies if you use the vector
> network driver, if you e.g. use only virtio then this particular problem
> isn't present.
> 
> Note sure if we implicitly call getaddrinfo from libpcap, but again,
> that's just a single driver.
> 
> IOW, we could just make CONFIG_STATIC_LINK depend on !VECTOR && !PCAP?

+1

We also need to add VDE (wonder if anyone still uses that).

We will need to add XDP when I finish it. If memory servces me right, 
libelf or libbpf has the same lovely features as NSS.

This is not just NSS - it is creeping in with a lot of new libraries. 
Sometimes the libc guys fix that. For example, librt was like that when 
I started working on epoll and vector IO.

Sometimes (as in the NSS case) they don't. So the static build 
containing those will be broken and we are better off making it conflict 
for those options.

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
