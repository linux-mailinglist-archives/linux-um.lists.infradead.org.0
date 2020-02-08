Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4774315635D
	for <lists+linux-um@lfdr.de>; Sat,  8 Feb 2020 08:57:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YBTGWJDobp7xBvgXTD4SOoOR6iTQnoilsIJcimp4cYE=; b=M1XkUoRtF+trqDfWrmTCHVoz6
	0WnvkNdbc403G69/0GOxU0EdUGj0/Q9tSXcLVRHMcMLd/H7hPjr+lpWneWVc6RfPDOBu9wa1aVU0v
	876hwEfYnzjbXcldkeCPoj6rJv6gmKF+xPVwX4Pka78uARHtwf17tOpFnPRo7p2rY/KJHqMP6Fal0
	ZW1MGg7kX4htkW6XOTxdlEVJL50Ukd4TjkilCfsyMXIaxIZQTxAWmsSQ0GGMT7yGvsherpMhXuoT5
	/P+V7A9Ho1qyqPzDNdfNdvJ1Krh4qf+n9Tex5lFJaF7J+I/cmq/3mkOhaTatTBnB7sLy3cG2O+Ab+
	yXMMO8FBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0KzI-0005tX-O5; Sat, 08 Feb 2020 07:57:12 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0KzF-0005tE-4Q
 for linux-um@lists.infradead.org; Sat, 08 Feb 2020 07:57:11 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j0Kz6-0006fj-Jw; Sat, 08 Feb 2020 07:57:02 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j0Kz4-0007GD-8F; Sat, 08 Feb 2020 07:57:00 +0000
Subject: Re: [PATCH v3] uml: make CONFIG_STATIC_LINK actually static
To: Brendan Higgins <brendanhiggins@google.com>, Jeff Dike
 <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 James McMechan <james_mcmechan@hotmail.com>
References: <20200124221401.210449-1-brendanhiggins@google.com>
 <CAFd5g44eznV-9cPf4JVpsJo93+R8YCqUwBqRf+PbjaRMizy1aQ@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <7f8b86f1-3759-c9ff-6216-a7104edb8030@cambridgegreys.com>
Date: Sat, 8 Feb 2020 07:56:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAFd5g44eznV-9cPf4JVpsJo93+R8YCqUwBqRf+PbjaRMizy1aQ@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_235709_175731_782B7838 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 08/02/2020 01:07, Brendan Higgins wrote:
> On Fri, Jan 24, 2020 at 2:14 PM Brendan Higgins
> <brendanhiggins@google.com> wrote:
>>
>> Currently, CONFIG_STATIC_LINK can be enabled with options which cannot
>> be statically linked, namely UML_NET_VECTOR, UML_NET_VDE, and
>> UML_NET_PCAP; this is because glibc tries to load NSS which does not
>> support being statically linked. So make CONFIG_STATIC_LINK depend on
>> !UML_NET_VECTOR && !UML_NET_VDE && !UML_NET_PCAP.
>>
>> Link: https://lore.kernel.org/lkml/f658f317-be54-ed75-8296-c373c2dcc697@cambridgegreys.com/#t
>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>> ---
> 
> Ping.

ICMP echo reply,

I thought I acked it :)

If not - apologies.

A.

> 
>>   arch/um/Kconfig         | 8 +++++++-
>>   arch/um/drivers/Kconfig | 3 +++
>>   2 files changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
>> index 0917f8443c285..28d62151fb2ed 100644
>> --- a/arch/um/Kconfig
>> +++ b/arch/um/Kconfig
>> @@ -62,9 +62,12 @@ config NR_CPUS
>>
>>   source "arch/$(HEADER_ARCH)/um/Kconfig"
>>
>> +config FORBID_STATIC_LINK
>> +       bool
>> +
>>   config STATIC_LINK
>>          bool "Force a static link"
>> -       default n
>> +       depends on !FORBID_STATIC_LINK
>>          help
>>            This option gives you the ability to force a static link of UML.
>>            Normally, UML is linked as a shared binary.  This is inconvenient for
>> @@ -73,6 +76,9 @@ config STATIC_LINK
>>            Additionally, this option enables using higher memory spaces (up to
>>            2.75G) for UML.
>>
>> +         NOTE: This option is incompatible with some networking features which
>> +         depend on features that require being dynamically loaded (like NSS).
>> +
>>   config LD_SCRIPT_STATIC
>>          bool
>>          default y
>> diff --git a/arch/um/drivers/Kconfig b/arch/um/drivers/Kconfig
>> index 72d4170557820..9160ead56e33c 100644
>> --- a/arch/um/drivers/Kconfig
>> +++ b/arch/um/drivers/Kconfig
>> @@ -234,6 +234,7 @@ config UML_NET_DAEMON
>>   config UML_NET_VECTOR
>>          bool "Vector I/O high performance network devices"
>>          depends on UML_NET
>> +       select FORBID_STATIC_LINK
>>          help
>>          This User-Mode Linux network driver uses multi-message send
>>          and receive functions. The host running the UML guest must have
>> @@ -245,6 +246,7 @@ config UML_NET_VECTOR
>>   config UML_NET_VDE
>>          bool "VDE transport (obsolete)"
>>          depends on UML_NET
>> +       select FORBID_STATIC_LINK
>>          help
>>          This User-Mode Linux network transport allows one or more running
>>          UMLs on a single host to communicate with each other and also
>> @@ -292,6 +294,7 @@ config UML_NET_MCAST
>>   config UML_NET_PCAP
>>          bool "pcap transport (obsolete)"
>>          depends on UML_NET
>> +       select FORBID_STATIC_LINK
>>          help
>>          The pcap transport makes a pcap packet stream on the host look
>>          like an ethernet device inside UML.  This is useful for making
>> --
>> 2.25.0.341.g760bfbb309-goog
>>
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
