Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14516158A90
	for <lists+linux-um@lfdr.de>; Tue, 11 Feb 2020 08:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FFt4OQ+FMw8Xfpe8YgXqpIErF1ylkqUB4xF7tyydFkE=; b=EoJDV2J0/kB4r6OTq0+mXQliX
	ENrOOOzcbLISg//86u7x8uUNLohokgPbJ5kvg9x7DjuuKIcfkRn8pMQdf7HOhSoDsAkTJnPLbA99J
	fKhjOJ7NFbD+EouHB44FW3Qztimmc9XGyFC61lmI5+4cUDHlfzLdWp2ePdKUdjayO3BSuzcekrcye
	zzEZJ9gfTIwbLUMCU0cdwogR4cGrpdUPAjSnW/uAPeWt9wMZafivY+wemYry7wNFkEha7G3NqdZo3
	728jz8DEnHWp/Zt2+NpMUJKBeGNr0Vx0KhIkQzeQXWkM7xmRDnlmvUnQxEOzi+iLkCiAEU95DxDUr
	sfr9FlAWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1QBy-0007i4-JL; Tue, 11 Feb 2020 07:42:46 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1QBv-0007hi-NP
 for linux-um@lists.infradead.org; Tue, 11 Feb 2020 07:42:45 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1QBs-0007Vn-1k; Tue, 11 Feb 2020 07:42:40 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1QBp-0007Nw-Mr; Tue, 11 Feb 2020 07:42:39 +0000
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
To: Jason Wang <jasowang@redhat.com>, netdev@vger.kernel.org
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
Date: Tue, 11 Feb 2020 07:42:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_234243_762644_7D203FAD 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: virtualization@lists.linux-foundation.org, linux-um@lists.infradead.org,
 mst@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMTEvMDIvMjAyMCAwMjo1MSwgSmFzb24gV2FuZyB3cm90ZToKPiAKPiBPbiAyMDIwLzIvMTEg
5LiK5Y2IMTI6NTUsIEFudG9uIEl2YW5vdiB3cm90ZToKPj4KPj4KPj4gT24gMDkvMTIvMjAxOSAx
MDo0OCwgYW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbSB3cm90ZToKPj4+IEZyb206IEFu
dG9uIEl2YW5vdiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4KPj4+Cj4+PiBTb21l
IG9mIHRoZSBmcmFtZXMgbWFya2VkIGFzIEdTTyB3aGljaCBhcnJpdmUgYXQKPj4+IHZpcnRpb19u
ZXRfaGRyX2Zyb21fc2tiKCkgaGF2ZSBubyBHU09fVFlQRSwgbm8KPj4+IGZyYWdtZW50cyAoZGF0
YV9sZW4gPSAwKSBhbmQgbGVuZ3RoIHNpZ25pZmljYW50bHkgc2hvcnRlcgo+Pj4gdGhhbiB0aGUg
TVRVICg3NTIgaW4gbXkgZXhwZXJpbWVudHMpLgo+Pj4KPj4+IFRoaXMgaXMgb2JzZXJ2ZWQgb24g
cmF3IHNvY2tldHMgcmVhZGluZyBvZmYgdkV0aCBpbnRlcmZhY2VzCj4+PiBpbiBhbGwgNC54IGFu
ZCA1Lngga2VybmVscyBJIHRlc3RlZC4KPj4+Cj4+PiBUaGVzZSBmcmFtZXMgYXJlIHJlcG9ydGVk
IGFzIGludmFsaWQgd2hpbGUgdGhleSBhcmUgaW4gZmFjdAo+Pj4gZ3NvLWxlc3MgZnJhbWVzLgo+
Pj4KPj4+IFRoaXMgcGF0Y2ggbWFya3MgdGhlIHZuZXQgaGVhZGVyIGFzIG5vLUdTTyBmb3IgdGhl
bSBpbnN0ZWFkCj4+PiBvZiByZXBvcnRpbmcgaXQgYXMgaW52YWxpZC4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+
PiAtLS0KPj4+IMKgIGluY2x1ZGUvbGludXgvdmlydGlvX25ldC5oIHwgOCArKysrKystLQo+Pj4g
wqAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggYi9pbmNsdWRlL2xpbnV4
L3ZpcnRpb19uZXQuaAo+Pj4gaW5kZXggMGQxZmU5Mjk3YWM2Li5kOTBkNWNmZjFiOWEgMTAwNjQ0
Cj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaAo+Pj4gKysrIGIvaW5jbHVkZS9s
aW51eC92aXJ0aW9fbmV0LmgKPj4+IEBAIC0xMTIsOCArMTEyLDEyIEBAIHN0YXRpYyBpbmxpbmUg
aW50IHZpcnRpb19uZXRfaGRyX2Zyb21fc2tiKGNvbnN0IAo+Pj4gc3RydWN0IHNrX2J1ZmYgKnNr
YiwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9f
TkVUX0hEUl9HU09fVENQVjQ7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAoc2luZm8t
Pmdzb190eXBlICYgU0tCX0dTT19UQ1BWNikKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fVENQVjY7Cj4+PiAtwqDCoMKgwqDC
oMKgwqAgZWxzZQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+
PiArwqDCoMKgwqDCoMKgwqAgZWxzZSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
c2tiLT5kYXRhX2xlbiA9PSAwKQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBo
ZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX05PTkU7Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBlbHNlCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVy
biAtRUlOVkFMOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBp
ZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19UQ1BfRUNOKQo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaGRyLT5nc29fdHlwZSB8PSBWSVJUSU9fTkVUX0hEUl9HU09fRUNOOwo+Pj4g
wqDCoMKgwqDCoCB9IGVsc2UKPj4+Cj4+Cj4+IHBpbmcuCj4+Cj4gCj4gRG8geW91IG1lYW4gZ3Nv
X3NpemUgaXMgc2V0IGJ1dCBnc29fdHlwZSBpcyBub3Q/IExvb2tzIGxpa2UgYSBidWcgCj4gZWxz
ZXdoZXJlLgo+IAo+IFRoYW5rcwo+IAo+IApZZXMuCgpJIGNvdWxkIG5vdCB0cmFjZSBpdCB3aGVy
ZSBpdCBpcyBjb21pbmcgZnJvbS4KCkkgc2VlIGl0IHdoZW4gZG9pbmcgcmVjdm1tc2cgb24gcmF3
IHNvY2tldHMgaW4gdGhlIFVNTCB2ZWN0b3IgbmV0d29yayAKZHJpdmVycy4KCgotLSAKQW50b24g
Ui4gSXZhbm92CkNhbWJyaWRnZWdyZXlzIExpbWl0ZWQuIFJlZ2lzdGVyZWQgaW4gRW5nbGFuZC4g
Q29tcGFueSBOdW1iZXIgMTAyNzM2NjEKaHR0cHM6Ly93d3cuY2FtYnJpZGdlZ3JleXMuY29tLwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0g
bWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
