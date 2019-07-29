Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60C178D41
	for <lists+linux-um@lfdr.de>; Mon, 29 Jul 2019 15:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iW8WsdK+GV8dtVYuVooBUhwKceeO0Dd3pWp+PrdzXHU=; b=tY3bYhZ6+Fnpnd
	nMRtaxIkOWQ4KrgaPgiMClmxW3kdSf52UbdMJWKG4HeREyu5jz/EJ1Ve9FZziYA4XcP+0F5Kuy8gK
	9xIuePXivGVIrhzkGVLrO4aH3E3IyZ/2rf6F6AN/ao7Jsj/7R1K0p0vd1C7Atg566M+h+M+1wZ3Kw
	42zg52vw+s93td5ADs9DeDSa3mYB1JmDzfzxu2LahK1OjyFCfyngRN+fXxFyjHXfxn8v5oNE8LlnR
	NjNpclUauYz/Ug8e9SQ25iZlnX71JlhzP3KC0d0pzY5mqETi+/9Fm3cnLaiFNG962hYp5d/LCF+y1
	l5aNtq0u0Wk7/02Samag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs688-0002Kq-9a; Mon, 29 Jul 2019 13:56:00 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs685-0002J5-38
 for linux-um@lists.infradead.org; Mon, 29 Jul 2019 13:55:58 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 1911355A;
 Mon, 29 Jul 2019 13:55:55 +0000 (UTC)
Date: Mon, 29 Jul 2019 07:55:54 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH] Documentation: move Documentation/virtual to
 Documentation/virt
Message-ID: <20190729075554.46dfaaeb@lwn.net>
In-Reply-To: <be4ba4a7-a21b-8c56-4517-8886a754ff55@redhat.com>
References: <20190724072449.19599-1-hch@lst.de>
 <b9baabbb-9e9b-47cf-f5a8-ea42ba1ddc25@redhat.com>
 <20190724120005.31a990af@lwn.net>
 <be4ba4a7-a21b-8c56-4517-8886a754ff55@redhat.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_065557_147229_0A0201F0 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Sat, 27 Jul 2019 00:10:32 +0200
Paolo Bonzini <pbonzini@redhat.com> wrote:

> Does the userspace API
> cover only syscall or perhaps sysfs interfaces?   There are more API
> files (amd-memory-encryption.txt, cpuid.txt, halt-polling.txt msr.txt,
> ppc-pv.txt, s390-diag.txt) but, with the exception of
> amd-memory-encryption.txt and halt-polling.txt, they cover the
> emulated-hardware interfaces that KVM provides to virtual machines.

The user-space API certainly goes beyond system calls.  For sysfs, I
guess, the question would be whether a given knob is something that an
application would use (userspace-api) or something that a sysadmin would
want to tweak (admin-guide).

Thanks,

jon

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
