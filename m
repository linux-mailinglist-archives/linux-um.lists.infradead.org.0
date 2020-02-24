Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86DA16A659
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 13:46:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koPyG/7qo3D27lHMdq7zbYSu7VXdfPW+uhmIQ8l6izU=; b=YJCMycVQY/ytG8
	ZRTd+LSHBkY1hiCavmGYP607FHyRbYRQz/9UK8+U+Go8eV+imhZyixQc9dMomN+bmCKI5w4xFv8Oy
	v4pSRc3qn51jpuDKebKlKu76rwGYzAdnFXoZaMWPYzvjVTSa8jAnfXtJ+7pOVdAYYtkwv1rMuxAKx
	w9LrhlrU6vPJ2t+mD1nOYe61pBYomXilzZYY4U9gAgeR3j2bUBVWZkQaihAFJvcmLmVqe6NRCMnvg
	tSLcMLCGhGyD9EbH/c35uth49wN51Z2Adld2l23/pgq7EuMQAH1SB+mRMlNfoNhpGThHXUw0AOHxQ
	CY0F1tNPPNtC4dxWZFGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6D8C-0004V2-It; Mon, 24 Feb 2020 12:46:40 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6D8A-0004UU-De
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 12:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582548395;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QcIC58OWbETlx0d5qdk8n59D0eosdHtGQcC8puZ7FZ8=;
 b=HBGL+Z9kTv4gTH1xERiP226GV+/6aKPNnGcKBPcwEdyf1APP8oLzezzGw5P/cgwo5d2Vrx
 6mT70qcYOoF3iWCyM5RWyEcvzw/y2EV1qbdMuJ+iqD9dDK791MuXOj976fAufVxynmlxLD
 io3O038s7CgwujLEr7qTZHnX6G7eDQ0=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-y6vKURsYMLaJauws2Hp0EQ-1; Mon, 24 Feb 2020 07:46:33 -0500
X-MC-Unique: y6vKURsYMLaJauws2Hp0EQ-1
Received: by mail-qk1-f199.google.com with SMTP id 200so139249qkd.10
 for <linux-um@lists.infradead.org>; Mon, 24 Feb 2020 04:46:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=N1w/bpq1E0DR8ffozDoEv3Gfr6ireSQ41Zmo6iO9ZL4=;
 b=H55ESoHrjAHqSiUtmiFpBuQI5rMeQzfGbufVDE9rcxx1SMWowtWlyH0ABPME+DX1M6
 xI+wUh3KPJg9EULUm2v9V8JUg/1mG3rgILCkiNbbpGwkwaKZhsbaZ0ayRKNvgMVBzQmh
 8OhTLP3aEfe55HrQ3icNsRYuGrQp/qdKJGzqJAwVnQUCvG+jrOqhYdJET61e3Dktjns/
 THDJGLZuWxYQz0FRfozVGICS2eCpG2Bag/497ibokLF5ccOuL4x2zbywdf4iStJM7Dpq
 pUWP+TLRsviC1PTtFUZ1SMPOVeX27PI4JpgZZxeyVO2TkUtajfGRNgLSnpTJ8hw+2NX7
 29DA==
X-Gm-Message-State: APjAAAV76rx5UYYfUAhG03WbLHjuuaTmRnlsFmtYYsjbwFtQDW8QqdZM
 9081Yl8tr5OPc3bzGd2hMU75BbBX9bmYsHdbaXdTxNkvosbGyH7RfuY4fJ3ZSyWe1ZGCxH05oZs
 vtcL8cY49c18/BIW4uiV9cE7C
X-Received: by 2002:a05:6214:1090:: with SMTP id
 o16mr44417572qvr.105.1582548393300; 
 Mon, 24 Feb 2020 04:46:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqywnGbl/kPjS/h+s1WqKt4dmZfLt2m7GCCSOkmteYbtnbiK/9cmHGbGiMVk/z3Scpi+g6NOrg==
X-Received: by 2002:a05:6214:1090:: with SMTP id
 o16mr44417557qvr.105.1582548393075; 
 Mon, 24 Feb 2020 04:46:33 -0800 (PST)
Received: from redhat.com (bzq-79-178-2-214.red.bezeqint.net. [79.178.2.214])
 by smtp.gmail.com with ESMTPSA id
 202sm3046131qkg.132.2020.02.24.04.46.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 04:46:32 -0800 (PST)
Date: Mon, 24 Feb 2020 07:46:27 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: anton.ivanov@cambridgegreys.com
Subject: Re: [PATCH v2] virtio: Work around frames incorrectly marked as gso
Message-ID: <20200224074516-mutt-send-email-mst@kernel.org>
References: <20200224101912.14074-1-anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
In-Reply-To: <20200224101912.14074-1-anton.ivanov@cambridgegreys.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_044638_536300_2202EA60 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: netdev@vger.kernel.org, jasowang@redhat.com, linux-um@lists.infradead.org,
 eric.dumazet@gmail.com, virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 10:19:12AM +0000, anton.ivanov@cambridgegreys.com wrote:
> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> 
> Some of the locally generated frames marked as GSO which
> arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
> fragments (data_len = 0) and length significantly shorter
> than the MTU (752 in my experiments).
> 
> This is observed on raw sockets reading off vEth interfaces
> in all 4.x and 5.x kernels I tested.

A bit more info on how to reproduce couldn't hurt here.

> 
> These frames are reported as invalid while they are in fact
> gso-less frames.
> 
> This patch marks the vnet header as no-GSO for them instead
> of reporting it as invalid.
> 
> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Acked-by: Michael S. Tsirkin <mst@redhat.com>

Eric - as you looked at this in the past, would you mind acking please?

> ---
>  include/linux/virtio_net.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/virtio_net.h b/include/linux/virtio_net.h
> index 0d1fe9297ac6..94fb78c3a2ab 100644
> --- a/include/linux/virtio_net.h
> +++ b/include/linux/virtio_net.h
> @@ -100,8 +100,8 @@ static inline int virtio_net_hdr_from_skb(const struct sk_buff *skb,
>  {
>  	memset(hdr, 0, sizeof(*hdr));   /* no info leak */
>  
> -	if (skb_is_gso(skb)) {
> -		struct skb_shared_info *sinfo = skb_shinfo(skb);
> +	struct skb_shared_info *sinfo = skb_shinfo(skb);
> +	if (skb_is_gso(skb) && sinfo->gso_type) {
>  
>  		/* This is a hint as to how much should be linear. */
>  		hdr->hdr_len = __cpu_to_virtio16(little_endian,
> -- 
> 2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
