Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E4627F8B
	for <lists+linux-um@lfdr.de>; Thu, 23 May 2019 16:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQZaYTzYs8vtV1Jm6BKSn7Bn4WONs0ynoDZ4kM3d9ZU=; b=thHUVoVUmYUtuy
	DDplfiOt1hqKm6OL92w5kvECnT+qd2g3cvQRyQcOi4Jb+OKRk4ZpcHX0DM1FlrQjtfAg4CpyPS7bx
	rAUYPyLBD9jf+mgqEV70FKsX8uPcSYMnBFiRaGulzNq+ooe4V8fiF2jDoFy3fbd5IINQB6ZeFt+dh
	rwFUJ41AKTjIGdA4jwoRXoiVOU5/GPKgxTPgT+6XOrIo9E6Yl81cNHgD9VrD9Wk7djRh6n32HOx6+
	OfjrteoBoWO4Y70bUw6JXUbZHup1oKCaHkc41pTG+4scKfUnPqre35VwBrApLk37RsP6Tn+y58DER
	a1hByanKydOndurERMWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTofq-00016q-S3; Thu, 23 May 2019 14:26:26 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTofO-0000Ta-Fq
 for linux-um@lists.infradead.org; Thu, 23 May 2019 14:26:02 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hTofJ-00042W-Kh; Thu, 23 May 2019 16:25:53 +0200
Message-ID: <41d64b8971a097d1568f947517b45d09c156ccc8.camel@sipsolutions.net>
Subject: Re: [Qemu-devel] custom virt-io support (in user-mode-linux)
From: Johannes Berg <johannes@sipsolutions.net>
To: Stefan Hajnoczi <stefanha@gmail.com>
Date: Thu, 23 May 2019 16:25:52 +0200
In-Reply-To: <20190523115950.GH26632@stefanha-x1.localdomain>
 (sfid-20190523_135953_660617_C54B8FAF)
References: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
 <20190523115950.GH26632@stefanha-x1.localdomain>
 (sfid-20190523_135953_660617_C54B8FAF)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_072558_860612_187DB365 
X-CRM114-Status: GOOD (  14.87  )
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
Cc: ido@wizery.com, linux-um@lists.infradead.org, qemu-devel@nongnu.org,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Stefan,

> Check out vhost-user.  It's a protocol for running a subset of a VIRTIO
> device's emulation in a separate process (usually just the data plane
> with the PCI emulation and other configuration/setup still handled by
> QEMU).

Yes, I think that's basically what I'm looking for.

> vhost-user uses a UNIX domain socket to pass file descriptors to shared
> memory regions.  This way the vhost-user device backend process has
> access to guest RAM.
> 
> This would be quite different for UML since my understanding is you
> don't have guest RAM but actual host Linux processes, but vhost-user
> might still give you ideas:
> https://git.qemu.org/?p=qemu.git;a=blob_plain;f=docs/interop/vhost-user.rst;hb=HEAD

I guess it could still be implemented. Do you know how qemu actually
creates the shared memory region though? It's normal inside kernel
memory, no?

Ah, no, I see ... you have to give -mem-path and then the entire guest
memory isn't allocated as anonymous memory but from a file, and then you
can pass a descriptor to that file and effectively the client/slave of
vhost-user can access the whole guest's memory. Interesting. Next you're
going to want an IOMMU there, not just fake one, to protect against
hostile virt-user client? Not that I care :-)

UML in fact already maps all of its memory as a file (see arch/um/
create_mem_file()), so this part is easy.

What confused me at first is how all this talks about the ioctl()
interface, but I think I understand now - it's basically replacing
ioctl() with talking to a client.

So ultimately, it would actually seem "pretty simple".

Not sure I understand why there's all this stuff about multiple FDs,
once you have access to the guest's memory, why do you still need a
second (or more) FDs?

Also, not sure I understand how the client is started?

Once we have a connection, I guess as a client I'd at the very least
have to handle
 * VHOST_USER_GET_FEATURES and reply with the features, obviously, which
   is in this case just VHOST_USER_F_PROTOCOL_FEATURES?

 * VHOST_USER_SET_FEATURES - not sure, what would that do? the master
   sends VHOST_USER_GET_PROTOCOL_FEATURES which is with this feature
   bit? Especially since it says: "Slave that reported
   VHOST_USER_F_PROTOCOL_FEATURES must support this message even before
   VHOST_USER_SET_FEATURES was called."

 * VHOST_USER_GET_PROTOCOL_FEATURES - looking at the list, most I don't
   really need here, but OK

 * VHOST_USER_SET_OWNER - ??

 * VHOST_USER_RESET_OWNER - ignore

 * VHOST_USER_SET_MEM_TABLE - store the data/FDs for later use, I guess

 * VHOST_USER_SET_VRING_NUM - store the data for later use
 * VHOST_USER_SET_VRING_ADDR - dito
 * VHOST_USER_SET_VRING_BASE - dito
 * VHOST_USER_SET_VRING_KICK - start epoll on the FD (assuming there is
                               one, give up if not?) - well, if ring is
                               enabled?
 * VHOST_USER_SET_VRING_CALL - ...

I guess there might be better documentation on the ioctl interfaces?


Do you know if there's a sample client/server somewhere?

I guess we should implement the server in UML like it is in QEMU (unless
we can figure out how to virtualize the time with HPET or something in
QEMU) and then have our client and kernel driver for it...


Thanks a lot!

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
