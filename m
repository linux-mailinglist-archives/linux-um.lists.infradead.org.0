Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BA910D892
	for <lists+linux-um@lfdr.de>; Fri, 29 Nov 2019 17:34:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RY+XYoQS9idmNWUygN2qhi+4zmHxHvc3RD83WJcbUFA=; b=oe45snTrHxiqro6vfusHcONGJ
	rVnRqhWi15/1Vz1eBHTfg7glZdDuLgy1GjY4xElPT0D1zKTxU1kI5VKp6iNILiaXR6ApCfF1VcXz0
	fDPvyOr70MA92ClFNnpyhOYuUytsWru8FYA6mKN3/3Ecz7PdCmKxlzYAIDqwBUaP7tVFVJawU1ZRG
	L85oURQLfFMIZrlzOxZO5FKK3Z/BzCrdiajkkrxuXNCIJANuE+qF/bsp/RteWZ+tj+5fhibSgXh2V
	T3TrsEfA5wG04ixvxH3Q1nkA/zKYAtzLPNBa5NYIirjZ69TGjVZ+GSoXCAysIA7eALENAx6fciIDZ
	IHihxCa8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iajDt-0002Sl-IQ; Fri, 29 Nov 2019 16:34:25 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iajDk-0002S8-7E
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 16:34:22 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iajDc-0002gG-Kz; Fri, 29 Nov 2019 16:34:08 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iajDa-0002wr-AD; Fri, 29 Nov 2019 16:34:08 +0000
Subject: Re: 64 bit time regression in recvmmsg()
To: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert@linux-m68k.org>
References: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
 <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
 <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <a5b9709d-b93b-46e1-ab18-a94ab921ccf7@cambridgegreys.com>
Date: Fri, 29 Nov 2019 16:34:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_083416_263491_D684683A 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 29/11/2019 15:17, Arnd Bergmann wrote:
> On Fri, Nov 29, 2019 at 4:05 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>> On Fri, Nov 29, 2019 at 3:34 PM Anton Ivanov
>> <anton.ivanov@cambridgegreys.com> wrote:
>>> Unfortunately, it looks like the recent year 2038 have broken
>>> compatibility for one particular syscall interface we use - recvmmsg.
>>>
>>> The host now occasionally returns -22 (EINVAL) and the only way I see
>>> for this to happen looking at the source is if when it gets something
>>> bogus as a timeout.
>>>
>>> I think I have eliminated all other possible sources for this error.
>>>
>>> The picture can be observed when using a 64 bit host 5.2 kernel on a
>>> Debian 64 bit buster userspace (glibc compiled vs 4.19 headers).
>>>
>>> The code as it is written at present retries and by sheer luck and
>>> perseverance it manages to work, but this needs to be fixed.
> 
> I only see a single call to recvmmsg() in arch/um, in uml_vector_recvmmsg(),
> and this passes a NULL timeout pointer, is this the one that broke or
> should I be looking at something else?
> 
> Do I understand you right that the regression is on a pure 64-bit system?

Yes.

64 bit host, Debian Buster with the stock 4.19 replaced by a 5.2.17 
kernel upgrade, 5.2 and 5.3 64 bit UML also running Debian Buster inside.

It sporadically produces -EINVAL (-22) from the recvmmsg.

I went through the allocation and deallocation of the actual mmsg 
several times to ensure it is not that.

IMHO it is the timespec conversion somewhere, but I cannot pinpoint the 
actual cause.

The kernel command line is:


/var/autofs/local/src/linux-work/linux/vmlinux mem=2048M umid=OPX \
ubd0=/var/autofs/local/UML/OPX-3.0-Work.img  \
vec0:transport=raw,ifname=pveth0,depth=128,gro=1,mac=92:9b:36:5e:38:69 \
root=/dev/ubda ro con=null con0=null,fd:2 con1=fd:0,fd:1

pveth0 is one half of a veth pair created by doing


ip link add lveth0 type veth peer name pveth0 && ifconfig pveth0 up

lveth0 is used for the host side.

Brgds,

> 
>       Arnd
> 

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
