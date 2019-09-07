Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C6EAC905
	for <lists+linux-um@lfdr.de>; Sat,  7 Sep 2019 21:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruU1Y06K2OJS7MCwH2IeyE1/ywZgWWDX3dY9rkdJdEc=; b=u02dTUGeVG7l+5
	p++6jG/wsoHXkYXRkmSjhh1IkIKtP1A6bozks0PIBufPlOYBwQLdDvccZkkuFaR9/2d915Dm+IQCB
	MTLB1jRhCAEsIbOuVqg39gQjOQfCu/G3jWyn2bQLccD67JGwWDv+pWsASf/efHcaphMm3S/V3C7a7
	KDufDVdoiWpW9+G9aYnpK5cE9TKo/cyLs4ZJwpH09AdEePBgAkRHt31owzkBRqvoDwWA4mE3H1QqK
	vhWGh4LAvaxppCcrxIw1MNbIu1RlEPGI2lCvx0xxZwQAQc5FvLvrr8b4vIZthI+caquBUk6wuAKLQ
	dVYAcBiWJFfAAcjmyTXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6gS5-000368-G2; Sat, 07 Sep 2019 19:32:53 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6gS2-00030E-Iw
 for linux-um@lists.infradead.org; Sat, 07 Sep 2019 19:32:51 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i6gRy-0006PL-7M
 for linux-um@lists.infradead.org; Sat, 07 Sep 2019 21:32:46 +0200
Message-ID: <a5415671bfe700f197a72e25351d13207f86641e.camel@sipsolutions.net>
Subject: Re: [RFC] um: have real DMA barriers with virtio
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Sat, 07 Sep 2019 21:32:43 +0200
In-Reply-To: <1567807353-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
References: <1567807353-Ieca0b50a173f8a587d412db861c7ae4d6bae97c4@changeid>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_123250_629139_987D7372 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

On Sat, 2019-09-07 at 00:02 +0200, Johannes Berg wrote:
> 
> Make the override to compiler barriers depend on !virtio.

 
> +#if !IS_ENABLED(CONFIG_VIRTIO_UML)
> +/*
> + * We can afford to just have compiler barriers here - unless
> + * virtio is enabled, because then we communicate with another
> + * process and (despite being UP internally) cannot assume we
> + * run on a UP system.
> + */
>  #define dma_rmb()	barrier()
>  #define dma_wmb()	barrier()
> +#endif

I suppose the [RFC] question is: should we even keep this at all? It
seems to me that we'd only encounter dma_rmb()/dma_wmb() in a driver
that's for some kind of DMA device, which is only possible with virtio,
so there's no gain in overriding them to just barrier() since the non-
driver part of the kernel will never use them?

IOW - is the ifdef worth it, vs. just removing it completely? I suspect
not.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
