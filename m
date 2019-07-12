Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B923366A20
	for <lists+linux-um@lfdr.de>; Fri, 12 Jul 2019 11:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KhBUOU7j9WZ4OL5VShnglwoktjIuAeDQef2kIj7L08E=; b=FOuMEsypcpAi7Ao0eL2u16Gpt
	szL5H08jed1f9opB4UmJmTtkKdNFbEF6I4xXa23rrR+YCKodGS/rpaL/a6+BNHM7UfoSOU7vvrqKz
	QjFkS7IuHiusXn7NAY9XgdNjyJk9I3AfimwssXjjWwDj8K/u6aSRXFFv479JBpaj8aenRjNLrE42/
	1IcCPOEB+fEnPRqin+dFMEusmzI7PBumGhMjkR1HD8av9OuCgJ1hqwdkZU2LYrY6kygjBsNBIdLcl
	XaiTLH80uznds3IYpqM1cLQoX10CIa5aR886eMVDd3RGfI/Qp7Mg/fcfUYy4lYiUpcj88Yu/x3X+Q
	y/uRgGtjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hls2x-00060D-FO; Fri, 12 Jul 2019 09:40:55 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hls2t-0005zj-Sl
 for linux-um@lists.infradead.org; Fri, 12 Jul 2019 09:40:53 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hls2s-0007uZ-8A; Fri, 12 Jul 2019 09:40:50 +0000
Received: from [192.168.4.1] by jain.kot-begemot.co.uk with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hls2p-0002jh-R7; Fri, 12 Jul 2019 10:40:49 +0100
Subject: Re: [PATCH] User mode linux bump maximum MTU tuntap interface [RESAND]
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: Richard Weinberger <richard.weinberger@gmail.com>,
 =?UTF-8?B?0JDQu9C10LrRgdC10Lk=?= <ne-vlezay80@yandex.ru>
References: <54cee375-f1c3-a2b3-ea89-919b0af60433@yandex.ru>
 <fc526c78-2d3f-90ca-8317-a89eb653cbf9@yandex.ru>
 <CAFLxGvytDC1TFdT0m9vvijz_93B8TziWURcR-3mskWB-7TzFag@mail.gmail.com>
 <1fb36224-81c0-0c4c-72c4-5a60dfe207ef@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <a9f75b06-3534-2b8d-de06-4f18dae8ed95@cambridgegreys.com>
Date: Fri, 12 Jul 2019 10:40:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1fb36224-81c0-0c4c-72c4-5a60dfe207ef@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_024052_062237_BD2263B4 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, linux-um@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMTIvMDcvMjAxOSAxMDoyMiwgQW50b24gSXZhbm92IHdyb3RlOgo+IE9uIDAyLzA3LzIwMTkg
MTU6NDAsIFJpY2hhcmQgV2VpbmJlcmdlciB3cm90ZToKPj4gQ0MnaW5nIHVtIGZvbGtzLgo+Pgo+
PiBPbiBUdWUsIEp1bCAyLCAyMDE5IGF0IDM6MDEgUE0g0JDQu9C10LrRgdC10LkgPG5lLXZsZXph
eTgwQHlhbmRleC5ydT4gd3JvdGU6Cj4+Pgo+Pj4gSGVsbG8sIHRoZSBwYXJhbWV0ZXLCoCBFVEhf
TUFYX1BBQ0tFVCBsaW1pdGVkIHRvIDE1MDAgYnl0ZXMgaXMgdGhlIG5vdAo+Pj4gc3VwcG9ydCBq
dW1ibyBmcmFtZXMuCj4+Pgo+Pj4gVGhpcyBwYXRjaCBjaGFuZ2UgRVRIX01BWF9QQUNLRVQgdGhl
IDY1NTM1IGJ5dGVzIHRvIGp1bWJvIGZyYW1lIHN1cHBvcnQKPj4+IHdpdGggdXNlciBtb2RlIGxp
bnV4IHR1bnRhcCBkcml2ZXIuCj4+Pgo+Pj4KPj4+IFBBVENIOgo+Pj4KPj4+IC0tLS0tLS0tLS0t
LS0tLS0tLS0KPj4+Cj4+Pgo+Pj4gZGlmZiAtcnVOUCAuLi9saW51eF9vcmlnL2xpbnV4LTUuMS9h
cmNoL3VtL2luY2x1ZGUvc2hhcmVkL25ldF91c2VyLmgKPj4+IC4vYXJjaC91bS9pbmNsdWRlL3No
YXJlZC9uZXRfdXNlci5oCj4+PiAtLS0gYS9hcmNoL3VtL2luY2x1ZGUvc2hhcmVkL25ldF91c2Vy
LmjCoMKgwqAgMjAxOS0wNS0wNiAwMDo0Mjo1OC4wMDAwMDAwMDAKPj4+ICswMDAwCj4+PiArKysg
Yi9hcmNoL3VtL2luY2x1ZGUvc2hhcmVkL25ldF91c2VyLmjCoMKgwqAgMjAxOS0wNy0wMiAwNzox
NDoxMy41OTMzMzMzNTYKPj4+ICswMDAwCj4+PiBAQCAtOSw3ICs5LDcgQEAKPj4+IMKgICNkZWZp
bmUgRVRIX0FERFJfTEVOICg2KQo+Pj4gwqAgI2RlZmluZSBFVEhfSEVBREVSX0VUSEVSVEFQICgx
NikKPj4+IMKgICNkZWZpbmUgRVRIX0hFQURFUl9PVEhFUiAoMjYpIC8qIDE0IGZvciBldGhlcm5l
dCArIFZMQU4gKyBNUExTIGZvcgo+Pj4gY3JhenkgcGVvcGxlICovCj4+PiAtI2RlZmluZSBFVEhf
TUFYX1BBQ0tFVCAoMTUwMCkKPj4+ICsjZGVmaW5lIEVUSF9NQVhfUEFDS0VUICg2NTUzNSkKPj4+
Cj4+PiDCoCAjZGVmaW5lIFVNTF9ORVRfVkVSU0lPTiAoNCkKPj4+Cj4+PiAtLS0tLS0tLS0tLS0t
LS0tLS0tCj4+Pgo+Pj4KPj4KPj4KPiAKPiBUaGlzIGRvZXMgbm90IHF1aXRlIHdvcmsgYmVjYXVz
ZSBpbiBzb21lIG9mIHRoZSBkcml2ZXJzIHlvdSBnZXQgZXh0cmEgCj4gYWRkZWQgb24gdG9wIG9m
IHRoaXMgY29uc3RhbnQuCj4gCj4gSSBhbSBnb2luZyB0byBzZWUgd2hhdCBjYW4gYmUgZG9uZSB0
byBmaXggdGhlIG9sZCBuZXQqIGRyaXZlcnMsIGltaG8gd2UgCj4gc2hvdWxkIHN0YXJ0IHBoYXNp
bmcgdGhlbSBvdXQgaW4gZmF2b3Igb2YgdGhlIHZlY3RvciBvbmVzLgo+IAoKSW4gZmFjdCBpdCBk
b2VzIG5vdCB3b3JrIGV2ZW4gZm9yIGxvd2VyIHZhbHVlcyBiZWNhdXNlIHRoZSBvbGQgbmV0XyAK
ZmFtaWx5IGFzc3VtZXMgYSBjb250aWd1b3VzIHNrYiBidWZmZXIgYW5kIHVzZXMgcmVhZC93cml0
ZSBmdW5jdGlvbnMgCndoaWNoIHJlYWQgdGhlIHdob2xlIHBhY2tldCBpbnRvIGl0IGF0IG9uY2Uu
IFRoYXQgaXMgdGhlIGJ1ZmZlciBpdCBnZXQgCmlmIGl0IGFza3MgZm9yIGFueXRoaW5nIGxlc3Mg
dGhhbiBTS0JfV0lUSF9PVkVSSEVBRChQQUdFX1NJWkUpLgoKSWYgaXQgYXNrcyBmb3IgbW9yZSB0
aGVyZSBpcyBubyBndWFyYW50ZWUgdGhhdCB0aGUgcmVzdWx0aW5nIGJ1ZmZlciB3aWxsIApiZSBj
b250aWd1b3VzIC0gaXQgbWF5IGdldCBhIHNlZ21lbnRlZCBza2IgYW5kIHdpbGwgbmVlZCB0byB1
c2UgCmFwcHJvcHJpYXRlIGZ1bmN0aW9ucyB0byByZWFkL3dyaXRlIGludG8gc2VnbWVudHMuCgpJ
ZiB5b3UganVzdCB1cCB0aGUgTVRVIHdpdGhvdXQgZml4aW5nIHRoZSB1bmRlcmx5aW5nIHRyYW5z
cG9ydCB5b3UgZ2V0IAptZW1vcnkgY29ycnVwdGlvbi4KCklmIHdlIGFyZSB0byBzdXBwb3J0IHRo
aXMgSSBoYXZlIHRvIHJld3JpdGUgdGhlIHdob2xlIGRyaXZlciBzZXQgYW5kIGl0IAp3aWxsIGZy
YW5rbHkgYmUgZWFzaWVyIHRvIGp1c3QgbWFrZSB0aGVtIHVzZSB2ZWN0b3IgZHJpdmVycyB1bmRl
cm5lYXRoIAphbmQgc2V0IHRoZSBuYW1lcyB0byBiZSBldGhYIGluc3RlYWQuCgpJbiBmYWN0LCBJ
IHdpbGwgcHJvYmFibHkgZG8gYSBwYXRjaCB0aGF0IGRvZXMgdGhhdCB0aGUgbW9tZW50IEkgZmlu
aXNoIAphZGRpbmcgYWxsIGV4aXN0aW5nIHNvY2tldCB0cmFuc3BvcnRzIHRvIHZlY3Rvcl91c2Vy
LmMuCgotLSAKQW50b24gUi4gSXZhbm92CkNhbWJyaWRnZWdyZXlzIExpbWl0ZWQuIFJlZ2lzdGVy
ZWQgaW4gRW5nbGFuZC4gQ29tcGFueSBOdW1iZXIgMTAyNzM2NjEKaHR0cHM6Ly93d3cuY2FtYnJp
ZGdlZ3JleXMuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
