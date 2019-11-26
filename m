Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A87109A93
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 09:52:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kgy8ltpJfqS5SwleA7lr/sorAyQKKUGbGwVLSOqvmFc=; b=e5gdv3A77HDNID
	KaLWFsDqwE9gmS5IirHAfjUIxN5OeQ1Fihd/RRqBc/NfPUdDBEqMdpqOm4PtTObud6OGgsocqPLZQ
	+CHTnuG+88+gDPmzHYJW6Lfpa4ICGDCDBUfEXJsTKtBL+sPLQKYua8mBQpQPborHChwELjCvTXbq5
	QPrJOPDxyrBp78NBf2qJWWLHY4ssmnfPk7OYJUMbh/X1SZEW7/x/oNkLj4ZHkOat9j2MovTL3lO6Q
	ndTLBWsGMmnHO//X5v58m5OC0QwrfOB3ZbnxLavJFLiNSLTsaA57aiB0GcW3cZGaWf7EGQobPuW4v
	Ep3CHswagoTNTDptJO0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZWaS-0004lw-8R; Tue, 26 Nov 2019 08:52:44 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZWaP-0004lZ-Rs
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 08:52:43 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iZWaJ-00AyOm-Si; Tue, 26 Nov 2019 09:52:36 +0100
Message-ID: <4ebb14dc67ccb70543617ce1f7066f3f27cd11a8.camel@sipsolutions.net>
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
From: Johannes Berg <johannes@sipsolutions.net>
To: Richard Weinberger <richard@nod.at>
Date: Tue, 26 Nov 2019 09:52:34 +0100
In-Reply-To: <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
References: <cover.1573179553.git.thehajime@gmail.com>
 <1531c5f16a00b608635c9a62fa3951807075f950.1573179553.git.thehajime@gmail.com>
 <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
 <de90b04151bafee083727c9769833932788cf428.camel@sipsolutions.net>
 <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_005241_901560_3E011BB9 
X-CRM114-Status: GOOD (  10.89  )
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
Cc: linux-arch <linux-arch@vger.kernel.org>, cem <cem@freebsd.org>,
 tavi purdila <tavi.purdila@gmail.com>, linux-um <linux-um@lists.infradead.org>,
 retrage01 <retrage01@gmail.com>, liuyuan <liuyuan@google.com>,
 pscollins <pscollins@google.com>, linux-kernel-library@freelists.org,
 sigmaepsilon92 <sigmaepsilon92@gmail.com>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-11-26 at 09:50 +0100, Richard Weinberger wrote:

> > This isn't really a driver, this is virtio *device-side* code. Our
> > virtio_uml is *guest-side* code, and only speaks vhost-user.
> 
> Sorry, bad wording from my side. I meant with "driver" a kernel component.

Yeah, though arguably this isn't a kernel component, this is a
hypervisor component... We just link them both into the same binary due
to the way UML/LKL work.
 
> > I'm not sure how MMIO devices could possibly work though, does LKL
> > intercept MMIO somehow?
> 
> My point is that UML and LKL should try to do use the same concept/code
> regarding virtio. At the end of day both use virtual devices which use
> facilities from the host.
> If this is really not possible it needs a good explanation.

I think it isn't possible, unless you use vhost-user over a unix domain
socket internally to talk between the kernel (virtio_uml) and hypervisor
(device) components.

In virtio_uml, the device implementation is assumed to be a separate
process with a vhost-user connection. Here in LKL, the virtio device is
part of the "hypervisor", i.e. in the same process.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
