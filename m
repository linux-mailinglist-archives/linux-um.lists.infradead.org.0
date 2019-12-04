Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6029C112947
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 11:27:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h5ql+BFZcZvOorJSnQNO1mzOIXEgXiP/0ODgmj7L+a0=; b=SoSi63DF5BQ+ntG3mK8K5TfOI
	GZDcaSYxcK3mi5l6DCu6ewEZefpU5bbsMqEvAgIzUpfqPXFy2rfbYO9RDIcVQjqXPa64zUpZIHQo6
	CvcFg/PxK7AsFcHQp60Px51VN0EwlEY0Ul4/VkfL43PUdzUwTPF0jjQbetAq0zthhRWlIzJwk/54p
	tX72w9WfjROcU7fbsSVRc072RX8WH7etOW+mHV9mmI8/nGIbyXUeyw5BgvB81aZb42RvSjc+omXm/
	FMOeJqHqJA8Ae+xRHhBwpowIeg7ceruSW3une26JPkfKOatzmZsmllvbFCAak6LOn+q7pw5YT2JA6
	S8gsCD/JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRsr-0005Iv-6Z; Wed, 04 Dec 2019 10:27:49 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRsp-0005Ib-0x
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 10:27:48 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icRsn-0003sm-Jq; Wed, 04 Dec 2019 10:27:45 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icRsl-0004M2-8M; Wed, 04 Dec 2019 10:27:45 +0000
Subject: Re: I get 5.4 fail to start
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
 <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
 <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
 <CAMuHMdVrLPKwXxfyG3-Y5yUF9KPrTzosydxN1rkBFcJXsWi86Q@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <a9620d0a-31cd-f208-76de-63406496e4a0@cambridgegreys.com>
Date: Wed, 4 Dec 2019 10:27:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVrLPKwXxfyG3-Y5yUF9KPrTzosydxN1rkBFcJXsWi86Q@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_022747_066291_71CC43F7 
X-CRM114-Status: GOOD (  15.24  )
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAwNC8xMi8yMDE5IDEwOjEzLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gSGkgQW50
b24sCj4gCj4gT24gV2VkLCBEZWMgNCwgMjAxOSBhdCAxMDoyMCBBTSBBbnRvbiBJdmFub3YKPiA8
YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4gd3JvdGU6Cj4+IE9uIDA0LzEyLzIwMTkg
MDk6MDMsIFJpY2hhcmQgV2VpbmJlcmdlciB3cm90ZToKPj4+IC0tLS0tIFVyc3Byw7xuZ2xpY2hl
IE1haWwgLS0tLS0KPj4+PiBWb246ICJhbnRvbiBpdmFub3YiIDxhbnRvbi5pdmFub3ZAY2FtYnJp
ZGdlZ3JleXMuY29tPgo+Pj4+PiBbc25pcF0KPj4+Pgo+Pj4+IElmIEkgY29tbWVudCBvdXQgdGhl
IGNoZWNrcyBvciBtYWtlIHRoZW0gdG8gZXhwZWN0IDYgaXQgcnVucyBmaW5lIGFmdGVyCj4+Pj4g
dGhhdC4KPj4+Pgo+Pj4+IE5vIGlkZWEgd2hhdCdzIGdvaW5nIG9uIC0gSSBkbyBub3Qgc2VlIHdo
ZXJlIHRoZSA2IGNhbiBjb21lIGZyb20uCj4+Pgo+Pj4gSSBzdXNwZWN0IGEgY2hhbmdlL3JlZ3Jl
c3Npb24gb24gdGhlIGhvc3Qgc2lkZSwgbm90IHRoZSBVTUwgc2lkZS4KPj4+IE1heWJlIHNvbWUg
TFNNIG1vZHVsZSB3aGljaCBtYWtlcyBwdHJhY2UoKSAiYmV0dGVyIj8KPj4KPj4gVGhpcyBpcyBw
b3NzaWJsZS4gSSB3aWxsIHJ1biBob3N0IHJlZ3Jlc3Npb24gYXMgd2VsbCB0byBzZWUgaWYgaXQg
aXMgYW55Cj4+IGRpZmZlcmVudC4KPj4KPj4gSSBzdGlsbCBkbyBub3QgaGF2ZSBhbnkgaWRlYXMg
b24gd2h5IGRvIEkgZ2V0IFVNTCB3aXRoIHVwIHRvIDUuMyBndWVzdAo+PiB3b3JraW5nIGFuZCBi
cmVha2luZyBpbiA1LjQgYW5kIDUuNS1yYy4uLgo+Pgo+PiBUaGUgY2hhbmdlIGluIHRoYXQgY2Fz
ZSBpcyBndWVzdCBvbmx5IC0gdGhleSBhcmUgYWxsIGJlaW5nIHJ1biBvbiB0aGUKPj4gc2FtZSA1
LjMgaG9zdCAoYW5kIG9jY2FzaW9uYWxseSBvbiBhIDQuMTkpLgo+Pgo+PiBJIGFtIGdvaW5nIHRo
cm91Z2ggdGhlIGtidWlsZCBhbmQgbWFrZWZpbGUgY2hhbmdlcyBiZXR3ZWVuIDUuMyBhbmQgNS40
Cj4+IGF0IHRoZSBtb21lbnQgdG8gdHJ5IHRvIGZpZ3VyZSBpdCBvdXQuCj4gCj4gSGF2ZSB5b3Ug
dHJpZWQgZ2l0IGJpc2VjdD8KClVuZGVyIHdheSBhdCB0aGUgbW9tZW50LiBJIGZpcnN0IHRyaWVk
IHRvIGhhdmUgYSBsb29rIGF0IHVzdWFsIHN1c3BlY3RzIApiZWZvcmUgSSByZXNvcnRlZCB0byB0
aGF0IGJlY2F1c2UgdGhlIHdpbmRvdyBpcyBxdWl0ZSBiaWcuCgpJIGhhdmUgNS4zIC0gZ29vZCBh
bmQgNS40LXJjMSBiYWQgd2hpY2ggaXMgMTI3MzMgY29tbWl0cyA6KQoKCgo+IAo+IEdye29ldGpl
LGVldGluZ31zLAo+IAo+ICAgICAgICAgICAgICAgICAgICAgICAgICBHZWVydAo+IAoKLS0gCkFu
dG9uIFIuIEl2YW5vdgpDYW1icmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xh
bmQuIENvbXBhbnkgTnVtYmVyIDEwMjczNjYxCmh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNv
bS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
