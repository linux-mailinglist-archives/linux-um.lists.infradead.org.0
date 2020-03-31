Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9E8199C9C
	for <lists+linux-um@lfdr.de>; Tue, 31 Mar 2020 19:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plyX48sUsD4qyJdYx4pMgQ8l7u0DVZRI1qSj92xJSWE=; b=T0gHnGfIJyEOyr
	FA0YGCgKqMXJn1rpUzuspurbt1HvG5pjPjoDFhxRLrXmbiyGD5efSb3MMcMb/08R9J9QnGZcs9tUr
	zef7dNt2RyHJflrhZeDlBAjux7yB/MrT8WfJzVT3B/E2v/dlGx9qwVJRoxEADr1IzSWHoCjgRvt89
	+qXoxG892M7FSrV/aeZfuwFe8Iflx83nueUmCpM0+t6rXT9dtqHF57ZUxmiE1ofZL1G3pGz5quP0P
	6VPKUEKwzJF3pKIe9GjEYmLEUK6ulM4ekCjX/Q6/P/tgYJCvrI2p6qJ3NyZwkQ4SXcNs+s45YAruz
	DcpYxiIPcZY2rfO+33eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKQZ-00059p-Rw; Tue, 31 Mar 2020 17:11:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKQV-00054g-QD
 for linux-um@bombadil.infradead.org; Tue, 31 Mar 2020 17:11:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=rZmXXUEpmnRibLUWf30rAZ61aSKOO34Z1veVFNnc6+w=; b=pj27rFUOnVKFVBEqJTs2o2E43j
 9UkTcLMmwWuPL3bbS41KhMoPBOR/wOVR+wuYtlwbbNlTKESKNtP8AUuqires3JFH4outdHtC7qA5W
 n7671az0dhwJN5a+XUEefJjfVXWm8dKwKHOSSKSNrwtuWSmdquvB9UXEI6pqxO/AQ5jauHjOGoTy/
 B7U7ENpmO20P6Jqq2pgqLCFj+oys2fUh69w4FLiglgs6GmrAuv2LCyWHoDlfCjNZJwCqBgor///g/
 m/9dSbnfe85M1fQOONUwnvn2H2rVNnNENgsnptGI3IxMBCv7j09/p6tLjlaJGe1fJlQPoMvP1NNXK
 Hft+biog==;
Received: from lithops.sigma-star.at ([195.201.40.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJK9f-0007lF-Sr
 for linux-um@lists.infradead.org; Tue, 31 Mar 2020 16:54:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 1FE5E60A073D;
 Tue, 31 Mar 2020 18:54:15 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id bCAazVMZJRqh; Tue, 31 Mar 2020 18:54:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 0280B609D2F6;
 Tue, 31 Mar 2020 18:54:13 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 82ywUB7fjkiv; Tue, 31 Mar 2020 18:54:12 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id D47F7609D2E2;
 Tue, 31 Mar 2020 18:54:12 +0200 (CEST)
Date: Tue, 31 Mar 2020 18:54:12 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Patricia Alfonso <trishalfonso@google.com>
Message-ID: <418158403.63080.1585673652800.JavaMail.zimbra@nod.at>
In-Reply-To: <CAKFsvULjkQ7T6QhspHg87nnDpo-VW1qg2M3jJGB+NcwTQNeXGQ@mail.gmail.com>
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CACT4Y+bdxmRmr57JO_k0whhnT2BqcSA=Jwa5M6=9wdyOryv6Ug@mail.gmail.com>
 <ded22d68e623d2663c96a0e1c81d660b9da747bc.camel@sipsolutions.net>
 <CACT4Y+YzM5bwvJ=yryrz1_y=uh=NX+2PNu4pLFaqQ2BMS39Fdg@mail.gmail.com>
 <2cee72779294550a3ad143146283745b5cccb5fc.camel@sipsolutions.net>
 <CACT4Y+YhwJK+F7Y7NaNpAwwWR-yZMfNevNp_gcBoZ+uMJRgsSA@mail.gmail.com>
 <a51643dbff58e16cc91f33273dbc95dded57d3e6.camel@sipsolutions.net>
 <CAKFsvULjkQ7T6QhspHg87nnDpo-VW1qg2M3jJGB+NcwTQNeXGQ@mail.gmail.com>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: add support for KASAN under x86_64
Thread-Index: PKJWQW+CVN2ItfoQyPENtJL8H3bmwg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_175424_273031_90899CA2 
X-CRM114-Status: GOOD (  37.50  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: linux-um <linux-um@lists.infradead.org>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, davidgow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Johannes Berg <johannes@sipsolutions.net>, Dmitry Vyukov <dvyukov@google.com>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

UGF0cmljaWEsCgotLS0tLSBVcnNwcsO8bmdsaWNoZSBNYWlsIC0tLS0tCj4gVm9uOiAiUGF0cmlj
aWEgQWxmb25zbyIgPHRyaXNoYWxmb25zb0Bnb29nbGUuY29tPgo+IEFuOiAiSm9oYW5uZXMgQmVy
ZyIgPGpvaGFubmVzQHNpcHNvbHV0aW9ucy5uZXQ+Cj4gQ0M6ICJEbWl0cnkgVnl1a292IiA8ZHZ5
dWtvdkBnb29nbGUuY29tPiwgIkplZmYgRGlrZSIgPGpkaWtlQGFkZHRvaXQuY29tPiwgInJpY2hh
cmQiIDxyaWNoYXJkQG5vZC5hdD4sICJhbnRvbiBpdmFub3YiCj4gPGFudG9uLml2YW5vdkBjYW1i
cmlkZ2VncmV5cy5jb20+LCAiQW5kcmV5IFJ5YWJpbmluIiA8YXJ5YWJpbmluQHZpcnR1b3p6by5j
b20+LCAiQnJlbmRhbiBIaWdnaW5zIgo+IDxicmVuZGFuaGlnZ2luc0Bnb29nbGUuY29tPiwgImRh
dmlkZ293IiA8ZGF2aWRnb3dAZ29vZ2xlLmNvbT4sICJsaW51eC11bSIgPGxpbnV4LXVtQGxpc3Rz
LmluZnJhZGVhZC5vcmc+LAo+ICJsaW51eC1rZXJuZWwiIDxsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnPiwgImthc2FuLWRldiIgPGthc2FuLWRldkBnb29nbGVncm91cHMuY29tPgo+IEdlc2Vu
ZGV0OiBEaWVuc3RhZywgMzEuIE3DpHJ6IDIwMjAgMTg6Mzk6MjEKPiBCZXRyZWZmOiBSZTogW1BB
VENIXSBVTUw6IGFkZCBzdXBwb3J0IGZvciBLQVNBTiB1bmRlciB4ODZfNjQKCj4gT24gTW9uLCBN
YXIgMzAsIDIwMjAgYXQgMTo0MSBBTSBKb2hhbm5lcyBCZXJnIDxqb2hhbm5lc0BzaXBzb2x1dGlv
bnMubmV0PiB3cm90ZToKPj4KPj4gT24gTW9uLCAyMDIwLTAzLTMwIGF0IDEwOjM4ICswMjAwLCBE
bWl0cnkgVnl1a292IHdyb3RlOgo+PiA+IE9uIE1vbiwgTWFyIDMwLCAyMDIwIGF0IDk6NDQgQU0g
Sm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3JvdGU6Cj4+ID4gPiBP
biBGcmksIDIwMjAtMDMtMjAgYXQgMTY6MTggKzAxMDAsIERtaXRyeSBWeXVrb3Ygd3JvdGU6Cj4+
ID4gPiA+ID4gV2FpdCAuLi4gTm93IHlvdSBzYXkgMHg3ZmJmZmZjMDAwLCBidXQgdGhhdCBpcyBh
bG1vc3QgZmluZT8gSSB0aGluayB5b3UKPj4gPiA+ID4gPiBjb25mdXNlZCB0aGUgdmFsdWVzIC0g
YmVjYXVzZSBJIHNlZSwgb24gdXNlcnNwYWNlLCB0aGUgZm9sbG93aW5nOgo+PiA+ID4gPgo+PiA+
ID4gPiBPaCwgc29ycnksIEkgY29weS1wYXN0ZWQgd3JvbmcgbnVtYmVyLiBJIG1lYW50IDB4N2Zm
ZjgwMDAuCj4+ID4gPgo+PiA+ID4gUmlnaHQsIG9rLgo+PiA+ID4KPj4gPiA+ID4gVGhlbiBJIHdv
dWxkIGV4cGVjdCAweDEwMDAgMDAwMCAwMDAwIHRvIHdvcmssIGJ1dCB5b3Ugc2F5IGl0IGRvZXNu
J3QuLi4KPj4gPiA+Cj4+ID4gPiBTbyBpdCBqdXN0IG9jY3VycmVkIHRvIG1lIC0gYXMgSSB3YXMg
bWVudGlvbmluZyB0aGlzIHdob2xlIHRoaW5nIHRvCj4+ID4gPiBSaWNoYXJkIC0gdGhhdCB0aGVy
ZSdzIHByb2JhYmx5IHNvbWV3aGVyZSBzb21lIGNoZWNrIGFib3V0IHdoZXRoZXIgc29tZQo+PiA+
ID4gc3BhY2UgaXMgdXNlcnNwYWNlIG9yIG5vdC4KPj4gPiA+Cj4gCj4gWWVhaCwgaXQgc2VlbXMg
dGhlICJLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogU2VnZmF1bHQgd2l0aCBubyBtbSIsCj4g
Iktlcm5lbCBtb2RlIGZhdWx0IGF0IGFkZHIuLi4iLCBhbmQgIktlcm5lbCB0cmllZCB0byBhY2Nl
c3MgdXNlcgo+IG1lbW9yeSBhdCBhZGRyLi4uIiBlcnJvcnMgYWxsIGNvbWUgZnJvbSBzZWd2KCkg
aW4KPiBhcmNoL3VtL2tlcm5lbC90cmFwLmMgZHVlIHRvIHdoYXQgSSB0aGluayBpcyB0aGlzIHR5
cGUgb2YgY2hlY2sKPiB3aGV0aGVyIHRoZSBhZGRyZXNzIGlzCj4gaW4gdXNlcnNwYWNlIG9yIG5v
dC4KClNlZ2ZhdWx0IHdpdGggbm8gbW0gbWVhbnMgdGhhdCBhIChub3QgZml4YWJsZSkgcGFnZWZh
dWx0IGhhcHBlbmVkIHdoaWxlCmtlcm5lbCBjb2RlIHJhbi4KCj4+ID4gPiBJJ20gYmVnaW5uaW5n
IHRvIHRoaW5rIHRoYXQgd2Ugc2hvdWxkbid0IGp1c3QgbWFwIHRoaXMgb3V0c2lkZSBvZiB0aGUK
Pj4gPiA+IGtlcm5lbCBtZW1vcnkgc3lzdGVtLCBidXQgcHJvcGVybHkgdHJlYXQgaXQgYXMgcGFy
dCBvZiB0aGUgbWVtb3J5IHRoYXQncwo+PiA+ID4gaW5zaWRlLiBBbmQgYWxzbyB1c2UgS0FTQU5f
Vk1BTExPQy4KPj4gPiA+Cj4+ID4gPiBXZSBjYW4gcHJvYmFibHkgc3RpbGwgaGF2ZSBpdCBhdCAw
eDdmZmY4MDAwLCBqdXN0IG5lZWQgdG8gbWFrZSBzdXJlIHdlCj4+ID4gPiBhY3R1YWxseSBtYXAg
aXQ/IEkgdHJpZWQgd2l0aCB2bV9hcmVhX2FkZF9lYXJseSgpIGJ1dCBpdCBkaWRuJ3QgcmVhbGx5
Cj4+ID4gPiB3b3JrIG9uY2UgeW91IGhhdmUgdm1hbGxvYygpIHN0dWZmLi4uCj4+ID4KPiAKPiBX
aGF0IHg4NiBkb2VzIHdoZW4gS0FTQU5fVk1BTExPQyBpcyBkaXNhYmxlZCBpcyBtYWtlIGFsbCB2
bWFsbG9jCj4gcmVnaW9uIGFjY2Vzc2VzIHN1Y2NlZWQgYnkgZGVmYXVsdAo+IGJ5IHVzaW5nIHRo
ZSBlYXJseSBzaGFkb3cgbWVtb3J5IHRvIGhhdmUgY29tcGxldGVseSB1bnBvaXNvbmVkIGFuZAo+
IHVucG9pc29uYWJsZSByZWFkLW9ubHkgcGFnZXMgZm9yIGFsbCBvZiB2bWFsbG9jICh3aGljaCBp
bmNsdWRlcwo+IG1vZHVsZXMpLiBXaGVuIEtBU0FOX1ZNQUxMT0MgaXMgZW5hYmxlZCBpbiB4ODYs
IHRoZSBzaGFkb3cgbWVtb3J5IGlzIG5vdAo+IGFsbG9jYXRlZCBmb3IgdGhlIHZtYWxsb2MgcmVn
aW9uIGF0IHN0YXJ0dXAuIE5ldyBjaHVua3Mgb2Ygc2hhZG93Cj4gbWVtb3J5IGFyZSBhbGxvY2F0
ZWQgYW5kIHVucG9pc29uZWQgZXZlcnkgdGltZSB0aGVyZSdzIGEgdm1hbGxvYygpCj4gY2FsbC4g
QSBzaW1pbGFyIHRoaW5nIG1pZ2h0IGhhdmUgdG8gYmUgZG9uZSBoZXJlIGJ5IG1wcm90ZWN0KClp
bmcKPiB0aGUgdm1hbGxvYyBzcGFjZSBhcyByZWFkIG9ubHksIHVucG9pc29uZWQgd2l0aG91dCBL
QVNBTl9WTUFMTE9DLiBUaGlzCj4gaXNzdWUgaGVyZSBpcyB0aGF0Cj4ga2FzYW5faW5pdCBydW5z
IHNvIGVhcmx5IGluIHRoZSBwcm9jZXNzIHRoYXQgdGhlIHZtYWxsb2MgcmVnaW9uIGZvcgo+IHVt
bCBpcyBub3Qgc2V0dXAgeWV0Lgo+IAo+IAo+PiA+IEJ1dCB3ZSBkbyBtbWFwIGl0LCBubz8gU2Vl
IGthc2FuX2luaXQoKSAtPiBrYXNhbl9tYXBfbWVtb3J5KCkgLT4gbW1hcC4KPj4KPj4gT2YgY291
cnNlLiBCdXQgSSBtZWFudCBpbnNpZGUgdGhlIFVNTCBQVEUgc3lzdGVtLiBXZSBlbmQgdXAgKnVu
bWFwcGluZyoKPj4gaXQgd2hlbiBsb2FkaW5nIG1vZHVsZXMsIGJlY2F1c2UgaXQgb3ZlcmxhcHMg
dm1hbGxvYyBzcGFjZSwgYW5kIHRoZW4gd2UKPj4gdmZyZWUoKSBzb21ldGhpbmcgYWdhaW4sIGFu
ZCB1bm1hcCBpdCAuLi4gYmVjYXVzZSBvZiB0aGUgb3ZlcmxhcC4KPj4KPj4gQW5kIGlmIGl0J3Mg
Km5vdCogaW4gdGhlIHZtYWxsb2MgYXJlYSwgdGhlbiB0aGUga2VybmVsIGRvZXNuJ3QgY29uc2lk
ZXIKPj4gaXQgdmFsaWQsIGFuZCB3ZSBzZWVtIHRvIG9mdGVuIGp1c3QgZmF1bHQgd2hlbiB0cnlp
bmcgdG8gZGV0ZXJtaW5lCj4+IHdoZXRoZXIgaXQncyB2YWxpZCBrZXJuZWwgbWVtb3J5IG9yIG5v
dCAuLi4gVGhvdWdoIEknbSBub3QgcmVhbGx5IHN1cmUgSQo+PiB1bmRlcnN0YW5kIHRoZSBmYWls
dXJlIHBhcnQgb2YgdGhpcyBjYXNlIHdlbGwgeWV0Lgo+Pgo+IAo+IEkgaGF2ZSBiZWVuIHRlc3Rp
bmcgdGhpcyBpc3N1ZSBpbiBhIG11bHRpdHVkZSBvZiB3YXlzIGFuZCBoYXZlIG9ubHkKPiBiZWVu
IGdldHRpbmcgbW9yZSBjb25mdXNlZC4gSXQncyBzdGlsbCB2ZXJ5IHVuY2xlYXIgd2hlcmUgZXhh
Y3RseSB0aGUKPiBwcm9ibGVtIG9jY3VycywgbW9zdGx5IGJlY2F1c2UgdGhlIGVycm9ycyBJIGZv
dW5kIG1vc3QgZnJlcXVlbnRseSB3ZXJlCj4gcmVwb3J0ZWQgaW4gc2VndigpLCBidXQgdGhlIHN0
YWNrIHRyYWNlcyBuZXZlciBjb250YWluZWQgc2Vndi4KPiAKPiBEb2VzIGFueW9uZSBrbm93IGlm
L2hvdyBVTUwgZGV0ZXJtaW5lcyBpZiBtZW1vcnkgYmVpbmcgYWNjZXNzZWQgaXMKPiBrZXJuZWwg
b3IgdXNlciBtZW1vcnk/CgpJbiBjb250cmFzdCB0byBjbGFzc2ljIHg4Niwgd2l0aG91dCBLUFRJ
IGFuZCBTTUFQL1NNRVAsIFVNTCBoYXMgYSBzdHJvbmcKc2VwYXJhdGlvbiBiZXR3ZWVuIHVzZXIt
IGFuZCBrZXJuZWwtbWVtb3J5LiBUaGlzIGlzIGFsc28gd2h5IGNvcHlfZnJvbS90b191c2VyKCkK
aXMgc28gZXhwZW5zaXZlLgoKSW4gYXJjaC91bS9rZXJuZWwvdHJhcC5jIHNlZ3YoKSB5b3UgY2Fu
IHNlZSB0aGUgbG9naWMuCkFsc28gc2VlIFVQVF9JU19VU0VSKCkuCgpUaGFua3MsCi8vcmljaGFy
ZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
dW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
