Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161F0E7781
	for <lists+linux-um@lfdr.de>; Mon, 28 Oct 2019 18:21:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zwrJU9Al5Q3sHZcFUKBtULQyFHYT/FQ5f1RT6I11KQw=; b=cT+lwmqQ3v34GqgFajF2p/tRh
	sxX5clI73aWeFG1mG7I+sfFQMito/aVi7AiEnVGV+AjeB1my5qUAw/VTX66nNrOd5Wni8llYteA7/
	Hf44rdWNWwUbhtSS0PRx8xcdeZq44DIPpmwkqd6i4pm55Qotv9oMDSRmywq0TqMYy97wHIa60mbKq
	dkyXnaEiDK0TeUT/Oe0kdYekc4FXMJQKYzVL9bwuANXeAjo7S0IGLAsUxiRlrIbG2zbVwo+IsUFQJ
	GSnGpDaj2L96Ajj9ZDSoIP6Vwmgc5EihlaS6g1NLSoIM978QzrwAAiZpUxrXEIB4vpNaDuXBEM5GK
	G3U1uuWYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8hj-0002a7-Ol; Mon, 28 Oct 2019 17:21:19 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8hg-0002ZP-PU
 for linux-um@lists.infradead.org; Mon, 28 Oct 2019 17:21:18 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iP8Ev-0008Aa-1f; Mon, 28 Oct 2019 16:51:33 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iP8Es-0006in-Ob; Mon, 28 Oct 2019 16:51:32 +0000
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
 <ab090b20-8c47-6b39-87f1-c2fbe38fc04a@cambridgegreys.com>
Message-ID: <67aeb0ec-d768-9dcc-f184-c5206420c303@cambridgegreys.com>
Date: Mon, 28 Oct 2019 16:51:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ab090b20-8c47-6b39-87f1-c2fbe38fc04a@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_102116_834206_B689F2D6 
X-CRM114-Status: GOOD (  21.61  )
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
Cc: axboe@kernel.dk, hch@lst.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Ck9uIDE4LzEwLzIwMTkgMTE6NTEsIEFudG9uIEl2YW5vdiB3cm90ZToKPgo+Cj4gT24gMTgvMTAv
MjAxOSAxMDo1NSwgQW50b24gSXZhbm92IHdyb3RlOgo+PiBBZGRpbmcgSmVucyBhbmQgQ2hyaXN0
b3BoCj4+Cj4+IE9uIDE4LzEwLzIwMTkgMDg6MzUsIEFudG9uIEl2YW5vdiB3cm90ZToKPj4+Cj4+
Pgo+Pj4gT24gMTcvMTAvMjAxOSAxNzoyOSwgQW50b24gSXZhbm92IHdyb3RlOgo+Pj4+Cj4+Pj4K
Pj4+PiBPbiAxNy8xMC8yMDE5IDE2OjAzLCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4+Pj4+Cj4+Pj4+
Cj4+Pj4+IE9uIDE3LzEwLzIwMTkgMTQ6MzMsIEFudG9uIEl2YW5vdiB3cm90ZToKPj4+Pj4+Cj4+
Pj4+Pgo+Pj4+Pj4gT24gMTcvMTAvMjAxOSAxNDozMCwgUml0ZXNoIFJhaiBTYXJyYWYgd3JvdGU6
Cj4+Pj4+Pj4gT24gVGh1LCAyMDE5LTEwLTE3IGF0IDE0OjAyICswMTAwLCBBbnRvbiBJdmFub3Yg
d3JvdGU6Cj4+Pj4+Pj4+IExvb2tpbmcgaW50byB0aGF0LiBJIGhhdmUgbm90IHJ1biBpbnRvIGFu
eXRoaW5nIGxpa2UgdGhhdCwgYnV0IAo+Pj4+Pj4+PiBJIGhhdmUKPj4+Pj4+Pj4gbm90IHVzZWQg
YW55IG9mIHRoZSBsZWdhY3kgbmV0d29ya2luZyBmb3IgNSBvZGQgeWVhcnMgbm93Lgo+Pj4+Pj4+
Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gRG8geW91IHRoaW5rIHRoaXMgaXMgcmVsYXRlZCB0byBuZXR3b3Jr
aW5nID8gSSBhc2sgYmVjYXVzZSB0aGVyZSAKPj4+Pj4+PiB3YXMgbm8KPj4+Pj4+PiBuZXR3b3Jr
IGFjdGl2aXR5IGdvaW5nIG9uLgo+Pj4+Pj4KPj4+Pj4+IG5vLCBpdCdzIGRpc2sgc29tZXdoZXJl
LiBJIG1hbmFnZWQgdG8gcmVwcm9kdWNlIGl0IHdpdGggNS4yIHN0b2NrIAo+Pj4+Pj4gb24gRGVi
aWFuIDUuMiBob3N0Lgo+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IGFwdCBpcyBqdXN0IGFuIGV4YW1w
bGUuIFRoZSBwYWNrYWdlcyB3ZXJlIGFsbCBhbHJlYWR5IGRvd25sb2FkZWQgCj4+Pj4+Pj4gYW5k
Cj4+Pj4+Pj4gdGhlcmUgd2FzIG5vIG5ldHdvcmsgYWN0aXZpdHkuIFJhdGhlciwgdGhlcmUgd2Fz
IGJsb2NrIEkvTy4KPj4+Pj4+Cj4+Pj4+PiBJIGFtIGxvb2tpbmcgaW50byB0aGF0Lgo+Pj4+Pj4K
Pj4+Pj4+Pgo+Pj4+Pj4+IE9uZSB0aGluZyBJIG5vdGljZWQsIHdoaWNoIG1heSBvciBtYXkgbm90
IGJlIHVzZWZ1bCB0byB0aGlzIAo+Pj4+Pj4+IHJlcG9ydC4gSQo+Pj4+Pj4+IHdhcyBib290aW5n
IHRoZSB1bWwgZ3Vlc3QgYW5kIGltbWVkaWF0ZWx5IGxvZ2dpbmcgaW50byBpdCBhbmQgCj4+Pj4+
Pj4gcnVubmluZwo+Pj4+Pj4+IHRoZSBibG9jayBJL08uIEFuZCB0aGUgc2VnZmF1bHQgd291bGQg
b2NjdXIuCj4+Pj4+Pj4KPj4+Pj4+PiBJZiBJLCBpbnN0ZWFkLCBib290ZWQgdGhlIHVtbCB2bSBh
bmQgbGV0IGl0IHJlbWFpbiBpZGxlIGZvciBhIAo+Pj4+Pj4+IG1pbnV0ZSBvcgo+Pj4+Pj4+IHNv
IGFuZCB0aGVuIGRpZCB0aGUgSS9PLCBpdCB3b3JrZWQgZmluZS4gU28gSSBhbSBub3Qgc3VyZSBp
ZiAKPj4+Pj4+PiB0aGVyZSBpcwo+Pj4+Pj4+IGFueSBsYXp5IGluaXRpYWxpemF0aW9uIGhhcHBl
bmluZyBpbiB0aGUgYmFja2dyb3VuZCB3aGljaCBnZXRzCj4+Pj4+Pj4gY29ycnVwdGVkIGR1cmlu
ZyBpbW1lZGlhdGUgaG90IGJvb3QgSS9PLgo+Pj4+Pj4KPj4+Pj4+IEludGVyZXN0aW5nLi4uCj4+
Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gT24gdGhlIG90aGVyIGhhbmQsIGlmIHlvdSB0aGluayB0aGVy
ZSBjYW4gYmUgYW55IG51bWJlciBvZiAKPj4+Pj4+PiBjb21tYW5kcyB0bwo+Pj4+Pj4+IHJ1biBs
b2NhbGx5IHRoYXQgY291bGQgZ2VuZXJhdGUgbW9yZSBpbmZvcm1hdGlvbiwgcGxlYXNlIGFzc2lz
dCAKPj4+Pj4+PiBtZSBzby4KPj4+Pj4+Cj4+Pj4+PiBBcyBJIHNhaWQgLSBJIG1hbmFnZWQgdG8g
cmVwcm9kdWNlIGl0LCBJIGFtIGxvb2tpbmcgYXQgaXQuIEluIAo+Pj4+Pj4gZmlyc3QgaW5zdGFu
Y2UgSSBhbSB0cnlpbmcgd2l0aCBhIGNvdXBsZSBvZiB2ZXJzaW9uIHVwL2Rvd24gdG8gCj4+Pj4+
PiBzZWUgaWYgdGhpcyBpcyA1LjIgc3BlY2lmaWMuCj4+Pj4+Cj4+Pj4+IEkgY2Fubm90IGV2ZW4g
Z2V0IGl0IHRvIHN0YXJ0IG9uIDUuNC1yYzEsIDUuMyBzaG93cyB0aGUgc2FtZSAKPj4+Pj4gc3lt
cHRvbXMuCj4+Pj4KPj4+PiBUaGlzIGlzIHNvbWV0aGluZyBvdXRzaWRlIHRoZSBVQkQgZHJpdmVy
IGFzIHN1Y2guIFRoZXJlIHdlcmUgbm8gCj4+Pj4gbm90YWJsZSBjaGFuZ2VzIHRvIGl0IHNpbmNl
IHdlIHBvcnRlZCBpdCB0byBibG9jay1tcSBhbmQgYWRkZWQgCj4+Pj4gRElTQ0FSRCB3aGljaCB3
YXMgcXVpdGUgYSB3aGlsZSBiYWNrLgo+Pj4+Cj4+Pj4gSSBhbSBnb2luZyB0byBjaGVjayB0aGUg
b3RoZXIgdXN1YWwgc3VzcGVjdHMgc3VjaCBhcyBJUlFzLCBidXQgdGhhdCAKPj4+PiBpcyBzb21l
dGhpbmcgSSB0ZXN0IHF1aXRlIGV4dGVuc2l2ZWx5IHdoZW4gd29ya2luZyBvbiB0aGUgCj4+Pj4g
bmV0d29ya2luZyBzaWRlLgo+Pj4+Cj4+Pj4gU28gSSBzdXNwZWN0IHRoYXQgdGhpcyBpcyBzb21l
dGhpbmcgb3V0c2lkZSBVTUwgd2hpY2ggaXMgc2hvd2luZyAKPj4+PiBvbmx5IGluIFVNTCBmb3Ig
c29tZSByZWFzb24uCj4+Pgo+Pj4gU3RpbGwgaGFwcGVuaW5nIHdpdGggNS4yLjIxLCBhbGJlaXQg
YSBiaXQgbW9yZSBkaWZmaWN1bHQgdG8gcmVwcm9kdWNlLgo+Pj4KPj4+IExvb2tpbmcgYXQgdGhl
IGJhY2t0cmFjZXMgaXQgaXMgQUxXQVlTIGEgcmVzdWx0IG9mIGEgcmUtcXVldWUuCj4+Pgo+Pj4g
W8KgIDI2My45OTAwMDBdwqAgWzw2MDQ0MDYzMz5dIGJsa19tcV9kaXNwYXRjaF9ycV9saXN0KzB4
ZjMvMHg1ZjAKPj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjA0NDA1MDE+XSA/IGJsa19tcV9nZXRf
ZHJpdmVyX3RhZysweGMxLzB4MTAwCj4+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQwNTQwPl0g
PyBibGtfbXFfZGlzcGF0Y2hfcnFfbGlzdCsweDAvMHg1ZjAKPj4+IFvCoCAyNjMuOTkwMDAwXcKg
IFs8NjA0NDU5NjY+XSBibGtfbXFfZG9fZGlzcGF0Y2hfc2NoZWQrMHg2Ni8weGUwCj4+PiBbwqAg
MjYzLjk5MDAwMF3CoCBbPDYwNDQ2MTA3Pl0gYmxrX21xX3NjaGVkX2Rpc3BhdGNoX3JlcXVlc3Rz
KzB4MTA3LzB4MTkwCj4+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDNmMTMwPl0gPyBibGtfbXFf
cnVuX2h3X3F1ZXVlKzB4MC8weDEyMAo+Pj4gW8KgIDI2My45OTAwMDBdwqAgWzw2MDQzZWZiND5d
IF9fYmxrX21xX3J1bl9od19xdWV1ZSsweDc0LzB4ZDAKPj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8
NjA0M2YwZDQ+XSBfX2Jsa19tcV9kZWxheV9ydW5faHdfcXVldWUrMHhjNC8weGQwCj4+PiBbwqAg
MjYzLjk5MDAwMF3CoCBbPDYwNDNmMWQ5Pl0gYmxrX21xX3J1bl9od19xdWV1ZSsweGE5LzB4MTIw
Cj4+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDNmMjkyPl0gYmxrX21xX3J1bl9od19xdWV1ZXMr
MHg0Mi8weDYwCj4+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQwYmMwPl0gPyBibGtfbXFfcmVx
dWVzdF9ieXBhc3NfaW5zZXJ0KzB4MC8weDkwCj4+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQ2
MmEwPl0gPyBibGtfbXFfc2NoZWRfaW5zZXJ0X3JlcXVlc3QrMHgwLzB4MWMwCj4+PiBBTFdBWVMg
Pj5bwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQxNGIwPl0gYmxrX21xX3JlcXVldWVfd29yaysweDE2
MC8weDE3MAo+Pj4gW8KgIDI2My45OTAwMDBdwqAgWzw2MDA4YzkxYj5dIHByb2Nlc3Nfb25lX3dv
cmsrMHgxZWIvMHg0OTAKPj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjA3ZjVhYTA+XSA/IF9fc2No
ZWR1bGUrMHgwLzB4NjIwCj4+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwMDhlMDAwPl0gPyB3cV93
b3JrZXJfcnVubmluZysweDEwLzB4NDAKPj4+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjAwOGM3MzA+
XSA/IHByb2Nlc3Nfb25lX3dvcmsrMHgwLzB4NDkwCj4+PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYw
MDhjYzA2Pl0gd29ya2VyX3RocmVhZCsweDQ2LzB4NjcwCj4+PiBbwqAgMjYzLjk5MDAwMF3CoCBb
PDYwMDkzMWMxPl0gPyBfX2t0aHJlYWRfcGFya21lKzB4YTEvMHhkMAo+Pj4gW8KgIDI2My45OTAw
MDBdwqAgWzw2MDA4Y2JjMD5dID8gd29ya2VyX3RocmVhZCsweDAvMHg2NzAKPj4+IFvCoCAyNjMu
OTkwMDAwXcKgIFs8NjAwOGNiYzA+XSA/IHdvcmtlcl90aHJlYWQrMHgwLzB4NjcwCj4+PiBbwqAg
MjYzLjk5MDAwMF3CoCBbPDYwMDkzYmM0Pl0ga3RocmVhZCsweDE5NC8weDFjMAo+Pj4gW8KgIDI2
My45OTAwMDBdwqAgWzw2MDAyYTA5MT5dIG5ld190aHJlYWRfaGFuZGxlcisweDgxLzB4YzAKPj4+
Cj4+Pgo+Pj4gQS4KPj4+Cj4+Pj4KPj4+PiBBLgo+Pj4+Cj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4+Cj4+
Pj4+Pj4gVGhhbmtzLAo+Pj4+Pj4+IFJpdGVzaAo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+IGxpbnV4
LXVtIG1haWxpbmcgbGlzdAo+Pj4+Pj4+IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+
Pj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVt
Cj4+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Cj4+Pj4KPj4+Cj4+Cj4+IFRvIHB1dCBhIGxvbmcgc3Rvcnkg
c2hvcnQgd2UgaGF2ZSBhIHJlcHJvZHVjaWJsZSBzZWdmYXVsdCB3aGVuIFVNTCAKPj4gcmUtcXVl
dWVzIGEgYmxvY2sgcmVxdWVzdCBpbiA1LngKPj4KPj4gVGhpcyB1c2VkIHRvIHdvcmsgaW4gNC54
Cj4+Cj4+IFdlIGZvdW5kIGEgY291cGxlIG9mIG1pbm9yIHRoaW5ncyBpbiBVTUwgd2hlbiBsb29r
aW5nIGF0IGl0IHdoaWNoIHdlIAo+PiB3aWxsIGZpeCBzaG9ydGx5LCBidXQgdGhlIHJvb3QgcHJv
YmxlbSBzZWVtcyB0byBiZSBlaXRoZXIgaW4gYmxvY2tfbXEgCj4+IG9yIGluIHRoZSB3YXkgd2Ug
YXJlIHVzaW5nIGl0IHRvIHJlLXF1ZXVlIHJlcXVlc3RzLgo+Pgo+Cj4gTXkgKHByb2JhYmx5IHdy
b25nKSBndWVzcyBpcyB0aGF0IGl0IGlzIHNvbWV0aGluZyByZWxhdGVkIHRvIHRoZSAKPiBjaGFu
Z2VzIGZyb20gNC54IHRvIDUueCB3aGVyZSBibGstbXEgaXMgbm8gbG9uZ2VyIGdldHRpbmcgdGhl
IGh3IAo+IGNvbnRleHQgb3V0IG9mIHRoZSBjcHUgbWFwLgo+Cj4gRm9yIHNvbWUgcmVhc29uIGl0
IGdldHMgYSBudWxsIGRlcmVmIGF0IHNvbWUgcG9pbnQuCj4KPiBJIG1heSBiZSB3cm9uZyBvZiBj
b3Vyc2UuCj4KPiBJIHdpbGwgbm90IGJlIGFibGUgdG8gcGljayB0aGlzIHVwIGFnYWluIGJlZm9y
ZSBUdWVzZGF5IHNvIGlmIHNvbWVvbmUgCj4gY2FuIGhhdmUgYSBnbyBiZWZvcmUgdGhlbiBpdCB3
aWxsIGJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQuCj4KVW5sZXNzIEkgYW0gbWlzdGFrZW4gSXQgc2hv
dWxkIG5vdCByZS1xdWV1ZS4KClhlbiBkb2VzIG5vdDogCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJpdmVycy9ibG9jay94ZW4tYmxrZnJvbnQuYyNMOTEw
CgpVbmxlc3MgSSBhbSBtaXN0YWtlbiwgaWYgeW91IHJldHVybiBhIGZvcm0gb2YgQlVTWSB0aGUg
dGhlIHVwcGVyIGxheWVycyAKd2lsbCByZS1xdWV1ZSBmb3IgeW91LgoKVGhhdCBleHBsYWlucyB0
aGUgY3Jhc2ggYXMgd2UgaGF2ZSB0aGUgc2FtZSBiaW8gZW5xdWV1ZWQgbXVsdGlwbGUgdGltZXMg
CndoZW4gdGhlIGRldmljZSBzdGFsbHMuCgpJIGFtIHRlc3RpbmcgYSBwYXRjaCBhbmQgaWYgaXQg
YWxsIHRlc3RzIG91dCBJIHdpbGwgc3VibWl0IGl0IHNob3J0bHkuCgotLSAKCkFudG9uIFIuIEl2
YW5vdgpDYW1icmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBh
bnkgTnVtYmVyIDEwMjczNjYxCmh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWls
aW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
