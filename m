Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B51118166
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 08:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8JPhIIObdboQjQBiISO6YzUSejKyk1vUrEcpCbUFaOI=; b=nM+p+UdgcMzYv78L69LZ9qzdK
	LfNr8DoqNQG4jYAQwFl3Bl5YQv8Bzvii0F3eGGvtv9WbWJAtBuvine5F5sCH3fupmmq5+v+yBkKce
	B++AlNxCzLFYBtdbn2GNZe7s61uIltnwgArveA5MgRDyu4LTMofIGPQfEXpwL2p8XWP3i04vDWR1j
	tRvltq8ICMq+WWORNZUf3OyNrQAc3AkzLFLoaGHnCyLDv1SdZDpsTN97qB2xlVU9GaHx4N2tT0bGN
	3PQtkESJIrH7e1UrfKegdNJ2pIBL2gMn7HbCD90w+lxw4tHdI4eJHSR2Hjwm8TumcRL06vbm9SIB3
	t8Ln+l4Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iea2e-00022R-M2; Tue, 10 Dec 2019 07:34:44 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iea2b-00021c-9R
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 07:34:42 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iea2X-0001QL-Pm; Tue, 10 Dec 2019 07:34:39 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iea2V-000397-E7; Tue, 10 Dec 2019 07:34:37 +0000
Subject: Re: [PATCH v1] uml: remove support for CONFIG_STATIC_LINK
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>
References: <20191209230248.227508-1-brendanhiggins@google.com>
 <1406826345.111805.1575933346955.JavaMail.zimbra@nod.at>
 <2eecf4dc-eb96-859a-a015-1a4f388b57a2@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <346757c8-c111-f6cf-21d2-b0bffd41b8a8@cambridgegreys.com>
Date: Tue, 10 Dec 2019 07:34:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <2eecf4dc-eb96-859a-a015-1a4f388b57a2@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_233441_331586_4E1C628A 
X-CRM114-Status: GOOD (  16.98  )
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

T24gMTAvMTIvMjAxOSAwNzoyMCwgQW50b24gSXZhbm92IHdyb3RlOgo+IE9uIDA5LzEyLzIwMTkg
MjM6MTUsIFJpY2hhcmQgV2VpbmJlcmdlciB3cm90ZToKPj4gLS0tLS0gVXJzcHLDvG5nbGljaGUg
TWFpbCAtLS0tLQo+Pj4gVm9uOiAiQnJlbmRhbiBIaWdnaW5zIiA8YnJlbmRhbmhpZ2dpbnNAZ29v
Z2xlLmNvbT4KPj4+IEFuOiAiSmVmZiBEaWtlIiA8amRpa2VAYWRkdG9pdC5jb20+LCAicmljaGFy
ZCIgPHJpY2hhcmRAbm9kLmF0PiwgCj4+PiAiYW50b24gaXZhbm92IiA8YW50b24uaXZhbm92QGNh
bWJyaWRnZWdyZXlzLmNvbT4KPj4+IENDOiAiSm9oYW5uZXMgQmVyZyIgPGpvaGFubmVzLmJlcmdA
aW50ZWwuY29tPiwgImxpbnV4LXVtIiAKPj4+IDxsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3Jn
PiwgImxpbnV4LWtlcm5lbCIKPj4+IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPiwgZGF2
aWRnb3dAZ29vZ2xlLmNvbSwgIkJyZW5kYW4gCj4+PiBIaWdnaW5zIiA8YnJlbmRhbmhpZ2dpbnNA
Z29vZ2xlLmNvbT4KPj4+IEdlc2VuZGV0OiBEaWVuc3RhZywgMTAuIERlemVtYmVyIDIwMTkgMDA6
MDI6NDgKPj4+IEJldHJlZmY6IFtQQVRDSCB2MV0gdW1sOiByZW1vdmUgc3VwcG9ydCBmb3IgQ09O
RklHX1NUQVRJQ19MSU5LCj4+Cj4+PiBDT05GSUdfU1RBVElDX0xJTksgYXBwZWFycyB0byBoYXZl
IGJlZW4gYnJva2VuIHNpbmNlIGJlZm9yZSB2NC4yMC4gSXQKPj4+IGRvZXNuJ3QgcGxheSBuaWNl
IHdpdGggQ09ORklHX1VNTF9ORVRfVkVDVE9SPXk6Cj4+Pgo+Pj4gL3Vzci9iaW4vbGQ6IGFyY2gv
dW0vZHJpdmVycy92ZWN0b3JfdXNlci5vOiBpbiBmdW5jdGlvbgo+Pj4gYHVzZXJfaW5pdF9zb2Nr
ZXRfZmRzJzogdmVjdG9yX3VzZXIuYzooLnRleHQrMHg0MzApOiB3YXJuaW5nOiBVc2luZwo+Pj4g
J2dldGFkZHJpbmZvJyBpbiBzdGF0aWNhbGx5IGxpbmtlZCBhcHBsaWNhdGlvbnMgcmVxdWlyZXMg
YXQgcnVudGltZSB0aGUKPj4+IHNoYXJlZCBsaWJyYXJpZXMgZnJvbSB0aGUgZ2xpYmMgdmVyc2lv
biB1c2VkIGZvciBsaW5raW5nCj4+Cj4+IFRoaXMgaXMgbm90aGluZyBzZXJpb3VzLgo+Pgo+Pj4g
QW5kIGl0IHNlZW1zIHRvIGJyZWFrIHRoZSBwdHJhY2UgY2hlY2s6Cj4+Pgo+Pj4gQ2hlY2tpbmcg
dGhhdCBwdHJhY2UgY2FuIGNoYW5nZSBzeXN0ZW0gY2FsbCBudW1iZXJzLi4uY2hlY2tfcHRyYWNl
IDoKPj4+IGNoaWxkIGV4aXRlZCB3aXRoIGV4aXRjb2RlIDYsIHdoaWxlIGV4cGVjdGluZyAwOyBz
dGF0dXMgMHg2N2YKPj4+IFsxXcKgwqDCoCAxMjY4MjIgYWJvcnTCoMKgwqDCoMKgIC4vbGludXgg
bWVtPTI1Nk0KPj4KPj4gRGlkbid0IHdlIGZpeCB0aGF0IGFscmVhZHk/Cj4gCj4gWWVzIHdlIGRp
ZCAtIEkgY29tbWVudGVkIG9uIHRoaXMuCj4gCj4+Cj4+PiAoQXBwYXJlbnRseSwgYSBwYXRjaCB3
YXMgcmVjZW50bHkgZGlzY3Vzc2VkIHRoYXQgZml4ZXMgdGhpcyAtIGFyb3VuZAo+Pj4gdjUuNS1y
YzFbMV0gLSBidXQgdGhlIGZhY3QgdGhhdCB0aGlzIHdhcyBicm9rZW4gZm9yIG92ZXIgYSB5ZWFy
Cj4+PiByZW1haW5zLikKPj4+Cj4+PiBBY2NvcmRpbmcgdG8gQW50b24sIFBDQVAgdGhyb3dzIGV2
ZW4gbW9yZSB3YXJuaW5ncywgYW5kIHRoZSByZXN1bHRpbmcKPj4+IGJpbmFyeSBpc24ndCByZWFs
bHkgZXZlbiBzdGF0aWMgYW55d2F5LCBzbyB0aGVyZSBpcyByZWFsbHkgbm8gcG9pbnQgaW4KPj4+
IGtlZXBpbmcgdGhpcyBjb25maWcgYXJvdW5kWzJdLgo+Pgo+PiBXaGF0Pwo+PiBBbnRvbiwgcGxl
YXNlIGV4cGxhaW4uIFdoeSBpcyBpdCBub3Qgc3RhdGljIHdoZW4gYnVpbGQgd2l0aCAKPj4gQ09O
RklHX1NUQVRJQ19MSU5LPwo+IAo+IAo+IExJQkMgaXRzZWxmIHRyaWVzIHRvIGR5bmFtaWMgbG9h
ZCBzdHVmZiBpbnRlcm5hbGx5Lgo+IAo+IEl0IGlzIGJleW9uZCBvdXIgY29udHJvbCBhbmQgaXQg
Y2xhaW1zIHRoYXQgaXQgd2lsbCB3b3JrIG9ubHkgb24gRVhBQ1RMWSAKPiB0aGUgc2FtZSB2ZXJz
aW9uIG9mIGxpYmMgbGlicmFyeSBhcyB0aGUgb25lIHVzZWQgZm9yIHN0YXRpYyBsaW5rLgo+IAo+
IFNvIHlvdSBnZXQgYSBub3QtZXhhY3RseSBzdGF0aWMgYmluYXJ5IHdoaWNoIGlzIG5vdCBwcm9w
ZXJseSBtb3ZlYWJsZSAKPiBiZXR3ZWVuIHN5c3RlbXMuCj4gCj4gVGhpcyBpcyBzcGVjaWZpY2Fs
bHkgaW4gdGhlIG5hbWUgcmVzb2x1dGlvbiwgZXRjIHBhcnRzIG9mIGxpYmMgd2hpY2ggYWxsIAo+
IG9mOiBwY2FwLCB2ZWN0b3IsIHZkZSwgZXRjIHJlbHkgb24uCj4gCj4gQW5vdGhlciBhbHRlcm5h
dGl2ZSBpcyB0byB0dXJuIG9mZiBzdGF0aWMgc3BlY2lmaWNhbGx5IGZvciB0aG9zZS4KPiAKPiBG
dXJ0aGVyIHRvIHRoaXMgLSBhbnkgcHJvcGVybHkgd3JpdHRlbiBwaWVjZSBvZiBuZXR3b3JraW5n
IGNvZGUgd2hpY2ggCj4gdXNlcyB0aGUgbmV3ZXIgZnVuY3Rpb25zIGZvciBuYW1lL3NlcnZpY2Ug
cmVzb2x1dGlvbiB3aWxsIGhhdmUgdGhlIHNhbWUgCj4gcHJvYmxlbS4gWW91IGNhbiBiZSBzdGF0
aWMgb25seSBpZiB5b3UgZG8gZXZlcnl0aGluZyAibWFudWFsbHkiIHRoZSBvbGQgCj4gd2F5LgoK
VGhlIG9mZmVuZGluZyBwaWVjZSBvZiBjb2RlIGlzIHRoZSBnbGliYyBpbXBsZW1lbnRhdGlvbiBv
ZiBnZXRhZGRyaW5mbygpLgoKSWYgeW91IHVzZSBpdCBhbmQgbGluayBzdGF0aWMgdGhlIHJlc3Vs
dGluZyBiaW5hcnkgaXMgbm90IHJlYWxseSBzdGF0aWMuCgoKPiAKPj4KPj4gVGhhbmtzLAo+PiAv
L3JpY2hhcmQKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4gbGludXgtdW0gbWFpbGluZyBsaXN0Cj4+IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC11bQo+Pgo+IAo+IAoKCi0tIApBbnRvbiBSLiBJdmFub3YKQ2FtYnJpZGdlZ3JleXMgTGltaXRl
ZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2MQpodHRwczov
L3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXVtCg==
