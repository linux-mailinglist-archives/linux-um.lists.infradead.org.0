Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C87A112A3E
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 12:35:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zg3mdgTXlCY3NzD2OENUYW2e92l8t+PP0lFygEoZUog=; b=GsUtTj1XvCaJhRxplEAgEVFbt
	z1A/s4ys9e5AezWPbN0tn7xU3/XqdNTaZF3+fYQAGgD2GcowvpLg5TMs6nPIlIcmczzRnyQDt/nfq
	VbTfmKNIhwJcUStdVF6TXAKrjyIVpOKiFZcl8l/znXNp4U2T/sSihgqne9EDMC+sy6F+cou4lTmDp
	0+hJBBr9ttE8z7bWwHjFi2LgWCvTxf1L/hEvENC9z9ja1Mu4CSkNK3S4nuPg423yLM/1uaKkoUw/R
	SsBMA3+h1TaO70yUmXCClNqJYPlzizmWTZrpnq1djepKnSdwG807164JcBeTLNIEXvAEdqkIYH0L0
	ZW6hrGaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSvx-0007XH-HB; Wed, 04 Dec 2019 11:35:05 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSvt-00070c-Vw
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 11:35:03 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icSvr-00042e-0z; Wed, 04 Dec 2019 11:34:59 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icSvo-0006fT-OS; Wed, 04 Dec 2019 11:34:58 +0000
Subject: Re: I get 5.4 fail to start
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
 <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
 <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
 <CAMuHMdVrLPKwXxfyG3-Y5yUF9KPrTzosydxN1rkBFcJXsWi86Q@mail.gmail.com>
 <a9620d0a-31cd-f208-76de-63406496e4a0@cambridgegreys.com>
Message-ID: <86abb3cc-1557-b5de-9c35-fdc67855030c@cambridgegreys.com>
Date: Wed, 4 Dec 2019 11:34:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <a9620d0a-31cd-f208-76de-63406496e4a0@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_033502_052479_87F86256 
X-CRM114-Status: GOOD (  16.60  )
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

CgpPbiAwNC8xMi8yMDE5IDEwOjI3LCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4gCj4gCj4gT24gMDQv
MTIvMjAxOSAxMDoxMywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+PiBIaSBBbnRvbiwKPj4K
Pj4gT24gV2VkLCBEZWMgNCwgMjAxOSBhdCAxMDoyMCBBTSBBbnRvbiBJdmFub3YKPj4gPGFudG9u
Lml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+IHdyb3RlOgo+Pj4gT24gMDQvMTIvMjAxOSAwOTow
MywgUmljaGFyZCBXZWluYmVyZ2VyIHdyb3RlOgo+Pj4+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1h
aWwgLS0tLS0KPj4+Pj4gVm9uOiAiYW50b24gaXZhbm92IiA8YW50b24uaXZhbm92QGNhbWJyaWRn
ZWdyZXlzLmNvbT4KPj4+Pj4+IFtzbmlwXQo+Pj4+Pgo+Pj4+PiBJZiBJIGNvbW1lbnQgb3V0IHRo
ZSBjaGVja3Mgb3IgbWFrZSB0aGVtIHRvIGV4cGVjdCA2IGl0IHJ1bnMgZmluZSAKPj4+Pj4gYWZ0
ZXIKPj4+Pj4gdGhhdC4KPj4+Pj4KPj4+Pj4gTm8gaWRlYSB3aGF0J3MgZ29pbmcgb24gLSBJIGRv
IG5vdCBzZWUgd2hlcmUgdGhlIDYgY2FuIGNvbWUgZnJvbS4KPj4+Pgo+Pj4+IEkgc3VzcGVjdCBh
IGNoYW5nZS9yZWdyZXNzaW9uIG9uIHRoZSBob3N0IHNpZGUsIG5vdCB0aGUgVU1MIHNpZGUuCj4+
Pj4gTWF5YmUgc29tZSBMU00gbW9kdWxlIHdoaWNoIG1ha2VzIHB0cmFjZSgpICJiZXR0ZXIiPwo+
Pj4KPj4+IFRoaXMgaXMgcG9zc2libGUuIEkgd2lsbCBydW4gaG9zdCByZWdyZXNzaW9uIGFzIHdl
bGwgdG8gc2VlIGlmIGl0IGlzIGFueQo+Pj4gZGlmZmVyZW50Lgo+Pj4KPj4+IEkgc3RpbGwgZG8g
bm90IGhhdmUgYW55IGlkZWFzIG9uIHdoeSBkbyBJIGdldCBVTUwgd2l0aCB1cCB0byA1LjMgZ3Vl
c3QKPj4+IHdvcmtpbmcgYW5kIGJyZWFraW5nIGluIDUuNCBhbmQgNS41LXJjLi4uCj4+Pgo+Pj4g
VGhlIGNoYW5nZSBpbiB0aGF0IGNhc2UgaXMgZ3Vlc3Qgb25seSAtIHRoZXkgYXJlIGFsbCBiZWlu
ZyBydW4gb24gdGhlCj4+PiBzYW1lIDUuMyBob3N0IChhbmQgb2NjYXNpb25hbGx5IG9uIGEgNC4x
OSkuCj4+Pgo+Pj4gSSBhbSBnb2luZyB0aHJvdWdoIHRoZSBrYnVpbGQgYW5kIG1ha2VmaWxlIGNo
YW5nZXMgYmV0d2VlbiA1LjMgYW5kIDUuNAo+Pj4gYXQgdGhlIG1vbWVudCB0byB0cnkgdG8gZmln
dXJlIGl0IG91dC4KPj4KPj4gSGF2ZSB5b3UgdHJpZWQgZ2l0IGJpc2VjdD8KPiAKPiBVbmRlciB3
YXkgYXQgdGhlIG1vbWVudC4gSSBmaXJzdCB0cmllZCB0byBoYXZlIGEgbG9vayBhdCB1c3VhbCBz
dXNwZWN0cyAKPiBiZWZvcmUgSSByZXNvcnRlZCB0byB0aGF0IGJlY2F1c2UgdGhlIHdpbmRvdyBp
cyBxdWl0ZSBiaWcuCj4gCj4gSSBoYXZlIDUuMyAtIGdvb2QgYW5kIDUuNC1yYzEgYmFkIHdoaWNo
IGlzIDEyNzMzIGNvbW1pdHMgOikKPiAKPiAKPiAKPj4KPj4gR3J7b2V0amUsZWV0aW5nfXMsCj4+
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBHZWVy
dAo+Pgo+IAoKCjc4NmIyMzg0YmYxYzFiNTNkYzIzZGM0OTNhYWFhZTI5ZWYwMWU2Y2UgLSBlbmFi
bGUgQ09OU1RSVUNUT1JTCgpQcmV2aW91cyBiZWZvcmUgaXQgaXMgZ29vZC4gRnJvbSB0aGVyZSBv
bndhcmRzIGl0J3MgYSBmYWlsLgoKLS0gCkFudG9uIFIuIEl2YW5vdgpDYW1icmlkZ2VncmV5cyBM
aW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkgTnVtYmVyIDEwMjczNjYxCmh0
dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtdW0K
