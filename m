Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6908F1A171B
	for <lists+linux-um@lfdr.de>; Tue,  7 Apr 2020 23:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y2AyFF6Zusp/3J9PbKXBi7gZmy/2/0Twuz7ssVC5Y54=; b=O9gV2gaxXYBiuD4BcDyUVt/62
	eetD01OLgpIuXunCsiFkigYPjWhgSgbAn6U5nutG3AZXYlepfTsb4BSoMAb91tisEEDDj2FuPcmlH
	JvnWFFwBbbAMzYTEWaAL4FgR30aYXU/Td940tW7qRl0FW4yHJBNZMmCL7EMhBREkISITyx7d7bfhp
	Fx3V+NiMmmJpI6BB0LtKNVHXayFVy6rUevCj8MJqPOQr4GUwIazXGmN28XNATkJDN9LrNfmLBAnwk
	kJynaK6brB6RRyaQnrlvWYvkkhm2UHR843KN6+7C1PwM9qmyZjbVeHhDw0w9S4uhuTZ2Eh4fMKiNc
	SG036OvAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvMY-0003vk-C5; Tue, 07 Apr 2020 21:02:26 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvMU-0003uC-OU
 for linux-um@lists.infradead.org; Tue, 07 Apr 2020 21:02:24 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jLvMN-0007JY-1U; Tue, 07 Apr 2020 21:02:15 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jLvMK-000872-Hp; Tue, 07 Apr 2020 22:02:14 +0100
Subject: Re: [PATCH] um: add a generic "fd" vector transport
To: =?UTF-8?Q?Marc-Andr=c3=a9_Lureau?= <marcandre.lureau@redhat.com>,
 linux-um@lists.infradead.org
References: <20200407202853.1791218-1-marcandre.lureau@redhat.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <8a6dced2-886f-f8bd-aff9-3793f418cb0e@cambridgegreys.com>
Date: Tue, 7 Apr 2020 22:02:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407202853.1791218-1-marcandre.lureau@redhat.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_140222_796399_333287BE 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

T24gMDcvMDQvMjAyMCAyMToyOCwgTWFyYy1BbmRyw6kgTHVyZWF1IHdyb3RlOgo+IExlYXJuIHRv
IHRha2UgYSBwcmUtb3BlbmVkIGZpbGUtZGVzY3JpcHRvciBmb3IgdmVjdG9yIElPLgo+IAo+IElu
c3RlYWQgb2YgdGVhY2hpbmcgdGhlIGRyaXZlciB0byBvcGVuIGEgRkQgaW4gbXVsdGlwbGUgd2F5
cywgaXQgY2FuCj4gcmVseSBvbiBtYW5hZ2VtZW50IGxheWVyIHRvIGRvIGl0IG9uIGl0cyBiZWhh
bGYuIEZvciBleGFtcGxlLCB0aGlzCj4gYWxsb3dzIGluaGVyaXRpbmcgYSBwcmVjb25maWd1cmVk
IGRldmljZSBmZCBvciBhIHNpbXBsZSBzb2NrZXRwYWlyKCkKPiBzZXR1cCwgd2l0aG91dCBmdXJ0
aGVyIGFyZ3VtZW50cywgcHJpdmlsZWdlcyBvciBzeXN0ZW0gYWNjZXNzIGJ5IFVNTC4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0
LmNvbT4KPiAtLS0KPiAgIGFyY2gvdW0vZHJpdmVycy92ZWN0b3JfdXNlci5jIHwgNTkgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA1OSBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvdW0vZHJpdmVycy92ZWN0b3JfdXNlci5j
IGIvYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl91c2VyLmMKPiBpbmRleCAyOWZhZTA0NTZhZGUuLjQ1
YzE1NTBkYmIzNyAxMDA2NDQKPiAtLS0gYS9hcmNoL3VtL2RyaXZlcnMvdmVjdG9yX3VzZXIuYwo+
ICsrKyBiL2FyY2gvdW0vZHJpdmVycy92ZWN0b3JfdXNlci5jCj4gQEAgLTI5LDYgKzI5LDcgQEAK
PiAgICNpbmNsdWRlIDxuZXRkYi5oPgo+ICAgI2luY2x1ZGUgPHN0ZGxpYi5oPgo+ICAgI2luY2x1
ZGUgPG9zLmg+Cj4gKyNpbmNsdWRlIDxsaW1pdHMuaD4KPiAgICNpbmNsdWRlIDx1bV9tYWxsb2Mu
aD4KPiAgICNpbmNsdWRlICJ2ZWN0b3JfdXNlci5oIgo+ICAgCj4gQEAgLTQyLDYgKzQzLDkgQEAK
PiAgICNkZWZpbmUgVFJBTlNfUkFXICJyYXciCj4gICAjZGVmaW5lIFRSQU5TX1JBV19MRU4gc3Ry
bGVuKFRSQU5TX1JBVykKPiAgIAo+ICsjZGVmaW5lIFRSQU5TX0ZEICJmZCIKPiArI2RlZmluZSBU
UkFOU19GRF9MRU4gc3RybGVuKFRSQU5TX0ZEKQo+ICsKPiAgICNkZWZpbmUgVk5FVF9IRFJfRkFJ
TCAiY291bGQgbm90IGVuYWJsZSB2bmV0IGhlYWRlcnMgb24gZmQgJWQiCj4gICAjZGVmaW5lIFRV
Tl9HRVRfRl9GQUlMICJ0YXByYXc6IFRVTkdFVEZFQVRVUkVTIGZhaWxlZDogJXMiCj4gICAjZGVm
aW5lIEwyVFBWM19CSU5EX0ZBSUwgImwydHB2M19vcGVuIDogY291bGQgbm90IGJpbmQgc29ja2V0
IGVycj0laSIKPiBAQCAtMzQ3LDYgKzM1MSw1OSBAQCBzdGF0aWMgc3RydWN0IHZlY3Rvcl9mZHMg
KnVzZXJfaW5pdF91bml4X2ZkcyhzdHJ1Y3QgYXJnbGlzdCAqaWZzcGVjLCBpbnQgaWQpCj4gICAJ
cmV0dXJuIE5VTEw7Cj4gICB9Cj4gICAKPiArc3RhdGljIGludCBzdHJ0b2ZkKGNvbnN0IGNoYXIg
Km5wdHIpCj4gK3sKPiArCWxvbmcgZmQ7Cj4gKwljaGFyICplbmRwdHI7Cj4gKwo+ICsJaWYgKG5w
dHIgPT0gTlVMTCkKPiArCQlyZXR1cm4gLTE7Cj4gKwo+ICsJZXJybm8gPSAwOwo+ICsJZmQgPSBz
dHJ0b2wobnB0ciwgJmVuZHB0ciwgMTApOwo+ICsJaWYgKG5wdHIgPT0gZW5kcHRyIHx8Cj4gKwkJ
ZXJybm8gIT0gMCB8fAo+ICsJCSplbmRwdHIgIT0gJ1wwJyB8fAo+ICsJCWZkIDwgMCB8fAo+ICsJ
CWZkID4gSU5UX01BWCkgewo+ICsJCXJldHVybiAtMTsKPiArCX0KPiArCXJldHVybiBmZDsKPiAr
fQo+ICsKPiArc3RhdGljIHN0cnVjdCB2ZWN0b3JfZmRzICp1c2VyX2luaXRfZmRfZmRzKHN0cnVj
dCBhcmdsaXN0ICppZnNwZWMpCj4gK3sKPiArCWludCBmZCA9IC0xOwo+ICsJY2hhciAqZmRhcmcg
PSBOVUxMOwo+ICsJc3RydWN0IHZlY3Rvcl9mZHMgKnJlc3VsdCA9IE5VTEw7Cj4gKwo+ICsJZmRh
cmcgPSB1bWxfdmVjdG9yX2ZldGNoX2FyZyhpZnNwZWMsICJmZCIpOwo+ICsJZmQgPSBzdHJ0b2Zk
KGZkYXJnKTsKPiArCWlmIChmZCA9PSAtMSkgewo+ICsJCXByaW50ayhVTV9LRVJOX0VSUiAiZmQg
b3BlbjogYmFkIG9yIG1pc3NpbmcgZmQgYXJndW1lbnQiKTsKPiArCQlnb3RvIGZkX2NsZWFudXA7
Cj4gKwl9Cj4gKwo+ICsJcmVzdWx0ID0gdW1sX2ttYWxsb2Moc2l6ZW9mKHN0cnVjdCB2ZWN0b3Jf
ZmRzKSwgVU1fR0ZQX0tFUk5FTCk7Cj4gKwlpZiAocmVzdWx0ID09IE5VTEwpIHsKPiArCQlwcmlu
dGsoVU1fS0VSTl9FUlIgImZkIG9wZW46IGFsbG9jYXRpb24gZmFpbGVkIik7Cj4gKwkJZ290byBm
ZF9jbGVhbnVwOwo+ICsJfQo+ICsKPiArCXJlc3VsdC0+cnhfZmQgPSBmZDsKPiArCXJlc3VsdC0+
dHhfZmQgPSBmZDsKPiArCXJlc3VsdC0+cmVtb3RlX2FkZHJfc2l6ZSA9IDA7Cj4gKwlyZXN1bHQt
PnJlbW90ZV9hZGRyID0gTlVMTDsKPiArCXJldHVybiByZXN1bHQ7Cj4gKwo+ICtmZF9jbGVhbnVw
Ogo+ICsJaWYgKGZkID49IDApCj4gKwkJb3NfY2xvc2VfZmlsZShmZCk7Cj4gKwlpZiAocmVzdWx0
ICE9IE5VTEwpCj4gKwkJa2ZyZWUocmVzdWx0KTsKPiArCXJldHVybiBOVUxMOwo+ICt9Cj4gKwo+
ICAgc3RhdGljIHN0cnVjdCB2ZWN0b3JfZmRzICp1c2VyX2luaXRfcmF3X2ZkcyhzdHJ1Y3QgYXJn
bGlzdCAqaWZzcGVjKQo+ICAgewo+ICAgCWludCByeGZkID0gLTEsIHR4ZmQgPSAtMTsKPiBAQCAt
NTc4LDYgKzYzNSw4IEBAIHN0cnVjdCB2ZWN0b3JfZmRzICp1bWxfdmVjdG9yX3VzZXJfb3BlbigK
PiAgIAkJcmV0dXJuIHVzZXJfaW5pdF9zb2NrZXRfZmRzKHBhcnNlZCwgSURfTDJUUFYzKTsKPiAg
IAlpZiAoc3RybmNtcCh0cmFuc3BvcnQsIFRSQU5TX0JFU1MsIFRSQU5TX0JFU1NfTEVOKSA9PSAw
KQo+ICAgCQlyZXR1cm4gdXNlcl9pbml0X3VuaXhfZmRzKHBhcnNlZCwgSURfQkVTUyk7Cj4gKwlp
ZiAoc3RybmNtcCh0cmFuc3BvcnQsIFRSQU5TX0ZELCBUUkFOU19GRF9MRU4pID09IDApCj4gKwkJ
cmV0dXJuIHVzZXJfaW5pdF9mZF9mZHMocGFyc2VkKTsKPiAgIAlyZXR1cm4gTlVMTDsKPiAgIH0K
PiAgIAo+IAoKV2Ugc2hvdWxkIGFsc28gY29udHJvbCBlbmFibGUvZGlzYWJsZSBvZiByZWN2L3Nl
bmRtbXNnIGFzIGFuIG9wdGlvbiBoZXJlLgoKSXQgY2FuIGJlIG1hZGUgZ2VuZXJpYyBhbmQgYmUg
ZmVkIGludG8gZ2V0X3RyYW5zcG9ydF9vcHRpb25zKCkgaW4gCnZlY3Rvcl9rZXJuLmMgYXMgYW4g
b3ZlcnJpZGUuCgotLSAKQW50b24gUi4gSXZhbm92CkNhbWJyaWRnZWdyZXlzIExpbWl0ZWQuIFJl
Z2lzdGVyZWQgaW4gRW5nbGFuZC4gQ29tcGFueSBOdW1iZXIgMTAyNzM2NjEKaHR0cHM6Ly93d3cu
Y2FtYnJpZGdlZ3JleXMuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11
bQo=
