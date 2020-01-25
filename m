Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6F4149638
	for <lists+linux-um@lfdr.de>; Sat, 25 Jan 2020 16:28:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V28MwQWKC9WBWc6+ugh33aFmDmjs9UDdCnxL0TWf2pg=; b=a0qcfTPCuNQjkS
	0D5ztn3eroJOG+11LEii3ksu+eA6KhO3uUCazFQehV3MTboEC90UgZJ6C+eGEGURasDsrv61SuBl9
	WbfRO9Dga1bvR+88cVXxd1Ed+nqMeKJzVUeV8C+toaWKbxI7Ytw8aoax8OTZcDcHORuVup6+7v/0N
	Xlam3A46M41X4uNaqj6GNP8VzhX2UPFa7t9i9mwjJ5tgI2pmITe7WWk8ZzyiYNHb7InqFgRasUIz2
	dizSs867FtpbEv+uGD4VftSoMO4MO9z5gAUIDjIid0tMhenk2YehmxNNjuupgnOTBV4FxYZKC1utB
	Fj/VCu9/UGbIPRPwPlMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivNMH-0003nw-Dn; Sat, 25 Jan 2020 15:28:25 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivNM7-0003h8-TP; Sat, 25 Jan 2020 15:28:18 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id D3627240009;
 Sat, 25 Jan 2020 15:28:04 +0000 (UTC)
Date: Sat, 25 Jan 2020 16:28:03 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v1 2/7] mtd: rawnand: add unspecified HAS_IOMEM dependency
Message-ID: <20200125162803.5a2375d7@xps13>
In-Reply-To: <CAFd5g47VLB6zOJsSySAYrJie8hj-OkvOC89-z2b9xMBZ2bxvYA@mail.gmail.com>
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-3-brendanhiggins@google.com>
 <20200109162303.35f4f0a3@xps13>
 <CAFd5g47VLB6zOJsSySAYrJie8hj-OkvOC89-z2b9xMBZ2bxvYA@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_072816_085972_7B540849 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, David Gow <davidgow@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

SGkgQnJlbmRhbiwKCkJyZW5kYW4gSGlnZ2lucyA8YnJlbmRhbmhpZ2dpbnNAZ29vZ2xlLmNvbT4g
d3JvdGUgb24gRnJpLCAyNCBKYW4gMjAyMAoxODoxMjoxMiAtMDgwMDoKCj4gT24gVGh1LCBKYW4g
OSwgMjAyMCBhdCA3OjIzIEFNIE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5j
b20+IHdyb3RlOgo+ID4KPiA+IEhpIEJyZW5kYW4sCj4gPgo+ID4gQnJlbmRhbiBIaWdnaW5zIDxi
cmVuZGFuaGlnZ2luc0Bnb29nbGUuY29tPiB3cm90ZSBvbiBXZWQsIDExIERlYyAyMDE5Cj4gPiAx
MToyNzozNyAtMDgwMDoKPiA+ICAKPiA+ID4gQ3VycmVudGx5IENPTkZJR19NVERfTkFORF9DQURF
TkNFIGltcGxpY2l0bHkgZGVwZW5kcyBvbgo+ID4gPiBDT05GSUdfSEFTX0lPTUVNPXk7IGNvbnNl
cXVlbnRseSwgb24gYXJjaGl0ZWN0dXJlcyB3aXRob3V0IElPTUVNIHdlIGdldAo+ID4gPiB0aGUg
Zm9sbG93aW5nIGJ1aWxkIGVycm9yOgo+ID4gPgo+ID4gPiBsZDogZHJpdmVycy9tdGQvbmFuZC9y
YXcvY2FkZW5jZS1uYW5kLWNvbnRyb2xsZXIubzogaW4gZnVuY3Rpb24gYGNhZGVuY2VfbmFuZF9k
dF9wcm9iZS5jb2xkLjMxJzoKPiA+ID4gZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FkZW5jZS1uYW5k
LWNvbnRyb2xsZXIuYzoyOTY5OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBkZXZtX3BsYXRmb3Jt
X2lvcmVtYXBfcmVzb3VyY2UnCj4gPiA+IGxkOiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWRlbmNl
LW5hbmQtY29udHJvbGxlci5jOjI5Nzc6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGRldm1faW9y
ZW1hcF9yZXNvdXJjZScKPiA+ID4KPiA+ID4gRml4IHRoZSBidWlsZCBlcnJvciBieSBhZGRpbmcg
dGhlIHVuc3BlY2lmaWVkIGRlcGVuZGVuY3kuCj4gPiA+Cj4gPiA+IFJlcG9ydGVkLWJ5OiBCcmVu
ZGFuIEhpZ2dpbnMgPGJyZW5kYW5oaWdnaW5zQGdvb2dsZS5jb20+Cj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEJyZW5kYW4gSGlnZ2lucyA8YnJlbmRhbmhpZ2dpbnNAZ29vZ2xlLmNvbT4KPiA+ID4gLS0t
ICAKPiA+Cj4gPiBTb3JyeSBmb3IgdGhlIGRlbGF5Lgo+ID4KPiA+IEFja2VkLWJ5OiBNaXF1ZWwg
UmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiAgCj4gCj4gSXQgbG9va3MgbGlrZSBt
eSBjaGFuZ2UgaGFzIG5vdCBiZWVuIGFwcGxpZWQgdG8gbmFuZC9uZXh0OyBpcyB0aGlzIHRoZQo+
IGJyYW5jaCBpdCBzaG91bGQgYmUgYXBwbGllZCB0bz8gSSBoYXZlIGFsc28gdmVyaWZpZWQgdGhh
dCB0aGlzIHBhdGNoCj4gaXNuJ3QgaW4gbGludXgtbmV4dCBhcyBvZiBKYW4gMjR0aC4KPiAKPiBJ
cyBtdGQvbGludXggdGhlIGNvcnJlY3QgdHJlZSBmb3IgdGhpcz8gT3IgZG8gSSBuZWVkIHRvIHJl
YWNoIG91dCB0bwo+IHNvbWVvbmUgZWxzZT8KCldoZW4gSSBzZW50IG15IEFja2VkLWJ5IEkgc3Vw
cG9zZWQgc29tZW9uZSBlbHNlIHdvdWxkIHBpY2sgdGhlIHBhdGNoLApidXQgdGhlcmUgaXMgYWN0
dWFsbHkgbm8gZGVwZW5kZW5jeSB3aXRoIGFsbCB0aGUgb3RoZXIgcGF0Y2hlcyBzbyBJCmRvbid0
IGtub3cgd2h5IEkgZGlkIGl0Li4uIFNvcnJ5IGFib3V0IHRoYXQuIEknbGwgdGFrZSBpdCBhbnl3
YXkgaW4gbXkKUFIgZm9yIDUuNi4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4
LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC11bQo=
