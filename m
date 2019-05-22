Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D40526443
	for <lists+linux-um@lfdr.de>; Wed, 22 May 2019 15:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/z1GxWz9fz/k6iVxqMhszdaMrREF9j9jIkVCDTZD0m0=; b=GeEHvNkc98EIUZ
	W6PeIp31zjHJMQpDLPOrgwhwwL2B7ByPJQJbytd3VmUrF3ocRrCJvNbKS7nDRQu7Pzxl9RC7qNQIh
	/JtA1NNvzGbdll+q5ug9gWAlkega5q69I57c4+XQivZmLJ+h9JijfRO0WGHBPe6nm2T6BiHBREQV7
	TTdc+HJlZEQbRKJjRpOwSnurWP6CZkuU8mcUpgh6yln5tehk5nRAne6DM+ej8QNgWYdLvsXciNupU
	i4jJJSmPIOs/MAmqJVvfalwa1cH5wQNQT8xZIMdfMsRRxHxN84kO+ez5rfTBpvmvKkHmvEntWWq+U
	j32q5q7twk1rcuSy0iGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQtc-0006WQ-9l; Wed, 22 May 2019 13:03:04 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQtY-0006VI-JN
 for linux-um@lists.infradead.org; Wed, 22 May 2019 13:03:02 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hTQtE-0005go-Fa; Wed, 22 May 2019 15:02:40 +0200
Message-ID: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
Subject: custom virt-io support (in user-mode-linux)
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org,
 qemu-devel@nongnu.org
Date: Wed, 22 May 2019 15:02:38 +0200
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_060300_637275_7CBB3AD9 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

While my main interest is mostly in UML right now [1] I've CC'ed the
qemu and virtualization lists because something similar might actually
apply to other types of virtualization.

I'm thinking about adding virt-io support to UML, but the tricky part is
that while I want to use the virt-io basics (because it's a nice
interface from the 'inside'), I don't actually want the stock drivers
that are part of the kernel now (like virtio-net etc.) but rather
something that integrates with wifi (probably building on hwsim).

The 'inside' interfaces aren't really a problem - just have a specific
device ID for this, and then write a normal virtio kernel driver for it.

The 'outside' interfaces are where my thinking breaks down right now.

Looking at lkl, the outside is just all implemented in lkl as code that
gets linked to the library, so in UML terms it'd just be extra 'outside'
code like the timer handling or other netdev stuff we have today.
Looking at qemu, it's of course also implemented there, and then
interfaces with the real network, console abstraction, etc.

However, like I said above, I really need something very custom and not
likely to make it upstream to any project (because what point is that if
you cannot connect to the rest of the environment I'm building), so I'm
thinking that perhaps it should be possible to write an abstract
'outside' that lets you interact with it really from out-of-process?
Perhaps through some kind of shared memory segment? I think that gets
tricky with virt-io doing DMA (I think it does?) though, so that part
would have to be implemented directly and not out-of-process?

But really that's why I'm asking - is there a better way than to just
link the device-side virt-io code into the same binary (be it lkl lib,
uml binary, qemu binary)?

Thanks,
johannes

[1] Actually, I've considered using qemu, but it doesn't have
virtualized time and doesn't seem to support TSC virtualization. I guess
I could remove TSC from the guest CPU and add a virtualized HPET, but
I've yet to convince myself this works - on UML I made virtual time as a
prototype already:
https://patchwork.ozlabs.org/patch/1095814/
(though my real goal isn't to just skip time forward when the host goes
idle, it's to sync with other simulated components)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
