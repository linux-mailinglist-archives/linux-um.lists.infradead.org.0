Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E33E8308
	for <lists+linux-um@lfdr.de>; Tue, 29 Oct 2019 09:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kX7QuTHVTxiCuT24568r+g35D5EE+qsUuM05+Au7iYY=; b=pSKQ68HBUXESV0
	nX05LwjO36BB2kXh2+MYpswFI3Fq8dd7gzUxbl017WWNqZXHe04PzWT3PtqEIMsQxCA0mUzGxDUlU
	NsnPa8xWjTAuC6/SA5cWmEz7fc/2SAULBAxrc6go+v4MfYxOFEdwcE92Yx60wMjUchYXeonjy8jGt
	ZToDCZiGOAvkqKbydbTFtN9lCrrs7FmXBKyyeM3y5X99o1UoxB7UZW8/oVCZ8S98m5UYJTFtYAPw/
	EzFqxpIHCfSHyGa4FZlYiv1Ss1EJqoSK4Q6PRQix2yy6jYcQikCEPxpwq41AuDD6g25iM6/WxxkHx
	YhqMKwhSofRhnxprvblg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMfh-0007vC-0u; Tue, 29 Oct 2019 08:16:09 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMfd-0007uJ-MT
 for linux-um@lists.infradead.org; Tue, 29 Oct 2019 08:16:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 7E72A62EBCA2;
 Tue, 29 Oct 2019 09:15:54 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 1Mo6yQST-kLt; Tue, 29 Oct 2019 09:15:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D53B461A6A99;
 Tue, 29 Oct 2019 09:15:52 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id YKiyMG-qIL0b; Tue, 29 Oct 2019 09:15:52 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 9805D616210B;
 Tue, 29 Oct 2019 09:15:52 +0100 (CET)
Date: Tue, 29 Oct 2019 09:15:52 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <1620515179.65384.1572336952500.JavaMail.zimbra@nod.at>
In-Reply-To: <9df8075205912512a9a0ec7eb0393ff74d3c4bbb.camel@sipsolutions.net>
References: <cover.1571798507.git.thehajime@gmail.com>
 <0b1464dd4904ee2b049fef624895ead3fe6aa555.1571798507.git.thehajime@gmail.com>
 <CAFLxGvzqPzZtUSzymWgnhGnr6qgcDe9ue6Q8ALMS-r_Y+KXVOw@mail.gmail.com>
 <m2a79mx6br.wl-thehajime@gmail.com>
 <CAJhGHyBy4ok+Sg7TyLaaksqEBDanmZgsk6ujRqXU1KFcu+DHZQ@mail.gmail.com>
 <m2a79k3tyf.wl-thehajime@gmail.com>
 <9df8075205912512a9a0ec7eb0393ff74d3c4bbb.camel@sipsolutions.net>
Subject: Re: [RFC PATCH 03/47] lkl: architecture skeleton for Linux kernel
 library
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: architecture skeleton for Linux kernel library
Thread-Index: OxQ0ceN4Xnn3rbnkY5m3zrBBmemNWA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_011606_041341_DA0EFC51 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: liuyuan@google.com, levex@linux.com, mattator@gmail.com, cem@freebsd.org,
 tavi purdila <tavi.purdila@gmail.com>, linux-um <linux-um@lists.infradead.org>,
 staal1978@gmail.com, motomuman@gmail.com, jiangshanlai@gmail.com,
 retrage01@gmail.com, petrosagg@gmail.com, edisonmcastro@hotmail.com,
 xiaoj@google.com, mark@stillwell.me, pscollins@google.com, phh@phh.me,
 sigmaepsilon92@gmail.com, luca dariz <luca.dariz@gmail.com>,
 Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkpvaGFubmVzIEJlcmciIDxq
b2hhbm5lc0BzaXBzb2x1dGlvbnMubmV0Pgo+IEFuOiAiSGFqaW1lIFRhemFraSIgPHRoZWhhamlt
ZUBnbWFpbC5jb20+LCBqaWFuZ3NoYW5sYWlAZ21haWwuY29tCj4gQ0M6IGxldmV4QGxpbnV4LmNv
bSwgbWF0dGF0b3JAZ21haWwuY29tLCBjZW1AZnJlZWJzZC5vcmcsICJSaWNoYXJkIFdlaW5iZXJn
ZXIiIDxyaWNoYXJkLndlaW5iZXJnZXJAZ21haWwuY29tPiwKPiBzdGFhbDE5NzhAZ21haWwuY29t
LCBtb3RvbXVtYW5AZ21haWwuY29tLCAibGludXgtdW0iIDxsaW51eC11bUBsaXN0cy5pbmZyYWRl
YWQub3JnPiwgcmV0cmFnZTAxQGdtYWlsLmNvbSwKPiBwZXRyb3NhZ2dAZ21haWwuY29tLCAidGF2
aSBwdXJkaWxhIiA8dGF2aS5wdXJkaWxhQGdtYWlsLmNvbT4sIHhpYW9qQGdvb2dsZS5jb20sIG1h
cmtAc3RpbGx3ZWxsLm1lLAo+IGVkaXNvbm1jYXN0cm9AaG90bWFpbC5jb20sIHBzY29sbGluc0Bn
b29nbGUuY29tLCBwaGhAcGhoLm1lLCBzaWdtYWVwc2lsb245MkBnbWFpbC5jb20sICJsdWNhIGRh
cml6Igo+IDxsdWNhLmRhcml6QGdtYWlsLmNvbT4sIGxpdXl1YW5AZ29vZ2xlLmNvbQo+IEdlc2Vu
ZGV0OiBEaWVuc3RhZywgMjkuIE9rdG9iZXIgMjAxOSAwODo1Nzo0Mwo+IEJldHJlZmY6IFJlOiBb
UkZDIFBBVENIIDAzLzQ3XSBsa2w6IGFyY2hpdGVjdHVyZSBza2VsZXRvbiBmb3IgTGludXgga2Vy
bmVsIGxpYnJhcnkKCj4gSGksCj4gCj4+IFlvdSdyZSByaWdodDogY3VycmVudCBwYXRjaHNldCBv
bmx5IHNoYXJlIE1ha2VmaWxlKHMpCj4+IGJldHdlZW4gVU1MIGFuZCBMS0wuICBUaGlzIGlzIHRo
ZSBmaXJzdCBzdGVwIHRvd2FyZCB0aGUKPj4gdW5pZmljYXRpb24gaW4gbXkgcGxhbiwgZGVzY3Jp
YmVkIGluIHRoZSBtaWxlc3RvbmUgb2YgdGhlCj4+IGNvdmVyIGxldHRlciAoY29weS1wYXN0ZWQg
YmVsb3cpLgo+PiAKPj4gPiBNaWxlc3RvbmUKPj4gPiA9PT09PT09PT0KPj4gPiAoc25pcCkKPj4g
PiAxLiBQdXQgTEtMIGNvZGUgdW5kZXIgYXJjaC91bSAoYXJjaC91bS9sa2wpLCBhbmQgYnVpbGQg
aXQgaW4gYQo+PiA+IHNlcGFyYXRlIHdheSBmcm9tIFVNTC4KPj4gPiAyLiBTaGFyZSBjb21tb24g
cGFydHMgb2YgaW1wbGVtZW50YXRpb24gYmV0d2VlbiBVTUwgYW5kIExLTC4KPj4gPiAzLiBSZWlt
cGxlbWVudCBVTUwgZmVhdHVyZXMgd2l0aCBMS0wgQVBJIChpZiB3ZSB3aXNoKQo+PiAKPj4gRm9y
IHRoZSBzdGVwIDIsIFtQQVRDSCA0Ni80N10gYW5kIFs0Ny80N10gYXJlIHRoZSBraW5kIG9mCj4+
IGV4YW1wbGVzIGZvciB0aGlzIGxldmVsIG9mIHVuaWZpY2F0aW9uIChzb3JyeSBmb3IgdGhlIHZl
cnkKPj4gZGlydHkgY29kZSkuCj4+IAo+PiBGb3IgdGhlIHN0ZXAgMywgSSBkb24ndCBoYXZlIGFu
eSBXSVAgY29kZSBub3IgZGV0YWlsZWQgcGxhbi4KPj4gSW1wbGVtZW50aW5nIHB0cmFjZS1iYXNl
ZCAob3Igc2ltaWxhcikgc3lzY2FsbCBpbnRlcmNlcHRpb24KPj4gd291bGQgYmUgb25lIG9mIHRo
ZSBkZXZlbG9wbWVudCAoSSBiZWxpZXZlIHRoZXJlIGFyZSBtb3JlKS4KPj4gCj4+IE9mZmVyaW5n
IFVNTCBmZWF0dXJlLXNldHMsIGtlZXBpbmcgY29tcGF0aWJpbGl0eSwgd2hpbGUKPj4gYmVuZWZp
dGluZyBmcm9tIExLTCAoZS5nLiwgdmFyaW91cyB1bmRlcmx5aW5nIGVudmlyb25tZW50Cj4+IHN1
cHBvcnQpIHdvdWxkIGJlIHZlcnkgaGlnaC1sZXZlbCBnb2FsIHNpbmNlIHRoZXJlIGFyZSBtYW55
Cj4+IHVzZXJzIG9mIFVNTCAodmFyaW91cyB0ZXN0IHRvb2wgcHJvamVjdHMsIGluY2x1ZGluZyBj
b21pbmcKPj4gS3VuaXQpLgo+IAo+IEFyZW4ndCB5b3UgZ29pbmcgYWJvdXQgdGhpcyB0aGUgd3Jv
bmcgd2F5IGFyb3VuZD8KPiAKPiBJIG1lYW4sIHRoaXMgcmVhZHMgbGlrZSB5b3UncmUgcHJvcG9z
aW5nIHRvIHN0YXJ0IGZyb20gTEtMIGFuZAo+IHJlaW1wbGVtZW50IFVNTCBvbiB0b3Agb2YgaXQs
IGJ1dCB3ZSBjdXJyZW50bHkgaGF2ZSBVTUwgaW4gdGhlIHRyZWUgYW5kCj4gTEtMIGlzbid0LiBT
ZWVtcyBiYWNrd2FyZCB0byBtZS4KClRoaXMgaXMgc3VyZWx5IG5vdCBpbnRlbmRlZC4gCiAKPiBB
bHNvLCBsb29raW5nIGF0IHRoZSBwYXRjaGVzLCBJJ20gbm90IGEgaHVnZSBmYW4gb2YgdGhlIHdo
b2xlICJkcm9wIExLTAo+IGludG8gVU1MIi4gVU1MIGlzIGFscmVhZHkgY29tcGxleCBlbm91Z2gg
YXMgaXMsIHdpdGggaXRzIG1lbW9yeSBtb2RlbAo+IGFuZCBhbGwsIG1peGluZyBpbiBMS0wgbWFr
ZXMgaXQgd2F5IG1vcmUgY29tcGxleC4KPiAKPiBJIGRvbid0IHRoaW5rICJkcm9wIExLTCB1bmRl
ciBVTUwiIHdhcyB3aGF0IHBlb3BsZSBoYWQgaW4gbWluZCB3aGVuIHRoZXkKPiBzdWdnZXN0ZWQg
dGhhdCB0aGUgdHdvIG1lcmdlIC4uLgoKWWVzLCBqdXN0IGhhdmluZyBhIGxrbCBmb2xkZXIgdW5k
ZXIgYXJjaC91bS8gaXMgZm9yIHN1cmUgbm90IHRoZSBmaW5hbCBzb2x1dGlvbi4KVGhlIGdvYWwg
aXMgbWVyZ2luZyBhcyBtdWNoIGFzIHBvc3NpYmxlLgpCdXQgaGF2aW5nIHB1cmVseSBsa2wgc3R1
ZmYgaW4gYSBzdWJmb2xkZXIgbGlrZSBhcmNoL3VtL2xrbC8gaXMgbm90IGEgYmlnIGRlYWwuCiAK
VGhpcyBwYXRjaCBzZXJpZXMgaXMganVzdCBhIHN0YXJ0IG5vdCB0aGUgZmluYWwgc29sdXRpb24g
d2hpY2ggd2lsbCBnZXQgbWVyZ2VkLiA6LSkKClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxp
c3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
