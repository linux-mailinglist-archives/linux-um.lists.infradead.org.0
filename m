Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DAADC1AF
	for <lists+linux-um@lfdr.de>; Fri, 18 Oct 2019 11:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=52EaS/kOOOpa7aHvU/yNwU02MjaWNLLCjGIaLEge0vM=; b=sMhF+9kDCwsTZ/nyzHlcCZxev
	QLdsC0TbwSGXHZRWVztlM/75iu+R80r1foKNUxPz7HuX1vmLEcoIqrnS0cRKyj+rU4p/PgV8YJcjD
	i0j7g/9LZQ1AXqO7T00SKyf2auKX5TfptGumPAFoqw4MYYa9avRwPju2JD6O8o9NVgmTBWyCzz7tK
	w/caOCozAqs3E4mHUCaJuJjIAcv3651tvoXDJd9RFOXkIRZaRKzuUEE1SMn3BpmoleYBk+6EvkLye
	scob0iRlErlSvJqn9chxFb/dVbJUL4mwYrynIesO2K7xmqawI4Y+drAA3A71J1Nxa3osPuEWFJb5k
	reFcW+cAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOsh-0006uP-5n; Fri, 18 Oct 2019 09:49:11 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOse-0006tZ-Sg
 for linux-um@lists.infradead.org; Fri, 18 Oct 2019 09:49:10 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLOsc-00065l-Ol; Fri, 18 Oct 2019 09:49:06 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iLOsX-0000jS-LG; Fri, 18 Oct 2019 10:49:06 +0100
Subject: Re: uml segfault during I/O
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: Johannes Berg <johannes@sipsolutions.net>, rrs@researchut.com,
 linux-um@lists.infradead.org
References: <a1307b17bd3f51d84d9195760492d1ef284b6382.camel@researchut.com>
 <1ccf27d8-6b6a-7d08-acef-93077f07511b@cambridgegreys.com>
 <5dc5e0694d2fcf2f8bb083e3861fd1b39c768b8c.camel@researchut.com>
 <cf1294b2-e1cc-961c-e8e1-d070fe0ea94d@cambridgegreys.com>
 <c7135e15-d2e4-3bce-9584-9032ddca72fe@cambridgegreys.com>
 <4892b3ca-6b26-0b96-d21f-ac8b31fb2270@cambridgegreys.com>
 <b742bf38-9cf5-e62f-55df-915929fd526f@cambridgegreys.com>
 <7a2c14d38873a5c19f395cc7861fd9811589ca79.camel@sipsolutions.net>
 <362559a4-c52e-0084-7e11-79502015914f@cambridgegreys.com>
Message-ID: <b8f331bc-fcdd-32aa-48b3-90b07b5302bc@cambridgegreys.com>
Date: Fri, 18 Oct 2019 10:49:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <362559a4-c52e-0084-7e11-79502015914f@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_024908_929375_008FB90F 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAxOC8xMC8yMDE5IDEwOjEzLCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4gCj4gCj4gT24gMTgv
MTAvMjAxOSAwOTo1NywgSm9oYW5uZXMgQmVyZyB3cm90ZToKPj4gT24gRnJpLCAyMDE5LTEwLTE4
IGF0IDA4OjM1ICswMTAwLCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4+Pgo+Pj4gU3RpbGwgaGFwcGVu
aW5nIHdpdGggNS4yLjIxLCBhbGJlaXQgYSBiaXQgbW9yZSBkaWZmaWN1bHQgdG8gcmVwcm9kdWNl
Lgo+Pgo+PiBKdXN0IHJhbmRvbWx5IHJldmlld2luZyB0aGUgY29kZSwgaXNuJ3QgdGhlcmUgYSBi
dWcgaW4gaW9fdGhyZWFkKCk/Cj4gCj4gSW5kZWVkLiBXZWxsIHNwb3R0ZWQuIEl0IGlzIGdvb2Qg
dGhhdCBhIHNob3J0IHdyaXRlIHRvIGEgYmxvY2sgZGV2aWNlIGlzIAo+IHNvIHJhcmUgOikKPiAK
Pj4KPj4gLS0tIGEvYXJjaC91bS9kcml2ZXJzL3ViZF9rZXJuLmMKPj4gKysrIGIvYXJjaC91bS9k
cml2ZXJzL3ViZF9rZXJuLmMKPj4gQEAgLTE2MDIsNyArMTYwMiw4IEBAIGludCBpb190aHJlYWQo
dm9pZCAqYXJnKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3cml0dGVuID0g
MDsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG8gewo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzID0gb3Nfd3JpdGVfZmlsZShr
ZXJuZWxfZmQsICgoY2hhciAqKSAKPj4gaW9fcmVxX2J1ZmZlcikgKyB3cml0dGVuLCBuKTsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlcyA9IG9zX3dy
aXRlX2ZpbGUoa2VybmVsX2ZkLCAoKGNoYXIgKikgCj4+IGlvX3JlcV9idWZmZXIpICsgd3JpdHRl
biwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuIC0gd3JpdHRlbik7Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmVzID49IDAp
IHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB3cml0dGVuICs9IHJlczsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4KPj4gam9oYW5uZXMKPj4KPj4KPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gbGludXgtdW0gbWFp
bGluZyBsaXN0Cj4+IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo+Pgo+IAo+IEkgaGF2ZSB2
ZXJpZmllZCB0aGlzLgo+IAo+IEl0IGlzIGFsd2F5cyBpbiBhIHJlcXVldWUgYW5kIGFsd2F5cyBh
ZnRlciB0aGUgaW8gdGhyZWFkIGhhcyByZXR1cm5lZCAKPiBFQUdBSU4gb24gdGhlIGF0dGVtcHQg
dG8gc3VibWl0IGEgcmVxdWVzdC4KPiAKPiBUaGF0IHBhcnQgb2YgdGhlIGNvZGUgaGFzIGJlZW4g
dGVzdGVkIHZlcnkgaGVhdmlseSBiZWZvcmUgYW5kIGl0IHdvcmtzIAo+IGZpbmUgaW4gNC4xOQo+
IAoKQXBwbGllZCBhbmQgaXQgaXMgbm90IGl0LgoKVGhpcyBpcyBzb21ldGhpbmcgaW4gdGhlIGJs
ay1tcSBjb2RlIGFuZCB3ZSBzaG91bGQgZm9yd2FyZCB0aGUgd2hvbGUgCnRocmVhZCB0byB0aGUg
YmxrX21xIG1haW50YWluZXJzLgoKQQoKCgoKLS0gCkFudG9uIFIuIEl2YW5vdgpDYW1icmlkZ2Vn
cmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkgTnVtYmVyIDEwMjcz
NjYxCmh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11
bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtdW0K
