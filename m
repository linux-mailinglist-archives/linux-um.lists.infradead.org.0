Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D187D1724D
	for <lists+linux-um@lfdr.de>; Wed,  8 May 2019 09:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ORp5Vn6ohsbN6fGHLiRGr0/Bn1mCyKAgCPbsuPMXsfM=; b=dJfAAxSlv9/pZG8Cj3TNBC4vV
	H+C1hk7t21slEETmABLsvDE92dee2gBsjQbTQHFEN8OkYcI16aHi4tqrsvd5R9OCyaAl9FktEuXUy
	gaZMqvCj5HcU14TjOi3ElCSDby1YC7kJfC9YoefqTUkO8XAnIKgqtQXJEpocGGak3oaazz59OtxVP
	wnNbmmvPAsLKG9Ep+w1XbEpcwD4nQNuqbUJxeGFV/KVeUEskjkKDEwqNJLRao7YWsdDNMuy/+pa4t
	HkVZE3T88M6Xmi0VqRI9/iS4hZgqi/yeBmIKJRAMfEh1AQFMr6hgN8qtoH77LGG1Cd1Cq15YYNtxy
	k8JRyExyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGhj-0008LJ-CF; Wed, 08 May 2019 07:09:27 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGhf-0008KC-TA
 for linux-um@lists.infradead.org; Wed, 08 May 2019 07:09:25 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hOGhU-0004P0-0x; Wed, 08 May 2019 07:09:12 +0000
Received: from erebus.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hOGhM-00080l-AJ; Wed, 08 May 2019 08:09:09 +0100
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
To: Richard Weinberger <richard.weinberger@gmail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
 <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
Date: Wed, 8 May 2019 08:09:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_000924_075162_32A2206F 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 07/05/2019 22:26, Richard Weinberger wrote:
> On Thu, Apr 11, 2019 at 11:50 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>>
>> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>>
>> Setting a chip for an interrupt marks it as allocated. Since UM doesn't
>> support dynamic interrupt numbers (yet), it means we cannot simply
>> increase NR_IRQS and then use the free irqs between LAST_IRQ and NR_IRQS
>> with gpio-mockup or iio testing drivers as irq_alloc_descs() will fail
>> after not being able to neither find an unallocated range of interrupts
>> nor expand the range.
>>
>> Only call irq_set_chip_and_handler() for irqs until LAST_IRQ.
>>
>> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>> Reviewed-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
>> Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> 
> Just noticed that this triggers the following errors while bootup:
> Trying to reregister IRQ 11 FD 8 TYPE 0 ID           (null)
> write_sigio_irq : um_request_irq failed, err = -16
> Trying to reregister IRQ 11 FD 8 TYPE 0 ID           (null)
> write_sigio_irq : um_request_irq failed, err = -16
> VFS: Mounted root (hostfs filesystem) readonly on
> 
> Can you please check?
> This patch is already queued in -next. So we need to decide whether to
> revert or fix it now.
> 
I am looking at it. It passed tests in my case (I did the usual round).

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
