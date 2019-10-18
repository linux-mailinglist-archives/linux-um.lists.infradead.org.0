Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D20BDC1EC
	for <lists+linux-um@lfdr.de>; Fri, 18 Oct 2019 11:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hCAfuCxuFPIN67wwpVyapOemYGoi892XRQs3rmvwSdQ=; b=QLt6tbRhapl2nLkcV+i/N/uZl
	feyrWOLGXjmo9360RjnORpcj96wCPSjwz2SwM5A2q99bK64yIJBTJZI/8magjj41Ygp69irnipVat
	XDtJ4wCOoBp0VBaCJAVUR/07wFmJVv9/LInwCYce4GwsItOKaLjakzNTwflWCfTeXli/iaZ+XvYfT
	md74hPn4KgljzwNKpjZq62EAhwQpA2Ekrc8fVd102Y0ycJcHxsCR4C63gnL5+VzMUCafN7koP2nGm
	zTquOP9FdEhmNpdGslO/bBm1dHTdgwjPx9Xth3keCG4jN86LslRBv9olVYInGrR0ZU3PagnudkEzG
	9zZg8xZtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOyo-0002YL-Nr; Fri, 18 Oct 2019 09:55:30 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOyk-0002Xn-Ar
 for linux-um@lists.infradead.org; Fri, 18 Oct 2019 09:55:28 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLOyi-00066d-DM; Fri, 18 Oct 2019 09:55:24 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLOyg-0000zY-3W; Fri, 18 Oct 2019 10:55:24 +0100
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
Message-ID: <29705609-f2a3-8f14-a76a-64a2f7118800@cambridgegreys.com>
Date: Fri, 18 Oct 2019 10:55:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b742bf38-9cf5-e62f-55df-915929fd526f@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_025526_372275_87CA37A0 
X-CRM114-Status: GOOD (  19.82  )
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

QWRkaW5nIEplbnMgYW5kIENocmlzdG9waAoKT24gMTgvMTAvMjAxOSAwODozNSwgQW50b24gSXZh
bm92IHdyb3RlOgo+IAo+IAo+IE9uIDE3LzEwLzIwMTkgMTc6MjksIEFudG9uIEl2YW5vdiB3cm90
ZToKPj4KPj4KPj4gT24gMTcvMTAvMjAxOSAxNjowMywgQW50b24gSXZhbm92IHdyb3RlOgo+Pj4K
Pj4+Cj4+PiBPbiAxNy8xMC8yMDE5IDE0OjMzLCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4+Pj4KPj4+
Pgo+Pj4+IE9uIDE3LzEwLzIwMTkgMTQ6MzAsIFJpdGVzaCBSYWogU2FycmFmIHdyb3RlOgo+Pj4+
PiBPbiBUaHUsIDIwMTktMTAtMTcgYXQgMTQ6MDIgKzAxMDAsIEFudG9uIEl2YW5vdiB3cm90ZToK
Pj4+Pj4+IExvb2tpbmcgaW50byB0aGF0LiBJIGhhdmUgbm90IHJ1biBpbnRvIGFueXRoaW5nIGxp
a2UgdGhhdCwgYnV0IEkgaGF2ZQo+Pj4+Pj4gbm90IHVzZWQgYW55IG9mIHRoZSBsZWdhY3kgbmV0
d29ya2luZyBmb3IgNSBvZGQgeWVhcnMgbm93Lgo+Pj4+Pj4KPj4+Pj4KPj4+Pj4gRG8geW91IHRo
aW5rIHRoaXMgaXMgcmVsYXRlZCB0byBuZXR3b3JraW5nID8gSSBhc2sgYmVjYXVzZSB0aGVyZSAK
Pj4+Pj4gd2FzIG5vCj4+Pj4+IG5ldHdvcmsgYWN0aXZpdHkgZ29pbmcgb24uCj4+Pj4KPj4+PiBu
bywgaXQncyBkaXNrIHNvbWV3aGVyZS4gSSBtYW5hZ2VkIHRvIHJlcHJvZHVjZSBpdCB3aXRoIDUu
MiBzdG9jayBvbiAKPj4+PiBEZWJpYW4gNS4yIGhvc3QuCj4+Pj4KPj4+Pj4KPj4+Pj4gYXB0IGlz
IGp1c3QgYW4gZXhhbXBsZS4gVGhlIHBhY2thZ2VzIHdlcmUgYWxsIGFscmVhZHkgZG93bmxvYWRl
ZCBhbmQKPj4+Pj4gdGhlcmUgd2FzIG5vIG5ldHdvcmsgYWN0aXZpdHkuIFJhdGhlciwgdGhlcmUg
d2FzIGJsb2NrIEkvTy4KPj4+Pgo+Pj4+IEkgYW0gbG9va2luZyBpbnRvIHRoYXQuCj4+Pj4KPj4+
Pj4KPj4+Pj4gT25lIHRoaW5nIEkgbm90aWNlZCwgd2hpY2ggbWF5IG9yIG1heSBub3QgYmUgdXNl
ZnVsIHRvIHRoaXMgcmVwb3J0LiBJCj4+Pj4+IHdhcyBib290aW5nIHRoZSB1bWwgZ3Vlc3QgYW5k
IGltbWVkaWF0ZWx5IGxvZ2dpbmcgaW50byBpdCBhbmQgcnVubmluZwo+Pj4+PiB0aGUgYmxvY2sg
SS9PLiBBbmQgdGhlIHNlZ2ZhdWx0IHdvdWxkIG9jY3VyLgo+Pj4+Pgo+Pj4+PiBJZiBJLCBpbnN0
ZWFkLCBib290ZWQgdGhlIHVtbCB2bSBhbmQgbGV0IGl0IHJlbWFpbiBpZGxlIGZvciBhIAo+Pj4+
PiBtaW51dGUgb3IKPj4+Pj4gc28gYW5kIHRoZW4gZGlkIHRoZSBJL08sIGl0IHdvcmtlZCBmaW5l
LiBTbyBJIGFtIG5vdCBzdXJlIGlmIHRoZXJlIGlzCj4+Pj4+IGFueSBsYXp5IGluaXRpYWxpemF0
aW9uIGhhcHBlbmluZyBpbiB0aGUgYmFja2dyb3VuZCB3aGljaCBnZXRzCj4+Pj4+IGNvcnJ1cHRl
ZCBkdXJpbmcgaW1tZWRpYXRlIGhvdCBib290IEkvTy4KPj4+Pgo+Pj4+IEludGVyZXN0aW5nLi4u
Cj4+Pj4KPj4+Pj4KPj4+Pj4gT24gdGhlIG90aGVyIGhhbmQsIGlmIHlvdSB0aGluayB0aGVyZSBj
YW4gYmUgYW55IG51bWJlciBvZiBjb21tYW5kcyB0bwo+Pj4+PiBydW4gbG9jYWxseSB0aGF0IGNv
dWxkIGdlbmVyYXRlIG1vcmUgaW5mb3JtYXRpb24sIHBsZWFzZSBhc3Npc3QgbWUgc28uCj4+Pj4K
Pj4+PiBBcyBJIHNhaWQgLSBJIG1hbmFnZWQgdG8gcmVwcm9kdWNlIGl0LCBJIGFtIGxvb2tpbmcg
YXQgaXQuIEluIGZpcnN0IAo+Pj4+IGluc3RhbmNlIEkgYW0gdHJ5aW5nIHdpdGggYSBjb3VwbGUg
b2YgdmVyc2lvbiB1cC9kb3duIHRvIHNlZSBpZiB0aGlzIAo+Pj4+IGlzIDUuMiBzcGVjaWZpYy4K
Pj4+Cj4+PiBJIGNhbm5vdCBldmVuIGdldCBpdCB0byBzdGFydCBvbiA1LjQtcmMxLCA1LjMgc2hv
d3MgdGhlIHNhbWUgc3ltcHRvbXMuCj4+Cj4+IFRoaXMgaXMgc29tZXRoaW5nIG91dHNpZGUgdGhl
IFVCRCBkcml2ZXIgYXMgc3VjaC4gVGhlcmUgd2VyZSBubyAKPj4gbm90YWJsZSBjaGFuZ2VzIHRv
IGl0IHNpbmNlIHdlIHBvcnRlZCBpdCB0byBibG9jay1tcSBhbmQgYWRkZWQgRElTQ0FSRCAKPj4g
d2hpY2ggd2FzIHF1aXRlIGEgd2hpbGUgYmFjay4KPj4KPj4gSSBhbSBnb2luZyB0byBjaGVjayB0
aGUgb3RoZXIgdXN1YWwgc3VzcGVjdHMgc3VjaCBhcyBJUlFzLCBidXQgdGhhdCBpcyAKPj4gc29t
ZXRoaW5nIEkgdGVzdCBxdWl0ZSBleHRlbnNpdmVseSB3aGVuIHdvcmtpbmcgb24gdGhlIG5ldHdv
cmtpbmcgc2lkZS4KPj4KPj4gU28gSSBzdXNwZWN0IHRoYXQgdGhpcyBpcyBzb21ldGhpbmcgb3V0
c2lkZSBVTUwgd2hpY2ggaXMgc2hvd2luZyBvbmx5IAo+PiBpbiBVTUwgZm9yIHNvbWUgcmVhc29u
Lgo+IAo+IFN0aWxsIGhhcHBlbmluZyB3aXRoIDUuMi4yMSwgYWxiZWl0IGEgYml0IG1vcmUgZGlm
ZmljdWx0IHRvIHJlcHJvZHVjZS4KPiAKPiBMb29raW5nIGF0IHRoZSBiYWNrdHJhY2VzIGl0IGlz
IEFMV0FZUyBhIHJlc3VsdCBvZiBhIHJlLXF1ZXVlLgo+IAo+IFvCoCAyNjMuOTkwMDAwXcKgIFs8
NjA0NDA2MzM+XSBibGtfbXFfZGlzcGF0Y2hfcnFfbGlzdCsweGYzLzB4NWYwCj4gW8KgIDI2My45
OTAwMDBdwqAgWzw2MDQ0MDUwMT5dID8gYmxrX21xX2dldF9kcml2ZXJfdGFnKzB4YzEvMHgxMDAK
PiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQwNTQwPl0gPyBibGtfbXFfZGlzcGF0Y2hfcnFfbGlz
dCsweDAvMHg1ZjAKPiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDQ1OTY2Pl0gYmxrX21xX2RvX2Rp
c3BhdGNoX3NjaGVkKzB4NjYvMHhlMAo+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjA0NDYxMDc+XSBi
bGtfbXFfc2NoZWRfZGlzcGF0Y2hfcmVxdWVzdHMrMHgxMDcvMHgxOTAKPiBbwqAgMjYzLjk5MDAw
MF3CoCBbPDYwNDNmMTMwPl0gPyBibGtfbXFfcnVuX2h3X3F1ZXVlKzB4MC8weDEyMAo+IFvCoCAy
NjMuOTkwMDAwXcKgIFs8NjA0M2VmYjQ+XSBfX2Jsa19tcV9ydW5faHdfcXVldWUrMHg3NC8weGQw
Cj4gW8KgIDI2My45OTAwMDBdwqAgWzw2MDQzZjBkND5dIF9fYmxrX21xX2RlbGF5X3J1bl9od19x
dWV1ZSsweGM0LzB4ZDAKPiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwNDNmMWQ5Pl0gYmxrX21xX3J1
bl9od19xdWV1ZSsweGE5LzB4MTIwCj4gW8KgIDI2My45OTAwMDBdwqAgWzw2MDQzZjI5Mj5dIGJs
a19tcV9ydW5faHdfcXVldWVzKzB4NDIvMHg2MAo+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjA0NDBi
YzA+XSA/IGJsa19tcV9yZXF1ZXN0X2J5cGFzc19pbnNlcnQrMHgwLzB4OTAKPiBbwqAgMjYzLjk5
MDAwMF3CoCBbPDYwNDQ2MmEwPl0gPyBibGtfbXFfc2NoZWRfaW5zZXJ0X3JlcXVlc3QrMHgwLzB4
MWMwCj4gQUxXQVlTID4+W8KgIDI2My45OTAwMDBdwqAgWzw2MDQ0MTRiMD5dIGJsa19tcV9yZXF1
ZXVlX3dvcmsrMHgxNjAvMHgxNzAKPiBbwqAgMjYzLjk5MDAwMF3CoCBbPDYwMDhjOTFiPl0gcHJv
Y2Vzc19vbmVfd29yaysweDFlYi8weDQ5MAo+IFvCoCAyNjMuOTkwMDAwXcKgIFs8NjA3ZjVhYTA+
XSA/IF9fc2NoZWR1bGUrMHgwLzB4NjIwCj4gW8KgIDI2My45OTAwMDBdwqAgWzw2MDA4ZTAwMD5d
ID8gd3Ffd29ya2VyX3J1bm5pbmcrMHgxMC8weDQwCj4gW8KgIDI2My45OTAwMDBdwqAgWzw2MDA4
YzczMD5dID8gcHJvY2Vzc19vbmVfd29yaysweDAvMHg0OTAKPiBbwqAgMjYzLjk5MDAwMF3CoCBb
PDYwMDhjYzA2Pl0gd29ya2VyX3RocmVhZCsweDQ2LzB4NjcwCj4gW8KgIDI2My45OTAwMDBdwqAg
Wzw2MDA5MzFjMT5dID8gX19rdGhyZWFkX3BhcmttZSsweGExLzB4ZDAKPiBbwqAgMjYzLjk5MDAw
MF3CoCBbPDYwMDhjYmMwPl0gPyB3b3JrZXJfdGhyZWFkKzB4MC8weDY3MAo+IFvCoCAyNjMuOTkw
MDAwXcKgIFs8NjAwOGNiYzA+XSA/IHdvcmtlcl90aHJlYWQrMHgwLzB4NjcwCj4gW8KgIDI2My45
OTAwMDBdwqAgWzw2MDA5M2JjND5dIGt0aHJlYWQrMHgxOTQvMHgxYzAKPiBbwqAgMjYzLjk5MDAw
MF3CoCBbPDYwMDJhMDkxPl0gbmV3X3RocmVhZF9oYW5kbGVyKzB4ODEvMHhjMAo+IAo+IAo+IEEu
Cj4gCj4+Cj4+IEEuCj4+Cj4+Pgo+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoYW5rcywKPj4+Pj4gUml0ZXNo
Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+Pj4+IGxpbnV4LXVtIG1haWxpbmcgbGlzdAo+Pj4+PiBsaW51eC11bUBsaXN0
cy5pbmZyYWRlYWQub3JnCj4+Pj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtdW0KPj4+Pj4KPj4+Pgo+Pj4KPj4KPiAKClRvIHB1dCBhIGxvbmcgc3Rv
cnkgc2hvcnQgd2UgaGF2ZSBhIHJlcHJvZHVjaWJsZSBzZWdmYXVsdCB3aGVuIFVNTCAKcmUtcXVl
dWVzIGEgYmxvY2sgcmVxdWVzdCBpbiA1LngKClRoaXMgdXNlZCB0byB3b3JrIGluIDQueAoKV2Ug
Zm91bmQgYSBjb3VwbGUgb2YgbWlub3IgdGhpbmdzIGluIFVNTCB3aGVuIGxvb2tpbmcgYXQgaXQg
d2hpY2ggd2UgCndpbGwgZml4IHNob3J0bHksIGJ1dCB0aGUgcm9vdCBwcm9ibGVtIHNlZW1zIHRv
IGJlIGVpdGhlciBpbiBibG9ja19tcSBvciAKaW4gdGhlIHdheSB3ZSBhcmUgdXNpbmcgaXQgdG8g
cmUtcXVldWUgcmVxdWVzdHMuCgotLSAKQW50b24gUi4gSXZhbm92CkNhbWJyaWRnZWdyZXlzIExp
bWl0ZWQuIFJlZ2lzdGVyZWQgaW4gRW5nbGFuZC4gQ29tcGFueSBOdW1iZXIgMTAyNzM2NjEKaHR0
cHM6Ly93d3cuY2FtYnJpZGdlZ3JleXMuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC11bQo=
