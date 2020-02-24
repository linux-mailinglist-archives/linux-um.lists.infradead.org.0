Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3585116A848
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 15:25:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zwj4Qnb2LMcpSGhu2QNg7hphjUZzs+XDkSgzhY9Jqk=; b=YgiibvbSzOSHAW
	e5QZ37+R65BHUSaXVGb17sS8cNm+UQN/sAruvaJtkkzgk4gFraQL+s1d5HqchaQE4R0UgC6OIr/qC
	Bk46F74hj5+Iewf9LTYhUV4kJOr04DnSFNtu65J6vr+JBAfoB5ltf6YhT35YpKQRA6Am9MGYoNPkQ
	3nW2mJUf3DhBfhidn0MOCtNLlcMlDajRZvMyWfj2SAQS7UZ+0s2cLsuSJeGY/lPmdRFddPTiAlGT+
	U6m325izSsaPGg6J+z8umX0Z/H9C8c5KfAOpje/P/2b4gsxxNXhY/XXOINz4NF2KnHz3jMrHKiBg4
	oghfNDRGtvBBjVU+dV3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Eg4-0005Zl-Ey; Mon, 24 Feb 2020 14:25:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Eg1-0005Yy-MB
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 14:25:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582554339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2Jf9H76vsnWbGUIwVItnz2B71V4adciQUipmVESgisk=;
 b=L5qoPVovtc0j3UQ4WmWlFLleotV/CpkfZ/GP2TKhOr9lAJojRVOgq/lp8MEernXg7eiIw5
 uWHt3zVaeYpq+kB9PAQZHfSF1t3eUxnYbjE1cT28eWVaDnSvFBQhMaDe7IpRWdQWMsrXM0
 DpcGO+pYA44zHb7KGdUybGcVMfnliwA=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-3TfZ3MDKOD2b0gTIN-kL_w-1; Mon, 24 Feb 2020 09:25:37 -0500
X-MC-Unique: 3TfZ3MDKOD2b0gTIN-kL_w-1
Received: by mail-qk1-f197.google.com with SMTP id a10so5819562qkg.11
 for <linux-um@lists.infradead.org>; Mon, 24 Feb 2020 06:25:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TB7sUf2pFHZ1gfff7bVBVaPbnW5iGaEMa9gLQVlWv7I=;
 b=F6/pgJAClOLGia2mmnrqRpxGevNSbkEY8SJXe+iGo64I06EcDEUleaguqYA3bAX8aB
 ADiqKer26DA/i95EzVYGGx4oyBqFvY9N8v58lMvUvVmt6xUmqvYtHrCB8g8ZAGQZ4Hj1
 EnMnx/sBc7UTVK5LNSszif85DXXZw/RbhrCeVjb1esRIagTgKFLgEXEbQCd8q+rFY+15
 zVqPHmqo2ULZ2XUmYDqrPpu8k484/bqGDLemxnwEorQ94gcYSFHXSuzFBkewOhtWRcGD
 a0kqQCxDFbYiGApGhrWvFja4Hxpw3jNmjkh9L2BXsB4Y/AveY0rljMrxu3JowYOXCJCq
 3DBg==
X-Gm-Message-State: APjAAAV5rVPotoftwNxGqNNg1n/QQWABNzWn/H75p/97TCZzLtmnYT/0
 MwYiUk7y9To1FB2i+LfRW0M0aL4VEV+zaCxYqt4m7cG+AVd40PZ0pJPQs6nt5B5dFOxR4wafyJh
 /RMQ3VE0+5LFDDY+rbUmbOMVI
X-Received: by 2002:ac8:7657:: with SMTP id i23mr48528799qtr.197.1582554337426; 
 Mon, 24 Feb 2020 06:25:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqznUlCcqXeerYYf+szsmuv/Ph5idwuFaPaAFKrIhkobzWbc5eRNhdpX5HexMXIGUCrH38q8gw==
X-Received: by 2002:ac8:7657:: with SMTP id i23mr48528784qtr.197.1582554337178; 
 Mon, 24 Feb 2020 06:25:37 -0800 (PST)
Received: from redhat.com (bzq-79-178-2-214.red.bezeqint.net. [79.178.2.214])
 by smtp.gmail.com with ESMTPSA id
 g26sm5921357qkk.68.2020.02.24.06.25.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 06:25:36 -0800 (PST)
Date: Mon, 24 Feb 2020 09:25:32 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: anton.ivanov@cambridgegreys.com
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
Message-ID: <20200224092526-mutt-send-email-mst@kernel.org>
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
In-Reply-To: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_062541_801564_F8993B24 
X-CRM114-Status: GOOD (  16.29  )
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

On Mon, Feb 24, 2020 at 01:25:50PM +0000, anton.ivanov@cambridgegreys.com wrote:
> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> 
> Some of the locally generated frames marked as GSO which
> arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
> fragments (data_len = 0) and length significantly shorter
> than the MTU (752 in my experiments).
> 
> This is observed on raw sockets reading off vEth interfaces
> in all 4.x and 5.x kernels. The frames are reported as
> invalid, while they are in fact gso-less frames.
> 
> The easiest way to reproduce is to connect a User Mode
> Linux instance to the host using the vector raw transport
> and a vEth interface. Vector raw uses recvmmsg/sendmmsg
> with virtio headers on af_packet sockets. When running iperf
> between the UML and the host, UML regularly complains about
> EINVAL return from recvmmsg.
> 
> This patch marks the vnet header as non-GSO instead of
> reporting it as invalid.
> 
> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Reviewed-by: Michael S. Tsirkin <mst@redhat.com>

> ---
>  include/linux/virtio_net.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/virtio_net.h b/include/linux/virtio_net.h
> index 0d1fe9297ac6..2c99c752cb20 100644
> --- a/include/linux/virtio_net.h
> +++ b/include/linux/virtio_net.h
> @@ -98,10 +98,11 @@ static inline int virtio_net_hdr_from_skb(const struct sk_buff *skb,
>  					  bool has_data_valid,
>  					  int vlan_hlen)
>  {
> +	struct skb_shared_info *sinfo = skb_shinfo(skb);
> +
>  	memset(hdr, 0, sizeof(*hdr));   /* no info leak */
>  
> -	if (skb_is_gso(skb)) {
> -		struct skb_shared_info *sinfo = skb_shinfo(skb);
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
