Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C3A1A153
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 18:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z4UbRA3Ms8LSbTw3eSpgXmRxXsEMEEtRAhBoujloVJ8=; b=Grb36QzuqCCzwVZO12beF8diM
	ZQNY3tFhb6KUOJ8UNcL8SVygna5R7DtIP9w9qQTtQbM3CUp8KzbVPE8hdhubOVrxdz3rXRMsHJQB9
	Qgpg3cm1tQIS924xmXjc3A2VLQ0VmNLgZDMc4nwYteZeSCTDfUWOt/In6lz8uHrEQ0itCS9eXvmUc
	jq1CgC/jC4TFrj97DWnP0edQFKZiEOggMjjGItMleNBP4QteqdNQScMsAdlIZnpFqs89umxg3Ou8F
	imHG7eT32FNDT898yqLT3dk0wVSWg9rCAMHT5w1Snc57vE2iWHU5Jj7xTlbTIYIjhj5NvW0UlX+Bv
	pgKSCgZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP8I0-0002Hi-VM; Fri, 10 May 2019 16:22:28 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP8Hx-0002HH-Ea
 for linux-um@lists.infradead.org; Fri, 10 May 2019 16:22:27 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hP8Hs-0007I4-MT; Fri, 10 May 2019 16:22:20 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hP8Hq-0002GX-9D; Fri, 10 May 2019 17:22:20 +0100
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
To: Bartosz Golaszewski <brgl@bgdev.pl>, Richard Weinberger <richard@nod.at>
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
 <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
 <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
 <684874198.48863.1557299587958.JavaMail.zimbra@nod.at>
 <CAMRc=MdsA7A1DdS1ZJ8NS8xtuCjgc_7WZD1797H3oZ=2w+fOBA@mail.gmail.com>
 <CAMRc=McCxvwHgk-3wYE0e+qxJNoHK0AmpJWjNsOZBmGF2yFT6Q@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <c5918fa9-ec37-9636-5230-57260f7e8427@cambridgegreys.com>
Date: Fri, 10 May 2019 17:22:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMRc=McCxvwHgk-3wYE0e+qxJNoHK0AmpJWjNsOZBmGF2yFT6Q@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_092225_619918_5C100B86 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Ck9uIDEwLzA1LzIwMTkgMTc6MjAsIEJhcnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gcHQuLCAx
MCBtYWogMjAxOSBvIDExOjE2IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IG5h
cGlzYcWCKGEpOgo+PiDFm3IuLCA4IG1haiAyMDE5IG8gMDk6MTMgUmljaGFyZCBXZWluYmVyZ2Vy
IDxyaWNoYXJkQG5vZC5hdD4gbmFwaXNhxYIoYSk6Cj4+PiAtLS0tLSBVcnNwcsO8bmdsaWNoZSBN
YWlsIC0tLS0tCj4+Pj4+IENhbiB5b3UgcGxlYXNlIGNoZWNrPwo+Pj4+PiBUaGlzIHBhdGNoIGlz
IGFscmVhZHkgcXVldWVkIGluIC1uZXh0LiBTbyB3ZSBuZWVkIHRvIGRlY2lkZSB3aGV0aGVyIHRv
Cj4+Pj4+IHJldmVydCBvciBmaXggaXQgbm93Lgo+Pj4+Pgo+Pj4+IEkgYW0gbG9va2luZyBhdCBp
dC4gSXQgcGFzc2VkIHRlc3RzIGluIG15IGNhc2UgKEkgZGlkIHRoZSB1c3VhbCByb3VuZCkuCj4+
PiBJdCB3b3JrcyBoZXJlIHRvby4gVGhhdCdzIHdoeSBJIG5ldmVyIG5vdGljZWQuCj4+PiBZZXN0
ZXJkYXkgSSBub3RpY2VkIGp1c3QgYmVjYXVzZSBJIGxvb2tlZCBmb3Igc29tZXRoaW5nIGVsc2Ug
aW4gdGhlIGtlcm5lbCBsb2dzLgo+Pj4KPj4+IFRoYW5rcywKPj4+IC8vcmljaGFyZAo+PiBIaSwK
Pj4KPj4gc29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5IC0gSSBqdXN0IGNhbWUgYmFjayBmcm9tIHZh
Y2F0aW9uLgo+Pgo+PiBJIHNlZSBpdCBoZXJlIHRvbywgSSdsbCBjaGVjayBpZiBJIGNhbiBmaW5k
IHRoZSBjdWxwcml0IGFuZCBmaXggaXQgdG9kYXkuCj4+Cj4+IEJhcnQKPiBIaSBSaWNoYXJkLCBB
bnRvbiwKPgo+IEknbSBub3Qgc3VyZSB5ZXQgd2hhdCB0aGlzIGlzIGNhdXNlZCBieS4gSXQgZG9l
c24ndCBzZWVtIHRvIGJyZWFrCj4gYW55dGhpbmcgZm9yIG1lIGJ1dCBzaW5jZSBpdCdzIGEgbmV3
IGVycm9yIG1lc3NhZ2UgSSBndWVzcyBpdCdzIGJlc3QKPiB0byByZXZlcnQgdGhpcyBwYXRjaCAo
b3RoZXJzIGFyZSBnb29kKSBhbmQgcmV2aXNpdCBpdCBmb3IgdjUuMy4KCkNhbiB5b3Ugc2VuZCBt
ZSB5b3VyIGNvbW1hbmQgbGluZSBhbmQgLmNvbmZpZyBzbyBJIGNhbiB0cnkgdG8gcmVwcm9kdWNl
IGl0LgoKQnJnZHMsCgo+Cj4gQmFydAo+Ci0tIApBbnRvbiBSLiBJdmFub3YKQ2FtYnJpZGdlZ3Jl
eXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2
MQpodHRwczovL3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVt
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC11bQo=
