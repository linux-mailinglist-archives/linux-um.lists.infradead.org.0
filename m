Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3545915A596
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 11:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tiFNaOnfUMp5iU+Ov7JR7+2KXEz0AF9d1IBVHFtjDAA=; b=tXUlH4hRxNzaoC80dulIvHuwA
	fo+wTAXs2Z9BaP06ppi77ErkF9yFvJTk6sxzBoNb83lA3+RgtSI6b4BiHvpbJb5DfygjsYJWMn2VP
	ARZmIL/Bo0IAaiCD+gY0lzO9TalwaFVazhRsjDx085uPqjjXQVFPBMixAEl8ZN6yJoPKRWjZA27AH
	d1r973sdc2wOy+5D7wJ2cehQbN9alA2ZEfXBOhKJnetQ23bVD4DkoAb2EsiG5XXUODP1Xq4uh445v
	803pxD3NXNUjdQulAwWzOIxHy3oDSeIRDhzvswoBmziIZxA5EWwl1CurCfitjVfMVUCxpMp5pNdl9
	1bv96Qizg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1oru-0005xr-8m; Wed, 12 Feb 2020 10:03:42 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1orq-0005xQ-Ng
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 10:03:40 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1orl-0003s6-Kq; Wed, 12 Feb 2020 10:03:33 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1orj-0008KU-Ct; Wed, 12 Feb 2020 10:03:33 +0000
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <8e730fe1-3129-de8d-bcb6-d5e10695238a@cambridgegreys.com>
Date: Wed, 12 Feb 2020 10:03:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211053502-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_020338_769091_AF54EB6A 
X-CRM114-Status: GOOD (  17.36  )
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

CgpPbiAxMS8wMi8yMDIwIDEwOjM3LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24gVHVl
LCBGZWIgMTEsIDIwMjAgYXQgMDc6NDI6MzdBTSArMDAwMCwgQW50b24gSXZhbm92IHdyb3RlOgo+
PiBPbiAxMS8wMi8yMDIwIDAyOjUxLCBKYXNvbiBXYW5nIHdyb3RlOgo+Pj4KPj4+IE9uIDIwMjAv
Mi8xMSDkuIrljYgxMjo1NSwgQW50b24gSXZhbm92IHdyb3RlOgo+Pj4+Cj4+Pj4KPj4+PiBPbiAw
OS8xMi8yMDE5IDEwOjQ4LCBhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tIHdyb3RlOgo+
Pj4+PiBGcm9tOiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+
Cj4+Pj4+Cj4+Pj4+IFNvbWUgb2YgdGhlIGZyYW1lcyBtYXJrZWQgYXMgR1NPIHdoaWNoIGFycml2
ZSBhdAo+Pj4+PiB2aXJ0aW9fbmV0X2hkcl9mcm9tX3NrYigpIGhhdmUgbm8gR1NPX1RZUEUsIG5v
Cj4+Pj4+IGZyYWdtZW50cyAoZGF0YV9sZW4gPSAwKSBhbmQgbGVuZ3RoIHNpZ25pZmljYW50bHkg
c2hvcnRlcgo+Pj4+PiB0aGFuIHRoZSBNVFUgKDc1MiBpbiBteSBleHBlcmltZW50cykuCj4+Pj4+
Cj4+Pj4+IFRoaXMgaXMgb2JzZXJ2ZWQgb24gcmF3IHNvY2tldHMgcmVhZGluZyBvZmYgdkV0aCBp
bnRlcmZhY2VzCj4+Pj4+IGluIGFsbCA0LnggYW5kIDUueCBrZXJuZWxzIEkgdGVzdGVkLgo+Pj4+
Pgo+Pj4+PiBUaGVzZSBmcmFtZXMgYXJlIHJlcG9ydGVkIGFzIGludmFsaWQgd2hpbGUgdGhleSBh
cmUgaW4gZmFjdAo+Pj4+PiBnc28tbGVzcyBmcmFtZXMuCj4+Pj4+Cj4+Pj4+IFRoaXMgcGF0Y2gg
bWFya3MgdGhlIHZuZXQgaGVhZGVyIGFzIG5vLUdTTyBmb3IgdGhlbSBpbnN0ZWFkCj4+Pj4+IG9m
IHJlcG9ydGluZyBpdCBhcyBpbnZhbGlkLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbnRv
biBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+Pj4+IC0tLQo+Pj4+
PiAgwqAgaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggfCA4ICsrKysrKy0tCj4+Pj4+ICDCoCAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggYi9pbmNsdWRlL2xpbnV4
L3ZpcnRpb19uZXQuaAo+Pj4+PiBpbmRleCAwZDFmZTkyOTdhYzYuLmQ5MGQ1Y2ZmMWI5YSAxMDA2
NDQKPj4+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPj4+Pj4gKysrIGIvaW5j
bHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPj4+Pj4gQEAgLTExMiw4ICsxMTIsMTIgQEAgc3RhdGlj
IGlubGluZSBpbnQKPj4+Pj4gdmlydGlvX25ldF9oZHJfZnJvbV9za2IoY29uc3Qgc3RydWN0IHNr
X2J1ZmYgKnNrYiwKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5
cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fVENQVjQ7Cj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAg
ZWxzZSBpZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19UQ1BWNikKPj4+Pj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fVENQ
VjY7Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCBlbHNlCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybiAtRUlOVkFMOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgZWxzZSB7Cj4+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChza2ItPmRhdGFfbGVuID09IDApCj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5nc29fdHlwZSA9IFZJUlRJT19ORVRfSERS
X0dTT19OT05FOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlCj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoCB9Cj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNpbmZvLT5nc29fdHlwZSAm
IFNLQl9HU09fVENQX0VDTikKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+
Z3NvX3R5cGUgfD0gVklSVElPX05FVF9IRFJfR1NPX0VDTjsKPj4+Pj4gIMKgwqDCoMKgwqAgfSBl
bHNlCj4+Pj4+Cj4+Pj4KPj4+PiBwaW5nLgo+Pj4+Cj4+Pgo+Pj4gRG8geW91IG1lYW4gZ3NvX3Np
emUgaXMgc2V0IGJ1dCBnc29fdHlwZSBpcyBub3Q/IExvb2tzIGxpa2UgYSBidWcKPj4+IGVsc2V3
aGVyZS4KPj4+Cj4+PiBUaGFua3MKPj4+Cj4+Pgo+PiBZZXMuCj4+Cj4+IEkgY291bGQgbm90IHRy
YWNlIGl0IHdoZXJlIGl0IGlzIGNvbWluZyBmcm9tLgo+Pgo+PiBJIHNlZSBpdCB3aGVuIGRvaW5n
IHJlY3ZtbXNnIG9uIHJhdyBzb2NrZXRzIGluIHRoZSBVTUwgdmVjdG9yIG5ldHdvcmsKPj4gZHJp
dmVycy4KPj4KPiAKPiBJIHRoaW5rIHdlIG5lZWQgdG8gZmluZCB0aGUgY3VscHJpdCBhbmQgZml4
IGl0IHRoZXJlLCBsb3RzIG9mIG90aGVyIHRoaW5ncwo+IGNhbiBicmVhayBvdGhlcndpc2UuCj4g
SnVzdCBwcmludGluZyBvdXQgc2tiLT5kZXYtPm5hbWUgc2hvdWxkIGRvIHRoZSB0cmljaywgbm8/
CgpJIHdpbGwgcmVidWlsZCBteSByaWcgYW5kIHJldGVzdCAoaXQncyBiZWVuIGEgd2hpbGUgc2lu
Y2UgSSB3b3JrZWQgb24gdGhpcyBidWcpLgoKSW4gdGhlb3J5LCBpdCBzaG91bGQgYmUgdmV0aCAt
IHRoZSB0ZXN0IGlzIG92ZXIgYSB2RXRoIHBhaXIgYW5kIGFsbCBmcmFtZXMgYXJlIGxvY2FsbHkg
b3JpZ2luYXRlZCBieSBpcGVyZi4KCkluIHByYWN0aWNlIC0gSSB3aWxsIHJldGVzdCBhbmQgcG9z
dCB0aGUgcmVzdWx0cyBzb21ldGltZXMgbGF0ZXIgdG9kYXkuCgpCcmdkcywKCiA+Cj4gCj4gCj4+
IC0tIAo+PiBBbnRvbiBSLiBJdmFub3YKPj4gQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0
ZXJlZCBpbiBFbmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2MQo+PiBodHRwczovL3d3dy5j
YW1icmlkZ2VncmV5cy5jb20vCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBsaW51eC11bSBtYWlsaW5nIGxpc3QKPiBsaW51eC11bUBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC11bQo+IAoKLS0gCkFudG9uIFIuIEl2YW5vdgpDYW1icmlkZ2VncmV5cyBMaW1p
dGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkgTnVtYmVyIDEwMjczNjYxCmh0dHBz
Oi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtdW0K
