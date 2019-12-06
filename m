Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E64B1156C0
	for <lists+linux-um@lfdr.de>; Fri,  6 Dec 2019 18:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZpjAC+O2BzTot8I5+ZlQGqJ/3PW/hMb6MMKqrif/JtI=; b=S76THCX9ZGrBO5/tNvOhwoqx8
	t3eudCDTqE5Sy73HBFTmo5lJ/tmbrGHBnDTrfQB0qhi4qahOvEb12dEHjc8bo8muIn9WfE0NA9ZWY
	8F7XauIZ96sbAaV6TCoSFGTbvz1R7W905nCcVANnW92HejLeXKA+eCSf353dycPVwOvsKcfSxHQKQ
	HChnmMsQQkZIcjBQefTd4jBSsVmwjtCApGKlfqVjJkdzwMvYRX9A7suP3XR6cbp111WzYEs1TOFGn
	FS5ay0sRjqE0QN0xjxbej89ndC3Mu6xxXRuEbVyZkDc6iA4y5q6IxClT62Adzui2A/o0aS6/wQcSt
	dGSwpEMbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHjy-00088K-9q; Fri, 06 Dec 2019 17:50:06 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHju-0007X3-7y
 for linux-um@lists.infradead.org; Fri, 06 Dec 2019 17:50:04 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1idHjq-0000Px-PW; Fri, 06 Dec 2019 17:49:59 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1idHjo-00040M-Ik; Fri, 06 Dec 2019 17:49:58 +0000
Subject: Re: 64 bit time regression in recvmmsg()
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert@linux-m68k.org>
References: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
 <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
 <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
 <a5b9709d-b93b-46e1-ab18-a94ab921ccf7@cambridgegreys.com>
Message-ID: <9dc1be66-5c55-8b3d-875b-4e1206914e78@cambridgegreys.com>
Date: Fri, 6 Dec 2019 17:49:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <a5b9709d-b93b-46e1-ab18-a94ab921ccf7@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_095002_308490_CAB24A17 
X-CRM114-Status: GOOD (  18.41  )
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
Cc: linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAyOS8xMS8yMDE5IDE2OjM0LCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4gCj4gCj4gT24gMjkv
MTEvMjAxOSAxNToxNywgQXJuZCBCZXJnbWFubiB3cm90ZToKPj4gT24gRnJpLCBOb3YgMjksIDIw
MTkgYXQgNDowNSBQTSBHZWVydCBVeXR0ZXJob2V2ZW4gCj4+IDxnZWVydEBsaW51eC1tNjhrLm9y
Zz4gd3JvdGU6Cj4+PiBPbiBGcmksIE5vdiAyOSwgMjAxOSBhdCAzOjM0IFBNIEFudG9uIEl2YW5v
dgo+Pj4gPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+IHdyb3RlOgo+Pj4+IFVuZm9y
dHVuYXRlbHksIGl0IGxvb2tzIGxpa2UgdGhlIHJlY2VudCB5ZWFyIDIwMzggaGF2ZSBicm9rZW4K
Pj4+PiBjb21wYXRpYmlsaXR5IGZvciBvbmUgcGFydGljdWxhciBzeXNjYWxsIGludGVyZmFjZSB3
ZSB1c2UgLSByZWN2bW1zZy4KPj4+Pgo+Pj4+IFRoZSBob3N0IG5vdyBvY2Nhc2lvbmFsbHkgcmV0
dXJucyAtMjIgKEVJTlZBTCkgYW5kIHRoZSBvbmx5IHdheSBJIHNlZQo+Pj4+IGZvciB0aGlzIHRv
IGhhcHBlbiBsb29raW5nIGF0IHRoZSBzb3VyY2UgaXMgaWYgd2hlbiBpdCBnZXRzIHNvbWV0aGlu
Zwo+Pj4+IGJvZ3VzIGFzIGEgdGltZW91dC4KPj4+Pgo+Pj4+IEkgdGhpbmsgSSBoYXZlIGVsaW1p
bmF0ZWQgYWxsIG90aGVyIHBvc3NpYmxlIHNvdXJjZXMgZm9yIHRoaXMgZXJyb3IuCj4+Pj4KPj4+
PiBUaGUgcGljdHVyZSBjYW4gYmUgb2JzZXJ2ZWQgd2hlbiB1c2luZyBhIDY0IGJpdCBob3N0IDUu
MiBrZXJuZWwgb24gYQo+Pj4+IERlYmlhbiA2NCBiaXQgYnVzdGVyIHVzZXJzcGFjZSAoZ2xpYmMg
Y29tcGlsZWQgdnMgNC4xOSBoZWFkZXJzKS4KPj4+Pgo+Pj4+IFRoZSBjb2RlIGFzIGl0IGlzIHdy
aXR0ZW4gYXQgcHJlc2VudCByZXRyaWVzIGFuZCBieSBzaGVlciBsdWNrIGFuZAo+Pj4+IHBlcnNl
dmVyYW5jZSBpdCBtYW5hZ2VzIHRvIHdvcmssIGJ1dCB0aGlzIG5lZWRzIHRvIGJlIGZpeGVkLgo+
Pgo+PiBJIG9ubHkgc2VlIGEgc2luZ2xlIGNhbGwgdG8gcmVjdm1tc2coKSBpbiBhcmNoL3VtLCBp
biAKPj4gdW1sX3ZlY3Rvcl9yZWN2bW1zZygpLAo+PiBhbmQgdGhpcyBwYXNzZXMgYSBOVUxMIHRp
bWVvdXQgcG9pbnRlciwgaXMgdGhpcyB0aGUgb25lIHRoYXQgYnJva2Ugb3IKPj4gc2hvdWxkIEkg
YmUgbG9va2luZyBhdCBzb21ldGhpbmcgZWxzZT8KPj4KPj4gRG8gSSB1bmRlcnN0YW5kIHlvdSBy
aWdodCB0aGF0IHRoZSByZWdyZXNzaW9uIGlzIG9uIGEgcHVyZSA2NC1iaXQgc3lzdGVtPwo+IAo+
IFllcy4KPiAKPiA2NCBiaXQgaG9zdCwgRGViaWFuIEJ1c3RlciB3aXRoIHRoZSBzdG9jayA0LjE5
IHJlcGxhY2VkIGJ5IGEgNS4yLjE3IAo+IGtlcm5lbCB1cGdyYWRlLCA1LjIgYW5kIDUuMyA2NCBi
aXQgVU1MIGFsc28gcnVubmluZyBEZWJpYW4gQnVzdGVyIGluc2lkZS4KPiAKPiBJdCBzcG9yYWRp
Y2FsbHkgcHJvZHVjZXMgLUVJTlZBTCAoLTIyKSBmcm9tIHRoZSByZWN2bW1zZy4KPiAKPiBJIHdl
bnQgdGhyb3VnaCB0aGUgYWxsb2NhdGlvbiBhbmQgZGVhbGxvY2F0aW9uIG9mIHRoZSBhY3R1YWwg
bW1zZyAKPiBzZXZlcmFsIHRpbWVzIHRvIGVuc3VyZSBpdCBpcyBub3QgdGhhdC4KPiAKPiBJTUhP
IGl0IGlzIHRoZSB0aW1lc3BlYyBjb252ZXJzaW9uIHNvbWV3aGVyZSwgYnV0IEkgY2Fubm90IHBp
bnBvaW50IHRoZSAKPiBhY3R1YWwgY2F1c2UuCj4gCj4gVGhlIGtlcm5lbCBjb21tYW5kIGxpbmUg
aXM6Cj4gCj4gCj4gL3Zhci9hdXRvZnMvbG9jYWwvc3JjL2xpbnV4LXdvcmsvbGludXgvdm1saW51
eCBtZW09MjA0OE0gdW1pZD1PUFggXAo+IHViZDA9L3Zhci9hdXRvZnMvbG9jYWwvVU1ML09QWC0z
LjAtV29yay5pbWfCoCBcCj4gdmVjMDp0cmFuc3BvcnQ9cmF3LGlmbmFtZT1wdmV0aDAsZGVwdGg9
MTI4LGdybz0xLG1hYz05Mjo5YjozNjo1ZTozODo2OSBcCj4gcm9vdD0vZGV2L3ViZGEgcm8gY29u
PW51bGwgY29uMD1udWxsLGZkOjIgY29uMT1mZDowLGZkOjEKPiAKPiBwdmV0aDAgaXMgb25lIGhh
bGYgb2YgYSB2ZXRoIHBhaXIgY3JlYXRlZCBieSBkb2luZwo+IAo+IAo+IGlwIGxpbmsgYWRkIGx2
ZXRoMCB0eXBlIHZldGggcGVlciBuYW1lIHB2ZXRoMCAmJiBpZmNvbmZpZyBwdmV0aDAgdXAKPiAK
PiBsdmV0aDAgaXMgdXNlZCBmb3IgdGhlIGhvc3Qgc2lkZS4KPiAKPiBCcmdkcywKPiAKPj4KPj4g
wqDCoMKgwqDCoCBBcm5kCj4+Cj4gCgoKQXJuZCwKCkkgYXBvbG9naXplLCBwcm9ibGVtIGVsc2V3
aGVyZS4gSSBoYXZlIG5hcnJvd2VkIGl0IGRvd24sIGl0IGlzIGEgaG9zdCAKcmVncmVzc2lvbiBh
dCB0aGUgZW5kLCBub3QgYSByZWN2bW1zZy90aW1lIG9uZS4KClRoZSBFSU5WQUwgaXMgb2NjYXNp
b25hbGx5IHJldHVybmVkIGZyb20gdGhlIGd1dHMgb2YgcGFja2V0X3Jjdl92bmV0CgpodHRwczov
L2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3QvaWRlbnQvcGFja2V0X3Jjdl92bmV0Cgpp
biBhZl9wYWNrZXQuIEkgYW0gZ29pbmcgdG8gdHJ5IHRvIGZpZ3VyZSBvdXQgZXhhY3RseSB3aGVu
IGl0IGhhcHBlbnMgCmFuZCB3aHkuCgpNeSBzaW5jZXJlIGFwb2xvZ2llcywKCi0tIApBbnRvbiBS
LiBJdmFub3YKQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBD
b21wYW55IE51bWJlciAxMDI3MzY2MQpodHRwczovL3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBt
YWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
