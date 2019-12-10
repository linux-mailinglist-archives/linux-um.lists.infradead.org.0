Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA23611812D
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 08:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9QJR1U+hpcJRWQN7ytNEgBTq+4yG3Dh/tdIvemY6wm8=; b=DXrSpffi4epvYdvkBOYZolLNJ
	pIORMn9mLONsrga/s14sqEERo1yYdtrPy8dE9fTyeVoJdcCzWyeSFnhYaPkiVXWeNWqmhr9DA9UFo
	FSKLRw5PSQ23jvTkurfnvLbclcqrQuXVL6FRC94FraXRqQxigmA5G3PBl4btj0aeS7FicVwYS28SF
	rShxOshFBifmv3vtnkcAhxtPzW8wd3AcFY1bi4E6AyCCBQYyVvEknCt6mKBkff7OERse/bR7b/2LS
	gJltu4WudB9Eg4idtfVaqO/C7aQ8DdBgwjd+qVcFEgLYT47dffu75FMYvZnwVuMtIVM5s0XuT4VRi
	r0/N869bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZjK-0003ke-Lt; Tue, 10 Dec 2019 07:14:46 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZjI-0003k7-Qa
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 07:14:46 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieZjH-0001OU-7D; Tue, 10 Dec 2019 07:14:43 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieZjE-0002ob-VC; Tue, 10 Dec 2019 07:14:42 +0000
Subject: Re: [RFC v1 1/2] um: drivers: remove support for UML_NET_PCAP
To: Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-2-brendanhiggins@google.com>
 <f217945d-ab64-10cc-bb12-3a4d810ff25a@cambridgegreys.com>
 <CAFd5g45cSKATfw4GKPw6QdhQKDNi=0gcDRjQ7N0T1XrdtSTPrg@mail.gmail.com>
 <20191207012108.GA220741@google.com>
 <15f048d3-07ab-61c1-c6e0-0712e626dd33@cambridgegreys.com>
 <CAFd5g448yZ5nSVLnN0gvsv3jLnhWG+dzJgvH1jdV+s2eTq4wxg@mail.gmail.com>
 <1785498655.111829.1575936178298.JavaMail.zimbra@nod.at>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <87f182c6-82a3-d696-72e4-ddaa781a655b@cambridgegreys.com>
Date: Tue, 10 Dec 2019 07:14:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1785498655.111829.1575936178298.JavaMail.zimbra@nod.at>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_231444_861373_D03D0D84 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: davidgow <davidgow@google.com>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Johannes Berg <johannes.berg@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMTAvMTIvMjAxOSAwMDowMiwgUmljaGFyZCBXZWluYmVyZ2VyIHdyb3RlOgo+IC0tLS0tIFVy
c3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPj4gVm9uOiAiQnJlbmRhbiBIaWdnaW5zIiA8YnJlbmRh
bmhpZ2dpbnNAZ29vZ2xlLmNvbT4KPj4+IElNSE8gd2Ugc2hvdWxkIGF0IGxlYXN0IG1hcmsgdGhl
bSBhcyAib2Jzb2xldGUiIGFuZCBzdGFydCBwcmVwYXJpbmcgdG8KPj4+IHJlbW92ZSB0aGVtLgo+
Pgo+PiBBbHJpZ2h0LCBJIHdpbGwgc2VuZCBhIHBhdGNoIG91dCB3aGljaCBtYXJrcyB0aGUgb3Ro
ZXIgbmV0d29yayBkcml2ZXJzCj4+IGFzICJvYnNvbGV0ZSIuCj4+Cj4+IENsYXJpZmljYXRpb246
IFNob3VsZCBJIG1hcmsgYWxsIFVNTCBuZXR3b3JrIGRldmljZXMgYXMgIm9ic29sZXRlIgo+PiBl
eGNlcHQgZm9yIE5FVF9WRUNUT1I/IERhZW1vbiBhbmQgTUNBU1QgbG9va2VkIHRvIG1lIChJIGFt
IG5vdCBhCj4+IG5ldHdvcmtpbmcgZXhwZXJ0KSwgbGlrZSB0aGV5IG1pZ2h0IG5vdCBiZSBjb3Zl
cmVkIGJ5IHZlY3Rvci4KPiAKPiBOby4gV2h5Pwo+IAo+IFRoYW5rcywKPiAvL3JpY2hhcmQKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4
LXVtIG1haWxpbmcgbGlzdAo+IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCj4gCkF0IGxlYXN0
IHBjYXAgYW5kIHZkZSBhcmUgbWFpbnRlbmFuY2UgaXNzdWVzLiBUaGV5IGRvIG5vdCBldmVuIGJ1
aWxkIHRvZGF5LgoKT2ZmIHRoZSB0b3Agb2YgbXkgaGVhZCwgZGFlbW9uIG5lZWRzIGZpeGVzIHRv
IHRoZSBzd2l0Y2ggLSBpdCBoYXMgYW4gCk8obikgcGVyZm9ybWFuY2UgaGl0IGZvciBuPSJudW1i
ZXIgb2YgcG9ydHMiIGFzIHdlbGwgYXMgYSBmZXcgb3RoZXIgaXNzdWVzLgoKVGFwIGhhcyBhIGZ1
bGx5IGZ1bmN0aW9uYWwgcmVwbGFjZW1lbnQKClBjYXAgaGFzIGEgZnVsbHkgZnVuY3Rpb25hbCBy
ZXBsYWNlbWVudAoKbWNhc3QgZm9yIDIgaW5zdGFuY2VzIGlzIGZ1bmN0aW9uYWxseSBlcXVpdmFs
ZW50IHRvIHJ1bm5pbmcgbDJ0cCBvciBncmUgCmJhY2stdG8tYmFjay4KCklNSE8gd2UgY2FuIHN0
YXJ0IG1hcmtpbmcgc29tZSBvZiB0aGVtIGFzIG9ic29sZXRlLgoKLS0gCkFudG9uIFIuIEl2YW5v
dgpDYW1icmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkg
TnVtYmVyIDEwMjczNjYxCmh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcg
bGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
