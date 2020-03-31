Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40091198D45
	for <lists+linux-um@lfdr.de>; Tue, 31 Mar 2020 09:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v41Be9rAvazqSSprFmJ14HNZOPx9pZE/mTmA7xgjy6g=; b=o+tE+HZsLJ9kVu
	kB2PRXjKmIb2c2v1BaKNcAJ22ErTKjnBTmDBkqBP/ifRLl+LqM4dlna6c55GQPptSncBGxf0dWFBD
	h8Uoxl1uV0qDBUsf4C9CaLREeTJ+RR/CwPwBvyrGnrUYWUvZUxeXsSLloRbJyk46/bhledcqFMbMX
	3uI2GKgSIWqK+Hkj3TXQsGJuW81lIQMNeS/QuQmlhFbj+68GEtklh0LNP7dwzNp1+sR4Fqh5n+AT0
	B+15HY4tH6/QD7oBOUxztgqMHE8dtqTJpfogkjtM86k4Cwj8+AvpWBkDt7TJPCpNHqgEyM3QNSbO4
	dpXj3lpmVV2YpwrRkZyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBZH-0003Ep-7m; Tue, 31 Mar 2020 07:44:15 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBZF-0003Dp-2w
 for linux-um@lists.infradead.org; Tue, 31 Mar 2020 07:44:14 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jJBZ3-008Kx7-9S; Tue, 31 Mar 2020 09:44:01 +0200
Message-ID: <19cf82d3c3d76ad62a47beee162fa9ff768a3a01.camel@sipsolutions.net>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: David Gow <davidgow@google.com>
Date: Tue, 31 Mar 2020 09:43:59 +0200
In-Reply-To: <CABVgOSnz2heYvXytvhwA3RO_3dX=8vKrC+b8a6GLZV8eD3Fcow@mail.gmail.com>
 (sfid-20200331_081511_061239_730E62F6)
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
 <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
 <CACT4Y+bdxmRmr57JO_k0whhnT2BqcSA=Jwa5M6=9wdyOryv6Ug@mail.gmail.com>
 <ded22d68e623d2663c96a0e1c81d660b9da747bc.camel@sipsolutions.net>
 <CACT4Y+YzM5bwvJ=yryrz1_y=uh=NX+2PNu4pLFaqQ2BMS39Fdg@mail.gmail.com>
 <2cee72779294550a3ad143146283745b5cccb5fc.camel@sipsolutions.net>
 <CACT4Y+YhwJK+F7Y7NaNpAwwWR-yZMfNevNp_gcBoZ+uMJRgsSA@mail.gmail.com>
 <a51643dbff58e16cc91f33273dbc95dded57d3e6.camel@sipsolutions.net>
 <CABVgOSnz2heYvXytvhwA3RO_3dX=8vKrC+b8a6GLZV8eD3Fcow@mail.gmail.com>
 (sfid-20200331_081511_061239_730E62F6)
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_004413_128231_B8506DC7 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um <linux-um@lists.infradead.org>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDIwLTAzLTMwIGF0IDIzOjE0IC0wNzAwLCBEYXZpZCBHb3cgd3JvdGU6Cj4gCj4g
SSBzcGVudCBhIGxpdHRsZSB0aW1lIHBsYXlpbmcgYXJvdW5kIHdpdGggdGhpcywgYW5kIHdhcyBh
YmxlIHRvIGdldAo+IG1hYzgwMjExIAoKbWFjODAyMTEsIG9yIG1hYzgwMjExLWh3c2ltPyBJIGNh
biBsb2FkIGEgZmV3IG1vZHVsZXMsIGJ1dCB0aGVuIGl0CmNyYXNoZXMgb24gc2F5IHRoZSB0aGly
ZCAodXN1YWxseSwgYnV0IHdobyBrbm93cyB3aGF0IHRoaXMgZGVwZW5kcyBvbikuCgo+IGxvYWRp
bmcgaWYgSSBmb3JjZS1lbmFibGVkIENPTkZJR19LQVNBTl9WTUFMTE9DIChhbG9uZ3NpZGUKPiBi
dW1waW5nIHVwIHRoZSBzaGFkb3cgbWVtb3J5IGFkZHJlc3MpLgoKTm90IHN1cmUgSSB0cmllZCB0
aGF0IGNvbWJpbmF0aW9uIHRob3VnaC4KCj4gVGhlIHRlc3QtYnBmIG1vZHVsZSB3YXMgc3RpbGwg
ZmFpbGluZywgdGhvdWdoIOKAlCB3aGljaCBtYXkgb3IgbWF5IG5vdAo+IGhhdmUgYmVlbiByZWxh
dGVkIHRvIGhvdyBicGYgdXNlcyB2bWFsbG9jKCkuCgpJIHRoaW5rIEkgZ290IHNvbWUgdHJvdWJs
ZSBhbHNvIHdpdGgganVzdCBzdGFjayB1bndpbmRpbmcgYW5kIG90aGVyCnJhbmRvbSB0aGluZ3Mg
ZmF1bHRpbmcgaW4gdGhlIHZtYWxsb2MgYW5kL29yIHNoYWRvdyBzcGFjZSAuLi4KCj4gSSBkbyBs
aWtlIHRoZSBpZGVhIG9mIHRyeWluZyB0byBwdXNoIHRoZSBzaGFkb3cgbWVtb3J5IGFsbG9jYXRp
b24KPiB0aHJvdWdoIFVNTCdzIFBURSBjb2RlLCBidXQgY29uZmVzcyB0byBub3QgdW5kZXJzdGFu
ZGluZyBpdAo+IHBhcnRpY3VsYXJseSB3ZWxsLiAKCk1lIG5laXRoZXIuIEkganVzdCBub3RpY2Vk
IHRoYXQgYWxsIHRoZSB2bWFsbG9jIGFuZCBrYXNhbi12bWFsbG9jIGRvIGFsbAp0aGUgUFRFIGhh
bmRsaW5nLCBzbyB0aGluZ3MgbWlnaHQgZWFzaWx5IGNsYXNoIGlmIHlvdSBoYXZlCkNPTkZJR19L
QVNBTl9WTUFMTE9DLCB3aGljaCB3ZSBkbyB3YW50IGV2ZW50dWFsbHkuCgo+IEkgaW1hZ2luZSBp
dCdkIHJlcXVpcmUgcHVzaGluZyB0aGUgS0FTQU4KPiBpbml0aWFsaXNhdGlvbiBiYWNrIHVudGls
IGFmdGVyIGluaXRfcGh5c21lbSwgYW5kIGhhdmluZyB0aGUgc2hhZG93Cj4gbWVtb3J5IGJlIGJh
Y2tlZCBieSB0aGUgcGh5c21lbSBmaWxlPyBVbmxlc3MgdGhlcmUncyBhIGNsZXZlciB3YXkgb2YK
PiBhbGxvY2F0aW5nIHRoZSBzaGFkb3cgbWVtb3J5IGVhcmx5LCBhbmQgdGhlbiBob29raW5nIGl0
IGludG8gdGhlIHBhZ2UKPiB0YWJsZXMvZXRjIHdoZW4gdGhvc2UgYXJlIGluaXRpYWxpc2VkIChh
a2luIHRvIGhvdyBvbiB4ODYgdGhlcmUncyBhCj4gc2VwYXJhdGUgZWFybHkgc2hhZG93IG1lbW9y
eSBzdGFnZSB3aGlsZSB0aGluZ3MgYXJlIHN0aWxsIGJlaW5nIHNldAo+IHVwLCBtYXliZT8pCgpQ
cmV0dHkgc3VyZSB3ZSBzaG91bGQgYmUgYWJsZSB0byBob29rIGl0IHVwIGxhdGVyLCBidXQgSSBo
YXZlbid0IHJlYWxseQpkdWcgZGVlcGx5IHlldC4KCmpvaGFubmVzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0Cmxp
bnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC11bQo=
