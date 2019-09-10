Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D24AEC56
	for <lists+linux-um@lfdr.de>; Tue, 10 Sep 2019 15:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZLmhZjVdMGkuNLisrYBrkHir3208zdjLyf7hr4yxEs=; b=GHWUiDXeNhuX5g
	l7F8+isp4mOB5+we6Sqz+dRlIhDZrdVEhoJ6GCfpxmnTMXZelm2MPda6agoV5ch3NgpTwgaS5C1yU
	26+8+aoqpp7hROQ6INRZiR+wSTDAw0GB/0qhQbhBCvinew9xgNH4tf9L7U/c1XNRK4rBQaC7JjtGh
	5p28F4htVqxWPrLeGtXWNTdBlp6UEQ3EnGZaZugnqZrKYfocP6bNUUJrjVL+0/byjEuNDmUBfME5u
	3XSASBpJQzQ5bieVuwEMpZ1TJ05g1FjJ7I78yfetryLkIMTX1yc+wGoFIHvYEALEm2Oe2z7rf/pII
	UX2qhKm9kyX2rMLCEPSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gZf-0001F4-1h; Tue, 10 Sep 2019 13:52:51 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gZc-0001EH-FC
 for linux-um@lists.infradead.org; Tue, 10 Sep 2019 13:52:49 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i7gZb-0006n6-7H
 for linux-um@lists.infradead.org; Tue, 10 Sep 2019 15:52:47 +0200
Message-ID: <f4578c1983a939afce44a731a493adce098a178a.camel@sipsolutions.net>
Subject: Re: [PATCH v4 1/5] um: don't use generic barrier.h
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Tue, 10 Sep 2019 15:52:45 +0200
In-Reply-To: <1568123461-I95235a4f9e6929241afd5150f1ceceb45f5e28af@changeid>
References: <20190910135129.23095-1-johannes@sipsolutions.net>
 <1568123461-I95235a4f9e6929241afd5150f1ceceb45f5e28af@changeid>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_065248_505994_3593E6A3 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
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

On Tue, 2019-09-10 at 15:51 +0200, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> UML has its own platform-specific barrier.h under arch/x86/um/,
> which should get used. Fix the build system to use it, and then
> fix the barrier.h to actually compile.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
> I'm debugging some odd stuff with virtio, and the next patch is to
> remove dma_rmb/dma_wmb from this, or at least make them conditional
> on virtio support, since if we have virtio support we really need
> memory barriers there, not just compiler barriers.
> .
> At least in theory. My problem isn't actually fixed by this.

Oh, forgot to edit this - my problem turned out to be the "unbacked
memory" part that I fixed in the virtio patch.

Still, I think we need this.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
