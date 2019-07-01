Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3145F264F5
	for <lists+linux-um@lfdr.de>; Wed, 22 May 2019 15:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CyfXaL28pc9eETuoZKyZXGwVgQc0J74ZPGkpYJIOOU=; b=hyXnG9SsvfcRvF
	ZBGP0qT195M38ROd5xH9wIZo6ewzeBAA9WrQ/LHrY18TBzjN6+Rjb/DAhJUb8iMp6loQf5yr/R8ru
	AZXfms5OLVonxCFJlN8Mq6/1ZkLRDBoy3BCbV2U8DWwmmHj6We4PDigHQ+0btzUBlLv4mwIvEQvho
	7zAgfjBgx8Agwxw6lDi+407mybsn2svmrIaf6gcakh7iWCxLxW+iz5DlohIaqOjMlPQq3ZeidlORR
	Um2MOju7ur9gB/NoiEF8RxRVetAON/jfEGMOORkwQLd74KYgaphHQ3rC/wcUATEbmUTLtu6pZVo6t
	LlbU+GES3MoEROe0b69Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRa6-00077q-8r; Wed, 22 May 2019 13:46:58 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRZy-00076V-J1
 for linux-um@lists.infradead.org; Wed, 22 May 2019 13:46:56 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hTRZw-0004Ak-Sb; Wed, 22 May 2019 15:46:48 +0200
Message-ID: <8b30e5cea2692d62fd7f486fc98effdb589a1412.camel@sipsolutions.net>
Subject: Re: custom virt-io support (in user-mode-linux)
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org, 
 qemu-devel@nongnu.org
Date: Wed, 22 May 2019 15:46:47 +0200
In-Reply-To: <ddeee710-d546-ff05-5c53-991a7d807067@kot-begemot.co.uk>
References: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
 <ddeee710-d546-ff05-5c53-991a7d807067@kot-begemot.co.uk>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_064655_033957_9200A432 
X-CRM114-Status: GOOD (  15.02  )
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

Hi Anton,

> > I'm thinking about adding virt-io support to UML, but the tricky part is
> > that while I want to use the virt-io basics (because it's a nice
> > interface from the 'inside'), I don't actually want the stock drivers
> > that are part of the kernel now (like virtio-net etc.) but rather
> > something that integrates with wifi (probably building on hwsim).

> I have looked at using virtio semantics in UML in the past around the 
> point when I wanted to make the recvmmsg/sendmmsg vector drivers common 
> in UML and QEMU. It is certainly possible,
> 
> I went for the native approach at the end though.

Hmm. I'm not sure what you mean by either :-)

Is there any commonality between the vector drivers? I can't see how
that'd work without a bus abstraction (like virtio) in qemu? I mean, the
kernel driver just calls uml_vector_sendmmsg(), which I'd say belongs
more to the 'outside world', but that can't really be done in qemu?

Ok, I guess then I see what you mean by 'native' though.

Similarly, of course, I can implement arbitrary virt-io devices - just
the kernel side doesn't call a function like uml_vector_sendmmsg()
directly, but instead the virt-io model, and the model calls the
function, which essentially is the same just with a (convenient)
abstraction layer.

But this leaves the fundamental fact the model code ("vector_user.c" or
a similar "virtio_user.c") is still part of the build.

I guess what I'm thinking is have something like "virtio_user_rpc.c"
that uses some appropriate RPC to interact with the real model. IOW,
rather than having all the model-specific logic actually be here (like
vector_user.c actually knows how to send network packets over a real
socket fd), try to call out to some RPC that contains the real model.

Now that I thought about it further, I guess my question boils down to
"did anyone ever think about doing RPC for Virt-IO instead of putting
the entire device model into the hypervisor/emulator/...".

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
