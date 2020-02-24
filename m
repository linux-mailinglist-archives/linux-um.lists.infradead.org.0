Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD9716B15D
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 21:59:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ET58NE0++1VinuLJZTX58NgW4qBF7xoutaJ7l2UtziE=; b=AaRaDlNDnTszdl9aV+0wL5DOW
	x0sPQhOZeZCAJeJwzvnPjVHnOCxQbDfMfJYIC+S5yi9QkKpA6xmqDEzbzGwyagNna+hXTmFFOv9UJ
	1JskSdmZZ2NBBwmReOzvO8hHipcgNE3QWRoOqeRMjtpvmPReeEzGniS8XCZRHIXCcLa/Injuw435d
	CD+XTOeYkIQ8youK+uEsJ1FlrAKllKxChz2qMFP6/eZzy3ZGM24ZKoAAKUN+3y9dM+utN6xpwb+D0
	UDCe6jvoiezxXxsAuM/Si/LYU4j2vYHotNNVpXZBN40jm5/E7VkUDM5FyYU2WbSdoWQgzd4Uc0Ahl
	+b8YcBRmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Kp8-0005Vs-OG; Mon, 24 Feb 2020 20:59:30 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Kp5-0005VM-K2
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 20:59:29 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6Kow-0007LH-2s; Mon, 24 Feb 2020 20:59:18 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j6Kot-0003JJ-TM; Mon, 24 Feb 2020 20:59:17 +0000
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
 <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
 <4e7757cf-148e-4585-b358-3b38f391275d@cambridgegreys.com>
 <CA+FuTSdOCJZCVS4xohx+BQmkmq8JALnK=gGc0=qy1TbjY707ag@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <93cb2b3f-6cae-8cf1-5fab-93fa34c14628@cambridgegreys.com>
Date: Mon, 24 Feb 2020 20:59:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CA+FuTSdOCJZCVS4xohx+BQmkmq8JALnK=gGc0=qy1TbjY707ag@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -0.7
X-Spam-Score: -0.7
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_125927_655652_C3FB87CD 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: cambridgegreys.com]
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
Cc: Eric Dumazet <eric.dumazet@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Network Development <netdev@vger.kernel.org>, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMjQvMDIvMjAyMCAyMDoyMCwgV2lsbGVtIGRlIEJydWlqbiB3cm90ZToKPiBPbiBNb24sIEZl
YiAyNCwgMjAyMCBhdCAyOjU1IFBNIEFudG9uIEl2YW5vdgo+IDxhbnRvbi5pdmFub3ZAY2FtYnJp
ZGdlZ3JleXMuY29tPiB3cm90ZToKPj4gT24gMjQvMDIvMjAyMCAxOToyNywgV2lsbGVtIGRlIEJy
dWlqbiB3cm90ZToKPj4+IE9uIE1vbiwgRmViIDI0LCAyMDIwIGF0IDg6MjYgQU0gPGFudG9uLml2
YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+IHdyb3RlOgo+Pj4+IEZyb206IEFudG9uIEl2YW5vdiA8
YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4KPj4+Pgo+Pj4+IFNvbWUgb2YgdGhlIGxv
Y2FsbHkgZ2VuZXJhdGVkIGZyYW1lcyBtYXJrZWQgYXMgR1NPIHdoaWNoCj4+Pj4gYXJyaXZlIGF0
IHZpcnRpb19uZXRfaGRyX2Zyb21fc2tiKCkgaGF2ZSBubyBHU09fVFlQRSwgbm8KPj4+PiBmcmFn
bWVudHMgKGRhdGFfbGVuID0gMCkgYW5kIGxlbmd0aCBzaWduaWZpY2FudGx5IHNob3J0ZXIKPj4+
PiB0aGFuIHRoZSBNVFUgKDc1MiBpbiBteSBleHBlcmltZW50cykuCj4+PiBEbyB3ZSB1bmRlcnN0
YW5kIGhvdyB0aGVzZSBwYWNrZXRzIGFyZSBnZW5lcmF0ZWQ/Cj4+IE5vLCB3ZSBoYXZlIG5vdCBi
ZWVuIGFibGUgdG8gdHJhY2UgdGhlbS4KPj4KPj4gVGhlIG9ubHkgdGhpbmcgd2Uga25vdyBpcyB0
aGF0IHRoaXMgaXMgc3BlY2lmaWMgdG8gbG9jYWxseSBnZW5lcmF0ZWQKPj4gcGFja2V0cy4gU29t
ZXRoaW5nIGFycml2aW5nIGZyb20gdGhlIG5ldHdvcmsgZG9lcyBub3Qgc2hvdyB0aGlzLgo+Pgo+
Pj4gRWxzZSBpdCBzZWVtcyB0aGlzCj4+PiBtaWdodCBiZSBwYXBlcmluZyBvdmVyIGEgZGVlcGVy
IHByb2JsZW0uCj4+Pgo+Pj4gVGhlIHN0YWNrIHNob3VsZCBub3QgY3JlYXRlIEdTTyBwYWNrZXRz
IGxlc3MgdGhhbiBvciBlcXVhbCB0bwo+Pj4gc2tiX3NoaW5mbyhza2IpLT5nc29fc2l6ZS4gU2Vl
IGZvciBpbnN0YW5jZSB0aGUgY2hlY2sgaW4KPj4+IHRjcF9nc29fc2VnbWVudCBhZnRlciBwdWxs
aW5nIHRoZSB0Y3AgaGVhZGVyOgo+Pj4KPj4+ICAgICAgICAgICBtc3MgPSBza2Jfc2hpbmZvKHNr
YiktPmdzb19zaXplOwo+Pj4gICAgICAgICAgIGlmICh1bmxpa2VseShza2ItPmxlbiA8PSBtc3Mp
KQo+Pj4gICAgICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4+Pgo+Pj4gV2hhdCBpcyB0aGUgZ3Nv
X3R5cGUsIGFuZCBkb2VzIGl0IGluY2x1ZGUgU0tCX0dTT19ET0RHWT8KPj4+Cj4+Cj4+IDAgLSBu
b3Qgc2V0Lgo+IFRoYW5rcyBmb3IgdGhlIGZvbGxvdy11cCBkZXRhaWxzLiBJcyB0aGlzIHNvbWV0
aGluZyB0aGF0IHlvdSBjYW4gdHJpZ2dlciBlYXNpbHk/CgpZZXMsIGlmIHlvdSBoYXZlIGEgVU1M
IGluc3RhbmNlIGhhbmR5LgoKUnVubmluZyBpcGVyZiBiZXR3ZWVuIHRoZSBob3N0IGFuZCBhIFVN
TCBndWVzdCB1c2luZyByYXcgc29ja2V0IAp0cmFuc3BvcnQgdHJpZ2dlcnMgaXQgaW1tZWRpYXRl
bHkuCgpUaGlzIGlzIG15IFVNTCBjb21tYW5kIGxpbmU6Cgp2bWxpbnV4IG1lbT0yMDQ4TSB1bWlk
PU9QWCBcCiDCoMKgwqAgdWJkMD1PUFgtMy4wLVdvcmsuaW1nIFwKdmVjMDp0cmFuc3BvcnQ9cmF3
LGlmbmFtZT1wLXZldGgwLGRlcHRoPTEyOCxncm89MSxtYWM9OTI6OWI6MzY6NWU6Mzg6NjkgXAog
wqDCoMKgIHJvb3Q9L2Rldi91YmRhIHJvIGNvbj1udWxsIGNvbjA9bnVsbCxmZDoyIGNvbjE9ZmQ6
MCxmZDoxCgpwLXJpZ2h0IGlzIGEgcGFydCBvZiBhIHZFdGggcGFpcjoKCmlwIGxpbmsgYWRkIGwt
dmV0aDAgdHlwZSB2ZXRoIHBlZXIgbmFtZSBwLXZldGgwICYmIGlmY29uZmlnIHAtdmV0aDAgdXAK
CmlwZXJmIHNlcnZlciBpcyBvbiBob3N0LCBpcGVyZiAtYyBpbiB0aGUgZ3Vlc3QuCgo+Cj4gQW4g
c2tiX2R1bXAoKSArIGR1bXBfc3RhY2soKSB3aGVuIHRoZSBwYWNrZXQgc29ja2V0IGdldHMgc3Vj
aCBhCj4gcGFja2V0IG1heSBwb2ludCB1cyB0byB0aGUgcm9vdCBjYXVzZSBhbmQgZml4IHRoYXQu
CgpXZSB0cmllZCBkdW1wIHN0YWNrLCBpdCB3YXMgbm90IGluZm9ybWF0aXZlIC0gaXQgd2FzIGp1
c3QgdGhlIHJlY3ZtbXNnIApjYWxsIHN0YWNrIGNvbWluZyBmcm9tIHRoZSBVTUwgdW50aWwgaXQg
aGl0cyB0aGUgcmVsZXZhbnQgcmVjdiBiaXQgaW4gCmFmX3BhY2tldCAtIGl0IGRvZXMgbm90IHRl
bGwgdXMgd2hlcmUgdGhlIHBhY2tldCBpcyBjb21pbmcgZnJvbS4KClF1b3RpbmcgZnJvbSB0aGUg
bWVzc2FnZSBlYXJsaWVyIGluIHRoZSB0aHJlYWQ6CgpbIDIzMzQuMTgwODU0XSBDYWxsIFRyYWNl
OgpbIDIzMzQuMTgxOTQ3XcKgIGR1bXBfc3RhY2srMHg1Yy8weDgwClsgMjMzNC4xODMwMjFdwqAg
cGFja2V0X3JlY3Ztc2cuY29sZCsweDIzLzB4NDkKWyAyMzM0LjE4NDA2M13CoCBfX19zeXNfcmVj
dm1zZysweGUxLzB4MWYwClsgMjMzNC4xODUwMzRdwqAgPyBwYWNrZXRfcG9sbCsweGNhLzB4MTMw
ClsgMjMzNC4xODYwMTRdwqAgPyBzb2NrX3BvbGwrMHg3Ny8weGIwClsgMjMzNC4xODY5NzddwqAg
PyBlcF9pdGVtX3BvbGwuaXNyYS4wKzB4M2YvMHhiMApbIDIzMzQuMTg3OTM2XcKgID8gZXBfc2Vu
ZF9ldmVudHNfcHJvYysweGYxLzB4MjQwClsgMjMzNC4xODg5MDFdwqAgPyBkZXF1ZXVlX3NpZ25h
bCsweGRiLzB4MTgwClsgMjMzNC4xODk4NDhdwqAgZG9fcmVjdm1tc2crMHhjOC8weDJkMApbIDIz
MzQuMTkwNzI4XcKgID8gZXBfcG9sbCsweDhjLzB4NDcwClsgMjMzNC4xOTE1ODFdwqAgX19zeXNf
cmVjdm1tc2crMHgxMDgvMHgxNTAKWyAyMzM0LjE5MjQ0MV3CoCBfX3g2NF9zeXNfcmVjdm1tc2cr
MHgyNS8weDMwClsgMjMzNC4xOTMzNDZdwqAgZG9fc3lzY2FsbF82NCsweDUzLzB4MTQwClsgMjMz
NC4xOTQyNjJdwqAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NDQvMHhhOQoKPgoK
LS0gCkFudG9uIFIuIEl2YW5vdgpDYW1icmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGlu
IEVuZ2xhbmQuIENvbXBhbnkgTnVtYmVyIDEwMjczNjYxCmh0dHBzOi8vd3d3LmNhbWJyaWRnZWdy
ZXlzLmNvbS8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
