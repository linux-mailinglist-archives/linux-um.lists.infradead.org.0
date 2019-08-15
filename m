Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251558E475
	for <lists+linux-um@lfdr.de>; Thu, 15 Aug 2019 07:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S/C1eJe3ZcwlXzhmS4ZaW4WujJ6V2jZgt4Ajjmyqkn4=; b=ro2JKWdO906KrfFmsYe+TejFe
	7HdR3LInEQO2RbXOQ5v89lumCmpxbYAK0ydC36+/HLhnlL14bo/q8Hx6MxkdOz2meJpaETSWKPKTx
	poYVcQXxwyYbo+fmQ7egfj2Pkhsycoy9xXYRRr78/wG0LbuTjQPilGNJoRBriSzw4d8+jkTw/gS4f
	fPTgfrkWhKazAPpM9XgUjp2kSKMLaAeO25APCr1s/gWx1ZtBo/W3+eREnTqiU+zjNAnDncYiTot7N
	XpGHiTnKT6aIJPyvNfw9PUmLCOQfcAqg5+1yUrR7nK9YsciHswS+Yns8CLwKBk3x+LziszETPmC/m
	uJYtn95TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8Oc-0003Ej-Cr; Thu, 15 Aug 2019 05:33:58 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8OY-0003EM-U9
 for linux-um@lists.infradead.org; Thu, 15 Aug 2019 05:33:56 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hy7vV-0008Qn-3E; Thu, 15 Aug 2019 05:03:53 +0000
Received: from [151.251.252.245] (helo=[192.168.65.83])
 by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hy7vS-0004VV-8V; Thu, 15 Aug 2019 06:03:52 +0100
Subject: Re: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
To: "Geron, ErelX" <erelx.geron@intel.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <aa0e9645-add5-0169-95d0-e11dc36dcfaa@cambridgegreys.com>
 <57a7df50-0a87-a8a6-7cd7-e4aa2ef35f1d@cambridgegreys.com>
 <3ffcf614-ce0e-949c-b0dd-49551866f7cf@cambridgegreys.com>
 <55F06090E0044C4F985D9B415677B33F4E42700B@HASMSX110.ger.corp.intel.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys Limited
Message-ID: <fcf30eb6-b26c-f9d8-eb3f-c2475b8a298d@cambridgegreys.com>
Date: Thu, 15 Aug 2019 06:03:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <55F06090E0044C4F985D9B415677B33F4E42700B@HASMSX110.ger.corp.intel.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_223355_106606_9CC1ADE5 
X-CRM114-Status: GOOD (  16.43  )
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



On 14/08/2019 14:38, Geron, ErelX wrote:
> Our config is based on defconfig.
> Added CONFIG_VIRTIO_UML, CONFIG_VIRTIO_BLK and CONFIG_VIRTIO_NET.
> 
> Please note that we have two working examples:
> 
> One example is with qemu/contrib/vhost-user-blk:
> 
> # Prepare disk file
> truncate -s 5120 my_file
> # Run server
> ./vhost-user-blk -b my_file -s /tmp/my_blk
> # Run uml
> ./linux ... virtio_uml.device=/tmp/my_blk:2
> 
> And another example is with snabb:
> 
> # Run server with two interconnected interfaces
> # (need to add a vm2vm program, as shown at: https://github.com/snabbco/snabb/issues/1119)
> ./snabb vm2vm /tmp/first /tmp/second
> # Run uml
> ./linux ... virtio_uml.device=/tmp/first:1
> ./linux ... virtio_uml.device=/tmp/second:1

I tried with BESS which for vhost-user is more or less DPDK "as is".

The config used was:

PMDPort(name="in0", pci="01:00.1")
PMDPort(name='u0', vdev="eth_vhost0,iface=/tmp/uml-test-vhost.sock")
PortInc(port="in0") -> PortOut(port="u0")
PortInc(port="u0") -> PortOut(port="in0")

This wires back to back a port on an e1000e and vhost-user instance.

Something in the vhost-user negotiation fails and the way the code is 
written at present the nature of the error is lost.

For example, in vu_get()

It does WARN_ON(vhost_user_get_config(vu_dev, offset, buf, len));

It should be something along the lines of

rc = vhost_user_get_config(vu_dev, offset, buf, len)

if (unlikely(rc)) {
	printk(KERN_ERR "vu get returned error %i", rc);
	WARN();
}

There are other places where IMO it will need a similar substitution.

Brgds,

A.


> 
> ---------------------------------------------------------------------
> A member of the Intel Corporation group of companies
> 
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
> 

-- 
Anton R. Ivanov

Cambridge Greys Limited, England and Wales company No 10273661
http://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
