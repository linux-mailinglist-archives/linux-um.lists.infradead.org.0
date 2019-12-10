Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F126211824B
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 09:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaifL+hXwiR1n/ZTpNfW3VfzBCctbhu62bn4GBEG2q8=; b=S3RtMlaqRU+Tle
	BFVoJbs5O+8qaZV9v6IzqHaNzTMr/T4oX/Szo1aOJJM0yc+HG6Ya/OqPK2nUb4yIwI+JMVPH1UY0l
	6ls6yM1M/ug7qp31uGpJHMsxJB8RJjGr9/0fiUKpgEBZATJeyCQeKCNoVojZ+l3yb6wnnOWiH+5LD
	TOkF2sdx40WQTb9IANGn3+0GB/tqKXursfXYn9x6BlwN6bHWI8veIMpVp3CDT13pAWanq3aHowSYP
	ZNp8ubt+Rti/gUQv6WYdBZG7ovB9CDjlKxip/VV+w4QmtW2wVN4363ev9EKq6lLHOANr9XtL1IEbA
	dZGnucLgYBX1URNN4ZXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieayY-0007KJ-Sj; Tue, 10 Dec 2019 08:34:34 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieayV-0007JV-Bd
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 08:34:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id DE3616126B4E;
 Tue, 10 Dec 2019 09:34:28 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id q_Z9Gqszl3oz; Tue, 10 Dec 2019 09:34:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 78A126126B50;
 Tue, 10 Dec 2019 09:34:28 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id qA8_bD_Ce_Zd; Tue, 10 Dec 2019 09:34:28 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 573736126B4E;
 Tue, 10 Dec 2019 09:34:28 +0100 (CET)
Date: Tue, 10 Dec 2019 09:34:28 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: anton ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <392256369.112046.1575966868218.JavaMail.zimbra@nod.at>
In-Reply-To: <346757c8-c111-f6cf-21d2-b0bffd41b8a8@cambridgegreys.com>
References: <20191209230248.227508-1-brendanhiggins@google.com>
 <1406826345.111805.1575933346955.JavaMail.zimbra@nod.at>
 <2eecf4dc-eb96-859a-a015-1a4f388b57a2@cambridgegreys.com>
 <346757c8-c111-f6cf-21d2-b0bffd41b8a8@cambridgegreys.com>
Subject: Re: [PATCH v1] uml: remove support for CONFIG_STATIC_LINK
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: remove support for CONFIG_STATIC_LINK
Thread-Index: ya1XNgp+8/P69KzagcMtEIkLZe+uUw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_003431_554274_C25A33DA 
X-CRM114-Status: UNSURE (   5.20  )
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Brendan Higgins <brendanhiggins@google.com>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, davidgow <davidgow@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogImFudG9uIGl2YW5vdiIgPGFu
dG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+IExJQkMgaXRzZWxmIHRyaWVzIHRvIGR5
bmFtaWMgbG9hZCBzdHVmZiBpbnRlcm5hbGx5Lgo+PiAKPj4gSXQgaXMgYmV5b25kIG91ciBjb250
cm9sIGFuZCBpdCBjbGFpbXMgdGhhdCBpdCB3aWxsIHdvcmsgb25seSBvbiBFWEFDVExZCj4+IHRo
ZSBzYW1lIHZlcnNpb24gb2YgbGliYyBsaWJyYXJ5IGFzIHRoZSBvbmUgdXNlZCBmb3Igc3RhdGlj
IGxpbmsuCj4+IAo+PiBTbyB5b3UgZ2V0IGEgbm90LWV4YWN0bHkgc3RhdGljIGJpbmFyeSB3aGlj
aCBpcyBub3QgcHJvcGVybHkgbW92ZWFibGUKPj4gYmV0d2VlbiBzeXN0ZW1zLgo+PiAKPj4gVGhp
cyBpcyBzcGVjaWZpY2FsbHkgaW4gdGhlIG5hbWUgcmVzb2x1dGlvbiwgZXRjIHBhcnRzIG9mIGxp
YmMgd2hpY2ggYWxsCj4+IG9mOiBwY2FwLCB2ZWN0b3IsIHZkZSwgZXRjIHJlbHkgb24uCj4+IAo+
PiBBbm90aGVyIGFsdGVybmF0aXZlIGlzIHRvIHR1cm4gb2ZmIHN0YXRpYyBzcGVjaWZpY2FsbHkg
Zm9yIHRob3NlLgo+PiAKPj4gRnVydGhlciB0byB0aGlzIC0gYW55IHByb3Blcmx5IHdyaXR0ZW4g
cGllY2Ugb2YgbmV0d29ya2luZyBjb2RlIHdoaWNoCj4+IHVzZXMgdGhlIG5ld2VyIGZ1bmN0aW9u
cyBmb3IgbmFtZS9zZXJ2aWNlIHJlc29sdXRpb24gd2lsbCBoYXZlIHRoZSBzYW1lCj4+IHByb2Js
ZW0uIFlvdSBjYW4gYmUgc3RhdGljIG9ubHkgaWYgeW91IGRvIGV2ZXJ5dGhpbmcgIm1hbnVhbGx5
IiB0aGUgb2xkCj4+IHdheS4KPiAKPiBUaGUgb2ZmZW5kaW5nIHBpZWNlIG9mIGNvZGUgaXMgdGhl
IGdsaWJjIGltcGxlbWVudGF0aW9uIG9mIGdldGFkZHJpbmZvKCkuCj4gCj4gSWYgeW91IHVzZSBp
dCBhbmQgbGluayBzdGF0aWMgdGhlIHJlc3VsdGluZyBiaW5hcnkgaXMgbm90IHJlYWxseSBzdGF0
aWMuCgpnbGliYyB0cmllcyB0byBsb2FkIE5TUyBhbmQgTklTIHN0dWZmLCB5ZXMuIEJ1dCB3aGF0
IGlzIHRoZSBwcm9ibGVtPwoKVGhlIGdvYWwgb2YgQ09ORklHX1NUQVRJQ19MSU5LIGlzIHRoYXQg
eW91IGNhbiBydW4gVU1MIHdpdGhvdXQgZGVwZW5kZW5jaWVzLAp0aGlzIHVzZWQgdG8gd29yayBz
aW5jZSBldmVyLiBMYXRlbHkgaXQgYnJva2UsIGJ1dCBoZXksIGxldCdzIGZpeCBpdC4KSSBoYXZl
IHRvbnMgb2Ygb2xkIHN0YXRpY2FsbHkgbGlua2VkIFVNTCBzeXN0ZW1zIG9uIG15IGRpc2sgd2hp
Y2ggSSBjYW4KanVzdCBydW4gYmVjYXVzZSB0aGV5IGRvbid0IGRlcGVuZCBvbiBzcGVjaWZpYyBs
aWJzLgoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtdW0K
