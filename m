Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FB31A34BF
	for <lists+linux-um@lfdr.de>; Thu,  9 Apr 2020 15:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SSrWgTdK1niWCbxqhItvN8wzU/IRZy796dCUjcCXAIc=; b=Ki3ozqOnKvi0/uUjRR6s00bmR
	YdcGn0lIqPETqFY9oSUtvO/vL1vEqB4cTdf98imD+b/XkWJoO5xwKbtPJeh96Nzqw4+mIJMQBHmxQ
	P9OrowqtTZnZf6hCiKdukrZ5soS+NqCfKsE6vShQZ4QaNYZ4x5O6KyfuhMCUs7ZJVt4lPCZKsQe8d
	h3ZiqLXLUiHloVMZ+5kuO4lzRQwpXhqsMYGKesWcOgPSqZ9aArRbB6qgwBQgeV8ZhinbAtlGweJzF
	2M5EyI0Yrki4h/RUHIkTe5EE0FxCxAz3f6RmoWUPIw8CPhADGuFeHDZqhFZdgqn0mXEOrvEL+oqSw
	mjHBZHO3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMX6u-0004CF-Vh; Thu, 09 Apr 2020 13:20:48 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMX6r-0004B0-U3
 for linux-um@lists.infradead.org; Thu, 09 Apr 2020 13:20:47 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jMX6k-0006Uc-Ha; Thu, 09 Apr 2020 13:20:38 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jMX6i-00080H-5Q; Thu, 09 Apr 2020 14:20:38 +0100
Subject: Re: [PATCH] um: add a generic "fd" vector transport
To: =?UTF-8?Q?Marc-Andr=c3=a9_Lureau?= <marcandre.lureau@redhat.com>,
 linux-um@lists.infradead.org
References: <20200407202853.1791218-1-marcandre.lureau@redhat.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <b21237a4-e54e-8d3d-fba2-c95d76b434bb@cambridgegreys.com>
Date: Thu, 9 Apr 2020 14:20:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407202853.1791218-1-marcandre.lureau@redhat.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_062045_969878_1A0020E5 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, alex.dewar@gmx.co.uk
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Ck9uIDA3LzA0LzIwMjAgMjE6MjgsIE1hcmMtQW5kcsOpIEx1cmVhdSB3cm90ZToKPiBMZWFybiB0
byB0YWtlIGEgcHJlLW9wZW5lZCBmaWxlLWRlc2NyaXB0b3IgZm9yIHZlY3RvciBJTy4KPgo+IElu
c3RlYWQgb2YgdGVhY2hpbmcgdGhlIGRyaXZlciB0byBvcGVuIGEgRkQgaW4gbXVsdGlwbGUgd2F5
cywgaXQgY2FuCj4gcmVseSBvbiBtYW5hZ2VtZW50IGxheWVyIHRvIGRvIGl0IG9uIGl0cyBiZWhh
bGYuIEZvciBleGFtcGxlLCB0aGlzCj4gYWxsb3dzIGluaGVyaXRpbmcgYSBwcmVjb25maWd1cmVk
IGRldmljZSBmZCBvciBhIHNpbXBsZSBzb2NrZXRwYWlyKCkKPiBzZXR1cCwgd2l0aG91dCBmdXJ0
aGVyIGFyZ3VtZW50cywgcHJpdmlsZWdlcyBvciBzeXN0ZW0gYWNjZXNzIGJ5IFVNTC4KPgo+IFNp
Z25lZC1vZmYtYnk6IE1hcmMtQW5kcsOpIEx1cmVhdSA8bWFyY2FuZHJlLmx1cmVhdUByZWRoYXQu
Y29tPgo+IC0tLQo+ICAgYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl91c2VyLmMgfCA1OSArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDU5IGluc2Vy
dGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNoL3VtL2RyaXZlcnMvdmVjdG9yX3VzZXIuYyBi
L2FyY2gvdW0vZHJpdmVycy92ZWN0b3JfdXNlci5jCj4gaW5kZXggMjlmYWUwNDU2YWRlLi40NWMx
NTUwZGJiMzcgMTAwNjQ0Cj4gLS0tIGEvYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl91c2VyLmMKPiAr
KysgYi9hcmNoL3VtL2RyaXZlcnMvdmVjdG9yX3VzZXIuYwo+IEBAIC0yOSw2ICsyOSw3IEBACj4g
ICAjaW5jbHVkZSA8bmV0ZGIuaD4KPiAgICNpbmNsdWRlIDxzdGRsaWIuaD4KPiAgICNpbmNsdWRl
IDxvcy5oPgo+ICsjaW5jbHVkZSA8bGltaXRzLmg+Cj4gICAjaW5jbHVkZSA8dW1fbWFsbG9jLmg+
Cj4gICAjaW5jbHVkZSAidmVjdG9yX3VzZXIuaCIKPiAgIAo+IEBAIC00Miw2ICs0Myw5IEBACj4g
ICAjZGVmaW5lIFRSQU5TX1JBVyAicmF3Igo+ICAgI2RlZmluZSBUUkFOU19SQVdfTEVOIHN0cmxl
bihUUkFOU19SQVcpCj4gICAKPiArI2RlZmluZSBUUkFOU19GRCAiZmQiCj4gKyNkZWZpbmUgVFJB
TlNfRkRfTEVOIHN0cmxlbihUUkFOU19GRCkKPiArCj4gICAjZGVmaW5lIFZORVRfSERSX0ZBSUwg
ImNvdWxkIG5vdCBlbmFibGUgdm5ldCBoZWFkZXJzIG9uIGZkICVkIgo+ICAgI2RlZmluZSBUVU5f
R0VUX0ZfRkFJTCAidGFwcmF3OiBUVU5HRVRGRUFUVVJFUyBmYWlsZWQ6ICVzIgo+ICAgI2RlZmlu
ZSBMMlRQVjNfQklORF9GQUlMICJsMnRwdjNfb3BlbiA6IGNvdWxkIG5vdCBiaW5kIHNvY2tldCBl
cnI9JWkiCj4gQEAgLTM0Nyw2ICszNTEsNTkgQEAgc3RhdGljIHN0cnVjdCB2ZWN0b3JfZmRzICp1
c2VyX2luaXRfdW5peF9mZHMoc3RydWN0IGFyZ2xpc3QgKmlmc3BlYywgaW50IGlkKQo+ICAgCXJl
dHVybiBOVUxMOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBpbnQgc3RydG9mZChjb25zdCBjaGFyICpu
cHRyKQo+ICt7Cj4gKwlsb25nIGZkOwo+ICsJY2hhciAqZW5kcHRyOwo+ICsKPiArCWlmIChucHRy
ID09IE5VTEwpCj4gKwkJcmV0dXJuIC0xOwo+ICsKPiArCWVycm5vID0gMDsKPiArCWZkID0gc3Ry
dG9sKG5wdHIsICZlbmRwdHIsIDEwKTsKPiArCWlmIChucHRyID09IGVuZHB0ciB8fAo+ICsJCWVy
cm5vICE9IDAgfHwKPiArCQkqZW5kcHRyICE9ICdcMCcgfHwKPiArCQlmZCA8IDAgfHwKPiArCQlm
ZCA+IElOVF9NQVgpIHsKPiArCQlyZXR1cm4gLTE7Cj4gKwl9Cj4gKwlyZXR1cm4gZmQ7Cj4gK30K
PiArCj4gK3N0YXRpYyBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdXNlcl9pbml0X2ZkX2ZkcyhzdHJ1Y3Qg
YXJnbGlzdCAqaWZzcGVjKQo+ICt7Cj4gKwlpbnQgZmQgPSAtMTsKPiArCWNoYXIgKmZkYXJnID0g
TlVMTDsKPiArCXN0cnVjdCB2ZWN0b3JfZmRzICpyZXN1bHQgPSBOVUxMOwo+ICsKPiArCWZkYXJn
ID0gdW1sX3ZlY3Rvcl9mZXRjaF9hcmcoaWZzcGVjLCAiZmQiKTsKPiArCWZkID0gc3RydG9mZChm
ZGFyZyk7Cj4gKwlpZiAoZmQgPT0gLTEpIHsKPiArCQlwcmludGsoVU1fS0VSTl9FUlIgImZkIG9w
ZW46IGJhZCBvciBtaXNzaW5nIGZkIGFyZ3VtZW50Iik7Cj4gKwkJZ290byBmZF9jbGVhbnVwOwo+
ICsJfQo+ICsKPiArCXJlc3VsdCA9IHVtbF9rbWFsbG9jKHNpemVvZihzdHJ1Y3QgdmVjdG9yX2Zk
cyksIFVNX0dGUF9LRVJORUwpOwo+ICsJaWYgKHJlc3VsdCA9PSBOVUxMKSB7Cj4gKwkJcHJpbnRr
KFVNX0tFUk5fRVJSICJmZCBvcGVuOiBhbGxvY2F0aW9uIGZhaWxlZCIpOwo+ICsJCWdvdG8gZmRf
Y2xlYW51cDsKPiArCX0KPiArCj4gKwlyZXN1bHQtPnJ4X2ZkID0gZmQ7Cj4gKwlyZXN1bHQtPnR4
X2ZkID0gZmQ7Cj4gKwlyZXN1bHQtPnJlbW90ZV9hZGRyX3NpemUgPSAwOwo+ICsJcmVzdWx0LT5y
ZW1vdGVfYWRkciA9IE5VTEw7Cj4gKwlyZXR1cm4gcmVzdWx0Owo+ICsKPiArZmRfY2xlYW51cDoK
PiArCWlmIChmZCA+PSAwKQo+ICsJCW9zX2Nsb3NlX2ZpbGUoZmQpOwo+ICsJaWYgKHJlc3VsdCAh
PSBOVUxMKQo+ICsJCWtmcmVlKHJlc3VsdCk7Cj4gKwlyZXR1cm4gTlVMTDsKPiArfQo+ICsKPiAg
IHN0YXRpYyBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdXNlcl9pbml0X3Jhd19mZHMoc3RydWN0IGFyZ2xp
c3QgKmlmc3BlYykKPiAgIHsKPiAgIAlpbnQgcnhmZCA9IC0xLCB0eGZkID0gLTE7Cj4gQEAgLTU3
OCw2ICs2MzUsOCBAQCBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdW1sX3ZlY3Rvcl91c2VyX29wZW4oCj4g
ICAJCXJldHVybiB1c2VyX2luaXRfc29ja2V0X2ZkcyhwYXJzZWQsIElEX0wyVFBWMyk7Cj4gICAJ
aWYgKHN0cm5jbXAodHJhbnNwb3J0LCBUUkFOU19CRVNTLCBUUkFOU19CRVNTX0xFTikgPT0gMCkK
PiAgIAkJcmV0dXJuIHVzZXJfaW5pdF91bml4X2ZkcyhwYXJzZWQsIElEX0JFU1MpOwo+ICsJaWYg
KHN0cm5jbXAodHJhbnNwb3J0LCBUUkFOU19GRCwgVFJBTlNfRkRfTEVOKSA9PSAwKQo+ICsJCXJl
dHVybiB1c2VyX2luaXRfZmRfZmRzKHBhcnNlZCk7Cj4gICAJcmV0dXJuIE5VTEw7Cj4gICB9Cj4g
ICAKQWNrZWQtQnk6IEFudG9uIEl2YW5vdiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNv
bT4KCi0tIApBbnRvbiBSLiBJdmFub3YKQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJl
ZCBpbiBFbmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2MQpodHRwczovL3d3dy5jYW1icmlk
Z2VncmV5cy5jb20vCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
