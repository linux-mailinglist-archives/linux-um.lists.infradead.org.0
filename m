Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0601FDC30E
	for <lists+linux-um@lfdr.de>; Fri, 18 Oct 2019 12:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=peY+WGOO9X0g5Gas5ms1RauQYGOl4pAxWcSlunklh5s=; b=JvPVAT+shz/kU4Hq9/5h4SthI
	zx94x+dPxxQR6W91p0G/JNL73i9xeuhJRX25LRIqV2n9ACJhQKVJkzB8B3RZ0Cr0QRp2SHdPA1fnv
	6sFNtsjTnv7usshSn9c3nE5WqxIkWzPnRyL2+t0Cew0ysJBOHNtCGx1tYuQvwI7vcna+IBEfFdYmM
	ejwtYTuzXgafe2aFFgGm1m992Bi6nbh48cZuCljGVzp6iurb4wqBMGkqpliniaFrLf7nb/pb+9tZc
	9uUAUQXYOffFB+9Z14e2ZsBIiIF1jDddG1Y0sAGU1GY9MU5zAGK9dSnPZA1Og+Hm16fyMJwlaVMLf
	05zK5nPSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPqr-0003lU-Jk; Fri, 18 Oct 2019 10:51:21 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPqn-0003kn-Lm
 for linux-um@lists.infradead.org; Fri, 18 Oct 2019 10:51:19 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLPqj-0006HM-Ft; Fri, 18 Oct 2019 10:51:13 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLPqh-0002tw-5n; Fri, 18 Oct 2019 11:51:13 +0100
Subject: Re: uml segfault during I/O
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: rrs@researchut.com, linux-um@lists.infradead.org
References: <a1307b17bd3f51d84d9195760492d1ef284b6382.camel@researchut.com>
 <1ccf27d8-6b6a-7d08-acef-93077f07511b@cambridgegreys.com>
 <5dc5e0694d2fcf2f8bb083e3861fd1b39c768b8c.camel@researchut.com>
 <cf1294b2-e1cc-961c-e8e1-d070fe0ea94d@cambridgegreys.com>
 <c7135e15-d2e4-3bce-9584-9032ddca72fe@cambridgegreys.com>
 <4892b3ca-6b26-0b96-d21f-ac8b31fb2270@cambridgegreys.com>
 <b742bf38-9cf5-e62f-55df-915929fd526f@cambridgegreys.com>
 <29705609-f2a3-8f14-a76a-64a2f7118800@cambridgegreys.com>
Message-ID: <ab090b20-8c47-6b39-87f1-c2fbe38fc04a@cambridgegreys.com>
Date: Fri, 18 Oct 2019 11:51:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <29705609-f2a3-8f14-a76a-64a2f7118800@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_035117_713611_2A2FAF62 
X-CRM114-Status: GOOD (  21.64  )
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
Cc: axboe@kernel.dk, hch@lst.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAxOC8xMC8yMDE5IDEwOjU1LCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4gQWRkaW5nIEplbnMg
YW5kIENocmlzdG9waAo+IAo+IE9uIDE4LzEwLzIwMTkgMDg6MzUsIEFudG9uIEl2YW5vdiB3cm90
ZToKPj4KPj4KPj4gT24gMTcvMTAvMjAxOSAxNzoyOSwgQW50b24gSXZhbm92IHdyb3RlOgo+Pj4K
Pj4+Cj4+PiBPbiAxNy8xMC8yMDE5IDE2OjAzLCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4+Pj4KPj4+
Pgo+Pj4+IE9uIDE3LzEwLzIwMTkgMTQ6MzMsIEFudG9uIEl2YW5vdiB3cm90ZToKPj4+Pj4KPj4+
Pj4KPj4+Pj4gT24gMTcvMTAvMjAxOSAxNDozMCwgUml0ZXNoIFJhaiBTYXJyYWYgd3JvdGU6Cj4+
Pj4+PiBPbiBUaHUsIDIwMTktMTAtMTcgYXQgMTQ6MDIgKzAxMDAsIEFudG9uIEl2YW5vdiB3cm90
ZToKPj4+Pj4+PiBMb29raW5nIGludG8gdGhhdC4gSSBoYXZlIG5vdCBydW4gaW50byBhbnl0aGlu
ZyBsaWtlIHRoYXQsIGJ1dCBJIAo+Pj4+Pj4+IGhhdmUKPj4+Pj4+PiBub3QgdXNlZCBhbnkgb2Yg
dGhlIGxlZ2FjeSBuZXR3b3JraW5nIGZvciA1IG9kZCB5ZWFycyBub3cuCj4+Pj4+Pj4KPj4+Pj4+
Cj4+Pj4+PiBEbyB5b3UgdGhpbmsgdGhpcyBpcyByZWxhdGVkIHRvIG5ldHdvcmtpbmcgPyBJIGFz
ayBiZWNhdXNlIHRoZXJlIAo+Pj4+Pj4gd2FzIG5vCj4+Pj4+PiBuZXR3b3JrIGFjdGl2aXR5IGdv
aW5nIG9uLgo+Pj4+Pgo+Pj4+PiBubywgaXQncyBkaXNrIHNvbWV3aGVyZS4gSSBtYW5hZ2VkIHRv
IHJlcHJvZHVjZSBpdCB3aXRoIDUuMiBzdG9jayAKPj4+Pj4gb24gRGViaWFuIDUuMiBob3N0Lgo+
Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IGFwdCBpcyBqdXN0IGFuIGV4YW1wbGUuIFRoZSBwYWNrYWdlcyB3
ZXJlIGFsbCBhbHJlYWR5IGRvd25sb2FkZWQgYW5kCj4+Pj4+PiB0aGVyZSB3YXMgbm8gbmV0d29y
ayBhY3Rpdml0eS4gUmF0aGVyLCB0aGVyZSB3YXMgYmxvY2sgSS9PLgo+Pj4+Pgo+Pj4+PiBJIGFt
IGxvb2tpbmcgaW50byB0aGF0Lgo+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IE9uZSB0aGluZyBJIG5vdGlj
ZWQsIHdoaWNoIG1heSBvciBtYXkgbm90IGJlIHVzZWZ1bCB0byB0aGlzIHJlcG9ydC4gSQo+Pj4+
Pj4gd2FzIGJvb3RpbmcgdGhlIHVtbCBndWVzdCBhbmQgaW1tZWRpYXRlbHkgbG9nZ2luZyBpbnRv
IGl0IGFuZCBydW5uaW5nCj4+Pj4+PiB0aGUgYmxvY2sgSS9PLiBBbmQgdGhlIHNlZ2ZhdWx0IHdv
dWxkIG9jY3VyLgo+Pj4+Pj4KPj4+Pj4+IElmIEksIGluc3RlYWQsIGJvb3RlZCB0aGUgdW1sIHZt
IGFuZCBsZXQgaXQgcmVtYWluIGlkbGUgZm9yIGEgCj4+Pj4+PiBtaW51dGUgb3IKPj4+Pj4+IHNv
IGFuZCB0aGVuIGRpZCB0aGUgSS9PLCBpdCB3b3JrZWQgZmluZS4gU28gSSBhbSBub3Qgc3VyZSBp
ZiB0aGVyZSBpcwo+Pj4+Pj4gYW55IGxhenkgaW5pdGlhbGl6YXRpb24gaGFwcGVuaW5nIGluIHRo
ZSBiYWNrZ3JvdW5kIHdoaWNoIGdldHMKPj4+Pj4+IGNvcnJ1cHRlZCBkdXJpbmcgaW1tZWRpYXRl
IGhvdCBib290IEkvTy4KPj4+Pj4KPj4+Pj4gSW50ZXJlc3RpbmcuLi4KPj4+Pj4KPj4+Pj4+Cj4+
Pj4+PiBPbiB0aGUgb3RoZXIgaGFuZCwgaWYgeW91IHRoaW5rIHRoZXJlIGNhbiBiZSBhbnkgbnVt
YmVyIG9mIAo+Pj4+Pj4gY29tbWFuZHMgdG8KPj4+Pj4+IHJ1biBsb2NhbGx5IHRoYXQgY291bGQg
Z2VuZXJhdGUgbW9yZSBpbmZvcm1hdGlvbiwgcGxlYXNlIGFzc2lzdCBtZSAKPj4+Pj4+IHNvLgo+
Pj4+Pgo+Pj4+PiBBcyBJIHNhaWQgLSBJIG1hbmFnZWQgdG8gcmVwcm9kdWNlIGl0LCBJIGFtIGxv
b2tpbmcgYXQgaXQuIEluIGZpcnN0IAo+Pj4+PiBpbnN0YW5jZSBJIGFtIHRyeWluZyB3aXRoIGEg
Y291cGxlIG9mIHZlcnNpb24gdXAvZG93biB0byBzZWUgaWYgCj4+Pj4+IHRoaXMgaXMgNS4yIHNw
ZWNpZmljLgo+Pj4+Cj4+Pj4gSSBjYW5ub3QgZXZlbiBnZXQgaXQgdG8gc3RhcnQgb24gNS40LXJj
MSwgNS4zIHNob3dzIHRoZSBzYW1lIHN5bXB0b21zLgo+Pj4KPj4+IFRoaXMgaXMgc29tZXRoaW5n
IG91dHNpZGUgdGhlIFVCRCBkcml2ZXIgYXMgc3VjaC4gVGhlcmUgd2VyZSBubyAKPj4+IG5vdGFi
bGUgY2hhbmdlcyB0byBpdCBzaW5jZSB3ZSBwb3J0ZWQgaXQgdG8gYmxvY2stbXEgYW5kIGFkZGVk
IAo+Pj4gRElTQ0FSRCB3aGljaCB3YXMgcXVpdGUgYSB3aGlsZSBiYWNrLgo+Pj4KPj4+IEkgYW0g
Z29pbmcgdG8gY2hlY2sgdGhlIG90aGVyIHVzdWFsIHN1c3BlY3RzIHN1Y2ggYXMgSVJRcywgYnV0
IHRoYXQgCj4+PiBpcyBzb21ldGhpbmcgSSB0ZXN0IHF1aXRlIGV4dGVuc2l2ZWx5IHdoZW4gd29y
a2luZyBvbiB0aGUgbmV0d29ya2luZyAKPj4+IHNpZGUuCj4+Pgo+Pj4gU28gSSBzdXNwZWN0IHRo
YXQgdGhpcyBpcyBzb21ldGhpbmcgb3V0c2lkZSBVTUwgd2hpY2ggaXMgc2hvd2luZyBvbmx5IAo+
Pj4gaW4gVU1MIGZvciBzb21lIHJlYXNvbi4KPj4KPj4gU3RpbGwgaGFwcGVuaW5nIHdpdGggNS4y
LjIxLCBhbGJlaXQgYSBiaXQgbW9yZSBkaWZmaWN1bHQgdG8gcmVwcm9kdWNlLgo+Pgo+PiBMb29r
aW5nIGF0IHRoZSBiYWNrdHJhY2VzIGl0IGlzIEFMV0FZUyBhIHJlc3VsdCBvZiBhIHJlLXF1ZXVl
Lgo+Pgo+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQwNjMzPl0gYmxrX21xX2Rpc3BhdGNoX3Jx
X2xpc3QrMHhmMy8weDVmMAo+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQwNTAxPl0gPyBibGtf
bXFfZ2V0X2RyaXZlcl90YWcrMHhjMS8weDEwMAo+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQw
NTQwPl0gPyBibGtfbXFfZGlzcGF0Y2hfcnFfbGlzdCsweDAvMHg1ZjAKPj4gW8KgIDI2My45OTAw
MDBdwqAgWzw2MDQ0NTk2Nj5dIGJsa19tcV9kb19kaXNwYXRjaF9zY2hlZCsweDY2LzB4ZTAKPj4g
W8KgIDI2My45OTAwMDBdwqAgWzw2MDQ0NjEwNz5dIGJsa19tcV9zY2hlZF9kaXNwYXRjaF9yZXF1
ZXN0cysweDEwNy8weDE5MAo+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDNmMTMwPl0gPyBibGtf
bXFfcnVuX2h3X3F1ZXVlKzB4MC8weDEyMAo+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDNlZmI0
Pl0gX19ibGtfbXFfcnVuX2h3X3F1ZXVlKzB4NzQvMHhkMAo+PiBbwqAgMjYzLjk5MDAwMF3CoCBb
PDYwNDNmMGQ0Pl0gX19ibGtfbXFfZGVsYXlfcnVuX2h3X3F1ZXVlKzB4YzQvMHhkMAo+PiBbwqAg
MjYzLjk5MDAwMF3CoCBbPDYwNDNmMWQ5Pl0gYmxrX21xX3J1bl9od19xdWV1ZSsweGE5LzB4MTIw
Cj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjA0M2YyOTI+XSBibGtfbXFfcnVuX2h3X3F1ZXVlcysw
eDQyLzB4NjAKPj4gW8KgIDI2My45OTAwMDBdwqAgWzw2MDQ0MGJjMD5dID8gYmxrX21xX3JlcXVl
c3RfYnlwYXNzX2luc2VydCsweDAvMHg5MAo+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQ2MmEw
Pl0gPyBibGtfbXFfc2NoZWRfaW5zZXJ0X3JlcXVlc3QrMHgwLzB4MWMwCj4+IEFMV0FZUyA+PlvC
oCAyNjMuOTkwMDAwXcKgIFs8NjA0NDE0YjA+XSBibGtfbXFfcmVxdWV1ZV93b3JrKzB4MTYwLzB4
MTcwCj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjAwOGM5MWI+XSBwcm9jZXNzX29uZV93b3JrKzB4
MWViLzB4NDkwCj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjA3ZjVhYTA+XSA/IF9fc2NoZWR1bGUr
MHgwLzB4NjIwCj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjAwOGUwMDA+XSA/IHdxX3dvcmtlcl9y
dW5uaW5nKzB4MTAvMHg0MAo+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwMDhjNzMwPl0gPyBwcm9j
ZXNzX29uZV93b3JrKzB4MC8weDQ5MAo+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwMDhjYzA2Pl0g
d29ya2VyX3RocmVhZCsweDQ2LzB4NjcwCj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjAwOTMxYzE+
XSA/IF9fa3RocmVhZF9wYXJrbWUrMHhhMS8weGQwCj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjAw
OGNiYzA+XSA/IHdvcmtlcl90aHJlYWQrMHgwLzB4NjcwCj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8
NjAwOGNiYzA+XSA/IHdvcmtlcl90aHJlYWQrMHgwLzB4NjcwCj4+IFvCoCAyNjMuOTkwMDAwXcKg
IFs8NjAwOTNiYzQ+XSBrdGhyZWFkKzB4MTk0LzB4MWMwCj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8
NjAwMmEwOTE+XSBuZXdfdGhyZWFkX2hhbmRsZXIrMHg4MS8weGMwCj4+Cj4+Cj4+IEEuCj4+Cj4+
Pgo+Pj4gQS4KPj4+Cj4+Pj4KPj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBUaGFua3MsCj4+Pj4+PiBSaXRl
c2gKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+Pj4+IGxpbnV4LXVtIG1haWxpbmcgbGlzdAo+Pj4+Pj4gbGludXgt
dW1AbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC11bQo+Pj4+Pj4KPj4+Pj4KPj4+Pgo+Pj4KPj4KPiAKPiBU
byBwdXQgYSBsb25nIHN0b3J5IHNob3J0IHdlIGhhdmUgYSByZXByb2R1Y2libGUgc2VnZmF1bHQg
d2hlbiBVTUwgCj4gcmUtcXVldWVzIGEgYmxvY2sgcmVxdWVzdCBpbiA1LngKPiAKPiBUaGlzIHVz
ZWQgdG8gd29yayBpbiA0LngKPiAKPiBXZSBmb3VuZCBhIGNvdXBsZSBvZiBtaW5vciB0aGluZ3Mg
aW4gVU1MIHdoZW4gbG9va2luZyBhdCBpdCB3aGljaCB3ZSAKPiB3aWxsIGZpeCBzaG9ydGx5LCBi
dXQgdGhlIHJvb3QgcHJvYmxlbSBzZWVtcyB0byBiZSBlaXRoZXIgaW4gYmxvY2tfbXEgb3IgCj4g
aW4gdGhlIHdheSB3ZSBhcmUgdXNpbmcgaXQgdG8gcmUtcXVldWUgcmVxdWVzdHMuCj4gCgpNeSAo
cHJvYmFibHkgd3JvbmcpIGd1ZXNzIGlzIHRoYXQgaXQgaXMgc29tZXRoaW5nIHJlbGF0ZWQgdG8g
dGhlIGNoYW5nZXMgCmZyb20gNC54IHRvIDUueCB3aGVyZSBibGstbXEgaXMgbm8gbG9uZ2VyIGdl
dHRpbmcgdGhlIGh3IGNvbnRleHQgb3V0IG9mIAp0aGUgY3B1IG1hcC4KCkZvciBzb21lIHJlYXNv
biBpdCBnZXRzIGEgbnVsbCBkZXJlZiBhdCBzb21lIHBvaW50LgoKSSBtYXkgYmUgd3Jvbmcgb2Yg
Y291cnNlLgoKSSB3aWxsIG5vdCBiZSBhYmxlIHRvIHBpY2sgdGhpcyB1cCBhZ2FpbiBiZWZvcmUg
VHVlc2RheSBzbyBpZiBzb21lb25lIApjYW4gaGF2ZSBhIGdvIGJlZm9yZSB0aGVuIGl0IHdpbGwg
YmUgZ3JlYXRseSBhcHByZWNpYXRlZC4KCi0tIApBbnRvbiBSLiBJdmFub3YKQ2FtYnJpZGdlZ3Jl
eXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2
MQpodHRwczovL3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1A
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXVtCg==
