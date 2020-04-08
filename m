Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C151A283F
	for <lists+linux-um@lfdr.de>; Wed,  8 Apr 2020 20:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jPj1fTGJvrcj66+3h4qAnKurIxl+kBP+MaMrGfxkdTo=; b=sEHC++Azkw5nJnLAGvBdG+/Jz
	mGvpTYrNiJbg9h38KCxsdgNM44wcm31XbMh/i0yo19KjEs76UygDDBIsC4lJ984JG2ePnADBSdz5m
	8o1txcnce/i+TSsyj4KX/5tmdX14tWQGF59C9T1+ZsJAhJ0WOt4Juk/UIXYTrBJXf/ZV0T9mwnt1V
	qwIe0xTAaFURM6M/t0fu0KkiS98U9XidB3zP6PkjJFSNBy3/MEwz8MjN0uSwRD8t7JBIaxkIHCWnh
	4YNCElcDm5VF7KWh1ubLFmUU/2iUrpnOp97JdCdl1uR8+0e/Ko/gATKszXtfAnYBd289wo9meRvCp
	B5uJzHtdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMF9i-0007kH-KQ; Wed, 08 Apr 2020 18:10:30 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMF9f-0007jS-BX
 for linux-um@lists.infradead.org; Wed, 08 Apr 2020 18:10:29 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jMF9W-0002xJ-23; Wed, 08 Apr 2020 18:10:18 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jMF9T-0005u5-SG; Wed, 08 Apr 2020 19:10:17 +0100
Subject: Re: [PATCH] um: add a generic "fd" vector transport
To: =?UTF-8?Q?Marc-Andr=c3=a9_Lureau?= <marcandre.lureau@redhat.com>
References: <20200407202853.1791218-1-marcandre.lureau@redhat.com>
 <8a6dced2-886f-f8bd-aff9-3793f418cb0e@cambridgegreys.com>
 <CAMxuvaz17pVzSQ--y1_zXNFeM-MkH8L8ayiM34eCN0OkEF21WQ@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <c0e66bcd-7c13-31db-f347-1a3e9fac2b79@cambridgegreys.com>
Date: Wed, 8 Apr 2020 19:10:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAMxuvaz17pVzSQ--y1_zXNFeM-MkH8L8ayiM34eCN0OkEF21WQ@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_111027_394248_504D859A 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: joerd.simons@collabora.co.uk, richard@nod.at, jdike@addtoit.com,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, alex.dewar@gmx.co.uk
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMDgvMDQvMjAyMCAxODowNywgTWFyYy1BbmRyw6kgTHVyZWF1IHdyb3RlOgo+IEhpCj4gCj4g
T24gVHVlLCBBcHIgNywgMjAyMCBhdCAxMTowMiBQTSBBbnRvbiBJdmFub3YKPiA8YW50b24uaXZh
bm92QGNhbWJyaWRnZWdyZXlzLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDA3LzA0LzIwMjAgMjE6Mjgs
IE1hcmMtQW5kcsOpIEx1cmVhdSB3cm90ZToKPj4+IExlYXJuIHRvIHRha2UgYSBwcmUtb3BlbmVk
IGZpbGUtZGVzY3JpcHRvciBmb3IgdmVjdG9yIElPLgo+Pj4KPj4+IEluc3RlYWQgb2YgdGVhY2hp
bmcgdGhlIGRyaXZlciB0byBvcGVuIGEgRkQgaW4gbXVsdGlwbGUgd2F5cywgaXQgY2FuCj4+PiBy
ZWx5IG9uIG1hbmFnZW1lbnQgbGF5ZXIgdG8gZG8gaXQgb24gaXRzIGJlaGFsZi4gRm9yIGV4YW1w
bGUsIHRoaXMKPj4+IGFsbG93cyBpbmhlcml0aW5nIGEgcHJlY29uZmlndXJlZCBkZXZpY2UgZmQg
b3IgYSBzaW1wbGUgc29ja2V0cGFpcigpCj4+PiBzZXR1cCwgd2l0aG91dCBmdXJ0aGVyIGFyZ3Vt
ZW50cywgcHJpdmlsZWdlcyBvciBzeXN0ZW0gYWNjZXNzIGJ5IFVNTC4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNvbT4K
Pj4+IC0tLQo+Pj4gICAgYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl91c2VyLmMgfCA1OSArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDU5IGlu
c2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl91
c2VyLmMgYi9hcmNoL3VtL2RyaXZlcnMvdmVjdG9yX3VzZXIuYwo+Pj4gaW5kZXggMjlmYWUwNDU2
YWRlLi40NWMxNTUwZGJiMzcgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL3VtL2RyaXZlcnMvdmVjdG9y
X3VzZXIuYwo+Pj4gKysrIGIvYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl91c2VyLmMKPj4+IEBAIC0y
OSw2ICsyOSw3IEBACj4+PiAgICAjaW5jbHVkZSA8bmV0ZGIuaD4KPj4+ICAgICNpbmNsdWRlIDxz
dGRsaWIuaD4KPj4+ICAgICNpbmNsdWRlIDxvcy5oPgo+Pj4gKyNpbmNsdWRlIDxsaW1pdHMuaD4K
Pj4+ICAgICNpbmNsdWRlIDx1bV9tYWxsb2MuaD4KPj4+ICAgICNpbmNsdWRlICJ2ZWN0b3JfdXNl
ci5oIgo+Pj4KPj4+IEBAIC00Miw2ICs0Myw5IEBACj4+PiAgICAjZGVmaW5lIFRSQU5TX1JBVyAi
cmF3Igo+Pj4gICAgI2RlZmluZSBUUkFOU19SQVdfTEVOIHN0cmxlbihUUkFOU19SQVcpCj4+Pgo+
Pj4gKyNkZWZpbmUgVFJBTlNfRkQgImZkIgo+Pj4gKyNkZWZpbmUgVFJBTlNfRkRfTEVOIHN0cmxl
bihUUkFOU19GRCkKPj4+ICsKPj4+ICAgICNkZWZpbmUgVk5FVF9IRFJfRkFJTCAiY291bGQgbm90
IGVuYWJsZSB2bmV0IGhlYWRlcnMgb24gZmQgJWQiCj4+PiAgICAjZGVmaW5lIFRVTl9HRVRfRl9G
QUlMICJ0YXByYXc6IFRVTkdFVEZFQVRVUkVTIGZhaWxlZDogJXMiCj4+PiAgICAjZGVmaW5lIEwy
VFBWM19CSU5EX0ZBSUwgImwydHB2M19vcGVuIDogY291bGQgbm90IGJpbmQgc29ja2V0IGVycj0l
aSIKPj4+IEBAIC0zNDcsNiArMzUxLDU5IEBAIHN0YXRpYyBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdXNl
cl9pbml0X3VuaXhfZmRzKHN0cnVjdCBhcmdsaXN0ICppZnNwZWMsIGludCBpZCkKPj4+ICAgICAg
ICByZXR1cm4gTlVMTDsKPj4+ICAgIH0KPj4+Cj4+PiArc3RhdGljIGludCBzdHJ0b2ZkKGNvbnN0
IGNoYXIgKm5wdHIpCj4+PiArewo+Pj4gKyAgICAgbG9uZyBmZDsKPj4+ICsgICAgIGNoYXIgKmVu
ZHB0cjsKPj4+ICsKPj4+ICsgICAgIGlmIChucHRyID09IE5VTEwpCj4+PiArICAgICAgICAgICAg
IHJldHVybiAtMTsKPj4+ICsKPj4+ICsgICAgIGVycm5vID0gMDsKPj4+ICsgICAgIGZkID0gc3Ry
dG9sKG5wdHIsICZlbmRwdHIsIDEwKTsKPj4+ICsgICAgIGlmIChucHRyID09IGVuZHB0ciB8fAo+
Pj4gKyAgICAgICAgICAgICBlcnJubyAhPSAwIHx8Cj4+PiArICAgICAgICAgICAgICplbmRwdHIg
IT0gJ1wwJyB8fAo+Pj4gKyAgICAgICAgICAgICBmZCA8IDAgfHwKPj4+ICsgICAgICAgICAgICAg
ZmQgPiBJTlRfTUFYKSB7Cj4+PiArICAgICAgICAgICAgIHJldHVybiAtMTsKPj4+ICsgICAgIH0K
Pj4+ICsgICAgIHJldHVybiBmZDsKPj4+ICt9Cj4+PiArCj4+PiArc3RhdGljIHN0cnVjdCB2ZWN0
b3JfZmRzICp1c2VyX2luaXRfZmRfZmRzKHN0cnVjdCBhcmdsaXN0ICppZnNwZWMpCj4+PiArewo+
Pj4gKyAgICAgaW50IGZkID0gLTE7Cj4+PiArICAgICBjaGFyICpmZGFyZyA9IE5VTEw7Cj4+PiAr
ICAgICBzdHJ1Y3QgdmVjdG9yX2ZkcyAqcmVzdWx0ID0gTlVMTDsKPj4+ICsKPj4+ICsgICAgIGZk
YXJnID0gdW1sX3ZlY3Rvcl9mZXRjaF9hcmcoaWZzcGVjLCAiZmQiKTsKPj4+ICsgICAgIGZkID0g
c3RydG9mZChmZGFyZyk7Cj4+PiArICAgICBpZiAoZmQgPT0gLTEpIHsKPj4+ICsgICAgICAgICAg
ICAgcHJpbnRrKFVNX0tFUk5fRVJSICJmZCBvcGVuOiBiYWQgb3IgbWlzc2luZyBmZCBhcmd1bWVu
dCIpOwo+Pj4gKyAgICAgICAgICAgICBnb3RvIGZkX2NsZWFudXA7Cj4+PiArICAgICB9Cj4+PiAr
Cj4+PiArICAgICByZXN1bHQgPSB1bWxfa21hbGxvYyhzaXplb2Yoc3RydWN0IHZlY3Rvcl9mZHMp
LCBVTV9HRlBfS0VSTkVMKTsKPj4+ICsgICAgIGlmIChyZXN1bHQgPT0gTlVMTCkgewo+Pj4gKyAg
ICAgICAgICAgICBwcmludGsoVU1fS0VSTl9FUlIgImZkIG9wZW46IGFsbG9jYXRpb24gZmFpbGVk
Iik7Cj4+PiArICAgICAgICAgICAgIGdvdG8gZmRfY2xlYW51cDsKPj4+ICsgICAgIH0KPj4+ICsK
Pj4+ICsgICAgIHJlc3VsdC0+cnhfZmQgPSBmZDsKPj4+ICsgICAgIHJlc3VsdC0+dHhfZmQgPSBm
ZDsKPj4+ICsgICAgIHJlc3VsdC0+cmVtb3RlX2FkZHJfc2l6ZSA9IDA7Cj4+PiArICAgICByZXN1
bHQtPnJlbW90ZV9hZGRyID0gTlVMTDsKPj4+ICsgICAgIHJldHVybiByZXN1bHQ7Cj4+PiArCj4+
PiArZmRfY2xlYW51cDoKPj4+ICsgICAgIGlmIChmZCA+PSAwKQo+Pj4gKyAgICAgICAgICAgICBv
c19jbG9zZV9maWxlKGZkKTsKPj4+ICsgICAgIGlmIChyZXN1bHQgIT0gTlVMTCkKPj4+ICsgICAg
ICAgICAgICAga2ZyZWUocmVzdWx0KTsKPj4+ICsgICAgIHJldHVybiBOVUxMOwo+Pj4gK30KPj4+
ICsKPj4+ICAgIHN0YXRpYyBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdXNlcl9pbml0X3Jhd19mZHMoc3Ry
dWN0IGFyZ2xpc3QgKmlmc3BlYykKPj4+ICAgIHsKPj4+ICAgICAgICBpbnQgcnhmZCA9IC0xLCB0
eGZkID0gLTE7Cj4+PiBAQCAtNTc4LDYgKzYzNSw4IEBAIHN0cnVjdCB2ZWN0b3JfZmRzICp1bWxf
dmVjdG9yX3VzZXJfb3BlbigKPj4+ICAgICAgICAgICAgICAgIHJldHVybiB1c2VyX2luaXRfc29j
a2V0X2ZkcyhwYXJzZWQsIElEX0wyVFBWMyk7Cj4+PiAgICAgICAgaWYgKHN0cm5jbXAodHJhbnNw
b3J0LCBUUkFOU19CRVNTLCBUUkFOU19CRVNTX0xFTikgPT0gMCkKPj4+ICAgICAgICAgICAgICAg
IHJldHVybiB1c2VyX2luaXRfdW5peF9mZHMocGFyc2VkLCBJRF9CRVNTKTsKPj4+ICsgICAgIGlm
IChzdHJuY21wKHRyYW5zcG9ydCwgVFJBTlNfRkQsIFRSQU5TX0ZEX0xFTikgPT0gMCkKPj4+ICsg
ICAgICAgICAgICAgcmV0dXJuIHVzZXJfaW5pdF9mZF9mZHMocGFyc2VkKTsKPj4+ICAgICAgICBy
ZXR1cm4gTlVMTDsKPj4+ICAgIH0KPj4+Cj4+Pgo+Pgo+PiBXZSBzaG91bGQgYWxzbyBjb250cm9s
IGVuYWJsZS9kaXNhYmxlIG9mIHJlY3Yvc2VuZG1tc2cgYXMgYW4gb3B0aW9uIGhlcmUuCj4+Cj4+
IEl0IGNhbiBiZSBtYWRlIGdlbmVyaWMgYW5kIGJlIGZlZCBpbnRvIGdldF90cmFuc3BvcnRfb3B0
aW9ucygpIGluCj4+IHZlY3Rvcl9rZXJuLmMgYXMgYW4gb3ZlcnJpZGUuCj4gCj4gU28gYWN0dWFs
bHksIHRoZXJlIHNlZW1zIHRvIGJlIGEgd2F5IHRvIGRvIHRoYXQgYWxyZWFkeToKPiAKPiB2ZWMw
OnRyYW5zcG9ydD1mZCxmZD1OLHZlYz0wCgpJIGhhdmUgZm9yZ290dGVuIGFib3V0IGl0IChpdCdz
IGJlZW4gYSB3aGlsZSBzaW5jZSBJIHdyb3RlIHRoZSBkcml2ZXJzKS4KCkkgd2lsbCB1cGRhdGUg
dGhlIGRvY3MuCgpJbiB0aGF0IGNhc2UgdGhlIHBhdGNoIGxvb2tzIGdvb2QgdG8gZ28sIEkgd2ls
bCBhY2sgaXQgc2hvcnRseS4KCj4gCj4+Cj4+IC0tCj4+IEFudG9uIFIuIEl2YW5vdgo+PiBDYW1i
cmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkgTnVtYmVy
IDEwMjczNjYxCj4+IGh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KPj4KPiAKPiAKCgot
LSAKQW50b24gUi4gSXZhbm92CkNhbWJyaWRnZWdyZXlzIExpbWl0ZWQuIFJlZ2lzdGVyZWQgaW4g
RW5nbGFuZC4gQ29tcGFueSBOdW1iZXIgMTAyNzM2NjEKaHR0cHM6Ly93d3cuY2FtYnJpZGdlZ3Jl
eXMuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
