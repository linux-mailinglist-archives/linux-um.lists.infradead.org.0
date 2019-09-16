Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C966B3720
	for <lists+linux-um@lfdr.de>; Mon, 16 Sep 2019 11:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WhE0uqMpM0TKatgkGTKC/LoYiTFSZzw1tAVQqYo+37c=; b=MGWzKZGbO6Ijw/
	7FjtYqkMaCB+o+QPWe53aqqgAjF6ztA9zRnVAIybpvknB/rR70D0251lHgNK/oIjKXVNGas+hG2uL
	yFezM1wFTFG/tYNbSgfptF8KPmK+jawDVnXhI2N4yoAN415Znhx7KMuqlGbVSkQkn7GeUXBIcah+j
	j+eLMsHOAlSWyWUybqs9TrX8ljPxGCscPaTp+q9ZuxXM6dARuxP/0+gglC1Y4kU8JduQbe/Y8XIMW
	f9DLXACmNQ2zkksWxgFvjyDhLhLGi61zKK8E/o5wTK9pVfQTLcud+JmvUK7hPAhCK1+WQRzczEfFG
	L7ZZAQ+VBQy+xY8RoI1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nIp-0004GZ-6e; Mon, 16 Sep 2019 09:28:11 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nIl-0004G1-Md
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 09:28:09 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i9nIe-00063Z-Na
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 11:28:00 +0200
Message-ID: <a216fef2119146de27168d0cf91ffa2f2b970e77.camel@sipsolutions.net>
Subject: [RFC] synchronised multi-machine time-travel APIs
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Mon, 16 Sep 2019 11:27:59 +0200
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_022807_742343_723760E2 
X-CRM114-Status: GOOD (  11.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi all,

I now have a working PoC for synchronized multi-machine time travel, in
which e.g. I can run the following test (output from one machine):

https://p.sipsolutions.net/d000cb894950dd02.txt


Note how the UML instance(s) observed ~10 minutes of time, but the
outside less than 2 seconds; note also that there's exactly a simulated
50ms network delay in my test.


Now, there's one reasonably big question I'm scratching my head over.

As you can see ("virtio_uml.device=/tmp/clock:1234 time-travel=virtio")
I've implemented the time synchronization as a virtio device (currently
with the ID 1234 just for experimentation).

This has some problems:

1) I'd need to get an ID assigned for properly publishing this; this is
   not really a problem in itself, it's just a question of effort.

2) The virtio/vhost-user framework is really not suited for synchronous
   calls, I have to jump quite some hoops to make this work, polling the
   return virtqueue's notifications, etc., and keep a lot of buffers and
   SG structures around etc.

3) There are some virtio hooks for general devices like virtio_net to
   make the simulation work (e.g. IRQs need to be deferred to the
   simulation time, not be done when signalled), and we want to use
   poll() instead of SIGIO in this case etc. This is all necessary,
   *however*, the "simtime" device that is responsible for the time
   synchronization needs to be *exempted* from all this handling, which
   again makes the code more complex than needed.

I'm not really afraid of (1) though it raises some thorny questions, but
(2) and (3) really make me question the value of this now that I
actually have it working.


What would you say if instead of using a virtio device for the time
synchronization, I was to add a (unix domain) socket-based protocol
instead? Either way it's a custom protocol, it's just a question of the
transport used (and the documentation being in the virtio spec vs. being
part of the Linux kernel.)

I can trivially adapt my code to that, and it should result in some
significant cleanup. This might even just let me go back to using SIGIO
for the virtio devices, since I don't really care if I don't need to use
it for the time scheduler.


Even the virtio device protocol I defined is as simple as having a few
messages containing a u64 op and u64 time value, and the operations are
basically

- REQUEST: update my calendar entry for the given time
- WAIT: wait for my next calendar entry and call back with RUN
- RUN: callback after WAIT, so I can continue running
- GET: return the current simulation clock to me
- UPDATE: send my current time to the simulation clock
- FREE_UNTIL: tells me that there's nothing else scheduled in the
              simulation until the time given, so I don't need to call
              REQUEST/WAIT for events - this is an optimisation, and the
              reason for the "UPDATE" message

That's basically it, and a very simple message protocol that also
carries an "ACK" message back (this was done kind of implicitly in
virtio) as a response would be entirely sufficient, and seems much
easier to implement.

Thoughts?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
