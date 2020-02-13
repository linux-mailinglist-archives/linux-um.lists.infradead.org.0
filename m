Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4368F15C7CC
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 17:23:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dYCBIXeaTLGQioVZI2KACXy2bGp7nYFuG/KLse0PCFE=; b=R6J2Nx/LWMZ20kv/8m/wrGj1b
	jaHWQotyaKRxFiI8sQeKJUtEMal0ZVhA5ysXo3LmUjf8oJc6SlT+og4UqRbSa60+ZxXcrLN4llg3k
	mws1osk0kSM0ZlbDv/mo8t1/49fU4Cqd89JXAd1XPkKItQ6fy72qAQxxVxJHPrHc7GVtnMSSKt/sE
	kzBkGSuKDnDva8eYSm1xzb1/sczhalCGodbaPC0s4Bskgc0m4bYn5rClyZrJSHbbi+FFAhWw6HwtB
	bQvq1t4rr+nrHZAI1dkieaG9wn2Jx4WpZTI73wjqalR0AkXIuqwH7ypSrHLF2nCbJxSCOz4nR261s
	ZCevOZHTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HH4-00027m-CB; Thu, 13 Feb 2020 16:23:34 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HH1-00027I-Gf
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 16:23:33 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j2HGw-0000Pf-Tt; Thu, 13 Feb 2020 16:23:27 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j2HGu-0006m0-Mt; Thu, 13 Feb 2020 16:23:26 +0000
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
To: "Michael S. Tsirkin" <mst@redhat.com>,
 Eric Dumazet <eric.dumazet@gmail.com>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
 <20200213045937-mutt-send-email-mst@kernel.org>
 <94fb9656-99ee-a001-e428-9d76c3620e61@gmail.com>
 <20200213105010-mutt-send-email-mst@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <35510da7-08f1-4aa5-c6d6-6bffbccaee0c@cambridgegreys.com>
Date: Thu, 13 Feb 2020 16:23:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200213105010-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_082331_557195_71381B89 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: netdev@vger.kernel.org, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Ck9uIDEzLzAyLzIwMjAgMTU6NTMsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiBPbiBUaHUs
IEZlYiAxMywgMjAyMCBhdCAwNzo0NDowNkFNIC0wODAwLCBFcmljIER1bWF6ZXQgd3JvdGU6Cj4+
Cj4+IE9uIDIvMTMvMjAgMjowMCBBTSwgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+Pj4gT24g
V2VkLCBGZWIgMTIsIDIwMjAgYXQgMDU6Mzg6MDlQTSArMDAwMCwgQW50b24gSXZhbm92IHdyb3Rl
Ogo+Pj4+Cj4+Pj4gT24gMTEvMDIvMjAyMCAxMDozNywgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+Pj4+PiBPbiBUdWUsIEZlYiAxMSwgMjAyMCBhdCAwNzo0MjozN0FNICswMDAwLCBBbnRvbiBJ
dmFub3Ygd3JvdGU6Cj4+Pj4+PiBPbiAxMS8wMi8yMDIwIDAyOjUxLCBKYXNvbiBXYW5nIHdyb3Rl
Ogo+Pj4+Pj4+IE9uIDIwMjAvMi8xMSDkuIrljYgxMjo1NSwgQW50b24gSXZhbm92IHdyb3RlOgo+
Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiAwOS8xMi8yMDE5IDEwOjQ4LCBhbnRvbi5pdmFub3ZAY2FtYnJp
ZGdlZ3JleXMuY29tIHdyb3RlOgo+Pj4+Pj4+Pj4gRnJvbTogQW50b24gSXZhbm92IDxhbnRvbi5p
dmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFNvbWUgb2YgdGhl
IGZyYW1lcyBtYXJrZWQgYXMgR1NPIHdoaWNoIGFycml2ZSBhdAo+Pj4+Pj4+Pj4gdmlydGlvX25l
dF9oZHJfZnJvbV9za2IoKSBoYXZlIG5vIEdTT19UWVBFLCBubwo+Pj4+Pj4+Pj4gZnJhZ21lbnRz
IChkYXRhX2xlbiA9IDApIGFuZCBsZW5ndGggc2lnbmlmaWNhbnRseSBzaG9ydGVyCj4+Pj4+Pj4+
PiB0aGFuIHRoZSBNVFUgKDc1MiBpbiBteSBleHBlcmltZW50cykuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4gVGhpcyBpcyBvYnNlcnZlZCBvbiByYXcgc29ja2V0cyByZWFkaW5nIG9mZiB2RXRoIGludGVy
ZmFjZXMKPj4+Pj4+Pj4+IGluIGFsbCA0LnggYW5kIDUueCBrZXJuZWxzIEkgdGVzdGVkLgo+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+IFRoZXNlIGZyYW1lcyBhcmUgcmVwb3J0ZWQgYXMgaW52YWxpZCB3aGls
ZSB0aGV5IGFyZSBpbiBmYWN0Cj4+Pj4+Pj4+PiBnc28tbGVzcyBmcmFtZXMuCj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4gVGhpcyBwYXRjaCBtYXJrcyB0aGUgdm5ldCBoZWFkZXIgYXMgbm8tR1NPIGZvciB0
aGVtIGluc3RlYWQKPj4+Pj4+Pj4+IG9mIHJlcG9ydGluZyBpdCBhcyBpbnZhbGlkLgo+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFudG9uIEl2YW5vdiA8YW50b24uaXZhbm92QGNh
bWJyaWRnZWdyZXlzLmNvbT4KPj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+Pj4gICDCoCBpbmNsdWRlL2xp
bnV4L3ZpcnRpb19uZXQuaCB8IDggKysrKysrLS0KPj4+Pj4+Pj4+ICAgwqAgMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggYi9pbmNsdWRlL2xpbnV4L3Zp
cnRpb19uZXQuaAo+Pj4+Pj4+Pj4gaW5kZXggMGQxZmU5Mjk3YWM2Li5kOTBkNWNmZjFiOWEgMTAw
NjQ0Cj4+Pj4+Pj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaAo+Pj4+Pj4+Pj4g
KysrIGIvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPj4+Pj4+Pj4+IEBAIC0xMTIsOCArMTEy
LDEyIEBAIHN0YXRpYyBpbmxpbmUgaW50Cj4+Pj4+Pj4+PiB2aXJ0aW9fbmV0X2hkcl9mcm9tX3Nr
Yihjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+Pj4+Pj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBoZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX1RDUFY0Owo+Pj4+
Pj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAoc2luZm8tPmdzb190eXBlICYgU0tC
X0dTT19UQ1BWNikKPj4+Pj4+Pj4+ICAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5n
c29fdHlwZSA9IFZJUlRJT19ORVRfSERSX0dTT19UQ1BWNjsKPj4+Pj4+Pj4+IC3CoMKgwqDCoMKg
wqDCoCBlbHNlCj4+Pj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZB
TDsKPj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNlIHsKPj4+Pj4+Pj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmIChza2ItPmRhdGFfbGVuID09IDApCj4+Pj4+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09f
Tk9ORTsKPj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVsc2UKPj4+Pj4+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4+Pj4+PiAr
wqDCoMKgwqDCoMKgwqAgfQo+Pj4+Pj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNpbmZv
LT5nc29fdHlwZSAmIFNLQl9HU09fVENQX0VDTikKPj4+Pj4+Pj4+ICAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaGRyLT5nc29fdHlwZSB8PSBWSVJUSU9fTkVUX0hEUl9HU09fRUNOOwo+Pj4+
Pj4+Pj4gICDCoMKgwqDCoMKgIH0gZWxzZQo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4gcGluZy4KPj4+Pj4+
Pj4KPj4+Pj4+PiBEbyB5b3UgbWVhbiBnc29fc2l6ZSBpcyBzZXQgYnV0IGdzb190eXBlIGlzIG5v
dD8gTG9va3MgbGlrZSBhIGJ1Zwo+Pj4+Pj4+IGVsc2V3aGVyZS4KPj4+Pj4+Pgo+Pj4+Pj4+IFRo
YW5rcwo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+IFllcy4KPj4+Pj4+Cj4+Pj4+PiBJIGNvdWxkIG5v
dCB0cmFjZSBpdCB3aGVyZSBpdCBpcyBjb21pbmcgZnJvbS4KPj4+Pj4+Cj4+Pj4+PiBJIHNlZSBp
dCB3aGVuIGRvaW5nIHJlY3ZtbXNnIG9uIHJhdyBzb2NrZXRzIGluIHRoZSBVTUwgdmVjdG9yIG5l
dHdvcmsKPj4+Pj4+IGRyaXZlcnMuCj4+Pj4+Pgo+Pj4+PiBJIHRoaW5rIHdlIG5lZWQgdG8gZmlu
ZCB0aGUgY3VscHJpdCBhbmQgZml4IGl0IHRoZXJlLCBsb3RzIG9mIG90aGVyIHRoaW5ncwo+Pj4+
PiBjYW4gYnJlYWsgb3RoZXJ3aXNlLgo+Pj4+PiBKdXN0IHByaW50aW5nIG91dCBza2ItPmRldi0+
bmFtZSBzaG91bGQgZG8gdGhlIHRyaWNrLCBubz8KPj4+PiBUaGUgcHJpbnRrIGluIHZpcnRpb19u
ZXRfaGRyX2Zyb21fc2tiIHNheXMgTlVMTC4KPj4+Pgo+Pj4+IFRoYXQgaXMgcHJvYmFibHkgbm9y
bWFsIGZvciBhIGxvY2FsbHkgb3JpZ2luYXRlZCBmcmFtZS4KPj4+Pgo+Pj4+IEkgY2Fubm90IHJl
cHJvZHVjZSB0aGlzIHdpdGggbmV0d29yayB0cmFmZmljIGJ5IHRoZSB3YXkgLSBpdCBoYXBwZW5z
IG9ubHkgaWYgdGhlIHRyYWZmaWMgaXMgbG9jYWxseSBvcmlnaW5hdGVkIG9uIHRoZSBob3N0Lgo+
Pj4+Cj4+Pj4gQSwKPj4+IE9LIHNvIGlzIGl0IGNvZGUgaW4gX190Y3BfdHJhbnNtaXRfc2tiIHRo
YXQgc2V0cyBnc29fc2l6ZSB0byBub24tbnVsbAo+Pj4gd2hlbiBnc29fdHlwZSBpcyAwPwo+Pj4K
Pj4gQ29ycmVjdCB3YXkgdG8gZGV0ZXJtaW5lIGlmIGEgcGFja2V0IGlzIGEgZ3NvIG9uZSBpcyBi
eSBsb29raW5nIGF0IGdzb19zaXplLgo+PiBUaGVuIG9ubHkgaXQgaXMgbGVnYWwgbG9va2luZyBh
dCBnc29fdHlwZQo+Pgo+Pgo+PiBzdGF0aWMgaW5saW5lIGJvb2wgc2tiX2lzX2dzbyhjb25zdCBz
dHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+PiB7Cj4+ICAgICAgcmV0dXJuIHNrYl9zaGluZm8oc2tiKS0+
Z3NvX3NpemU7Cj4+IH0KPj4KPj4gLyogTm90ZTogU2hvdWxkIGJlIGNhbGxlZCBvbmx5IGlmIHNr
Yl9pc19nc28oc2tiKSBpcyB0cnVlICovCj4+IHN0YXRpYyBpbmxpbmUgYm9vbCBza2JfaXNfZ3Nv
X3Y2KGNvbnN0IHN0cnVjdCBza19idWZmICpza2IpCj4+IC4uLgo+Pgo+Pgo+PiBUaGVyZSBpcyBh
YnNvbHV0ZWx5IG5vIHJlbGF0aW9uIGJldHdlZW4gR1NPIGFuZCBza2ItPmRhdGFfbGVuLCBza2Ig
Y2FuIGJlIGxpbmVhcml6ZWQKPj4gZm9yIHZhcmlvdXMgb3J0aG9nb25hbCByZWFzb25zLgo+IFRo
ZSByZXBvcnRlZCBwcm9ibGVtIGlzIHRoYXQgdmlydGlvIGdldHMgYSBwYWNrZXQgd2hlcmUgZ3Nv
X3NpemUKPiBpcyAhMCBidXQgZ3NvX3R5cGUgaXMgMC4KPgo+IEl0IGN1cnJlbnRseSBkcm9wcyB0
aGVzZSBvbiB0aGUgYXNzdW1wdGlvbiB0aGF0IGl0J3Mgc29tZSB0eXBlCj4gb2YgYSBnc28gcGFj
a2V0IGl0IGRvZXMgbm90IGtub3cgaG93IHRvIGhhbmRsZS4KPgo+Cj4gU28geW91IGFyZSBzYXlp
bmcgaWYgc2tiX2lzX2dzbyB3ZSBjYW4gc3RpbGwgaGF2ZSBnc29fdHlwZSBzZXQgdG8gMCwKPiBh
bmQgdGhhdCdzIGFuIGV4cGVjdGVkIGNvbmZpZ3VyYXRpb24/Cj4KPiBTbyB0aGUgcGF0Y2ggc2hv
dWxkIGp1c3QgYmU6Cj4KPgo+IC0gICAgICAgIGlmIChza2JfaXNfZ3NvKHNrYikpIHsKPiArICAg
ICAgICBpZiAoc2tiX2lzX2dzbyhza2IpICYmIHNpbmZvLT5nc29fdHlwZSkgewo+ClllcywgcHJv
dmlkZWQgdGhhdCBza2JfaXNfZ3NvKHNrYikgYW5kIHNpbmZvLT5nc29fdHlwZSA9PSAwIGlzIGEg
dmFsaWQgc3RhdGUuCgpJIGFncmVlIHdpdGggSmFzb24sIHRoZXJlIG1heSBiZSBzb21ldGhpbmcg
d3JvbmcgZ29pbmcgb24gaGVyZSBhbmQgd2UgbmVlZCB0byBmaW5kIHRoZSBzb3VyY2Ugd2hpY2gg
Y3JlYXRlcyB0aGVzZSBwYWNrZXRzLgoKQS4KCj4KPiA/Cj4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtdW0gbWFpbGluZyBsaXN0Cj4g
bGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtdW0KCi0tIApBbnRvbiBSLiBJdmFub3YKQ2FtYnJpZGdl
Z3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3
MzY2MQpodHRwczovL3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4
LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC11bQo=
