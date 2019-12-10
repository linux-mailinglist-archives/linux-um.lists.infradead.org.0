Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9B711813D
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 08:20:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L1MnBKHKqPePLL1g8qCrFCif++nFoMeVVZAS+o7v3A4=; b=Ls3o8mEjMIuCYoX9bHOQBhCcd
	x94+d/W3R07Vu71NwPfwrCSolH5lc5S6F7ahV0uyfJer7XMnnE/YDHqqhVkHFulMuJW0pTE4qK+Y1
	hGseuKpwfUBU39gAf7PU+BODOvUzRGWMDgE3++CXJJGF8CF7dT6LPHBQ9U87OxoKPbaIT5g4vOqkf
	0XM86Cj9gm5jgul2FvH/ul+pYEcvVymkjE4ic2Y35RldgwhIAM6FXV7h/Zrdn2Pzxbws0m4F3zT3i
	VQXYCYf5Wn4VaX23akqFGfbhzRiNIhPZdKfvE7j/iXi0Yrn1TaNQdE6/oqvGny9Oz0DO16q3rCknr
	Kxv12Tw/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZpH-0006WV-J2; Tue, 10 Dec 2019 07:20:55 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZpF-0006WB-4w
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 07:20:54 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieZpC-0001PM-0K; Tue, 10 Dec 2019 07:20:51 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieZp9-0002xH-E2; Tue, 10 Dec 2019 07:20:49 +0000
Subject: Re: [PATCH v1] uml: remove support for CONFIG_STATIC_LINK
To: Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>
References: <20191209230248.227508-1-brendanhiggins@google.com>
 <1406826345.111805.1575933346955.JavaMail.zimbra@nod.at>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <2eecf4dc-eb96-859a-a015-1a4f388b57a2@cambridgegreys.com>
Date: Tue, 10 Dec 2019 07:20:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1406826345.111805.1575933346955.JavaMail.zimbra@nod.at>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_232053_189918_55B66ACF 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: davidgow@google.com, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Johannes Berg <johannes.berg@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMDkvMTIvMjAxOSAyMzoxNSwgUmljaGFyZCBXZWluYmVyZ2VyIHdyb3RlOgo+IC0tLS0tIFVy
c3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPj4gVm9uOiAiQnJlbmRhbiBIaWdnaW5zIiA8YnJlbmRh
bmhpZ2dpbnNAZ29vZ2xlLmNvbT4KPj4gQW46ICJKZWZmIERpa2UiIDxqZGlrZUBhZGR0b2l0LmNv
bT4sICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+LCAiYW50b24gaXZhbm92IiA8YW50b24uaXZh
bm92QGNhbWJyaWRnZWdyZXlzLmNvbT4KPj4gQ0M6ICJKb2hhbm5lcyBCZXJnIiA8am9oYW5uZXMu
YmVyZ0BpbnRlbC5jb20+LCAibGludXgtdW0iIDxsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3Jn
PiwgImxpbnV4LWtlcm5lbCIKPj4gPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+LCBkYXZp
ZGdvd0Bnb29nbGUuY29tLCAiQnJlbmRhbiBIaWdnaW5zIiA8YnJlbmRhbmhpZ2dpbnNAZ29vZ2xl
LmNvbT4KPj4gR2VzZW5kZXQ6IERpZW5zdGFnLCAxMC4gRGV6ZW1iZXIgMjAxOSAwMDowMjo0OAo+
PiBCZXRyZWZmOiBbUEFUQ0ggdjFdIHVtbDogcmVtb3ZlIHN1cHBvcnQgZm9yIENPTkZJR19TVEFU
SUNfTElOSwo+IAo+PiBDT05GSUdfU1RBVElDX0xJTksgYXBwZWFycyB0byBoYXZlIGJlZW4gYnJv
a2VuIHNpbmNlIGJlZm9yZSB2NC4yMC4gSXQKPj4gZG9lc24ndCBwbGF5IG5pY2Ugd2l0aCBDT05G
SUdfVU1MX05FVF9WRUNUT1I9eToKPj4KPj4gL3Vzci9iaW4vbGQ6IGFyY2gvdW0vZHJpdmVycy92
ZWN0b3JfdXNlci5vOiBpbiBmdW5jdGlvbgo+PiBgdXNlcl9pbml0X3NvY2tldF9mZHMnOiB2ZWN0
b3JfdXNlci5jOigudGV4dCsweDQzMCk6IHdhcm5pbmc6IFVzaW5nCj4+ICdnZXRhZGRyaW5mbycg
aW4gc3RhdGljYWxseSBsaW5rZWQgYXBwbGljYXRpb25zIHJlcXVpcmVzIGF0IHJ1bnRpbWUgdGhl
Cj4+IHNoYXJlZCBsaWJyYXJpZXMgZnJvbSB0aGUgZ2xpYmMgdmVyc2lvbiB1c2VkIGZvciBsaW5r
aW5nCj4gCj4gVGhpcyBpcyBub3RoaW5nIHNlcmlvdXMuCj4gCj4+IEFuZCBpdCBzZWVtcyB0byBi
cmVhayB0aGUgcHRyYWNlIGNoZWNrOgo+Pgo+PiBDaGVja2luZyB0aGF0IHB0cmFjZSBjYW4gY2hh
bmdlIHN5c3RlbSBjYWxsIG51bWJlcnMuLi5jaGVja19wdHJhY2UgOgo+PiBjaGlsZCBleGl0ZWQg
d2l0aCBleGl0Y29kZSA2LCB3aGlsZSBleHBlY3RpbmcgMDsgc3RhdHVzIDB4NjdmCj4+IFsxXSAg
ICAxMjY4MjIgYWJvcnQgICAgICAuL2xpbnV4IG1lbT0yNTZNCj4gCj4gRGlkbid0IHdlIGZpeCB0
aGF0IGFscmVhZHk/CgpZZXMgd2UgZGlkIC0gSSBjb21tZW50ZWQgb24gdGhpcy4KCj4gCj4+IChB
cHBhcmVudGx5LCBhIHBhdGNoIHdhcyByZWNlbnRseSBkaXNjdXNzZWQgdGhhdCBmaXhlcyB0aGlz
IC0gYXJvdW5kCj4+IHY1LjUtcmMxWzFdIC0gYnV0IHRoZSBmYWN0IHRoYXQgdGhpcyB3YXMgYnJv
a2VuIGZvciBvdmVyIGEgeWVhcgo+PiByZW1haW5zLikKPj4KPj4gQWNjb3JkaW5nIHRvIEFudG9u
LCBQQ0FQIHRocm93cyBldmVuIG1vcmUgd2FybmluZ3MsIGFuZCB0aGUgcmVzdWx0aW5nCj4+IGJp
bmFyeSBpc24ndCByZWFsbHkgZXZlbiBzdGF0aWMgYW55d2F5LCBzbyB0aGVyZSBpcyByZWFsbHkg
bm8gcG9pbnQgaW4KPj4ga2VlcGluZyB0aGlzIGNvbmZpZyBhcm91bmRbMl0uCj4gCj4gV2hhdD8K
PiBBbnRvbiwgcGxlYXNlIGV4cGxhaW4uIFdoeSBpcyBpdCBub3Qgc3RhdGljIHdoZW4gYnVpbGQg
d2l0aCBDT05GSUdfU1RBVElDX0xJTks/CgoKTElCQyBpdHNlbGYgdHJpZXMgdG8gZHluYW1pYyBs
b2FkIHN0dWZmIGludGVybmFsbHkuCgpJdCBpcyBiZXlvbmQgb3VyIGNvbnRyb2wgYW5kIGl0IGNs
YWltcyB0aGF0IGl0IHdpbGwgd29yayBvbmx5IG9uIEVYQUNUTFkgCnRoZSBzYW1lIHZlcnNpb24g
b2YgbGliYyBsaWJyYXJ5IGFzIHRoZSBvbmUgdXNlZCBmb3Igc3RhdGljIGxpbmsuCgpTbyB5b3Ug
Z2V0IGEgbm90LWV4YWN0bHkgc3RhdGljIGJpbmFyeSB3aGljaCBpcyBub3QgcHJvcGVybHkgbW92
ZWFibGUgCmJldHdlZW4gc3lzdGVtcy4KClRoaXMgaXMgc3BlY2lmaWNhbGx5IGluIHRoZSBuYW1l
IHJlc29sdXRpb24sIGV0YyBwYXJ0cyBvZiBsaWJjIHdoaWNoIGFsbCAKb2Y6IHBjYXAsIHZlY3Rv
ciwgdmRlLCBldGMgcmVseSBvbi4KCkFub3RoZXIgYWx0ZXJuYXRpdmUgaXMgdG8gdHVybiBvZmYg
c3RhdGljIHNwZWNpZmljYWxseSBmb3IgdGhvc2UuCgpGdXJ0aGVyIHRvIHRoaXMgLSBhbnkgcHJv
cGVybHkgd3JpdHRlbiBwaWVjZSBvZiBuZXR3b3JraW5nIGNvZGUgd2hpY2ggCnVzZXMgdGhlIG5l
d2VyIGZ1bmN0aW9ucyBmb3IgbmFtZS9zZXJ2aWNlIHJlc29sdXRpb24gd2lsbCBoYXZlIHRoZSBz
YW1lIApwcm9ibGVtLiBZb3UgY2FuIGJlIHN0YXRpYyBvbmx5IGlmIHlvdSBkbyBldmVyeXRoaW5n
ICJtYW51YWxseSIgdGhlIG9sZCB3YXkuCgo+IAo+IFRoYW5rcywKPiAvL3JpY2hhcmQKPiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LXVt
IG1haWxpbmcgbGlzdAo+IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCj4gCgoKLS0gCkFudG9u
IFIuIEl2YW5vdgpDYW1icmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQu
IENvbXBhbnkgTnVtYmVyIDEwMjczNjYxCmh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVt
IG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
