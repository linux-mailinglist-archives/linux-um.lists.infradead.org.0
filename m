Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7939B11273D
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 10:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3m9iU36TUjtuMnTJrPPdYkKsZmgujcUw0gW4gINTzbc=; b=uYXKvcEmvGscEN
	wWaA9yL+juBPfFTw3eoNsD8V8euHxx/Wwq0C+QG7Ror7W4DppFjHlmaqxIyhw4lGS47AY8wFYXspX
	CrcvBSQYywr+vuXoGW+bKhzAWuMyMThQ0AhDFn4v2S3gIlvVPQgrhjxpVkC5EPP+FvFLaeC6ymRRt
	UwyZNMP9zUErvdcHp/JKQf5B16kXEGCxRMPYqsIlW9FBMsE5tchnKZpmqhvdtLpUvYaaPrO5INNwl
	lqIHK2ykYZgWOeJJPI5/dERk3E8eFo7r5lsu82NAmLfNVXzPD1lg3LWf9G7Z8z8+QPb2Uh3ZuNJCI
	l1LtyaDSJ4VTUqafnwug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQw2-0007W6-Aq; Wed, 04 Dec 2019 09:27:02 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQvz-0007VO-RD
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 09:27:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3A928608897D;
 Wed,  4 Dec 2019 10:26:50 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id eC_9GLEyjuVS; Wed,  4 Dec 2019 10:26:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id BE6FE6126B4B;
 Wed,  4 Dec 2019 10:26:49 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ElVs2DoneaAh; Wed,  4 Dec 2019 10:26:49 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 9D0AD608897D;
 Wed,  4 Dec 2019 10:26:49 +0100 (CET)
Date: Wed, 4 Dec 2019 10:26:49 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: anton ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <66445239.106357.1575451609511.JavaMail.zimbra@nod.at>
In-Reply-To: <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
 <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
 <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
Subject: Re: I get 5.4 fail to start
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: I get 5.4 fail to start
Thread-Index: vZ+/aqTSEKJm2cY27Avl4z4N1OnF6Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_012700_030149_0340F76A 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogImFudG9uIGl2YW5vdiIgPGFu
dG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4gQW46ICJyaWNoYXJkIiA8cmljaGFyZEBu
b2QuYXQ+Cj4gQ0M6ICJsaW51eC11bSIgPGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmc+Cj4g
R2VzZW5kZXQ6IE1pdHR3b2NoLCA0LiBEZXplbWJlciAyMDE5IDEwOjE5OjU2Cj4gQmV0cmVmZjog
UmU6IEkgZ2V0IDUuNCBmYWlsIHRvIHN0YXJ0Cgo+IE9uIDA0LzEyLzIwMTkgMDk6MDMsIFJpY2hh
cmQgV2VpbmJlcmdlciB3cm90ZToKPj4gLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+
Pj4gVm9uOiAiYW50b24gaXZhbm92IiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4K
Pj4+PiBbc25pcF0KPj4+Cj4+PiBJZiBJIGNvbW1lbnQgb3V0IHRoZSBjaGVja3Mgb3IgbWFrZSB0
aGVtIHRvIGV4cGVjdCA2IGl0IHJ1bnMgZmluZSBhZnRlcgo+Pj4gdGhhdC4KPj4+Cj4+PiBObyBp
ZGVhIHdoYXQncyBnb2luZyBvbiAtIEkgZG8gbm90IHNlZSB3aGVyZSB0aGUgNiBjYW4gY29tZSBm
cm9tLgo+PiAKPj4gSSBzdXNwZWN0IGEgY2hhbmdlL3JlZ3Jlc3Npb24gb24gdGhlIGhvc3Qgc2lk
ZSwgbm90IHRoZSBVTUwgc2lkZS4KPj4gTWF5YmUgc29tZSBMU00gbW9kdWxlIHdoaWNoIG1ha2Vz
IHB0cmFjZSgpICJiZXR0ZXIiPwo+IAo+IFRoaXMgaXMgcG9zc2libGUuIEkgd2lsbCBydW4gaG9z
dCByZWdyZXNzaW9uIGFzIHdlbGwgdG8gc2VlIGlmIGl0IGlzIGFueQo+IGRpZmZlcmVudC4KPiAK
PiBJIHN0aWxsIGRvIG5vdCBoYXZlIGFueSBpZGVhcyBvbiB3aHkgZG8gSSBnZXQgVU1MIHdpdGgg
dXAgdG8gNS4zIGd1ZXN0Cj4gd29ya2luZyBhbmQgYnJlYWtpbmcgaW4gNS40IGFuZCA1LjUtcmMu
Li4KPiAKPiBUaGUgY2hhbmdlIGluIHRoYXQgY2FzZSBpcyBndWVzdCBvbmx5IC0gdGhleSBhcmUg
YWxsIGJlaW5nIHJ1biBvbiB0aGUKPiBzYW1lIDUuMyBob3N0IChhbmQgb2NjYXNpb25hbGx5IG9u
IGEgNC4xOSkuCj4gCj4gSSBhbSBnb2luZyB0aHJvdWdoIHRoZSBrYnVpbGQgYW5kIG1ha2VmaWxl
IGNoYW5nZXMgYmV0d2VlbiA1LjMgYW5kIDUuNAo+IGF0IHRoZSBtb21lbnQgdG8gdHJ5IHRvIGZp
Z3VyZSBpdCBvdXQuCj4gCgpBIGZldyB5ZWFycyBhZ28gSSBmYWNlZCBhbiBpc3N1ZSBsaWtlIHRo
aXMgZHVlIHRvIGEgbmV3IGNvbXBpbGVyICJmZWF0dXJlIgphZnRlciBhbiBkaXN0cm8gdXBncmFk
ZS4gRGVwZW5kaW5nIG9uIHRoZSBrZXJuZWwgdmVyc2lvbiBnY2Mgb3B0aW1pemVkCmRpZmZlcmVu
dGx5IGFuZCBtYWRlIFVNTCBmYWlsLgpBdCB0aGUgZW5kIGl0IHdhcyBhIHByb2JsZW0gaW4gc29t
ZSBVTUwgaW5saW5lIGFzc2VtYmx5IGJ1dCB0aGUgc3ltcHRvbXMKZGlkbid0IHBvaW50IHRoZXJl
LgoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
dW0K
