Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E5D7363D
	for <lists+linux-um@lfdr.de>; Wed, 24 Jul 2019 20:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AozkO144/fLuJbHVUqZHhXVmq4T6tYHx5wOm2Yi3UB8=; b=Re0Hx5QKG91Ds0
	bicC7Az1pwFjcW/Iv33usqg2fVH8WnYlVqhpS9EVJw8XELQXBXkJucZ2S/8L7h6kzoRfqK9UbhnjK
	3obS4lV2IaqWgNk8oHs+dLaW8bJZcaLhWSAWlAmaLGHkaHwptJhrJx/oY7msAm2Aesj8zyAa9/WAQ
	BlUSYs39wcpapuNKkOfCqfHX6hZ0v69iZIrUPpdIeH0AMBXtXpG7djYIp6gKKrKztWpvIHV03cU7n
	j6lNr90tbFddhSrtKE/ndjF4IjdXSlQSfv3TBgzymYZP/kh3QWq135grDpQX3OsoKcaMfTlwfNR0L
	SKzbsm0/2Kv9Vh860XGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLYn-0005cV-HT; Wed, 24 Jul 2019 18:00:17 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLYj-0005Ud-RP
 for linux-um@lists.infradead.org; Wed, 24 Jul 2019 18:00:15 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id BEBCD300;
 Wed, 24 Jul 2019 18:00:06 +0000 (UTC)
Date: Wed, 24 Jul 2019 12:00:05 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH] Documentation: move Documentation/virtual to
 Documentation/virt
Message-ID: <20190724120005.31a990af@lwn.net>
In-Reply-To: <b9baabbb-9e9b-47cf-f5a8-ea42ba1ddc25@redhat.com>
References: <20190724072449.19599-1-hch@lst.de>
 <b9baabbb-9e9b-47cf-f5a8-ea42ba1ddc25@redhat.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_110013_893884_ECCAA436 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org, richard@nod.at,
 jdike@addtoit.com, rkrcmar@redhat.com, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 24 Jul 2019 10:51:36 +0200
Paolo Bonzini <pbonzini@redhat.com> wrote:

> On 24/07/19 09:24, Christoph Hellwig wrote:
> > Renaming docs seems to be en vogue at the moment, so fix on of the
> > grossly misnamed directories.  We usually never use "virtual" as
> > a shortcut for virtualization in the kernel, but always virt,
> > as seen in the virt/ top-level directory.  Fix up the documentation
> > to match that.
> > 
> > Fixes: ed16648eb5b8 ("Move kvm, uml, and lguest subdirectories under a common "virtual" directory, I.E:")
> > Signed-off-by: Christoph Hellwig <hch@lst.de>  
> 
> Queued, thanks.  I can't count how many times I said "I really should
> rename that directory".

...and it's up to Linus before I even got a chance to look at it - one has
to be fast around here...:)

There's nothing wrong with this move, but it does miss the point of much
of the reorganization that has been going on in the docs tree.  It's not
just a matter of getting more pleasing names; the real idea is to create a
better, more reader-focused organization on kernel documentation as a
whole.  Documentation/virt still has the sort of confusion of audiences
that we're trying to fix:

 - kvm/api.txt pretty clearly belongs in the userspace-api book, rather
   than tossed in with:

 - kvm/review-checklist.txt, which belongs in the subsystem guide, if only
   we'd gotten around to creating it yet, or

 - kvm/mmu.txt, which is information for kernel developers, or

 - uml/UserModeLinux-HOWTO.txt, which belongs in the admin guide.

I suspect that organization is going to be one of the main issues to talk
about in Lisbon.  Meanwhile, I hope that this rename won't preclude
organizational work in the future.

Thanks,

jon

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
