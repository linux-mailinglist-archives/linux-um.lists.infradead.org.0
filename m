Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4F9115B9F
	for <lists+linux-um@lfdr.de>; Sat,  7 Dec 2019 10:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nMyhFP4W62QuuZaqxzFtVjW7MHZf17ZmBmqpO1ZBn8c=; b=ow9SnR+xD1wzKrUXpNvPPD9lO
	lSunt1hHzjmCqo135bSno+72/iw/MSK97EgjrCJwNiZYDpHYaSwblpsDQLvEQBsHwsS4u2JAyhAhe
	I5PaKIIgiddNTtKW9gL0N4wS4UHtwEQW81B+Uv3mzkzetiBfJhuV7BhwDUfganQO4voYXOZEWOFD0
	Augv6+1HaLshteXZoVvGMlIEAcC0u2phN0lGh2j+ZTD2awO/V7YUXnxoCty+yHXDpf+szD5u0seWP
	zNEGSlBriRFGN5J4IuqbZxwDb0vfPcjfwgSmxR6n/xJdgZFZkNkRvZgtIKzy0MogVGIQVtbbTm7yY
	e0vhc67Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idWBC-0000g5-PN; Sat, 07 Dec 2019 09:15:10 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idWB8-0007sM-EH
 for linux-um@lists.infradead.org; Sat, 07 Dec 2019 09:15:08 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1idWB0-00031X-I9; Sat, 07 Dec 2019 09:14:58 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1idWAy-0002er-4G; Sat, 07 Dec 2019 09:14:58 +0000
Subject: Re: [RFC v1 1/2] um: drivers: remove support for UML_NET_PCAP
To: Brendan Higgins <brendanhiggins@google.com>
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-2-brendanhiggins@google.com>
 <f217945d-ab64-10cc-bb12-3a4d810ff25a@cambridgegreys.com>
 <CAFd5g45cSKATfw4GKPw6QdhQKDNi=0gcDRjQ7N0T1XrdtSTPrg@mail.gmail.com>
 <20191207012108.GA220741@google.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <15f048d3-07ab-61c1-c6e0-0712e626dd33@cambridgegreys.com>
Date: Sat, 7 Dec 2019 09:14:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191207012108.GA220741@google.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_011506_488830_370BC9A3 
X-CRM114-Status: GOOD (  18.55  )
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
Cc: johannes.berg@intel.com, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMDcvMTIvMjAxOSAwMToyMSwgQnJlbmRhbiBIaWdnaW5zIHdyb3RlOgo+IE9uIEZyaSwgRGVj
IDA2LCAyMDE5IGF0IDA0OjMyOjM0UE0gLTA4MDAsIEJyZW5kYW4gSGlnZ2lucyB3cm90ZToKPj4g
T24gVGh1LCBEZWMgNSwgMjAxOSBhdCAxMToyMyBQTSBBbnRvbiBJdmFub3YKPj4gPGFudG9uLml2
YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+IHdyb3RlOgo+PiBbLi4uXQo+Pj4gMS4gVGhlcmUgaXMg
YSBwcm9wb3NlZCBwYXRjaCBmb3IgdGhlIGJ1aWxkIHN5c3RlbSB0byBmaXggaXQuCj4gCj4gU28g
SSBqdXN0IHRyaWVkIHRoZSBwYXRjaCB5b3UgbGlua2VkIG9uIHRoZSBjb3ZlciBsZXR0ZXJbMV0s
IGFuZCBJIGFtCj4gc3RpbGwgZ2V0dGluZyB0aGUgYnVpbGQgZXJyb3IgZGVzY3JpYmVkIGFib3Zl
Ogo+IAo+IGFyY2gvdW0vZHJpdmVycy9wY2FwX3VzZXIuYzozNToxMjogZXJyb3I6IGNvbmZsaWN0
aW5nIHR5cGVzIGZvciDigJhwY2FwX29wZW7igJkKPiAgIHN0YXRpYyBpbnQgcGNhcF9vcGVuKHZv
aWQgKmRhdGEpCj4gICAgICAgICAgICAgIF5+fn5+fn5+fgo+IEluIGZpbGUgaW5jbHVkZWQgZnJv
bSAvdXNyL2luY2x1ZGUvcGNhcC5oOjQzLAo+ICAgICAgICAgICAgICAgICAgIGZyb20gYXJjaC91
bS9kcml2ZXJzL3BjYXBfdXNlci5jOjc6Cj4gL3Vzci9pbmNsdWRlL3BjYXAvcGNhcC5oOjg1OTox
ODogbm90ZTogcHJldmlvdXMgZGVjbGFyYXRpb24gb2Yg4oCYcGNhcF9vcGVu4oCZIHdhcyBoZXJl
Cj4gICBQQ0FQX0FQSSBwY2FwX3QgKnBjYXBfb3Blbihjb25zdCBjaGFyICpzb3VyY2UsIGludCBz
bmFwbGVuLCBpbnQgZmxhZ3MsCj4gCj4gTG9va2luZyBhdCB0aGUgcGF0Y2gsIEkgd291bGRuJ3Qg
ZXhwZWN0IGl0IHRvIHNvbHZlIHRoaXMgcHJvYmxlbS4KPiAKPiBBcmUgdGhlcmUgbWF5YmUgZGlm
ZmVyZW50IGNvbmZsaWN0aW5nIGxpYnBjYXAtZGV2IGxpYnJhcmllcyBhbmQgSSBoYXZlCj4gdGhl
IHdyb25nIG9uZT8gT3IgaXMgdGhpcyBqdXN0IHN0aWxsIGJyb2tlbj8KPiAKPj4+IDIuIFdlIHNo
b3VsZCBiZSByZW1vdmluZyBhbGwgb2xkIGRyaXZlcnMgYW5kIHJlcGxhY2luZyB0aGVtIHdpdGgg
dGhlCj4+PiB2ZWN0b3Igb25lcy4KPj4KPj4gSG1tLi4uZG9lcyB0aGlzIG1lYW4geW91IHdvdWxk
IGVudGVydGFpbiBhIHBhdGNoIHJlbW92aW5nIGFsbCB0aGUKPj4gbm9uLXZlY3RvciBVTUwgbmV0
d29yayBkcml2ZXJzPyBJIHdvdWxkIGJlIGhhcHB5IHRvIHNlZSBWREUgZ28gYXMKPj4gd2VsbC4K
Pj4KPj4gSW4gYW55IGV2ZW50LCBpdCBzb3VuZHMgbGlrZSBJIHNob3VsZCBwcm9iYWJseSBkcm9w
IHRoaXMgcGF0Y2ggYXMgaXQKPj4gaXMgY3VycmVudGx5Lgo+Pgo+PiBUaGFua3MhCj4gCj4gWzFd
IGh0dHBzOi8vYnVncy5kZWJpYW4ub3JnL2NnaS1iaW4vYnVncmVwb3J0LmNnaT9idWc9OTM4OTYy
Izc5Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBsaW51eC11bSBtYWlsaW5nIGxpc3QKPiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo+IAoK
T0ssIGxvb2tzIGxpa2UgdGhlIHBjYXAuaCBkaWZmZXJzIG5vdyBhcyB3ZWxsLgoKSSB3aWxsIGZp
eCB0aGF0IHRvby4gSXQgbG9va3MgbGlrZSB5b3UgbmVlZCBib3RoIGEgcGNhcCBmaXggYW5kIGEg
CmxpYnJhcnkgbGlua2luZyBmaXggZm9yIHRoaXMgdG8gd29yay4KClRoZSBwYXRjaCBmaXhlcyB0
aGUgaXNzdWUgd2l0aCB0aGUgYnVpbGQgc3lzdGVtIHdoaWNoIG5vIGxvbmdlciBwcm92aWRlcyAK
dGhlIG1lYW5zIGZvciBVTUwgdG8gc3BlY2lmeSBleHRyYSBsaWJyYXJpZXMgKEkgcHJvYmFibHkg
aGFkIGFuIG9sZGVyIApwY2FwIHZlcnNpb24gb24gdGhlIG1hY2hpbmUgd2hlcmUgSSB0ZXN0ZWQg
dGhpcykuCgpJTUhPIGZyYW5rbHkgaXQgaXMgbm8gbG9uZ2VyIG5lY2Vzc2FyeS4KCjUuNS1yYzEg
dmVjdG9yIHJhdyBub3cgaGFzIHRoZSBmYWNpbGl0eSB0byBhZGQvcmVtb3ZlIChpbmNsdWRpbmcg
YXQgCnJ1bnRpbWUpIGZpbHRlcnMgY29tcGlsZWQgd2l0aCBwY2FwIG91dHNpZGUgVU1MLiBJdCB3
YXMgbWVyZ2VkIHRoaXMgd2Vlay4KCldlIG5vdyBoYXZlIHRoZSBmb2xsb3dpbmcgbGluZS11cCBm
b3IgdmVjdG9yIGRyaXZlcnMgLSBFb0dSRSwgRW9MMlRQdjMsIApSQVcgKCsvLSBCUEYpLCBUQVAg
YW5kIEJFU1MuIFNwZWVkcyBhcmUgMi41IHRvIDlHYml0IG9uIG15IG1hY2hpbmUgCihtaWQtcmFu
Z2UgUnl6ZW4gZGVza3RvcCkuCgpJZiBJIGZpZ3VyZSBvdXQgYSB3YXkgdG8gZ2V0IGhvbGQgb2Yg
dGhlIHVuZGVybHlpbmcgdGFwIHJhdyBzb2NrZXRzIHRoZSAKc2FtZSB3YXkgdmhvc3QgZG9lcywg
VEFQIGNhbiBwcm9iYWJseSBnbyB0byAxMkdiaXQgb3IgdGhlcmVhYm91dHMuIFNhbWUgCmFwcGxp
ZXMgdG8gZ2V0dGluZyB6ZXJvY29weSB3b3JraW5nIHdpdGggcmF3LgoKQXMgYSBiYXNpcyBmb3Ig
Y29tcGFyaXNvbiBJIGdldCAxOEdiaXQgb24gdGhlIHNhbWUgbWFjaGluZSB1c2luZyB2RXRoIAph
bmQgY29udGFpbmVycy4gNTAlIG9mIHRoYXQgaXMgYWN0dWFsbHkgYSB2ZXJ5IGRlY2VudCBudW1i
ZXIuCgpXaGlsZSB2ZWN0b3IgZHJpdmVycyBhcmUgbm90IDE6MSByZXBsYWNlbWVudHMgZm9yIHRo
ZSBleGlzdGluZyBkcml2ZXJzLCAKeW91IGNhbiBhY2hpZXZlIHRoZSBzYW1lIHRvcG9sb2dpZXMg
YW5kIHRoZSBzYW1lIGNvbm5lY3Rpdml0eSBhdCBtdWNoIApoaWdoZXIgcGVyZm9ybWFuY2UgLSB0
aGUgb2xkIGRyaXZlcnMgdGVzdCBvdXQgaW4gdGhlIDUwME1iaXQgcmFuZ2Ugb24gCnRoZSBzYW1l
IGhhcmR3YXJlLgoKSU1ITyB3ZSBzaG91bGQgYXQgbGVhc3QgbWFyayB0aGVtIGFzICJvYnNvbGV0
ZSIgYW5kIHN0YXJ0IHByZXBhcmluZyB0byAKcmVtb3ZlIHRoZW0uCgotLSAKQW50b24gUi4gSXZh
bm92CkNhbWJyaWRnZWdyZXlzIExpbWl0ZWQuIFJlZ2lzdGVyZWQgaW4gRW5nbGFuZC4gQ29tcGFu
eSBOdW1iZXIgMTAyNzM2NjEKaHR0cHM6Ly93d3cuY2FtYnJpZGdlZ3JleXMuY29tLwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGlu
ZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
