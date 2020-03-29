Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0460197099
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/x+6jxXykcUFaZN7SV8oXNr8h6YKWCdc6nGJ7jHxSI=; b=LEvJjoDotlr5rg
	6KrJXju1mjjCEiGJHXYoDlRdb+Ko4zz946qxTYQUiQzO5zmQZqGEhQCZ/Bl1NBYQHpCtAZ/jPltNq
	2geJR8dmnrTF1WupCvD6IK8QCGsyn8KSWaU0U0Y3c1Nk61Sg3DWr3JBtLytqJiFa+1iqSGnH/LqPd
	g/M+T9/SEXxQI+v4QAxxwVD0GbEafc5iVxxXAKZkfK1jDlm9JKSJWFPIe+LiFxeIXOilvFDmMsKbb
	yROfCpE9Mpq/w5YjbsgbQXrrzCJZlL9eQdNCwVFYkZ8rXhZQGs4FBXFUrClnMbBi8p+y6eHcc4iat
	oKHcKrMPdmi+pBRg0ptQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfsk-0005Er-E0; Sun, 29 Mar 2020 21:54:14 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfsh-0005ES-7E
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:54:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id A76B160D0874;
 Sun, 29 Mar 2020 23:54:08 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id jNc3WgwF_MAg; Sun, 29 Mar 2020 23:54:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 64BC16091853;
 Sun, 29 Mar 2020 23:54:07 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id TqkE4nhMYMmY; Sun, 29 Mar 2020 23:54:07 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3533860D0872;
 Sun, 29 Mar 2020 23:54:07 +0200 (CEST)
Date: Sun, 29 Mar 2020 23:54:07 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: anton ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <606921391.56755.1585518847045.JavaMail.zimbra@nod.at>
In-Reply-To: <7f8b86f1-3759-c9ff-6216-a7104edb8030@cambridgegreys.com>
References: <20200124221401.210449-1-brendanhiggins@google.com>
 <CAFd5g44eznV-9cPf4JVpsJo93+R8YCqUwBqRf+PbjaRMizy1aQ@mail.gmail.com>
 <7f8b86f1-3759-c9ff-6216-a7104edb8030@cambridgegreys.com>
Subject: Re: [PATCH v3] uml: make CONFIG_STATIC_LINK actually static
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: make CONFIG_STATIC_LINK actually static
Thread-Index: TqGQUOqF7TCvWDerkItHXFGdXoxNQw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_145411_407497_6621C0C5 
X-CRM114-Status: UNSURE (   4.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Brendan Higgins <brendanhiggins@google.com>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, davidgow <davidgow@google.com>,
 James McMechan <james_mcmechan@hotmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogImFudG9uIGl2YW5vdiIgPGFu
dG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4gQW46ICJCcmVuZGFuIEhpZ2dpbnMiIDxi
cmVuZGFuaGlnZ2luc0Bnb29nbGUuY29tPiwgIkplZmYgRGlrZSIgPGpkaWtlQGFkZHRvaXQuY29t
PiwgInJpY2hhcmQiIDxyaWNoYXJkQG5vZC5hdD4sICJHZWVydAo+IFV5dHRlcmhvZXZlbiIgPGdl
ZXJ0QGxpbnV4LW02OGsub3JnPiwgIkphbWVzIE1jTWVjaGFuIiA8amFtZXNfbWNtZWNoYW5AaG90
bWFpbC5jb20+Cj4gQ0M6ICJsaW51eC11bSIgPGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmc+
LCAibGludXgta2VybmVsIiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4sICJkYXZpZGdv
dyIKPiA8ZGF2aWRnb3dAZ29vZ2xlLmNvbT4KPiBHZXNlbmRldDogU2Ftc3RhZywgOC4gRmVicnVh
ciAyMDIwIDA4OjU2OjU4Cj4gQmV0cmVmZjogUmU6IFtQQVRDSCB2M10gdW1sOiBtYWtlIENPTkZJ
R19TVEFUSUNfTElOSyBhY3R1YWxseSBzdGF0aWMKCj4gT24gMDgvMDIvMjAyMCAwMTowNywgQnJl
bmRhbiBIaWdnaW5zIHdyb3RlOgo+PiBPbiBGcmksIEphbiAyNCwgMjAyMCBhdCAyOjE0IFBNIEJy
ZW5kYW4gSGlnZ2lucwo+PiA8YnJlbmRhbmhpZ2dpbnNAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4+Pgo+
Pj4gQ3VycmVudGx5LCBDT05GSUdfU1RBVElDX0xJTksgY2FuIGJlIGVuYWJsZWQgd2l0aCBvcHRp
b25zIHdoaWNoIGNhbm5vdAo+Pj4gYmUgc3RhdGljYWxseSBsaW5rZWQsIG5hbWVseSBVTUxfTkVU
X1ZFQ1RPUiwgVU1MX05FVF9WREUsIGFuZAo+Pj4gVU1MX05FVF9QQ0FQOyB0aGlzIGlzIGJlY2F1
c2UgZ2xpYmMgdHJpZXMgdG8gbG9hZCBOU1Mgd2hpY2ggZG9lcyBub3QKPj4+IHN1cHBvcnQgYmVp
bmcgc3RhdGljYWxseSBsaW5rZWQuIFNvIG1ha2UgQ09ORklHX1NUQVRJQ19MSU5LIGRlcGVuZCBv
bgo+Pj4gIVVNTF9ORVRfVkVDVE9SICYmICFVTUxfTkVUX1ZERSAmJiAhVU1MX05FVF9QQ0FQLgo+
Pj4KPj4+IExpbms6Cj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sL2Y2NThmMzE3LWJl
NTQtZWQ3NS04Mjk2LWMzNzNjMmRjYzY5N0BjYW1icmlkZ2VncmV5cy5jb20vI3QKPj4+IFNpZ25l
ZC1vZmYtYnk6IEJyZW5kYW4gSGlnZ2lucyA8YnJlbmRhbmhpZ2dpbnNAZ29vZ2xlLmNvbT4KPj4+
IC0tLQo+PiAKPj4gUGluZy4KPiAKPiBJQ01QIGVjaG8gcmVwbHksCj4gCj4gSSB0aG91Z2h0IEkg
YWNrZWQgaXQgOikKPiAKPiBJZiBub3QgLSBhcG9sb2dpZXMuCgpBcHBsaWVkLCB0aGFua3MhCgpU
aGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
