Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C696F1128C7
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 11:03:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rUqx5VNXL9Ytl0t+JOOWUOFOoykVkoZD94C3uJUFiJs=; b=Vn2dFeRRVCFT0JMc8mYOyp6TM
	QayRaH3Df5OF/QfhgwUc59G0EZiPNuoKfxqFm17e1P/licoPLh6dvDJpCnhWXjP9P9zDRSwd4EF6d
	uRxPtbb+D96JI1h48D17MKwYXbQ7FnFNAxQW0psPsKRh5B2un9BB3NrkvCNLO+3Gs5IMbGbz9RZ5b
	z3Cg80N+k4lmV7KitPmvxt81KCzKn/mDJGOHs7oaRD42gpmux8ucQ3Cg0cL0aSf0Fs+jfSK9W57UN
	OsgXhgmyLwza6JBnSFRELSrbyX0GD9urz8DfNMrhu91oMmPl0IVegK5PIfQO6CKQbiVHffK4M3w0z
	UbRRhszgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRV4-00016w-Vs; Wed, 04 Dec 2019 10:03:14 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRV1-00016P-O0
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 10:03:13 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icRUw-0003oe-PF; Wed, 04 Dec 2019 10:03:09 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icRUu-0003cZ-J8; Wed, 04 Dec 2019 10:03:06 +0000
Subject: Re: I get 5.4 fail to start
To: Richard Weinberger <richard@nod.at>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
 <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
 <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
 <66445239.106357.1575451609511.JavaMail.zimbra@nod.at>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <a0ceadb1-ca85-34b3-302b-9ada310ca387@cambridgegreys.com>
Date: Wed, 4 Dec 2019 10:03:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <66445239.106357.1575451609511.JavaMail.zimbra@nod.at>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_020311_780014_0188A7E0 
X-CRM114-Status: GOOD (  16.01  )
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
Cc: linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAwNC8xMi8yMDE5IDA5OjI2LCBSaWNoYXJkIFdlaW5iZXJnZXIgd3JvdGU6Cj4gLS0tLS0g
VXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBWb246ICJhbnRvbiBpdmFub3YiIDxhbnRvbi5p
dmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPgo+PiBBbjogInJpY2hhcmQiIDxyaWNoYXJkQG5vZC5h
dD4KPj4gQ0M6ICJsaW51eC11bSIgPGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmc+Cj4+IEdl
c2VuZGV0OiBNaXR0d29jaCwgNC4gRGV6ZW1iZXIgMjAxOSAxMDoxOTo1Ngo+PiBCZXRyZWZmOiBS
ZTogSSBnZXQgNS40IGZhaWwgdG8gc3RhcnQKPiAKPj4gT24gMDQvMTIvMjAxOSAwOTowMywgUmlj
aGFyZCBXZWluYmVyZ2VyIHdyb3RlOgo+Pj4gLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0t
LQo+Pj4+IFZvbjogImFudG9uIGl2YW5vdiIgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5j
b20+Cj4+Pj4+IFtzbmlwXQo+Pj4+Cj4+Pj4gSWYgSSBjb21tZW50IG91dCB0aGUgY2hlY2tzIG9y
IG1ha2UgdGhlbSB0byBleHBlY3QgNiBpdCBydW5zIGZpbmUgYWZ0ZXIKPj4+PiB0aGF0Lgo+Pj4+
Cj4+Pj4gTm8gaWRlYSB3aGF0J3MgZ29pbmcgb24gLSBJIGRvIG5vdCBzZWUgd2hlcmUgdGhlIDYg
Y2FuIGNvbWUgZnJvbS4KPj4+Cj4+PiBJIHN1c3BlY3QgYSBjaGFuZ2UvcmVncmVzc2lvbiBvbiB0
aGUgaG9zdCBzaWRlLCBub3QgdGhlIFVNTCBzaWRlLgo+Pj4gTWF5YmUgc29tZSBMU00gbW9kdWxl
IHdoaWNoIG1ha2VzIHB0cmFjZSgpICJiZXR0ZXIiPwo+Pgo+PiBUaGlzIGlzIHBvc3NpYmxlLiBJ
IHdpbGwgcnVuIGhvc3QgcmVncmVzc2lvbiBhcyB3ZWxsIHRvIHNlZSBpZiBpdCBpcyBhbnkKPj4g
ZGlmZmVyZW50Lgo+Pgo+PiBJIHN0aWxsIGRvIG5vdCBoYXZlIGFueSBpZGVhcyBvbiB3aHkgZG8g
SSBnZXQgVU1MIHdpdGggdXAgdG8gNS4zIGd1ZXN0Cj4+IHdvcmtpbmcgYW5kIGJyZWFraW5nIGlu
IDUuNCBhbmQgNS41LXJjLi4uCj4+Cj4+IFRoZSBjaGFuZ2UgaW4gdGhhdCBjYXNlIGlzIGd1ZXN0
IG9ubHkgLSB0aGV5IGFyZSBhbGwgYmVpbmcgcnVuIG9uIHRoZQo+PiBzYW1lIDUuMyBob3N0IChh
bmQgb2NjYXNpb25hbGx5IG9uIGEgNC4xOSkuCj4+Cj4+IEkgYW0gZ29pbmcgdGhyb3VnaCB0aGUg
a2J1aWxkIGFuZCBtYWtlZmlsZSBjaGFuZ2VzIGJldHdlZW4gNS4zIGFuZCA1LjQKPj4gYXQgdGhl
IG1vbWVudCB0byB0cnkgdG8gZmlndXJlIGl0IG91dC4KPj4KPiAKPiBBIGZldyB5ZWFycyBhZ28g
SSBmYWNlZCBhbiBpc3N1ZSBsaWtlIHRoaXMgZHVlIHRvIGEgbmV3IGNvbXBpbGVyICJmZWF0dXJl
Igo+IGFmdGVyIGFuIGRpc3RybyB1cGdyYWRlLiBEZXBlbmRpbmcgb24gdGhlIGtlcm5lbCB2ZXJz
aW9uIGdjYyBvcHRpbWl6ZWQKPiBkaWZmZXJlbnRseSBhbmQgbWFkZSBVTUwgZmFpbC4KPiBBdCB0
aGUgZW5kIGl0IHdhcyBhIHByb2JsZW0gaW4gc29tZSBVTUwgaW5saW5lIGFzc2VtYmx5IGJ1dCB0
aGUgc3ltcHRvbXMKPiBkaWRuJ3QgcG9pbnQgdGhlcmUuCj4gCj4gVGhhbmtzLAo+IC8vcmljaGFy
ZAoKVGhpcyBhbHNvIGNyb3NzZWQgbXkgbWluZCBhbmQgSSB0cmllZCB0byB0aHJvdyBhIGNvdXBs
ZSBvZiBiYXJyaWVycyBoZXJlIAphbmQgdGhlcmUgdG8gc2VlIGlmIHRoaXMgbWFrZXMgYSBkaWZm
ZXJlbmNlLgoKTm8gZWZmZWN0IHNvIGZhciwgYnV0IGl0IGlzIGFub3RoZXIgcG9zc2liaWxpdHkg
SSBhbSBsb29raW5nIGF0LgoKQnJnZHMsCgotLSAKQW50b24gUi4gSXZhbm92CkNhbWJyaWRnZWdy
ZXlzIExpbWl0ZWQuIFJlZ2lzdGVyZWQgaW4gRW5nbGFuZC4gQ29tcGFueSBOdW1iZXIgMTAyNzM2
NjEKaHR0cHM6Ly93d3cuY2FtYnJpZGdlZ3JleXMuY29tLwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVt
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC11bQo=
