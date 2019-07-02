Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414045D7EF
	for <lists+linux-um@lfdr.de>; Tue,  2 Jul 2019 23:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sw11f/6o7IvJfx6XIqRe/6waB+mkiPMLbl3GdSrSb3I=; b=eO6crY1b5A/MBC
	sf9T9SNq8NCoJP2pr2Qh5LXE0jA61EkAvRb/+v81k0PcpDY52tq96NdubWZUu1/eELX2PEjaNt2W/
	DWwEvriZ8WDbOJfYgUWbQEqL3JPt8etDnLEsqHUCaOxpImsyY4f4Mi1c4qKLBZ+Y0K15wskxxKTtM
	YmrUECsC+ZP4qphFZDMHU8m5klf6VDPkQZzvVn0+lSLMaL5qVgBV03rqyQo2AN9SUNbZ7oOvZF58+
	Cpw+I2VI8X+RfoKo1P2+T7HeXcaWN/AY/wLDYYApr3d1QiJ5p41JoaBhuSbT3Mqb5SvWh7/payoQ7
	l5OJm88gnPcTJI6S9h9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiQjL-0007Ln-Vw; Tue, 02 Jul 2019 21:54:27 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiQjI-0007Ks-Nc
 for linux-um@lists.infradead.org; Tue, 02 Jul 2019 21:54:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 957F46089329;
 Tue,  2 Jul 2019 23:54:13 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id F7u9YhFOveQj; Tue,  2 Jul 2019 23:54:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 355E1613E461;
 Tue,  2 Jul 2019 23:54:11 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id DZF7pasgo6x8; Tue,  2 Jul 2019 23:54:11 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id F3E1D6089329;
 Tue,  2 Jul 2019 23:54:10 +0200 (CEST)
Date: Tue, 2 Jul 2019 23:54:10 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <46402789.25380.1562104450930.JavaMail.zimbra@nod.at>
In-Reply-To: <20190527083427.6293-2-johannes@sipsolutions.net>
References: <20190527083427.6293-1-johannes@sipsolutions.net>
 <20190527083427.6293-2-johannes@sipsolutions.net>
Subject: Re: [PATCH v3 2/2] arch: um: support time travel mode
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: arch: um: support time travel mode
Thread-Index: 6HtgxfZLhLBuwPxPNvyhPdv1XzEl7g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_145425_065343_0AED9387 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: j@w1.fi, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Johannes Berg <johannes.berg@intel.com>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkpvaGFubmVzIEJlcmciIDxq
b2hhbm5lc0BzaXBzb2x1dGlvbnMubmV0Pgo+IEFuOiAibGludXgtdW0iIDxsaW51eC11bUBsaXN0
cy5pbmZyYWRlYWQub3JnPgo+IENDOiAiSmVmZiBEaWtlIiA8amRpa2VAYWRkdG9pdC5jb20+LCAi
cmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0PiwgImFudG9uIGl2YW5vdiIgPGFudG9uLml2YW5vdkBj
YW1icmlkZ2VncmV5cy5jb20+LAo+IGpAdzEuZmksICJKb2hhbm5lcyBCZXJnIiA8am9oYW5uZXMu
YmVyZ0BpbnRlbC5jb20+Cj4gR2VzZW5kZXQ6IE1vbnRhZywgMjcuIE1haSAyMDE5IDEwOjM0OjI3
Cj4gQmV0cmVmZjogW1BBVENIIHYzIDIvMl0gYXJjaDogdW06IHN1cHBvcnQgdGltZSB0cmF2ZWwg
bW9kZQoKPiBGcm9tOiBKb2hhbm5lcyBCZXJnIDxqb2hhbm5lcy5iZXJnQGludGVsLmNvbT4KPiAK
PiBTb21ldGltZXMgaXQgY2FuIGJlIHVzZWZ1bCB0byBydW4gd2l0aCAidGltZSB0cmF2ZWwiIGlu
c2lkZSB0aGUKPiBVTUwgaW5zdGFuY2UsIGZvciBleGFtcGxlIGZvciB0ZXN0aW5nLiBGb3IgZXhh
bXBsZSwgc29tZSB0ZXN0cwo+IGZvciB0aGUgd2lyZWxlc3Mgc3Vic3lzdGVtIGFuZCB1c2Vyc3Bh
Y2UgYXJlIGJhc2VkIG9uIGh3c2ltLCBhCj4gdmlydHVhbCB3aXJlbGVzcyBhZGFwdGVyLiBTb21l
IHRlc3RzIGNhbiB0YWtlIGEgbG9uZyB0aW1lIHRvCj4gcnVuIGJlY2F1c2UgdGhleSBlLmcuIHdh
aXQgZm9yIDEyMCBzZWNvbmRzIHRvIGVsYXBzZSBmb3Igc29tZQo+IHJlZ3VsYXRvcnkgY2hlY2tz
LiBUaGlzIG9idmlvdXNseSBnb2VzIGZhc3RlciBpZiBpdCBuZWVkIG5vdAo+IGFjdHVhbGx5IHdh
aXQgdGhhdCBsb25nLCBidXQgdGltZSBpbnNpZGUgdGhlIHRlc3QgZW52aXJvbm1lbnQKPiBqdXN0
ICJidW1wcyB1cCIgd2hlbiB0aGVyZSdzIG5vdGhpbmcgdG8gZG8uCj4gCj4gQWRkIENPTkZJR19V
TUxfVElNRV9UUkFWRUxfU1VQUE9SVCB0byBlbmFibGUgY29kZSB0byBzdXBwb3J0Cj4gc3VjaCBt
b2RlcyBhdCBydW50aW1lLCBzZWxlY3RlZCBvbiB0aGUgY29tbWFuZCBsaW5lOgo+ICoganVzdCAi
dGltZS10cmF2ZWwiLCBpbiB3aGljaCB0aW1lIGluc2lkZSB0aGUgVU1MIGluc3RhbmNlCj4gICBj
YW4gbW92ZSBmYXN0ZXIgdGhhbiByZWFsIHRpbWUsIGlmIHRoZXJlJ3Mgbm90aGluZyB0byBkbwo+
ICogInRpbWUtdHJhdmVsPWluZi1jcHUiIGluIHdoaWNoIHRpbWUgYWxzbyBtb3ZlcyBzbG93ZXIg
YW5kCj4gICBhbnkgQ1BVIHByb2Nlc3NpbmcgdGFrZXMgbm8gdGltZSBhdCBhbGwsIHdoaWNoIGFs
bG93cyB0bwo+ICAgaW1wbGVtZW50IGNvbnNpc3RlbnQgYmVoYXZpb3VyIHJlZ2FyZGxlc3Mgb2Yg
aG9zdCBDUFUgbG9hZAo+ICAgKG9yIHNwZWVkKSBvciBkZWJ1ZyBvdmVyaGVhZC4KPiAKPiBBbiBh
ZGRpdGlvbmFsICJ0aW1lLXRyYXZlbC1zdGFydD08c2Vjb25kcz4iIHBhcmFtZXRlciBpcyBhbHNv
Cj4gc3VwcG9ydGVkIGluIHRoaXMgY2FzZSB0byBzdGFydCB0aGUgd2FsbCBjbG9jayBhdCB0aGlz
IHRpbWUKPiAoaW4gdW5peCBlcG9jaCkuCj4gCj4gV2l0aCB0aGlzIGVuYWJsZWQsIHRoZSB0ZXN0
IG1lbnRpb25lZCBhYm92ZSBnb2VzIGZyb20gYSBydW50aW1lCj4gb2YgYWJvdXQgMTQwIHNlY29u
ZHMgKHdpdGggc3RhcnR1cCBvdmVyaGVhZCBhbmQgYWxsKSB0byBiZWluZwo+IENQVSBib3VuZCBh
bmQgZmluaXNoaW5nIGluIDE1IHNlY29uZHMgKG9uIG15IHNsb3cgbGFwdG9wKS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBKb2hhbm5lcyBCZXJnIDxqb2hhbm5lcy5iZXJnQGludGVsLmNvbT4KClRoaXMg
YnJlYWtzIHRoZSBidWlsZCBmb3IgQ09ORklHX1VNTF9USU1FX1RSQVZFTF9TVVBQT1JUPW4KCldo
YXQgZG8geW91IHRoaW5rIGFib3V0IHRoaXMgZm9sbG93dXAgZml4dXA/CkkgY29tbWl0dGVkIHlv
dXIgcGF0Y2ggYWxyZWFkeSB0byBsaW51eC1uZXh0LgpTbywgbm8gbmVlZCB0byByZXNlbmQuIAoK
ZGlmZiAtLWdpdCBhL2FyY2gvdW0vaW5jbHVkZS9zaGFyZWQvdGltZXItaW50ZXJuYWwuaCBiL2Fy
Y2gvdW0vaW5jbHVkZS9zaGFyZWQvdGltZXItaW50ZXJuYWwuaAppbmRleCA1Y2E3NGY0MTVkNTIu
LmMxNTg4M2IzMGMxOSAxMDA2NDQKLS0tIGEvYXJjaC91bS9pbmNsdWRlL3NoYXJlZC90aW1lci1p
bnRlcm5hbC5oCisrKyBiL2FyY2gvdW0vaW5jbHVkZS9zaGFyZWQvdGltZXItaW50ZXJuYWwuaApA
QCAtMjUsNyArMjUsNyBAQCBlbnVtIHRpbWVfdHJhdmVsX3RpbWVyX21vZGUgewogI2lmZGVmIENP
TkZJR19VTUxfVElNRV9UUkFWRUxfU1VQUE9SVAogZXh0ZXJuIGVudW0gdGltZV90cmF2ZWxfbW9k
ZSB0aW1lX3RyYXZlbF9tb2RlOwogZXh0ZXJuIHVuc2lnbmVkIGxvbmcgbG9uZyB0aW1lX3RyYXZl
bF90aW1lOwotZXh0ZXJuIGVudW0gdGltZV90cmF2ZWxfdGltZXJfbW9kZSB0aW1lX3RyYXZlbF90
aW1lcl9tb2RlOworZXh0ZXJuIGVudW0gdGltZV90cmF2ZWxfdGltZXJfbW9kZSB0dF90aW1lcl9t
b2RlOwogZXh0ZXJuIHVuc2lnbmVkIGxvbmcgbG9uZyB0aW1lX3RyYXZlbF90aW1lcl9leHBpcnk7
CiBleHRlcm4gdW5zaWduZWQgbG9uZyBsb25nIHRpbWVfdHJhdmVsX3RpbWVyX2ludGVydmFsOwog
CkBAIC0zNyw3ICszNyw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCB0aW1lX3RyYXZlbF9zZXRfdGlt
ZSh1bnNpZ25lZCBsb25nIGxvbmcgbnMpCiBzdGF0aWMgaW5saW5lIHZvaWQgdGltZV90cmF2ZWxf
c2V0X3RpbWVyKGVudW0gdGltZV90cmF2ZWxfdGltZXJfbW9kZSBtb2RlLAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgbG9uZyBleHBpcnkpCiB7
Ci0gICAgICAgdGltZV90cmF2ZWxfdGltZXJfbW9kZSA9IG1vZGU7CisgICAgICAgdHRfdGltZXJf
bW9kZSA9IG1vZGU7CiAgICAgICAgdGltZV90cmF2ZWxfdGltZXJfZXhwaXJ5ID0gZXhwaXJ5Owog
fQogI2Vsc2UKZGlmZiAtLWdpdCBhL2FyY2gvdW0va2VybmVsL3Byb2Nlc3MuYyBiL2FyY2gvdW0v
a2VybmVsL3Byb2Nlc3MuYwppbmRleCBkZWYyMDkxNjk3Y2EuLjUwNTQwOGUyNjY4ZCAxMDA2NDQK
LS0tIGEvYXJjaC91bS9rZXJuZWwvcHJvY2Vzcy5jCisrKyBiL2FyY2gvdW0va2VybmVsL3Byb2Nl
c3MuYwpAQCAtMjA1LDE1ICsyMDUsMTYgQEAgdm9pZCBpbml0aWFsX3RocmVhZF9jYih2b2lkICgq
cHJvYykodm9pZCAqKSwgdm9pZCAqYXJnKQogCiBzdGF0aWMgdm9pZCB0aW1lX3RyYXZlbF9zbGVl
cCh1bnNpZ25lZCBsb25nIGxvbmcgZHVyYXRpb24pCiB7CisjaWZkZWYgQ09ORklHX1VNTF9USU1F
X1RSQVZFTF9TVVBQT1JUCiAgICAgICAgdW5zaWduZWQgbG9uZyBsb25nIG5leHQgPSB0aW1lX3Ry
YXZlbF90aW1lICsgZHVyYXRpb247CiAKICAgICAgICBpZiAodGltZV90cmF2ZWxfbW9kZSAhPSBU
VF9NT0RFX0lORkNQVSkKICAgICAgICAgICAgICAgIG9zX3RpbWVyX2Rpc2FibGUoKTsKIAotICAg
ICAgIGlmICh0aW1lX3RyYXZlbF90aW1lcl9tb2RlICE9IFRUX1RNUl9ESVNBQkxFRCB8fAorICAg
ICAgIGlmICh0dF90aW1lcl9tb2RlICE9IFRUX1RNUl9ESVNBQkxFRCB8fAogICAgICAgICAgICB0
aW1lX3RyYXZlbF90aW1lcl9leHBpcnkgPCBuZXh0KSB7Ci0gICAgICAgICAgICAgICBpZiAodGlt
ZV90cmF2ZWxfdGltZXJfbW9kZSA9PSBUVF9UTVJfT05FU0hPVCkKLSAgICAgICAgICAgICAgICAg
ICAgICAgdGltZV90cmF2ZWxfdGltZXJfbW9kZSA9IFRUX1RNUl9ESVNBQkxFRDsKKyAgICAgICAg
ICAgICAgIGlmICh0dF90aW1lcl9tb2RlID09IFRUX1RNUl9PTkVTSE9UKQorICAgICAgICAgICAg
ICAgICAgICAgICB0dF90aW1lcl9tb2RlID0gVFRfVE1SX0RJU0FCTEVEOwogICAgICAgICAgICAg
ICAgLyoKICAgICAgICAgICAgICAgICAqIHRpbWVfdHJhdmVsX3RpbWUgd2lsbCBiZSBhZGp1c3Rl
ZCBpbiB0aGUgdGltZXIKICAgICAgICAgICAgICAgICAqIElSUSBoYW5kbGVyIHNvIGl0IHdvcmtz
IGV2ZW4gd2hlbiB0aGUgc2lnbmFsCkBAIC0yMjUsMTEgKzIyNiwxMiBAQCBzdGF0aWMgdm9pZCB0
aW1lX3RyYXZlbF9zbGVlcCh1bnNpZ25lZCBsb25nIGxvbmcgZHVyYXRpb24pCiAgICAgICAgfQog
CiAgICAgICAgaWYgKHRpbWVfdHJhdmVsX21vZGUgIT0gVFRfTU9ERV9JTkZDUFUpIHsKLSAgICAg
ICAgICAgICAgIGlmICh0aW1lX3RyYXZlbF90aW1lcl9tb2RlID09IFRUX1RNUl9QRVJJT0RJQykK
KyAgICAgICAgICAgICAgIGlmICh0dF90aW1lcl9tb2RlID09IFRUX1RNUl9QRVJJT0RJQykKICAg
ICAgICAgICAgICAgICAgICAgICAgb3NfdGltZXJfc2V0X2ludGVydmFsKHRpbWVfdHJhdmVsX3Rp
bWVyX2ludGVydmFsKTsKLSAgICAgICAgICAgICAgIGVsc2UgaWYgKHRpbWVfdHJhdmVsX3RpbWVy
X21vZGUgPT0gVFRfVE1SX09ORVNIT1QpCisgICAgICAgICAgICAgICBlbHNlIGlmICh0dF90aW1l
cl9tb2RlID09IFRUX1RNUl9PTkVTSE9UKQogICAgICAgICAgICAgICAgICAgICAgICBvc190aW1l
cl9vbmVfc2hvdCh0aW1lX3RyYXZlbF90aW1lcl9leHBpcnkgLSBuZXh0KTsKICAgICAgICB9Cisj
ZW5kaWYKIH0KIAogc3RhdGljIHZvaWQgdW1faWRsZV9zbGVlcCh2b2lkKQpkaWZmIC0tZ2l0IGEv
YXJjaC91bS9rZXJuZWwvdGltZS5jIGIvYXJjaC91bS9rZXJuZWwvdGltZS5jCmluZGV4IDZhMDUx
YjA3ODM1OS4uZDI3ZGQ1YmFjMGE2IDEwMDY0NAotLS0gYS9hcmNoL3VtL2tlcm5lbC90aW1lLmMK
KysrIGIvYXJjaC91bS9rZXJuZWwvdGltZS5jCkBAIC0yNCw3ICsyNCw3IEBACiAjaWZkZWYgQ09O
RklHX1VNTF9USU1FX1RSQVZFTF9TVVBQT1JUCiBlbnVtIHRpbWVfdHJhdmVsX21vZGUgdGltZV90
cmF2ZWxfbW9kZTsKIHVuc2lnbmVkIGxvbmcgbG9uZyB0aW1lX3RyYXZlbF90aW1lOwotZW51bSB0
aW1lX3RyYXZlbF90aW1lcl9tb2RlIHRpbWVfdHJhdmVsX3RpbWVyX21vZGU7CitlbnVtIHRpbWVf
dHJhdmVsX3RpbWVyX21vZGUgdHRfdGltZXJfbW9kZTsKIHVuc2lnbmVkIGxvbmcgbG9uZyB0aW1l
X3RyYXZlbF90aW1lcl9leHBpcnk7CiB1bnNpZ25lZCBsb25nIGxvbmcgdGltZV90cmF2ZWxfdGlt
ZXJfaW50ZXJ2YWw7CgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC11bQo=
