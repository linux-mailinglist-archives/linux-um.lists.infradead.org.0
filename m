Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68216B4F5D
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 15:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=165pWD8LChQWFgMUojmPCfUxBeVMR0yFk7X43Amx/No=; b=SM4iYrTQdo/zL7
	UQ8cYxeD1b4z4wGc6jGDwNP/e4ZqLjB8HjLWxJ7Spj2EvUIUHz9uzQdS0COeO1cTBCKtT0sgdbGAG
	sgN/td90fy+a6lUoZNzt9XGXJSeY5dQwfQXNLz2ZiMgqlCGstFu2tpajI/M+e8ivgxWaJzBI0urr4
	TiNyOOb3h9Nhwl4yfZsUqkPO+Olp1IJBxDtO2XV9Sv++1kQjK8wkJjBVSoaMc4rKk6oZXt0sP7IAr
	QMd7z3UbJ6AWLGHpf20DVWYEW/Li9qzTOtOboRQRu22v4DgvDU0OLsydUu7Z58vQr0VYTgj9EwsLx
	xgQHvgECPdXehyDMX+PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADdX-0005I0-VE; Tue, 17 Sep 2019 13:35:19 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADdU-0005Hf-Bi
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 13:35:18 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1iADdT-0005MV-1l
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 15:35:15 +0200
Message-ID: <a8a2a033d8dc988c34d321425b7d0baa65b8df81.camel@sipsolutions.net>
Subject: Re: [RFC v3 2/2] um: implement time-travel=ext
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Tue, 17 Sep 2019 15:35:14 +0200
In-Reply-To: <1568726354-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
References: <20190917132943.20102-1-johannes@sipsolutions.net>
 <1568726354-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_063516_414290_058715C0 
X-CRM114-Status: UNSURE (   6.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-09-17 at 15:29 +0200, Johannes Berg wrote:
> 
>  struct virtio_uml_vq_info {
>  	int kick_fd, call_fd;
>  	char name[32];
> +#ifdef CONFIG_UML_TIME_TRAVEL_SUPPORT
> +	struct virtqueue *vq;
> +	vq_callback_t *callback;
> +	struct time_travel_event defer;
> +#endif

There's a bit of a question here - should I put all these ifdefs?

It *should* compile fine without them, and throw away the unused
functions, but this structure will still be bigger, and the vq
initialization will still be done. Everything else should go away since
time_travel_mode is tested (and is defined to NONE) / empty inlines are
called if CONFIG_UML_TIME_TRAVEL_SUPPORT isn't set.

Though, come to think of it, I probably broke modular builds again here.

Anyway, I won't send a new version soon I think, comments welcome and
I'll see how the qemu changes progress.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
