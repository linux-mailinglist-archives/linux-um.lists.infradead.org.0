Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A971B84E1
	for <lists+linux-um@lfdr.de>; Sat, 25 Apr 2020 10:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNA9J6bPDkdsCOmooffdwH6PcXeEqtGsYouD4B2daoo=; b=hoxvZ5lci1lfvm
	iXjmgqaJMF2gTF4qPjKm49q3/1riT0Zo9A43w59YE0yy0kh/h302Xicec8K58gtE6enmRxJxir3gf
	D4/R+OCLqZQrmCOOFJs+MtaH/1OMCZJjGEKQbt9WllagW8ntW1nsMNlgh6MNzjUReBZnA8wCWxFbN
	slw4Y7yVITUZanbd43qLP41xwntINQiGMJ5hr7TnIAjtyu76UGo8VlLX8zCdsD5HbaYeKlCIScLGJ
	9G32zzWa8ru3tbnMxn+U9A2wUNZkH88wNrquPcWKQqLc/xglcFWOB6bg4hQcvBal5ARA70Nh3KWOg
	cvwhPS0nwcOWlTW5WciA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSGVN-0003co-AQ; Sat, 25 Apr 2020 08:49:45 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSGVI-0003aV-D8
 for linux-um@lists.infradead.org; Sat, 25 Apr 2020 08:49:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 31955608311C;
 Sat, 25 Apr 2020 10:49:30 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 8xViT_4CWA4e; Sat, 25 Apr 2020 10:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id DEA3861A7014;
 Sat, 25 Apr 2020 10:49:28 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id mWtVVDGsOz3j; Sat, 25 Apr 2020 10:49:28 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id B9C0B608311C;
 Sat, 25 Apr 2020 10:49:28 +0200 (CEST)
Date: Sat, 25 Apr 2020 10:49:28 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <557123184.155536.1587804568614.JavaMail.zimbra@nod.at>
In-Reply-To: <b86f5469f9b888942b7a6f9862ec98c909121375.camel@sipsolutions.net>
References: <20200425042814.132920-1-davidgow@google.com>
 <b86f5469f9b888942b7a6f9862ec98c909121375.camel@sipsolutions.net>
Subject: Re: [PATCH] um: Fix "time-internal.h" include in xor.h
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: Fix "time-internal.h" include in xor.h
Thread-Index: xqvJN+eh3NmyhE7yiAAl00GWkgit3Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_014940_591635_3A2C130B 
X-CRM114-Status: UNSURE (   5.18  )
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
Cc: linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, davidgow <davidgow@google.com>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkpvaGFubmVzIEJlcmciIDxq
b2hhbm5lc0BzaXBzb2x1dGlvbnMubmV0Pgo+IEFuOiAiZGF2aWRnb3ciIDxkYXZpZGdvd0Bnb29n
bGUuY29tPiwgImFudG9uIGl2YW5vdiIgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+
LCAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0Pgo+IENDOiAibGludXgtdW0iIDxsaW51eC11bUBs
aXN0cy5pbmZyYWRlYWQub3JnPiwgImxpbnV4LWtlcm5lbCIgPGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmc+Cj4gR2VzZW5kZXQ6IFNhbXN0YWcsIDI1LiBBcHJpbCAyMDIwIDEwOjI2OjA0Cj4g
QmV0cmVmZjogUmU6IFtQQVRDSF0gdW06IEZpeCAidGltZS1pbnRlcm5hbC5oIiBpbmNsdWRlIGlu
IHhvci5oCgo+IE9uIEZyaSwgMjAyMC0wNC0yNCBhdCAyMToyOCAtMDcwMCwgRGF2aWQgR293IHdy
b3RlOgo+PiBJdCBsb29rcyBsaWtlIHRoZSB3cm9uZyBoZWFkZXIgd2FzIGluY2x1ZGVkIGluIHhv
ci5oLCBicmVha2luZyBtYWtlCj4+IGFsbHllc2NvbmZpZyBvbiBVTUwgKG9yLCBtb3JlIHNwZWNp
ZmljYWxseSwga3VuaXQucHkgcnVuIC0tYWxsdGVzdHMpLgo+PiAKPj4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQo+PiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gY3J5cHRvL3hvci5jOjE3Ogo+PiAuL2Fy
Y2gvdW0vaW5jbHVkZS9hc20veG9yLmg6MzoxMDogZmF0YWwgZXJyb3I6IHNoYXJlZC90aW1lci1p
bnRlcm5hbC5oOiBObyBzdWNoCj4+IGZpbGUgb3IgZGlyZWN0b3J5Cj4+ICAgICAzIHwgI2luY2x1
ZGUgPHNoYXJlZC90aW1lci1pbnRlcm5hbC5oPgo+PiAgICAgICB8ICAgICAgICAgIF5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn4KPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAKPj4gUmVwbGFj
aW5nIHRoaXMgd2l0aCAibGludXgvdGltZS1pbnRlcm5hbC5oIiBidWlsZHMgZmluZS4KPj4gCj4+
IEZpeGVzOiBkNjUxOTdhZDUyNDkgKCJ1bTogZml4IHRpbWUtdHJhdmVsPWluZi1jcHUgd2l0aCB4
b3IvcmFpZDYiKQo+IAo+IFllYWgsIHNvcnJ5IGFib3V0IHRoYXQuIFNvbWUgcGF0Y2hlcyBvdmVy
bGFwcGVkIGhlcmUsIGkuZS4gd2VyZSBwZW5kaW5nCj4gZnJvbSBzZXBhcmF0ZSBicmFuY2hlcyBJ
IGhhZC4KPiAKPiBJIHNlbnQgUmljaGFyZCBhIGZpeCBxdWl0ZSBhYm91dCB0aHJlZSB3ZWVrcyBh
Z286Cj4gCj4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2xpbnV4LXVtL3Bh
dGNoLzIwMjAwNDA1MjEzMzU3LmI2Y2UxMDI0YjI3Ni5JN2MzNzBlMjA1ODBkMzEyMmM1OGRmNTcy
N2VlMmQ2ZmI1MzU0NTU3NkBjaGFuZ2VpZC8KPiAKPiBidXQgSSBndWVzcyBoZSBoYXNuJ3QgYXBw
bGllZCBpdCB5ZXQuCgpUaGF0J3MgcmlnaHQuIEknbGwgcHJlcGFyZSBhIFBSIHdpdGggZml4ZXMg
c29vbi4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXVtCg==
