Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A31116B8B
	for <lists+linux-um@lfdr.de>; Mon,  9 Dec 2019 11:55:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCSfB8YmieAOpzayMYrLyU/9VZ7uumaU7rcYhbqm03o=; b=NuClP6VW090EhE
	yNlTak7tPNMZoccV6hV+d2i7YGlc6uud+73k5QUpPpxxfUP0TZ/fZfXfKwZSDylMsp1oYmVqNUo5/
	iM3T2SIj3NDSy6UIKiz6ID2RalLKVrzcS/0GUAGUdvHs560FcyhmCPov1P/XZV/eRwm+55wMiUZO9
	pRhP/mXERsL+oLVvW8isrKc49B9Dup1hoAAJsSUQrpkwzyYMG+uDvHDRDIV9nnRoxU8vfTNL7ji5t
	kL1ZRxqZOn07iaSxdng7Y1QgF9znyc3qGOhsxAiZmPKoP2R1YUtL/4KR1yABcaUQp4LZ6dRDcfARH
	tdQB98tOp0SN8dRo81Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGgv-00056H-Tw; Mon, 09 Dec 2019 10:55:01 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGgs-00054V-BB
 for linux-um@lists.infradead.org; Mon, 09 Dec 2019 10:55:00 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1ieGgi-00FN4j-L6; Mon, 09 Dec 2019 11:54:48 +0100
Message-ID: <db33800253f071a1cfbb91f413af59e73faa6775.camel@sipsolutions.net>
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
From: Johannes Berg <johannes@sipsolutions.net>
To: anton.ivanov@cambridgegreys.com, netdev@vger.kernel.org
Date: Mon, 09 Dec 2019 11:54:46 +0100
In-Reply-To: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_025458_965317_E015CF2B 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: jasowang@redhat.com, mst@redhat.com, linux-um@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


>  		else if (sinfo->gso_type & SKB_GSO_TCPV6)
>  			hdr->gso_type = VIRTIO_NET_HDR_GSO_TCPV6;
> -		else
> -			return -EINVAL;
> +		else {
> +			if (skb->data_len == 0)
> +				hdr->gso_type = VIRTIO_NET_HDR_GSO_NONE;


maybe use "else if" like in the before? yes, it's a different type of
condition, but braces look a bit unnatural here to me at least

johannes



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
