Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D720DAB33E
	for <lists+linux-um@lfdr.de>; Fri,  6 Sep 2019 09:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMbZhfObs/fjUgFQNCbkRjNw++AeUqm6knvgeaaXzwU=; b=VyiuF+aAo5JHjp
	itlDdytUSJMWN+/1TYQI/+ePQq3x8zcDaYeuzxNa8ifmAuQt2y5kuu1nAAQJXMQXcTvKizNNvqKTX
	XDFk1xSq7Oyaozmd99xuF24aW04ISbLm1q2F/cLFWXKUd2l5KvYW0cBYIEF99cVmkxaCkhUs3PtVW
	VyUTQ1koSUv/2KDoZWemLkW5SjxPYlGu98x7M23PortXNzRYRj3B7pYgiYQ+cKp6nSSZtxzlisFyq
	bSq7ZKZi5g+rNeTLgNdxvfsgqRz7npGnlQytb20X17yYTfmRDxf8rl5A3YDdp1GaVglDEKNSGfmuQ
	SoK75KoaDKbtuBL4hViA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68lM-0002iA-KJ; Fri, 06 Sep 2019 07:34:32 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68lJ-0002hc-Aj
 for linux-um@lists.infradead.org; Fri, 06 Sep 2019 07:34:30 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.1) (envelope-from <johannes@sipsolutions.net>)
 id 1i68lD-0006cK-R3; Fri, 06 Sep 2019 09:34:23 +0200
Message-ID: <4f28b51467db108b7eb30b65fbb4eee32ac30383.camel@sipsolutions.net>
Subject: Re: [PATCH v2] um: drivers: Add virtio vhost-user driver
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Fri, 06 Sep 2019 09:34:22 +0200
In-Reply-To: <20190904073009.9122-1-johannes@sipsolutions.net>
References: <20190904073009.9122-1-johannes@sipsolutions.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_003429_366124_ED45EB11 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Erel Geron <erelx.geron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 09:30 +0200, Johannes Berg wrote:
> 
> +static int vu_find_vqs(struct virtio_device *vdev, unsigned nvqs,
> +		       struct virtqueue *vqs[], vq_callback_t *callbacks[],
> +		       const char * const names[], const bool *ctx,
> +		       struct irq_affinity *desc)
> +{
> +	struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
> +	int i, queue_idx, rc;

Found another bug - queue_idx needs to be initialized to 0 here, it's
only used

> +	struct virtqueue *vq;
> +
> +	rc = vhost_user_set_mem_table(vu_dev);
> +	if (rc)
> +		return rc;
> +
> +	for (i = 0; i < nvqs; ++i) {
> +		if (!names[i]) {
> +			vqs[i] = NULL;
> +			continue;
> +		}
> +
> +		vqs[i] = vu_setup_vq(vdev, queue_idx++, callbacks[i], names[i],

here

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
