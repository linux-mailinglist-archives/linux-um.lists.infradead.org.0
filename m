Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8823D10C559
	for <lists+linux-um@lfdr.de>; Thu, 28 Nov 2019 09:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZbQH3nIdlpsBkduHCkFg96a5xvMAwdJelccGuhzdx4=; b=cHQEOU+TE8SEic
	R64buR33jR/58AKruD7Y5jlbLwXV+pm79qDyFHG4pe/PbSF1f2oXMZaP6TF3hyCQwBf0Eb9Vq2Wll
	DLiJLKi3Hftcw3ZE9PQ0nOjEDehv2qt8Catsh68dwXn5zJxnrcFN4qfn1pHgUqHk4+3SCi+BXvq/N
	kfDeyP6e3lvaUyJaNHJZDcYvHsgjt2r+NidpjoJ235wZYf7zGaVe4HLpWcVJttmmabtZboXKgXR+2
	ZKk3zYOV1getrT9PnadB3qbDm7aDtyflMU0srWEi1WAK/kMYHLxvNqH6u4fCMvStHLpCLh25IFJct
	y3qyaVwPTlYOWdFM9DZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaFMZ-0007lv-Aj; Thu, 28 Nov 2019 08:41:23 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaFMV-0007lC-Gn
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 08:41:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id C0F90605A915;
 Thu, 28 Nov 2019 09:41:15 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 6HwXfqQxNdPA; Thu, 28 Nov 2019 09:41:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 743CB607BD98;
 Thu, 28 Nov 2019 09:41:12 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XTUUL9IeyYvs; Thu, 28 Nov 2019 09:41:12 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3F62F605A915;
 Thu, 28 Nov 2019 09:41:12 +0100 (CET)
Date: Thu, 28 Nov 2019 09:41:12 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: anton ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <1784077834.99875.1574930472125.JavaMail.zimbra@nod.at>
In-Reply-To: <5892ee7c-ff24-fb3c-6911-44e0b1d5895f@cambridgegreys.com>
References: <20191128020147.191893-1-weiyongjun1@huawei.com>
 <20191128080641.GD1781@kadam>
 <5892ee7c-ff24-fb3c-6911-44e0b1d5895f@cambridgegreys.com>
Subject: Re: [PATCH -next] um: vector: use GFP_ATOMIC under spin lock
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: vector: use GFP_ATOMIC under spin lock
Thread-Index: 2J60FgWBh1I2FSErd4xdDGw7I9dybg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_004119_854442_1FEA9631 
X-CRM114-Status: UNSURE (   9.86  )
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 linux-um <linux-um@lists.infradead.org>, Jeff Dike <jdike@addtoit.com>,
 kernel-janitors <kernel-janitors@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Wei Yongjun <weiyongjun1@huawei.com>,
 netdev <netdev@vger.kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogImFudG9uIGl2YW5vdiIgPGFu
dG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4gQW46ICJEYW4gQ2FycGVudGVyIiA8ZGFu
LmNhcnBlbnRlckBvcmFjbGUuY29tPiwgIldlaSBZb25nanVuIiA8d2VpeW9uZ2p1bjFAaHVhd2Vp
LmNvbT4KPiBDQzogIlNvbmcgTGl1IiA8c29uZ2xpdWJyYXZpbmdAZmIuY29tPiwgIkRhbmllbCBC
b3JrbWFubiIgPGRhbmllbEBpb2dlYXJib3gubmV0PiwgImtlcm5lbC1qYW5pdG9ycyIKPiA8a2Vy
bmVsLWphbml0b3JzQHZnZXIua2VybmVsLm9yZz4sICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+
LCAiSmVmZiBEaWtlIiA8amRpa2VAYWRkdG9pdC5jb20+LCAibGludXgtdW0iCj4gPGxpbnV4LXVt
QGxpc3RzLmluZnJhZGVhZC5vcmc+LCAiQWxleGVpIFN0YXJvdm9pdG92IiA8YXN0QGtlcm5lbC5v
cmc+LCAibmV0ZGV2IiA8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz4sCj4gYnBmQHZnZXIua2VybmVs
Lm9yZywgIk1hcnRpbiBLYUZhaSBMYXUiIDxrYWZhaUBmYi5jb20+Cj4gR2VzZW5kZXQ6IERvbm5l
cnN0YWcsIDI4LiBOb3ZlbWJlciAyMDE5IDA5OjE4OjMwCj4gQmV0cmVmZjogUmU6IFtQQVRDSCAt
bmV4dF0gdW06IHZlY3RvcjogdXNlIEdGUF9BVE9NSUMgdW5kZXIgc3BpbiBsb2NrCgo+IE9uIDI4
LzExLzIwMTkgMDg6MDYsIERhbiBDYXJwZW50ZXIgd3JvdGU6Cj4+IE9uIFRodSwgTm92IDI4LCAy
MDE5IGF0IDAyOjAxOjQ3QU0gKzAwMDAsIFdlaSBZb25nanVuIHdyb3RlOgo+Pj4gQSBzcGluIGxv
Y2sgaXMgdGFrZW4gaGVyZSBzbyB3ZSBzaG91bGQgdXNlIEdGUF9BVE9NSUMuCj4+Pgo+Pj4gRml4
ZXM6IDk4MDcwMTlhNjJkYyAoInVtOiBMb2FkYWJsZSBCUEYgIkZpcm13YXJlIiBmb3IgdmVjdG9y
IGRyaXZlcnMiKQo+Pj4gU2lnbmVkLW9mZi1ieTogV2VpIFlvbmdqdW4gPHdlaXlvbmdqdW4xQGh1
YXdlaS5jb20+Cj4+PiAtLS0KPj4+ICAgYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl9rZXJuLmMgfCA0
ICsrLS0KPj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl9rZXJuLmMgYi9h
cmNoL3VtL2RyaXZlcnMvdmVjdG9yX2tlcm4uYwo+Pj4gaW5kZXggOTI2MTdlMTY4MjllLi42ZmYw
MDY1YTI3MWQgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL3VtL2RyaXZlcnMvdmVjdG9yX2tlcm4uYwo+
Pj4gKysrIGIvYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl9rZXJuLmMKPj4+IEBAIC0xNDAyLDcgKzE0
MDIsNyBAQCBzdGF0aWMgaW50IHZlY3Rvcl9uZXRfbG9hZF9icGZfZmxhc2goc3RydWN0IG5ldF9k
ZXZpY2UKPj4+ICpkZXYsCj4+PiAgIAkJa2ZyZWUodnAtPmJwZi0+ZmlsdGVyKTsKPj4+ICAgCQl2
cC0+YnBmLT5maWx0ZXIgPSBOVUxMOwo+Pj4gICAJfSBlbHNlIHsKPj4+IC0JCXZwLT5icGYgPSBr
bWFsbG9jKHNpemVvZihzdHJ1Y3Qgc29ja19mcHJvZyksIEdGUF9LRVJORUwpOwo+Pj4gKwkJdnAt
PmJwZiA9IGttYWxsb2Moc2l6ZW9mKHN0cnVjdCBzb2NrX2Zwcm9nKSwgR0ZQX0FUT01JQyk7Cj4+
PiAgIAkJaWYgKHZwLT5icGYgPT0gTlVMTCkgewo+Pj4gICAJCQluZXRkZXZfZXJyKGRldiwgImZh
aWxlZCB0byBhbGxvY2F0ZSBtZW1vcnkgZm9yIGZpcm13YXJlXG4iKTsKPj4+ICAgCQkJZ290byBm
bGFzaF9mYWlsOwo+Pj4gQEAgLTE0MTQsNyArMTQxNCw3IEBAIHN0YXRpYyBpbnQgdmVjdG9yX25l
dF9sb2FkX2JwZl9mbGFzaChzdHJ1Y3QgbmV0X2RldmljZQo+Pj4gKmRldiwKPj4+ICAgCWlmIChy
ZXF1ZXN0X2Zpcm13YXJlKCZmdywgZWZsLT5kYXRhLCAmdmRldmljZS0+cGRldi5kZXYpKQo+PiAg
ICAgICAgICAgICAgXl5eXl5eXl5eXl5eXl5eXgo+PiAKPj4gSXMgaXQgcmVhbGx5IHBvc3NpYmxl
IHRvIGNhbGwgcmVxdWVzdF9maXJtd2FyZSgpIHdoaWxlIGhvbGRpbmcgYQo+PiBzcGluX2xvY2s/
ICBJIHdhcyBzbyBzdXJlIHRoYXQgcmVhZCBmcm9tIHRoZSBkaXNrLgo+IAo+IFdvcmtzLCBJIHRl
c3RlZCB0aGUgcGF0Y2ggcXVpdGUgYSBmZXcgdGltZXMuCgpJdCB3b3JrcyBiZWNhdXNlIG9mIHRo
ZSBuYXR1cmUgb2YgVU1MIC0+bm8gIFNNUCBvciBQUkVFTVBULgpCdXQgYmV0dGVyIHJlcXVlc3Qg
dGhlIGZpcm13YXJlIGJlZm9yZSB0YWtpbmcgdGhlIHNwaW5sb2NrLgpyZXF1ZXN0X2Zpcm13YXJl
KCkgY2FuIGJsb2NrLgpTYW1lIGZvciB0aGUga21hbGxvYygpLCBqdXN0IGFsbG9jYXRlIHRoZSBi
dWZmZXIgYmVmb3JlIGFuZCB0aGVuIGFzc2lnbgp0aGUgcG9pbnRlciB1bmRlciB0aGUgbG9jay4g
VGhhdCB3YXkgeW91IGRvbid0IG5lZWQgR0ZQX0FUT01JQy4KClRoYW5rcywKLy9yaWNoYXJkCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBt
YWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
