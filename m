Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C366669D5
	for <lists+linux-um@lfdr.de>; Fri, 12 Jul 2019 11:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VfPVcXwRWIpmWV0PeUfihVQr5FWyWsM2q2nO78vVe+s=; b=uTjfbkHdNtQdJdSjo2UvaPhgk
	DB72mCZ+PWrS2/GOpCkszG7qiXKwqfT1x+HMxZrN3GN4Owfg6JLQDYjFDF0AOttRYCOSNgk+gxKbr
	Cgnasxc2W4AS6XsyqiDiwG4B8hPqKATcHxJMBisD5RdtAmhOqoIuUOvolWA8mD85vvvDIubZvGbT6
	RNzDfo/EcMFxHvnu23rXtxlUVLEoDNOrv8E9gMTJUHMtN4iSCyQz2RzNdo3Z3Nb7o3TQhJtWkvy7N
	SgAhSE09lIWH20ba3JCeD7WIc6ZIwOGDvUCSFiaPwxsGOT+9J08Sg48M6cIbLNC8apdau9gGnD9n7
	RTEbNDezA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlrlS-0003f8-NV; Fri, 12 Jul 2019 09:22:50 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlrlP-0003eb-4Q
 for linux-um@lists.infradead.org; Fri, 12 Jul 2019 09:22:48 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hlrlL-0007qc-UO; Fri, 12 Jul 2019 09:22:44 +0000
Received: from [192.168.4.1] by jain.kot-begemot.co.uk with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hlrlJ-0002Q0-N2; Fri, 12 Jul 2019 10:22:43 +0100
Subject: Re: [PATCH] User mode linux bump maximum MTU tuntap interface [RESAND]
To: Richard Weinberger <richard.weinberger@gmail.com>,
 =?UTF-8?B?0JDQu9C10LrRgdC10Lk=?= <ne-vlezay80@yandex.ru>
References: <54cee375-f1c3-a2b3-ea89-919b0af60433@yandex.ru>
 <fc526c78-2d3f-90ca-8317-a89eb653cbf9@yandex.ru>
 <CAFLxGvytDC1TFdT0m9vvijz_93B8TziWURcR-3mskWB-7TzFag@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <1fb36224-81c0-0c4c-72c4-5a60dfe207ef@cambridgegreys.com>
Date: Fri, 12 Jul 2019 10:22:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAFLxGvytDC1TFdT0m9vvijz_93B8TziWURcR-3mskWB-7TzFag@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_022247_306337_3FA721BA 
X-CRM114-Status: GOOD (  10.26  )
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

T24gMDIvMDcvMjAxOSAxNTo0MCwgUmljaGFyZCBXZWluYmVyZ2VyIHdyb3RlOgo+IENDJ2luZyB1
bSBmb2xrcy4KPiAKPiBPbiBUdWUsIEp1bCAyLCAyMDE5IGF0IDM6MDEgUE0g0JDQu9C10LrRgdC1
0LkgPG5lLXZsZXpheTgwQHlhbmRleC5ydT4gd3JvdGU6Cj4+Cj4+IEhlbGxvLCB0aGUgcGFyYW1l
dGVyICBFVEhfTUFYX1BBQ0tFVCBsaW1pdGVkIHRvIDE1MDAgYnl0ZXMgaXMgdGhlIG5vdAo+PiBz
dXBwb3J0IGp1bWJvIGZyYW1lcy4KPj4KPj4gVGhpcyBwYXRjaCBjaGFuZ2UgRVRIX01BWF9QQUNL
RVQgdGhlIDY1NTM1IGJ5dGVzIHRvIGp1bWJvIGZyYW1lIHN1cHBvcnQKPj4gd2l0aCB1c2VyIG1v
ZGUgbGludXggdHVudGFwIGRyaXZlci4KPj4KPj4KPj4gUEFUQ0g6Cj4+Cj4+IC0tLS0tLS0tLS0t
LS0tLS0tLS0KPj4KPj4KPj4gZGlmZiAtcnVOUCAuLi9saW51eF9vcmlnL2xpbnV4LTUuMS9hcmNo
L3VtL2luY2x1ZGUvc2hhcmVkL25ldF91c2VyLmgKPj4gLi9hcmNoL3VtL2luY2x1ZGUvc2hhcmVk
L25ldF91c2VyLmgKPj4gLS0tIGEvYXJjaC91bS9pbmNsdWRlL3NoYXJlZC9uZXRfdXNlci5oICAg
IDIwMTktMDUtMDYgMDA6NDI6NTguMDAwMDAwMDAwCj4+ICswMDAwCj4+ICsrKyBiL2FyY2gvdW0v
aW5jbHVkZS9zaGFyZWQvbmV0X3VzZXIuaCAgICAyMDE5LTA3LTAyIDA3OjE0OjEzLjU5MzMzMzM1
Ngo+PiArMDAwMAo+PiBAQCAtOSw3ICs5LDcgQEAKPj4gICAjZGVmaW5lIEVUSF9BRERSX0xFTiAo
NikKPj4gICAjZGVmaW5lIEVUSF9IRUFERVJfRVRIRVJUQVAgKDE2KQo+PiAgICNkZWZpbmUgRVRI
X0hFQURFUl9PVEhFUiAoMjYpIC8qIDE0IGZvciBldGhlcm5ldCArIFZMQU4gKyBNUExTIGZvcgo+
PiBjcmF6eSBwZW9wbGUgKi8KPj4gLSNkZWZpbmUgRVRIX01BWF9QQUNLRVQgKDE1MDApCj4+ICsj
ZGVmaW5lIEVUSF9NQVhfUEFDS0VUICg2NTUzNSkKPj4KPj4gICAjZGVmaW5lIFVNTF9ORVRfVkVS
U0lPTiAoNCkKPj4KPj4gLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pgo+Pgo+IAo+IAoKVGhpcyBkb2Vz
IG5vdCBxdWl0ZSB3b3JrIGJlY2F1c2UgaW4gc29tZSBvZiB0aGUgZHJpdmVycyB5b3UgZ2V0IGV4
dHJhIAphZGRlZCBvbiB0b3Agb2YgdGhpcyBjb25zdGFudC4KCkkgYW0gZ29pbmcgdG8gc2VlIHdo
YXQgY2FuIGJlIGRvbmUgdG8gZml4IHRoZSBvbGQgbmV0KiBkcml2ZXJzLCBpbWhvIHdlIApzaG91
bGQgc3RhcnQgcGhhc2luZyB0aGVtIG91dCBpbiBmYXZvciBvZiB0aGUgdmVjdG9yIG9uZXMuCgot
LSAKQW50b24gUi4gSXZhbm92CkNhbWJyaWRnZWdyZXlzIExpbWl0ZWQuIFJlZ2lzdGVyZWQgaW4g
RW5nbGFuZC4gQ29tcGFueSBOdW1iZXIgMTAyNzM2NjEKaHR0cHM6Ly93d3cuY2FtYnJpZGdlZ3Jl
eXMuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
