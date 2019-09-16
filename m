Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936B8B40DE
	for <lists+linux-um@lfdr.de>; Mon, 16 Sep 2019 21:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vddhQZIiBnqEDCE2irX1YPGj7Qk2Bx44DPHZq0SAPY=; b=ZsyLY7Oxs6Z8ci
	HTFHHuFlrv5x7hHFGzPJyH7DEFxK7Liyr0cAOJGS/XgksjTnYS8xY1g3otvg9TfwZ2uXsBpJRxGOn
	a+29dCe239i9Q5GAc6ljG6S5tJqB6/xm/ZKge5REqkrIVXaT3Levlw8MDqceEitGkbwm41We5Fo37
	JNOqoRT3Iv31JWOAj+p1qbw4g9+WToDaoPWxE4zc5MgzuwBVQHCBdovZFBXvVAHpx2xykHcNCYpuu
	yo95XQk7pKd7rNT3gBvf6T9ev5i/NXPYq9kakrFKdO/wbkZAjf01ZCkidON8/OTg922fp1ks5ahZv
	GirbA3ET+QrRd4rqMZTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9wQX-0008H5-8l; Mon, 16 Sep 2019 19:12:45 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9wQP-0008Ga-55
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 19:12:43 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i9wQJ-0003mi-Kg
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 21:12:31 +0200
Message-ID: <d960106777e366f5598150b5aaa30c95e600f32b.camel@sipsolutions.net>
Subject: Re: [PATCH] um: virtio: remove device on disconnect
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Mon, 16 Sep 2019 21:12:30 +0200
In-Reply-To: <1568639186-I0f2810aee05af27171c2dcd9a495f70397da8b35@changeid>
References: <1568639186-I0f2810aee05af27171c2dcd9a495f70397da8b35@changeid>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_121237_199783_D8946426 
X-CRM114-Status: GOOD (  11.34  )
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

On Mon, 2019-09-16 at 15:06 +0200, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> If the connection drops, just remove the device, we don't try
> to recover from this right now.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>  arch/um/drivers/virtio_uml.c | 57 +++++++++++++++++++++++++++---------
>  1 file changed, 43 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
> index fc8c52cff5aa..1705fad4ad8f 100644
> --- a/arch/um/drivers/virtio_uml.c
> +++ b/arch/um/drivers/virtio_uml.c
> @@ -42,6 +42,13 @@
>  #define to_virtio_uml_device(_vdev) \
>  	container_of(_vdev, struct virtio_uml_device, vdev)
>  
> +struct virtio_uml_platform_data {

Looks like I messed up the rebase and this patch is missing the removal
of the old definition of this struct...

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
