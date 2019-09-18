Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F092BB5F53
	for <lists+linux-um@lfdr.de>; Wed, 18 Sep 2019 10:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0/sMy1TZYQqTP3Un7e40q75b+eRRy//Wb3K8NLLzIOI=; b=Aw7sKFjs2r1zeNPfIKo7B7CdL
	oG1tQ/tYB90q2cLhPNAUDHNEVSLOlYd0klUzfws+viQ/LqWz1GKygmNj/oxYPbL3wBFSEoOCgmFC8
	aXTNahi6GkedUvz2+hxvFlfPpV0mD91rtuBh8G4bA93g7y3FGUI8/LbTtPU0L15CkhfjuFbkgimZq
	pUSQXAFxOtAXgr7p7ocszNmCfLg4/W7iz3iVDjfkJUPq+LX6N+XetcRLAEzNQ+TTYedQozlR0yuz6
	u8z9bHoxr6g1lpRPREjVXlP98YA3YrP3B9E4YjFJXBNNvFhXJZDRjiGUtVwWvlrqj/KJ2cvpU4KcW
	f9lfHIdnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVRO-0001wb-6M; Wed, 18 Sep 2019 08:35:58 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVRK-0001wG-Sf
 for linux-um@lists.infradead.org; Wed, 18 Sep 2019 08:35:56 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iAVRE-0002YZ-O3; Wed, 18 Sep 2019 08:35:48 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iAVRC-0000DH-Bn; Wed, 18 Sep 2019 09:35:48 +0100
Subject: Re: Bug#938962: user-mode-linux needs update for new linux
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
To: rrs@debian.org, linux-um@lists.infradead.org,
 Richard Weinberger <richard@nod.at>
References: <20190830152801.GA23318@debian.org>
 <f13e90782de567a8537a15dec1834a9b8c27bd6b.camel@debian.org>
 <CAHt6kzG5V3N9i68jMvxwz-5kk9h709QZsqcH9uM+cthCam87Lg@mail.gmail.com>
 <2947157812216eae1aad2840b8981163a7af2209.camel@debian.org>
 <9bd76406-dab6-74c8-7e0a-92468e15d150@kot-begemot.co.uk>
Message-ID: <9f5dad04-5fd0-8466-71de-b966804d9dbd@kot-begemot.co.uk>
Date: Wed, 18 Sep 2019 09:35:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9bd76406-dab6-74c8-7e0a-92468e15d150@kot-begemot.co.uk>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_013554_928455_0EC26235 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: 938962@bugs.debian.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMTIvMDkvMjAxOSAxNTo0MiwgQW50b24gSXZhbm92IHdyb3RlOgo+IAo+IAo+IE9uIDEyLzA5
LzIwMTkgMTM6MTQsIFJpdGVzaCBSYWogU2FycmFmIHdyb3RlOgo+PiBIaSwKPj4KPj4gSSBhbSBu
b3Qgc3VyZSBpZiB0aGlzIGhhcyBiZWVuIHJlcG9ydGVkIHVwc3RyZWFtIGJ1dCB3aXRoIGxpYnBj
YXAgMS45LAo+PiB1c2VyIG1vZGUgbGludXggZmFpbHMgdG8gYnVpbGQuIFRoZSBidWlsZCBmYWls
dXJlIGhhcHBlbnMgd2l0aCBib3RoLAo+PiA1LjIgYW5kIDQuMTkgTFRTIGtlcm5lbHMuCj4+Cj4+
IEEgbXVjaCBkZXRhaWxlZCByZXBvcnQgaXMgYXZhaWxhYmxlIGF0Ogo+PiBodHRwczovL2J1Z3Mu
ZGViaWFuLm9yZy9jZ2ktYmluL2J1Z3JlcG9ydC5jZ2k/YnVnPTkzODk2Mgo+Pgo+PiBsaWJwY2Fw
IDEuOSBpbnRyb2R1Y2VzIGBwY2FwX29wZW5gIHdoaWNoIGlzIGFsc28gZGVjbGFyZWQgaW4gbGlu
dXgKPj4gaGVhZGVycyBpbiBhcmNoL3VtL2RyaXZlcnMvcGNhcF91c2VyLmMKPj4KPj4KPiAKPiAK
PiBJIHRoaW5rIHRoZSBiZXN0IHdheSBmb3J3YXJkIGhlcmUgaXMgdG8ga2lsbCB0aGUgb2xkIGxp
YnBjYXAgZHJpdmVyIAo+IGFsdG9nZXRoZXIuCj4gCj4gWW91IGdldCB0aGUgc2FtZSBmdW5jdGlv
bmFsaXR5IGZyb20gdmVjdG9yIHJhdyBpbmNsdWRpbmcgdGhlIGFiaWxpdHkgdG8gCj4gbG9hZCBh
IGJwZiBmaWx0ZXIuCj4gCj4gVGhlIG9ubHkgdGhpbmcgdGhhdCBuZWVkcyBpcyBhIHdyYXBwZXIg
dG8gY29tcGlsZSB0aGUgZmlsdGVyIGJlZm9yZSAKPiBoYW5kaW5nIGl0IHRvIFVNTC4KPiAKPiBB
IHNpZGUgZWZmZWN0IGlzIHRoYXQgaXQgaXMgfiAxMCsgdGltZSBmYXN0ZXIgLSBpbiB0aGUgbXVs
dGlnaWdhYml0IHJhbmdlLgo+IAo+IEFsdGVybmF0aXZlbHksIEkgY2FuIHdyYXAgaXQgc28gaXQg
bG9va3MgbGlrZSBwY2FwIHRvIGFueSBleGlzdGluZyAKPiBzY3JpcHRzIGFuZCBpcyBhY3R1YWxs
eSB2ZWN0b3IgdW5kZXJuZWF0aCwgYnV0IHRoYXQgd2lsbCBsb3NlIHNvbWUgb2YgCj4gdGhlIHR1
bmFibGVzLCBsaWtlIG9mZmxvYWRzLCB2ZWN0b3IgZGVwdGgsIGV0Yy4KPiAKPiAKPj4gVGhhbmtz
LAo+PiBSaXRlc2gKPj4KPj4gT24gU2F0LCAyMDE5LTA5LTA3IGF0IDE3OjE4ICswMjAwLCBSb21h
aW4gRnJhbmNvaXNlIHdyb3RlOgo+Pj4gSGksCj4+Pgo+Pj4gT24gVHVlLCBTZXAgMywgMjAxOSBh
dCAzOjIxIFBNIFJpdGVzaCBSYWogU2FycmFmIDxycnNAZGViaWFuLm9yZz4KPj4+IHdyb3RlOgo+
Pj4gWy4uLl0KPj4+PiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9pbmNsdWRlL3BjYXAuaDo0
MywKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gYXJjaC91bS9k
cml2ZXJzL3BjYXBfdXNlci5jOjc6Cj4+Pj4gL3Vzci9pbmNsdWRlL3BjYXAvcGNhcC5oOjgzNTox
ODogbm90ZTogcHJldmlvdXMgZGVjbGFyYXRpb24gb2YKPj4+PiDigJhwY2FwX29wZW7igJkgd2Fz
IGhlcmUKPj4+PiDCoCBQQ0FQX0FQSSBwY2FwX3QgKnBjYXBfb3Blbihjb25zdCBjaGFyICpzb3Vy
Y2UsIGludCBzbmFwbGVuLCBpbnQKPj4+PiBmbGFncywKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgXn5+fn5+fn5+Cj4+Pj4gbWFrZVsyXTogKioqIFtzY3JpcHRzL01h
a2VmaWxlLmJ1aWxkOjMwOToKPj4+PiBhcmNoL3VtL2RyaXZlcnMvcGNhcF91c2VyLm9dIEVycm9y
IDEKPj4+Cj4+PiBsaWJwY2FwIDEuOSBpbmNsdWRlcyBzdXBwb3J0IGZvciByZW1vdGUgY2FwdHVy
ZSwgd2hpY2ggd2FzIG9yaWdpbmFsbHkKPj4+IGEgcGFydCBvZiBXaW5QY2FwIGV4dGVuc2lvbnMu
IFRoZSBgcGNhcF9vcGVuKCknIHN5bWJvbCBpcyBwYXJ0IG9mCj4+PiB0aGF0Cj4+PiBBUEkgYW5k
IHRoYXQncyB3aHkgaXQncyBkZWZpbmVkIGluIHRoZSBoZWFkZXIgZmlsZSBldmVuIHRob3VnaCBy
ZW1vdGUKPj4+IHN1cHBvcnQgaXMgbm90IGVuYWJsZWQgaW4gRGViaWFuLiBJIHN1Z2dlc3QgeW91
IHJlbmFtZSB0aGUgZnVuY3Rpb24KPj4+IGRlZmluZWQgaW4geW91ciBwcm9ncmFtIHNvIHRoYXQg
aXQgZG9lc24ndCBjb25mbGljdCB3aXRoIGxpYnBjYXAuCj4+Pgo+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IGxpbnV4LXVtIG1haWxpbmcgbGlz
dAo+Pj4gbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo+IAoKSSBhbSBnb2luZyB0byB0cnkg
dG8gd3JpdGUgYSB3cmFwcGVyIHRvIGZvcm0gYXJndW1lbnRzIGZvciB0aGUgY3VycmVudCAKdmVj
dG9yIHJhdyBkcml2ZXIgYW5kIGlmIHRoZXJlIGlzIHNvbWV0aGluZyB0aGF0IG5lZWRzIHRvIGJl
IGZpeGVkIGluIGl0LgoKSSB3aWxsIHBvc3QgaXMgYXMgYSBwcm9wb3NlZCBwYXRjaCB2cyB0aGUg
ZGViaWFuIHBhY2thZ2Ugb25jZSAgaXRzIHJlYWR5LgoKQnJnZHMsCgpBCgotLSAKQW50b24gUi4g
SXZhbm92Cmh0dHBzOi8vd3d3LmtvdC1iZWdlbW90LmNvLnVrLwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4
LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC11bQo=
