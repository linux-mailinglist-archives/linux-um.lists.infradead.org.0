Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D511217B95A
	for <lists+linux-um@lfdr.de>; Fri,  6 Mar 2020 10:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cjr97JLZx6+B/3Y1xL7jNRQuox6YfHBzKwKM/MTc8jA=; b=gurEdWNRSZO9dxqHBbD8ugEQE
	EfLRo7Ano6ezd1zuow8QSLqEO4SX9PibTfWDRJTigKqmCVy5mocmlGi7JYr0Q3Jyj3ZcT7U1UbL6n
	vkjCPfJue8JqMAX+LuOpruD78JbJ3yDg0dmW783Eg4DoNHyDVvXcjazyEevyRWUrO99Nj0yRXm0BR
	DXqbKjb9MbpB/suYMbxZRNo9J7tT7xaetiCmuYCLLI8jmTDuGTDw+k17nc06NzZ5U0FN8C9Hwv/vV
	Qqdoq9rF+1i+RboGa+jEIyTY+OuPMsMixw4vaa13FxHcM5rJ4Q0ZZ4BPixPYKcMGccOPAeJW6C/4S
	UXLWR4O7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9Mi-0007JV-1d; Fri, 06 Mar 2020 09:33:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9Mg-0007J9-Sb
 for linux-um@bombadil.infradead.org; Fri, 06 Mar 2020 09:33:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=5twIfR2LvQIEiEzP80/5MmktjTFqoWR3J055Yx+mRa8=; b=JEqPC5N95DZgTp0SJdfSFIxzvO
 /VH1F/kPb+mdvwELwLesXok2oJfkwO7fl71esbha6U212tRbYJDzg3rSxmzZx12CG2fr9VYob1/6+
 GuIRcg4R5lsBUQzzxBgx1U/BdRO3Wb9BidZnXnh21nxsLWFBNz1ueiJnsRXXqMBFOpNsI48JxCcr9
 Xe0j8DLPuNbRWR0wzBElcFdmPHbNY2l4o0jDPLcy5OuvdF6tEh59VlFmI9b/pasR9KAX+tjiKgRcc
 vqGYFK+R4vfLSHBCFGK+54Lb6YcafB6rM2xdmQKC4+ABMWDHqTulZD+ysoz+yVipnHFG8eOSuKo6h
 a5TWZboQ==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9Me-0002dA-PT
 for linux-um@lists.infradead.org; Fri, 06 Mar 2020 09:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583487214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5twIfR2LvQIEiEzP80/5MmktjTFqoWR3J055Yx+mRa8=;
 b=h4bX50Kul3e6GEvn64ImD2/kbiSECJ2VUz1bjAYdR5xc/qbaAWxRlTQ3+g//fU75VLCd1d
 Pj3+DXeaTUlXXFUTHRcnTUgoFSIz3qGO1YqH/1MheZKC/Q6tnGEQbjljbr+Wh7NV7uHcA9
 Y0dmpb6eaSSYL3LXyN5MNutxCCDDS+E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-OGC8puxlNeSTcYwNhDEwGQ-1; Fri, 06 Mar 2020 04:33:31 -0500
X-MC-Unique: OGC8puxlNeSTcYwNhDEwGQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7895A13FF;
 Fri,  6 Mar 2020 09:33:27 +0000 (UTC)
Received: from [10.72.13.58] (ovpn-13-58.pek2.redhat.com [10.72.13.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6D0B510016EB;
 Fri,  6 Mar 2020 09:33:18 +0000 (UTC)
Subject: Re: [PATCH net-next 3/7] tun: reject unsupported coalescing params
To: Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net
References: <20200306010602.1620354-1-kuba@kernel.org>
 <20200306010602.1620354-4-kuba@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <36c409f7-a8b4-50f6-4933-1c8105755d11@redhat.com>
Date: Fri, 6 Mar 2020 17:33:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200306010602.1620354-4-kuba@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mkubecek@suse.cz, merez@codeaurora.org, pv-drivers@vmware.com,
 GR-Linux-NIC-Dev@marvell.com, doshir@vmware.com, leon@kernel.org,
 manishc@marvell.com, linux-rdma@vger.kernel.org, richard@nod.at,
 jdike@addtoit.com, linux-um@lists.infradead.org, edumazet@google.com,
 jgg@ziepe.ca, dledford@redhat.com, netdev@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 hayeswang@realtek.com, kvalo@codeaurora.org, anton.ivanov@cambridgegreys.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMy82IOS4iuWNiDk6MDUsIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+IFNldCBldGh0
b29sX29wcy0+c3VwcG9ydGVkX2NvYWxlc2NlX3BhcmFtcyB0byBsZXQKPiB0aGUgY29yZSByZWpl
Y3QgdW5zdXBwb3J0ZWQgY29hbGVzY2luZyBwYXJhbWV0ZXJzLgo+Cj4gVGhpcyBkcml2ZXIgZGlk
IG5vdCBwcmV2aW91c2x5IHJlamVjdCB1bnN1cHBvcnRlZCBwYXJhbWV0ZXJzLgo+Cj4gU2lnbmVk
LW9mZi1ieTogSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4KPiAtLS0KPiAgIGRyaXZl
cnMvbmV0L3R1bi5jIHwgMSArCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC90dW4uYyBiL2RyaXZlcnMvbmV0L3R1bi5jCj4gaW5k
ZXggNzlmMjQ4Y2IyODJkLi45ZThmMjM1MTllODIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQv
dHVuLmMKPiArKysgYi9kcml2ZXJzL25ldC90dW4uYwo+IEBAIC0zNTk3LDYgKzM1OTcsNyBAQCBz
dGF0aWMgaW50IHR1bl9zZXRfY29hbGVzY2Uoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKPiAgIH0K
PiAgIAo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBldGh0b29sX29wcyB0dW5fZXRodG9vbF9vcHMg
PSB7Cj4gKwkuc3VwcG9ydGVkX2NvYWxlc2NlX3BhcmFtcyA9IEVUSFRPT0xfQ09BTEVTQ0VfUlhf
TUFYX0ZSQU1FUywKPiAgIAkuZ2V0X2RydmluZm8JPSB0dW5fZ2V0X2RydmluZm8sCj4gICAJLmdl
dF9tc2dsZXZlbAk9IHR1bl9nZXRfbXNnbGV2ZWwsCj4gICAJLnNldF9tc2dsZXZlbAk9IHR1bl9z
ZXRfbXNnbGV2ZWwsCgoKQWNrZWQtYnk6IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
