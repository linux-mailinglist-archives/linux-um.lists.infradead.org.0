Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C63329A2
	for <lists+linux-um@lfdr.de>; Mon,  3 Jun 2019 09:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A5SZEt6HbOSkIdOWnoKtzTjS/frg6vPlgsrgCsclXgk=; b=kuIdzvhIvo6X6X11ZoEpbs2on
	PL1aHUSgx7McGKZ6qEE927YG93A4fqkEsG1YE+7htUW+OPJigamK8abbTs49J/Y7fszH/XKj9B8cY
	VPTQg8BQy2tt8LYXky5/z5XDdOT2iSsAZAihTzmcZ2zkSCBnCuh8YE2jltbAYYU3Hexl2ZfeX50QP
	HurotLBZbS6Aujhek5z/YCXfwlrMWJBCUrmKTS12adjjy7UETS/gdFTdTPTp5h2MbsuKrovtQWw+y
	k222hqU5vXAbQqYSqd0n81AWEUVGZx7XNpONysUuliiHJN1wCxus8GLmLkcdG+MZXmOAO7Ur2omHO
	HzJETSMFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhRF-00033L-PG; Mon, 03 Jun 2019 07:31:25 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhRD-00032m-5S
 for linux-um@lists.infradead.org; Mon, 03 Jun 2019 07:31:25 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hXgrK-0006IC-6K; Mon, 03 Jun 2019 06:54:19 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hXgrH-0000jX-CI; Mon, 03 Jun 2019 07:54:17 +0100
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
To: djohns042@gmail.com, Bartosz Golaszewski <brgl@bgdev.pl>
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
 <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
 <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
 <684874198.48863.1557299587958.JavaMail.zimbra@nod.at>
 <CAMRc=MdsA7A1DdS1ZJ8NS8xtuCjgc_7WZD1797H3oZ=2w+fOBA@mail.gmail.com>
 <CAMRc=McCxvwHgk-3wYE0e+qxJNoHK0AmpJWjNsOZBmGF2yFT6Q@mail.gmail.com>
 <c5918fa9-ec37-9636-5230-57260f7e8427@cambridgegreys.com>
 <CAMRc=MeOHr0bKJYGgOrhHq4dYFwCnpYvuFAL3jZerwCPvQgC3Q@mail.gmail.com>
 <0aa6028b-7b7b-4123-07a3-786f700f3c14@gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <28917cf9-9192-11a4-7ebd-a21ed2fea71d@cambridgegreys.com>
Date: Mon, 3 Jun 2019 07:54:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0aa6028b-7b7b-4123-07a3-786f700f3c14@gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_003123_336813_4B998C3A 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAzMS8wNS8yMDE5IDExOjMwLCBEYW5hIEpvaG5zb24gd3JvdGU6Cj4gT24gNS8xMS8xOSA1
OjQ4IEFNLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+PiBwdC4sIDEwIG1haiAyMDE5IG8g
MTg6MjIgQW50b24gSXZhbm92Cj4+IDxhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPiBu
YXBpc2HFgihhKToKPj4+Cj4+Pgo+Pj4gT24gMTAvMDUvMjAxOSAxNzoyMCwgQmFydG9zeiBHb2xh
c3pld3NraSB3cm90ZToKPj4+PiBwdC4sIDEwIG1haiAyMDE5IG8gMTE6MTYgQmFydG9zeiBHb2xh
c3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gbmFwaXNhxYIoYSk6Cj4+Pj4+IMWbci4sIDggbWFqIDIw
MTkgbyAwOToxMyBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0PiBuYXBpc2HFgihh
KToKPj4+Pj4+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPj4+Pj4+Pj4gQ2FuIHlv
dSBwbGVhc2UgY2hlY2s/Cj4+Pj4+Pj4+IFRoaXMgcGF0Y2ggaXMgYWxyZWFkeSBxdWV1ZWQgaW4g
LW5leHQuIFNvIHdlIG5lZWQgdG8gZGVjaWRlIHdoZXRoZXIgdG8KPj4+Pj4+Pj4gcmV2ZXJ0IG9y
IGZpeCBpdCBub3cuCj4+Pj4+Pj4+Cj4+Pj4+Pj4gSSBhbSBsb29raW5nIGF0IGl0LiBJdCBwYXNz
ZWQgdGVzdHMgaW4gbXkgY2FzZSAoSSBkaWQgdGhlIHVzdWFsIHJvdW5kKS4KPj4+Pj4+IEl0IHdv
cmtzIGhlcmUgdG9vLiBUaGF0J3Mgd2h5IEkgbmV2ZXIgbm90aWNlZC4KPj4+Pj4+IFllc3RlcmRh
eSBJIG5vdGljZWQganVzdCBiZWNhdXNlIEkgbG9va2VkIGZvciBzb21ldGhpbmcgZWxzZSBpbiB0
aGUga2VybmVsIGxvZ3MuCj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzLAo+Pj4+Pj4gLy9yaWNoYXJkCj4+
Pj4+IEhpLAo+Pj4+Pgo+Pj4+PiBzb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkgLSBJIGp1c3QgY2Ft
ZSBiYWNrIGZyb20gdmFjYXRpb24uCj4+Pj4+Cj4+Pj4+IEkgc2VlIGl0IGhlcmUgdG9vLCBJJ2xs
IGNoZWNrIGlmIEkgY2FuIGZpbmQgdGhlIGN1bHByaXQgYW5kIGZpeCBpdCB0b2RheS4KPj4+Pj4K
Pj4+Pj4gQmFydAo+Pj4+IEhpIFJpY2hhcmQsIEFudG9uLAo+Pj4+Cj4+Pj4gSSdtIG5vdCBzdXJl
IHlldCB3aGF0IHRoaXMgaXMgY2F1c2VkIGJ5LiBJdCBkb2Vzbid0IHNlZW0gdG8gYnJlYWsKPj4+
PiBhbnl0aGluZyBmb3IgbWUgYnV0IHNpbmNlIGl0J3MgYSBuZXcgZXJyb3IgbWVzc2FnZSBJIGd1
ZXNzIGl0J3MgYmVzdAo+Pj4+IHRvIHJldmVydCB0aGlzIHBhdGNoIChvdGhlcnMgYXJlIGdvb2Qp
IGFuZCByZXZpc2l0IGl0IGZvciB2NS4zLgo+Pj4KPj4+IENhbiB5b3Ugc2VuZCBtZSB5b3VyIGNv
bW1hbmQgbGluZSBhbmQgLmNvbmZpZyBzbyBJIGNhbiB0cnkgdG8gcmVwcm9kdWNlIGl0Lgo+Pj4K
Pj4KPj4gU3VyZSwKPj4KPj4gdGhlIGNvbW1hbmQgbGluZSBpczoKPj4KPj4gLi9saW51eCByb290
ZnN0eXBlPWhvc3RmcyByb290ZmxhZ3M9PHBhdGggdG8gYSByZWd1bGFyIGJ1aWxkcm9vdAo+PiBy
b290ZnM+IHJ3IG1lbT00OE0KPj4KPj4gVGhlIGNvbmZpZyBpcyB0aGUgcmVndWxhciB4ODZfNjRf
ZGVmY29uZmlnIGZyb20gYXJjaC91bS4KPj4KPj4gQmFydAo+Pgo+ICAgCj4gSSBoaXQgdGhpcyBj
b21waWxpbmcgNS4yLjAtcmMyLTAwMDI0LWdiZWM3NTUwY2NhMTAKPiAKPiBJIGNhbiB0cmlnZ2Vy
Ogo+IAo+IFRyeWluZyB0byByZXJlZ2lzdGVyIElSUSAxMSBGRCA5IFRZUEUgMCBJRCAoX19fX3B0
cnZhbF9fX18pCj4gd3JpdGVfc2lnaW9faXJxIDogdW1fcmVxdWVzdF9pcnEgZmFpbGVkLCBlcnIg
PSAtMTYKPiAKPiBkdXJpbmcgYm9vdCB3aGVuOgo+IAo+ICMgQ09ORklHX1VNTF9ORVRfVkVDVE9S
IGlzIG5vdCBzZXQKPiAKPiBMb29raW5nIGF0IHRoZSBjb2RlIHRoZXJlIHNlZW1zIHRvIGJlIGEg
b25lIG9mZiBlcnJvcgo+IGluIHRoZSBMQVNUX0lSUSBjYWxjdWxhdGlvbiB3aGVuIENPTkZJR19V
TUxfTkVUX1ZFQ1RPUiBpcyBlbmFibGVkLgo+IEluIHRoYXQgY2FzZSB0aGUgcGF0Y2ggc2hvdWxk
IGJlIHJldmVydGVkIGFuZCB0aGUgZm9sbG93aW5nIGFwcGxpZWQ6Cj4gCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvdW0vaW5jbHVkZS9hc20vaXJxLmggYi9hcmNoL3VtL2luY2x1ZGUvYXNtL2lycS5o
Cj4gaW5kZXggNDllZDNlMzViMzVhLi5jZTdhNzhjM2JjZjIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC91
bS9pbmNsdWRlL2FzbS9pcnEuaAo+ICsrKyBiL2FyY2gvdW0vaW5jbHVkZS9hc20vaXJxLmgKPiBA
QCAtMjMsNyArMjMsNyBAQAo+ICAgI2RlZmluZSBWRUNUT1JfQkFTRV9JUlEgICAgICAgICAgICAg
ICAgMTUKPiAgICNkZWZpbmUgVkVDVE9SX0lSUV9TUEFDRSAgICAgICA4Cj4gCj4gLSNkZWZpbmUg
TEFTVF9JUlEgKFZFQ1RPUl9JUlFfU1BBQ0UgKyBWRUNUT1JfQkFTRV9JUlEpCj4gKyNkZWZpbmUg
TEFTVF9JUlEgKFZFQ1RPUl9JUlFfU1BBQ0UgKyBWRUNUT1JfQkFTRV9JUlEgLSAxKQo+CgpUaGF0
IGRvZXMgbm90IHdvcmsuIFZlY3RvciBJUlFzIGFyZSBhbGxvY2F0ZWQgbW9kdWxvIFZFQ1RPUl9J
UlFfU1BBQ0UuIApMaW5lIDEyMTkgYW5kIDEyMzQgaW4gdmVjdG9yX2tlcm4uYy4KCmlycV9yciA9
IChpcnFfcnIgKyAxKSAlIFZFQ1RPUl9JUlFfU1BBQ0U7CgojZGVmaW5lIExBU1RfSVJRIChWRUNU
T1JfSVJRX1NQQUNFICsgVkVDVE9SX0JBU0VfSVJRIC0gMSkgd2lsbCAKZGVmaW5pdGVseSBnaXZl
IG9mZi1ieS1vbmUgaWYgdmVjdG9yIG5ldHdvcmsgZHJpdmVycyBhcmUgZW5hYmxlZC4KCklSUSAx
MSBpcyBzaWdpbywgdGhpcyBpcyBzb21ldGhpbmcgZWxzZS4KCkNhbiBJIGhhdmUgeW91ciAuY29u
ZmlnIHBsZWFzZSBzbyBJIGNhbiB0cnkgdG8gcmVwcm9kdWNlIGl0LgoKPiAgICNlbHNlCj4gCj4g
RGFuYQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gbGludXgtdW0gbWFpbGluZyBsaXN0Cj4gbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwo+
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0KPiAK
Ci0tIApBbnRvbiBSLiBJdmFub3YKQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBp
biBFbmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2MQpodHRwczovL3d3dy5jYW1icmlkZ2Vn
cmV5cy5jb20vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
