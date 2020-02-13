Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AB415B7C9
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 04:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VZftuLnSTMesWXxT6a3Ys9Lc5MaZ+K/edhdPzLb38i4=; b=L+lVetOGObQUvsQKZsbiq4wm7
	zo5MvsZoBdkoxWQDhq4vqzOQfqMPsPEztjSp1hjJfsO78Gu4cdCy+NNu/nnSt8kWKHvzsCVgNGYon
	zURg7GvrEU0cVC2l+8AwT8NKdTHcz91pPNGTicQrifuQLCMMPRMkbi4ikrK/ZjHSnJ73ASR7TiA54
	ulbJBrzfQTe7BTsb4Di8putQA5es7g03/KbBJ2jjZgNJaEVsM9NZueHknEGRp2pXM+8cCcoCM8pRg
	KzRcS7DIdrmGBe0WwXAM/RN5BIbFs3x/m2YfjOupSI4qd+ZN+K1T6Y39/PISbc4sPlrDzX1v2UPxa
	lHU4z5Dag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25Ek-0007i6-6T; Thu, 13 Feb 2020 03:32:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25Ei-0007hr-E6
 for linux-um@bombadil.infradead.org; Thu, 13 Feb 2020 03:32:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=x48Xkc/52KhxaaQHOFtPu2ZMXbY1JrtqvmLAgLZ6e18=; b=tZjFaxsbwkbCiqIdnwdk6ABp+H
 MBihZ8QQz0dmWplnDUAN0zmBHdXK+/jSKyUwaFUo9H6mxcPMNHQgi8+NfSs7k5V95jEVpa257VwCy
 ro2zcD7y1vRTJIqobwG+MYKr1PKxaDWr+3uT+0NnayAparczh4hcdv8iqZb+Y0mb8hSvfOY1zLcF0
 ETUn9jcL7yRzFasmiGyaQFclk2jsQiAlEqpcy+y54xe83xlYwz4J0vNd+/VQ/WQ2lY96TRuH1xNIY
 9QQii+PsGkUva1PSiVzuBqe+DYndjLy26C06TNM+NkmjmkUv7O0NBNsXVCBNlIgS5iZKS33AV1HWd
 cy8QmyOw==;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25Ef-0000ag-F8
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 03:32:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581564712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x48Xkc/52KhxaaQHOFtPu2ZMXbY1JrtqvmLAgLZ6e18=;
 b=f56hXAbVG0xt+fOpk8wdrJnSIHfHglYwz11krUjAqqOalFatHln3FhDWd0dStisvRcn99C
 nM53whYrb5kWx6hCjGZhf/Nn4MmH+8alrdLFqrXaDGUvNBDI/TnHOdfv3QAlULv2Rw7/GW
 MGvUT5EX1bDsPQPlk+bMeKe945jFCuw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-35-qgUXa6ttM3qy-xfPilOMbw-1; Wed, 12 Feb 2020 22:31:45 -0500
X-MC-Unique: qgUXa6ttM3qy-xfPilOMbw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6555D1005502;
 Thu, 13 Feb 2020 03:31:44 +0000 (UTC)
Received: from [10.72.13.212] (ovpn-13-212.pek2.redhat.com [10.72.13.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F3CA35C1B2;
 Thu, 13 Feb 2020 03:31:39 +0000 (UTC)
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 "Michael S. Tsirkin" <mst@redhat.com>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <71193f51-9606-58ba-39d7-904bc9fbd29a@redhat.com>
Date: Thu, 13 Feb 2020 11:31:38 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-um@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMi8xMyDkuIrljYgxOjM4LCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4KPgo+IE9uIDEx
LzAyLzIwMjAgMTA6MzcsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4gT24gVHVlLCBGZWIg
MTEsIDIwMjAgYXQgMDc6NDI6MzdBTSArMDAwMCwgQW50b24gSXZhbm92IHdyb3RlOgo+Pj4gT24g
MTEvMDIvMjAyMCAwMjo1MSwgSmFzb24gV2FuZyB3cm90ZToKPj4+Pgo+Pj4+IE9uIDIwMjAvMi8x
MSDkuIrljYgxMjo1NSwgQW50b24gSXZhbm92IHdyb3RlOgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBPbiAw
OS8xMi8yMDE5IDEwOjQ4LCBhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tIHdyb3RlOgo+
Pj4+Pj4gRnJvbTogQW50b24gSXZhbm92IDxhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29t
Pgo+Pj4+Pj4KPj4+Pj4+IFNvbWUgb2YgdGhlIGZyYW1lcyBtYXJrZWQgYXMgR1NPIHdoaWNoIGFy
cml2ZSBhdAo+Pj4+Pj4gdmlydGlvX25ldF9oZHJfZnJvbV9za2IoKSBoYXZlIG5vIEdTT19UWVBF
LCBubwo+Pj4+Pj4gZnJhZ21lbnRzIChkYXRhX2xlbiA9IDApIGFuZCBsZW5ndGggc2lnbmlmaWNh
bnRseSBzaG9ydGVyCj4+Pj4+PiB0aGFuIHRoZSBNVFUgKDc1MiBpbiBteSBleHBlcmltZW50cyku
Cj4+Pj4+Pgo+Pj4+Pj4gVGhpcyBpcyBvYnNlcnZlZCBvbiByYXcgc29ja2V0cyByZWFkaW5nIG9m
ZiB2RXRoIGludGVyZmFjZXMKPj4+Pj4+IGluIGFsbCA0LnggYW5kIDUueCBrZXJuZWxzIEkgdGVz
dGVkLgo+Pj4+Pj4KPj4+Pj4+IFRoZXNlIGZyYW1lcyBhcmUgcmVwb3J0ZWQgYXMgaW52YWxpZCB3
aGlsZSB0aGV5IGFyZSBpbiBmYWN0Cj4+Pj4+PiBnc28tbGVzcyBmcmFtZXMuCj4+Pj4+Pgo+Pj4+
Pj4gVGhpcyBwYXRjaCBtYXJrcyB0aGUgdm5ldCBoZWFkZXIgYXMgbm8tR1NPIGZvciB0aGVtIGlu
c3RlYWQKPj4+Pj4+IG9mIHJlcG9ydGluZyBpdCBhcyBpbnZhbGlkLgo+Pj4+Pj4KPj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IEFudG9uIEl2YW5vdiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNv
bT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gwqDCoCBpbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaCB8IDgg
KysrKysrLS0KPj4+Pj4+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92aXJ0
aW9fbmV0LmggYi9pbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaAo+Pj4+Pj4gaW5kZXggMGQxZmU5
Mjk3YWM2Li5kOTBkNWNmZjFiOWEgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L3Zp
cnRpb19uZXQuaAo+Pj4+Pj4gKysrIGIvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPj4+Pj4+
IEBAIC0xMTIsOCArMTEyLDEyIEBAIHN0YXRpYyBpbmxpbmUgaW50Cj4+Pj4+PiB2aXJ0aW9fbmV0
X2hkcl9mcm9tX3NrYihjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+Pj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX1RD
UFY0Owo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAoc2luZm8tPmdzb190eXBl
ICYgU0tCX0dTT19UQ1BWNikKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRy
LT5nc29fdHlwZSA9IFZJUlRJT19ORVRfSERSX0dTT19UQ1BWNjsKPj4+Pj4+IC3CoMKgwqDCoMKg
wqDCoCBlbHNlCj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsK
Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNlIHsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChza2ItPmRhdGFfbGVuID09IDApCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fTk9ORTsKPj4+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVsc2UKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgfQo+Pj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNpbmZvLT5nc29fdHlwZSAmIFNLQl9HU09fVENQ
X0VDTikKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5nc29fdHlwZSB8
PSBWSVJUSU9fTkVUX0hEUl9HU09fRUNOOwo+Pj4+Pj4gwqDCoMKgwqDCoMKgIH0gZWxzZQo+Pj4+
Pj4KPj4+Pj4KPj4+Pj4gcGluZy4KPj4+Pj4KPj4+Pgo+Pj4+IERvIHlvdSBtZWFuIGdzb19zaXpl
IGlzIHNldCBidXQgZ3NvX3R5cGUgaXMgbm90PyBMb29rcyBsaWtlIGEgYnVnCj4+Pj4gZWxzZXdo
ZXJlLgo+Pj4+Cj4+Pj4gVGhhbmtzCj4+Pj4KPj4+Pgo+Pj4gWWVzLgo+Pj4KPj4+IEkgY291bGQg
bm90IHRyYWNlIGl0IHdoZXJlIGl0IGlzIGNvbWluZyBmcm9tLgo+Pj4KPj4+IEkgc2VlIGl0IHdo
ZW4gZG9pbmcgcmVjdm1tc2cgb24gcmF3IHNvY2tldHMgaW4gdGhlIFVNTCB2ZWN0b3IgbmV0d29y
awo+Pj4gZHJpdmVycy4KPj4+Cj4+Cj4+IEkgdGhpbmsgd2UgbmVlZCB0byBmaW5kIHRoZSBjdWxw
cml0IGFuZCBmaXggaXQgdGhlcmUsIGxvdHMgb2Ygb3RoZXIgCj4+IHRoaW5ncwo+PiBjYW4gYnJl
YWsgb3RoZXJ3aXNlLgo+PiBKdXN0IHByaW50aW5nIG91dCBza2ItPmRldi0+bmFtZSBzaG91bGQg
ZG8gdGhlIHRyaWNrLCBubz8KPgo+IFRoZSBwcmludGsgaW4gdmlydGlvX25ldF9oZHJfZnJvbV9z
a2Igc2F5cyBOVUxMLgo+Cj4gVGhhdCBpcyBwcm9iYWJseSBub3JtYWwgZm9yIGEgbG9jYWxseSBv
cmlnaW5hdGVkIGZyYW1lLgo+Cj4gSSBjYW5ub3QgcmVwcm9kdWNlIHRoaXMgd2l0aCBuZXR3b3Jr
IHRyYWZmaWMgYnkgdGhlIHdheSAtIGl0IGhhcHBlbnMgCj4gb25seSBpZiB0aGUgdHJhZmZpYyBp
cyBsb2NhbGx5IG9yaWdpbmF0ZWQgb24gdGhlIGhvc3QuCj4KPiBBLAoKCk9yIG1heWJlIHlvdSBj
YW4gdHJ5IGFkZCBkdW1wX3N0YWNrKCkgdGhlcmUuCgpUaGFua3MKCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdAps
aW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtdW0K
