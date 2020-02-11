Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A68B158873
	for <lists+linux-um@lfdr.de>; Tue, 11 Feb 2020 03:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j7vIpeACmuzH6LWoCwg1oe5usNW3XcIwQdf833Ghh+M=; b=r/JfrNDENpLhDzd1G8TEfI9eU
	EaWWdYyRez1me9rJbgI1/SzuUmU6qAuLQYEdBjOCKjRQzxWTLyXSce8HrIYMIfDW5chePH8df89pm
	xluI7pEZZL+F9SNIif6wvzSl403Hw1IrMd+NqFKiR/WImqOL9N+DFJtyiDOMIn0g49ExchexYzzfu
	FuMkI5v02amAwjR5D9DZX31BGbb7BdS6KAAnjIxtjfRD3qybzx+kRwlQMqL0OfDZB3nN3uWcjj4Me
	tcReXzJZ5+6I3HCI4OFn96H3rRHJPx6jHQHbr7BTWKWEZw3RmNF6Lf9dcfVixKu8pxmS50arJhaX4
	lcHjn6T1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1LfO-0007OV-2y; Tue, 11 Feb 2020 02:52:50 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1LfN-0007OO-0w
 for linux-um@bombadil.infradead.org; Tue, 11 Feb 2020 02:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=1KywBuU09rYNz429kY0Ae4epXMjSlQsHT1yqP8FKWMc=; b=tT8GwGYGNbXm3sgnQJOTcP1AXV
 mcCrkdpbugJ1k93Olk2Mqck4WFEGGIo5TrbvKsBPho5wY9AXWO9ItL3DtpXV+sShumxmng01sGdRM
 QjbFM5fVibedBCpuAnm3Kss7y+TFTTSeST16i9zhDBZFmaeNZD0v5ZvjHz4CBejrlVJcZ69niV/LU
 lLznvLlbZJx2c3U1ptZUotwTSS4sOta4Rh2U0o09X0Tni398EyiflFXXPkWQivrlCvQc1SP6Clp1J
 I3BaIylopglOZge0WVl1YWOxxHkZUoeBmyUtneq8ba6O9lw/KqE5H8AgL929AfPMmu+3Jz0cPT7Xq
 E9mIsyGA==;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1LfK-00038m-Rx
 for linux-um@lists.infradead.org; Tue, 11 Feb 2020 02:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581389527;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1KywBuU09rYNz429kY0Ae4epXMjSlQsHT1yqP8FKWMc=;
 b=IaFne+tJH5eEycUvo1G4behCAaNIc0kPjJkqfPdVkuLPqYIUNCnHXoqm5BcsTZ2x8z0HOp
 DxixjoLVl/c9BhsqLtb38FVCQJ8OuoUHAwBtp7jJ04mbJT/RDDwtpQ6q/s2zBDxWzlfELg
 ikAW9n/Y7npSeq0xS8+t9e0BEYGqeIc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-NLmRvZ56OAWtuJp8fyX7Vw-1; Mon, 10 Feb 2020 21:52:05 -0500
X-MC-Unique: NLmRvZ56OAWtuJp8fyX7Vw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 17EE510054E3;
 Tue, 11 Feb 2020 02:52:04 +0000 (UTC)
Received: from [10.72.12.184] (ovpn-12-184.pek2.redhat.com [10.72.12.184])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 733365C10E;
 Tue, 11 Feb 2020 02:51:56 +0000 (UTC)
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, netdev@vger.kernel.org
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
Date: Tue, 11 Feb 2020 10:51:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: virtualization@lists.linux-foundation.org, linux-um@lists.infradead.org,
 mst@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMi8xMSDkuIrljYgxMjo1NSwgQW50b24gSXZhbm92IHdyb3RlOgo+Cj4KPiBPbiAw
OS8xMi8yMDE5IDEwOjQ4LCBhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tIHdyb3RlOgo+
PiBGcm9tOiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+
Cj4+IFNvbWUgb2YgdGhlIGZyYW1lcyBtYXJrZWQgYXMgR1NPIHdoaWNoIGFycml2ZSBhdAo+PiB2
aXJ0aW9fbmV0X2hkcl9mcm9tX3NrYigpIGhhdmUgbm8gR1NPX1RZUEUsIG5vCj4+IGZyYWdtZW50
cyAoZGF0YV9sZW4gPSAwKSBhbmQgbGVuZ3RoIHNpZ25pZmljYW50bHkgc2hvcnRlcgo+PiB0aGFu
IHRoZSBNVFUgKDc1MiBpbiBteSBleHBlcmltZW50cykuCj4+Cj4+IFRoaXMgaXMgb2JzZXJ2ZWQg
b24gcmF3IHNvY2tldHMgcmVhZGluZyBvZmYgdkV0aCBpbnRlcmZhY2VzCj4+IGluIGFsbCA0Lngg
YW5kIDUueCBrZXJuZWxzIEkgdGVzdGVkLgo+Pgo+PiBUaGVzZSBmcmFtZXMgYXJlIHJlcG9ydGVk
IGFzIGludmFsaWQgd2hpbGUgdGhleSBhcmUgaW4gZmFjdAo+PiBnc28tbGVzcyBmcmFtZXMuCj4+
Cj4+IFRoaXMgcGF0Y2ggbWFya3MgdGhlIHZuZXQgaGVhZGVyIGFzIG5vLUdTTyBmb3IgdGhlbSBp
bnN0ZWFkCj4+IG9mIHJlcG9ydGluZyBpdCBhcyBpbnZhbGlkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+IC0tLQo+
PiDCoCBpbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaCB8IDggKysrKysrLS0KPj4gwqAgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvdmlydGlvX25ldC5oIGIvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0
LmgKPj4gaW5kZXggMGQxZmU5Mjk3YWM2Li5kOTBkNWNmZjFiOWEgMTAwNjQ0Cj4+IC0tLSBhL2lu
Y2x1ZGUvbGludXgvdmlydGlvX25ldC5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvdmlydGlvX25l
dC5oCj4+IEBAIC0xMTIsOCArMTEyLDEyIEBAIHN0YXRpYyBpbmxpbmUgaW50IHZpcnRpb19uZXRf
aGRyX2Zyb21fc2tiKGNvbnN0IAo+PiBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX1RDUFY0
Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dT
T19UQ1BWNikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5nc29fdHlwZSA9IFZJ
UlRJT19ORVRfSERSX0dTT19UQ1BWNjsKPj4gLcKgwqDCoMKgwqDCoMKgIGVsc2UKPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNl
IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNrYi0+ZGF0YV9sZW4gPT0gMCkKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190eXBlID0gVklSVElPX05F
VF9IRFJfR1NPX05PTkU7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVsc2UKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4gK8KgwqDCoMKgwqDC
oMKgIH0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChzaW5mby0+Z3NvX3R5cGUgJiBTS0JfR1NP
X1RDUF9FQ04pCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgfD0g
VklSVElPX05FVF9IRFJfR1NPX0VDTjsKPj4gwqDCoMKgwqDCoCB9IGVsc2UKPj4KPgo+IHBpbmcu
Cj4KCkRvIHlvdSBtZWFuIGdzb19zaXplIGlzIHNldCBidXQgZ3NvX3R5cGUgaXMgbm90PyBMb29r
cyBsaWtlIGEgYnVnIGVsc2V3aGVyZS4KClRoYW5rcwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtdW0K
