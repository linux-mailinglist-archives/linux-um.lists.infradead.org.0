Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2B0117B4E
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 00:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FKFa2meRYEhzdfsmH3uG7y0TAno7E8tdeK/fST/uEo=; b=WkqYpuID+fWpYa
	DX/bUDdYFy6tM5zQeVs+w+bRQimcnQmOm7e5wLsHuZnIeJv7BdkOeQescLePgWC/agq4O6TAqclvy
	NP8iETsh23hecVqr9GrPL3VSUPpxo5Iro3OpBR8wxUJO3qxacVxOhjTnHgEDZGLWQGcsEIOwpqa8u
	No1zCMJ4A3ZrzzYDVW3czvBCFEaAoOAqXx0DkKq6Okp/9eVw8d2wzthGR685yaRFv51UhmIhp9I/p
	OClkdZ9I8y+2XhJFnyIit37bumwsZX8UqfGIHMVHMa5Vd/rcpighefJaI2UBd6flR/ep/wu6/udO+
	yp2LGviuJN6cBtsLMxXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieSG0-00073H-Sc; Mon, 09 Dec 2019 23:16:00 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieSFy-000720-Fg
 for linux-um@lists.infradead.org; Mon, 09 Dec 2019 23:16:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 9302B60632CA;
 Tue, 10 Dec 2019 00:15:48 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 11pnfsCsf4tL; Tue, 10 Dec 2019 00:15:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3A62D6125476;
 Tue, 10 Dec 2019 00:15:47 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fNCfT7CEoPd4; Tue, 10 Dec 2019 00:15:47 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 08C3D60632CA;
 Tue, 10 Dec 2019 00:15:47 +0100 (CET)
Date: Tue, 10 Dec 2019 00:15:46 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Brendan Higgins <brendanhiggins@google.com>
Message-ID: <1406826345.111805.1575933346955.JavaMail.zimbra@nod.at>
In-Reply-To: <20191209230248.227508-1-brendanhiggins@google.com>
References: <20191209230248.227508-1-brendanhiggins@google.com>
Subject: Re: [PATCH v1] uml: remove support for CONFIG_STATIC_LINK
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: remove support for CONFIG_STATIC_LINK
Thread-Index: b8m7foHpOez/Ln062vqdX5Nq4xnVUQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_151558_671227_E06287C9 
X-CRM114-Status: UNSURE (   7.19  )
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
Cc: Johannes Berg <johannes.berg@intel.com>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, davidgow@google.com,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkJyZW5kYW4gSGlnZ2lucyIg
PGJyZW5kYW5oaWdnaW5zQGdvb2dsZS5jb20+Cj4gQW46ICJKZWZmIERpa2UiIDxqZGlrZUBhZGR0
b2l0LmNvbT4sICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+LCAiYW50b24gaXZhbm92IiA8YW50
b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4KPiBDQzogIkpvaGFubmVzIEJlcmciIDxqb2hh
bm5lcy5iZXJnQGludGVsLmNvbT4sICJsaW51eC11bSIgPGxpbnV4LXVtQGxpc3RzLmluZnJhZGVh
ZC5vcmc+LCAibGludXgta2VybmVsIgo+IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPiwg
ZGF2aWRnb3dAZ29vZ2xlLmNvbSwgIkJyZW5kYW4gSGlnZ2lucyIgPGJyZW5kYW5oaWdnaW5zQGdv
b2dsZS5jb20+Cj4gR2VzZW5kZXQ6IERpZW5zdGFnLCAxMC4gRGV6ZW1iZXIgMjAxOSAwMDowMjo0
OAo+IEJldHJlZmY6IFtQQVRDSCB2MV0gdW1sOiByZW1vdmUgc3VwcG9ydCBmb3IgQ09ORklHX1NU
QVRJQ19MSU5LCgo+IENPTkZJR19TVEFUSUNfTElOSyBhcHBlYXJzIHRvIGhhdmUgYmVlbiBicm9r
ZW4gc2luY2UgYmVmb3JlIHY0LjIwLiBJdAo+IGRvZXNuJ3QgcGxheSBuaWNlIHdpdGggQ09ORklH
X1VNTF9ORVRfVkVDVE9SPXk6Cj4gCj4gL3Vzci9iaW4vbGQ6IGFyY2gvdW0vZHJpdmVycy92ZWN0
b3JfdXNlci5vOiBpbiBmdW5jdGlvbgo+IGB1c2VyX2luaXRfc29ja2V0X2Zkcyc6IHZlY3Rvcl91
c2VyLmM6KC50ZXh0KzB4NDMwKTogd2FybmluZzogVXNpbmcKPiAnZ2V0YWRkcmluZm8nIGluIHN0
YXRpY2FsbHkgbGlua2VkIGFwcGxpY2F0aW9ucyByZXF1aXJlcyBhdCBydW50aW1lIHRoZQo+IHNo
YXJlZCBsaWJyYXJpZXMgZnJvbSB0aGUgZ2xpYmMgdmVyc2lvbiB1c2VkIGZvciBsaW5raW5nCgpU
aGlzIGlzIG5vdGhpbmcgc2VyaW91cy4KCj4gQW5kIGl0IHNlZW1zIHRvIGJyZWFrIHRoZSBwdHJh
Y2UgY2hlY2s6Cj4gCj4gQ2hlY2tpbmcgdGhhdCBwdHJhY2UgY2FuIGNoYW5nZSBzeXN0ZW0gY2Fs
bCBudW1iZXJzLi4uY2hlY2tfcHRyYWNlIDoKPiBjaGlsZCBleGl0ZWQgd2l0aCBleGl0Y29kZSA2
LCB3aGlsZSBleHBlY3RpbmcgMDsgc3RhdHVzIDB4NjdmCj4gWzFdICAgIDEyNjgyMiBhYm9ydCAg
ICAgIC4vbGludXggbWVtPTI1Nk0KCkRpZG4ndCB3ZSBmaXggdGhhdCBhbHJlYWR5PwoKPiAoQXBw
YXJlbnRseSwgYSBwYXRjaCB3YXMgcmVjZW50bHkgZGlzY3Vzc2VkIHRoYXQgZml4ZXMgdGhpcyAt
IGFyb3VuZAo+IHY1LjUtcmMxWzFdIC0gYnV0IHRoZSBmYWN0IHRoYXQgdGhpcyB3YXMgYnJva2Vu
IGZvciBvdmVyIGEgeWVhcgo+IHJlbWFpbnMuKQo+IAo+IEFjY29yZGluZyB0byBBbnRvbiwgUENB
UCB0aHJvd3MgZXZlbiBtb3JlIHdhcm5pbmdzLCBhbmQgdGhlIHJlc3VsdGluZwo+IGJpbmFyeSBp
c24ndCByZWFsbHkgZXZlbiBzdGF0aWMgYW55d2F5LCBzbyB0aGVyZSBpcyByZWFsbHkgbm8gcG9p
bnQgaW4KPiBrZWVwaW5nIHRoaXMgY29uZmlnIGFyb3VuZFsyXS4KCldoYXQ/CkFudG9uLCBwbGVh
c2UgZXhwbGFpbi4gV2h5IGlzIGl0IG5vdCBzdGF0aWMgd2hlbiBidWlsZCB3aXRoIENPTkZJR19T
VEFUSUNfTElOSz8KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXVtCg==
