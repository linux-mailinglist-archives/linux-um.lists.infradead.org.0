Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA2E109A87
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 09:50:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMr63T+0MSWxzxBZ0i9gmRZN6a0sxbdfM2l9PkB2ozc=; b=jkKuwx/L7CtFTl
	KlX4kEKKpAK0gDJsie+fanWpDYac2+w+YMGf8KiXGfeJsDPUKx7eBnzhr0aISw9pmJEAoj9mjju6R
	Bh/UfqoNv9ndJVjW1TxlO9SIrpusVVNp6oqyQKAxZpv82Sdzl4VgEmUA3Cdd9pjKdToXj5/JsdJ9T
	jZM6Q80WnEicRQhPoQ3Ws65g8mQbsmAYQ7Lpo4LxMtJxu35qdRD7YLRkWFlFZqSQnH0CCGSIW5z4U
	xiwt0W0l0HMRDBDSXhfX2dOy3mNHrt2spCDd+iho9Fu1rx4iyGuR42ujg3BawUPp+7LsBQLEXGnxy
	FHNQdE+4EbFOxQ++NZ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZWYK-0004dX-OZ; Tue, 26 Nov 2019 08:50:32 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZWYH-0004bu-At
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 08:50:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id CA22D6058361;
 Tue, 26 Nov 2019 09:50:26 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id nmmVOUxEIDAe; Tue, 26 Nov 2019 09:50:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3A2796083137;
 Tue, 26 Nov 2019 09:50:26 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id sAE3L2lO1OQI; Tue, 26 Nov 2019 09:50:26 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 02A406058361;
 Tue, 26 Nov 2019 09:50:25 +0100 (CET)
Date: Tue, 26 Nov 2019 09:50:25 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
In-Reply-To: <de90b04151bafee083727c9769833932788cf428.camel@sipsolutions.net>
References: <cover.1573179553.git.thehajime@gmail.com>
 <1531c5f16a00b608635c9a62fa3951807075f950.1573179553.git.thehajime@gmail.com>
 <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
 <de90b04151bafee083727c9769833932788cf428.camel@sipsolutions.net>
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: lkl tools: host lib: virtio devices
Thread-Index: MSw2wTWhPSRSQKoe6IhqCb8SZu2Bxw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_005029_669565_FA87856B 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-arch <linux-arch@vger.kernel.org>, cem <cem@freebsd.org>,
 tavi purdila <tavi.purdila@gmail.com>, linux-um <linux-um@lists.infradead.org>,
 retrage01 <retrage01@gmail.com>, liuyuan <liuyuan@google.com>,
 pscollins <pscollins@google.com>, linux-kernel-library@freelists.org,
 sigmaepsilon92 <sigmaepsilon92@gmail.com>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkpvaGFubmVzIEJlcmciIDxq
b2hhbm5lc0BzaXBzb2x1dGlvbnMubmV0Pgo+IEFuOiAiUmljaGFyZCBXZWluYmVyZ2VyIiA8cmlj
aGFyZC53ZWluYmVyZ2VyQGdtYWlsLmNvbT4sICJIYWppbWUgVGF6YWtpIiA8dGhlaGFqaW1lQGdt
YWlsLmNvbT4KPiBDQzogImxpbnV4LWFyY2giIDxsaW51eC1hcmNoQHZnZXIua2VybmVsLm9yZz4s
ICJjZW0iIDxjZW1AZnJlZWJzZC5vcmc+LCAidGF2aSBwdXJkaWxhIiA8dGF2aS5wdXJkaWxhQGdt
YWlsLmNvbT4sCj4gImxpbnV4LXVtIiA8bGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZz4sICJy
ZXRyYWdlMDEiIDxyZXRyYWdlMDFAZ21haWwuY29tPiwgbGludXgta2VybmVsLWxpYnJhcnlAZnJl
ZWxpc3RzLm9yZywKPiAicHNjb2xsaW5zIiA8cHNjb2xsaW5zQGdvb2dsZS5jb20+LCAic2lnbWFl
cHNpbG9uOTIiIDxzaWdtYWVwc2lsb245MkBnbWFpbC5jb20+LCAibGl1eXVhbiIgPGxpdXl1YW5A
Z29vZ2xlLmNvbT4KPiBHZXNlbmRldDogRGllbnN0YWcsIDI2LiBOb3ZlbWJlciAyMDE5IDA5OjQz
OjM2Cj4gQmV0cmVmZjogUmU6IFtSRkMgdjIgMTcvMzddIGxrbCB0b29sczogaG9zdCBsaWI6IHZp
cnRpbyBkZXZpY2VzCgo+IE9uIE1vbiwgMjAxOS0xMS0yNSBhdCAyMzowNyArMDEwMCwgUmljaGFy
ZCBXZWluYmVyZ2VyIHdyb3RlOgo+PiBPbiBGcmksIE5vdiA4LCAyMDE5IGF0IDY6MDMgQU0gSGFq
aW1lIFRhemFraSA8dGhlaGFqaW1lQGdtYWlsLmNvbT4gd3JvdGU6Cj4+ID4gRnJvbTogT2N0YXZp
YW4gUHVyZGlsYSA8dGF2aS5wdXJkaWxhQGdtYWlsLmNvbT4KPj4gPiAKPj4gPiBBZGQgaGVscGVy
cyBmb3IgaW1wbGVtZW50aW5nIGhvc3QgdmlydGlvIGRldmljZXMuIEl0IHVzZXMgdGhlIG1lbW9y
eQo+PiA+IG1hcHBlZCBJL08gaGVscGVycyB0byBpbnRlcmFjdCB3aXRoIHRoZSBMaW51eCBNTUlP
IHZpcnRpbyB0cmFuc3BvcnQKPj4gPiBkcml2ZXIgYW5kIG9mZmVycyBzdXBwb3J0IHRvIHNldHVw
IGFuZCBhZGQgYSBuZXcgdmlydGlvIGRldmljZSwKPj4gPiBkaXNwYXRjaCByZXF1ZXN0cyBmcm9t
IHRoZSBpbmNvbWluZyBxdWV1ZXMgYXMgd2VsbCBhcyBzdXBwb3J0IGZvcgo+PiA+IGNvbXBsZXRp
bmcgcmVxdWVzdHMuCj4+ID4gCj4+ID4gQWxsIGFkZGVkIHZpcnRpbyBkZXZpY2VzIGFyZSBzdG9y
ZWQgaW4gbGtsX3ZpcnRpb19kZXZzIGFzIHN0cmluZ3MsIHBlcgo+PiA+IHRoZSBMaW51eCBNTUlP
IHZpcnRpbyB0cmFuc3BvcnQgZHJpdmVyIGNvbW1hbmQgbGluZSBzcGVjaWZpY2F0aW9uLgo+PiAK
Pj4gRGlkIHlvdSBjaGVja291dCBhcmNoL3VtL2RyaXZlcnMvdmlydGlvX3VtbC5jPwo+PiBXaHkg
aXMgdGhpcyBkcml2ZXIgbmVlZGVkPwo+IAo+IFRoaXMgaXNuJ3QgcmVhbGx5IGEgZHJpdmVyLCB0
aGlzIGlzIHZpcnRpbyAqZGV2aWNlLXNpZGUqIGNvZGUuIE91cgo+IHZpcnRpb191bWwgaXMgKmd1
ZXN0LXNpZGUqIGNvZGUsIGFuZCBvbmx5IHNwZWFrcyB2aG9zdC11c2VyLgoKU29ycnksIGJhZCB3
b3JkaW5nIGZyb20gbXkgc2lkZS4gSSBtZWFudCB3aXRoICJkcml2ZXIiIGEga2VybmVsIGNvbXBv
bmVudC4KIAo+IEknbSBub3Qgc3VyZSBob3cgTU1JTyBkZXZpY2VzIGNvdWxkIHBvc3NpYmx5IHdv
cmsgdGhvdWdoLCBkb2VzIExLTAo+IGludGVyY2VwdCBNTUlPIHNvbWVob3c/CgpNeSBwb2ludCBp
cyB0aGF0IFVNTCBhbmQgTEtMIHNob3VsZCB0cnkgdG8gZG8gdXNlIHRoZSBzYW1lIGNvbmNlcHQv
Y29kZQpyZWdhcmRpbmcgdmlydGlvLiBBdCB0aGUgZW5kIG9mIGRheSBib3RoIHVzZSB2aXJ0dWFs
IGRldmljZXMgd2hpY2ggdXNlCmZhY2lsaXRpZXMgZnJvbSB0aGUgaG9zdC4KSWYgdGhpcyBpcyBy
ZWFsbHkgbm90IHBvc3NpYmxlIGl0IG5lZWRzIGEgZ29vZCBleHBsYW5hdGlvbi4KClRoYW5rcywK
Ly9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
