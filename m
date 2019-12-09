Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A90116A81
	for <lists+linux-um@lfdr.de>; Mon,  9 Dec 2019 11:05:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a01dOUeMmMvsziwtz8JygcV22NYBDGg63L3DdM7K5QU=; b=ClxCiatNOpnIMyEAIYCEf6fDZ
	nwo21PqlFUcqD8+t8nuqFcRGGQY8Icn5iM8DHISyzP1bNcwpb7V4z+q2nChXuLvKNYReXCtKoQ8cg
	V4UR8Y4o48qqR03jkHL1ona85k10E/SIADhqEH0Rg/YOJVa9CAleBk9GsUtAvriaGjYSUF7EqsJr/
	odTqKbfhGJ1t+x+zh0dYhpAVgcaN4Lkmo3Pt6wlCRc7MEkldx/Ot+eYiAcMQj8/0ui7L9swUt3Ssh
	fXSnfZ7Blm5PT2he/06egcbjXIlQj8L78EEMx3RLZ4xNzlXMZ7Ec+bvlnY1/noBkkjRmk/LfOjg0K
	ZOYMVOXgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFvC-0001So-N2; Mon, 09 Dec 2019 10:05:42 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFv9-0001RN-Qr
 for linux-um@lists.infradead.org; Mon, 09 Dec 2019 10:05:41 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieFv7-0006RE-9h; Mon, 09 Dec 2019 10:05:37 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieFv4-0003Zy-Uj; Mon, 09 Dec 2019 10:05:37 +0000
Subject: Re: Invalid GSO - from 4.x (TBA) to 5.5-rc1. Was: Re: 64 bit time
 regression in recvmmsg()
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: Arnd Bergmann <arnd@arndb.de>
References: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
 <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
 <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
 <a5b9709d-b93b-46e1-ab18-a94ab921ccf7@cambridgegreys.com>
 <9dc1be66-5c55-8b3d-875b-4e1206914e78@cambridgegreys.com>
 <CAK8P3a1KcRcpUB2PdA17tnHN_dDs2Y02zPtkgM22Z-JdugAkfQ@mail.gmail.com>
 <e96aebcc-907a-d86f-ea8f-f5b10f74f39b@cambridgegreys.com>
Message-ID: <5a4dc591-5fd9-063a-13e2-2dbcfe83b22b@cambridgegreys.com>
Date: Mon, 9 Dec 2019 10:05:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <e96aebcc-907a-d86f-ea8f-f5b10f74f39b@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_020539_907441_100F0886 
X-CRM114-Status: GOOD (  17.41  )
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
Cc: netdev <netdev@vger.kernel.org>, linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAwOS8xMi8yMDE5IDA5OjE5LCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4gCj4gCj4gT24gMDYv
MTIvMjAxOSAyMDowNiwgQXJuZCBCZXJnbWFubiB3cm90ZToKPj4gT24gRnJpLCBEZWMgNiwgMjAx
OSBhdCA2OjUwIFBNIEFudG9uIEl2YW5vdgo+PiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlz
LmNvbT4gd3JvdGU6Cj4+PiBPbiAyOS8xMS8yMDE5IDE2OjM0LCBBbnRvbiBJdmFub3Ygd3JvdGU6
Cj4+Pgo+Pj4gSSBhcG9sb2dpemUsIHByb2JsZW0gZWxzZXdoZXJlLiBJIGhhdmUgbmFycm93ZWQg
aXQgZG93biwgaXQgaXMgYSBob3N0Cj4+PiByZWdyZXNzaW9uIGF0IHRoZSBlbmQsIG5vdCBhIHJl
Y3ZtbXNnL3RpbWUgb25lLgo+Pj4KPj4+IFRoZSBFSU5WQUwgaXMgb2NjYXNpb25hbGx5IHJldHVy
bmVkIGZyb20gdGhlIGd1dHMgb2YgcGFja2V0X3Jjdl92bmV0Cj4+Pgo+Pj4gaHR0cHM6Ly9lbGl4
aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L2lkZW50L3BhY2tldF9yY3Zfdm5ldAo+Pj4KPj4+
IGluIGFmX3BhY2tldC4gSSBhbSBnb2luZyB0byB0cnkgdG8gZmlndXJlIG91dCBleGFjdGx5IHdo
ZW4gaXQgaGFwcGVucwo+Pj4gYW5kIHdoeS4KPj4+Cj4+PiBNeSBzaW5jZXJlIGFwb2xvZ2llcywK
Pj4KPj4gTm8sIHdvcnJpZXMsIEknbSBnbGFkIGl0IHdhc24ndCBtZSB0aGlzIHRpbWUgOy0pCj4g
Cj4gQXQgc29tZSBwb2ludCBpbiBsYXRlIDQueCAoSSBhbSBnb2luZyB0byB0cnkgbmFycm93aW5n
IGRvd24gdGhlIAo+IHZlcnNpb24pLCBnc28gY29kZSBpbnRyb2R1Y2VkIGEgY29uZGl0aW9uIHdo
aWNoIHNob3VsZCBub3Qgb2NjdXI6Cj4gCj4gV2UgaGF2ZQo+IAo+IHNpbmZvKHNrYiktPmdzb190
eXBlID0gMAo+IAo+IHdoaWxlCj4gCj4gc2luZm8oc2tiKS0+Z3NvX3NpemUgPSA3NTIuCj4gc2ti
LT5sZW4gPSA4MTgKPiBza2ItPmRhdGFfbGVuID0gMAo+IAo+IEFzIGEgcmVzdWx0IHdlIGdldCBh
IHNrYiB3aGljaCBpcyBHU08sIGJ1dCBpdCBoYXMgYSBubyBHU08gdHlwZS4KPiAKPiBUaGlzIHNo
b3dzIHVwIGluIHZpcnRpb19uZXRfaGRyX2Zyb21fc2tiKCkgd2hpY2ggZGV0ZWN0cyB0aGUgY29u
ZGl0aW9uIAo+IGFzIGludmFsaWQgYW5kIHJldHVybnMgYW4gLUVJTlZBTAo+IAo+IEEgZmV3IGlu
dGVyZXN0aW5nIHRoaW5ncy4KPiAKPiAxLiBTaXplIGlzIGFsd2F5cyA3NTIuCj4gCj4gMi4gSSBo
YXZlIGZvdW5kIGl0IHdoaWxlIHRyYWNpbmcgYW4gLUVJTlZBTCB3aGVuIHVzaW5nIHJlY3ZtbXNn
KCkgb24gcmF3IAo+IHNvY2tldHMuIE5vIGlkZWEgaWYgaXQgc2hvd3MgdXAgZWxzZXdoZXJlLgo+
IAo+IDMuIFRoZSBlbnZpcm9ubWVudCB1bmRlciB0ZXN0IGlzIHJlYWRpbmcvd3JpdGluZyB0byBh
IHJhdyBzb2NrZXQgb3BlbmVkIAo+IG9uIGEgdkV0aCBwYWlyIGNvbmZpZ3VyZWQgYXMgZm9sbG93
czoKPiAKPiAKPiBpcCBsaW5rIGFkZCBsLXZldGgwIHR5cGUgdmV0aCBwZWVyIG5hbWUgcC12ZXRo
MCAmJiBpZmNvbmZpZyBwLXZldGgwIHVwCj4gaWZjb25maWcgbC12ZXRoMCAxOTIuMTY4Ljk3LjEg
bmV0bWFzayAyNTUuMjU1LjI1NS4yNTIKPiAKPiB0aGUgVU1MIGxpbnV4IGluc3RhbmNlIHVzZWQg
YXMgYSByZWFkZXIvd3JpdGVyIHJlbGllcyBvbiAKPiByZWN2bW1zZy9zZW5kbW1lc2cgcmF3IHNv
Y2tldCB3aXRoIHZuZXQgaGVhZGVycyBlbmFibGVkLgo+IAo+IHZpcnRpb19uZXRfaGRyX2Zyb21f
c2tiKCkgaXMgY2FsbGVkIGZyb20gdGhlIGFmX3BhY2tldCBwYWNrZXRfcmVjdl92bmV0IAo+IGZ1
bmN0aW9uLgo+IAo+IFRoaXMgY29uZGl0aW9uIHNpbXBseSBzaG91bGQgbm90IG9jY3VyLiBBIHNr
YiB3aXRoIG5vIGRhdGEgaW4gdGhlIGZyYWdzLCAKPiBnc28gb24sIGdzbyBzaXplIGxlc3MgdGhh
biBNVFUgYW5kIG5vIHR5cGUgbG9va3MgYm9ndXMuCgpXaGlsZSB0aGUgZ3NvIG1hcmtpbmcgb24g
dGhlIGZyYW1lIGlzIGJvZ3VzLCB0aGUgZnJhbWUgaXRzZWxmIGFjdHVhbGx5IApsb29rcyBnb29k
IChhcyBzZWVuIGZyb20gdGhlIFVNTCB1c2VkIGFzIGEgcmVhZGVyKS4KCkkgZ2V0IH4gMTAlIHRo
cm91Z2hwdXQgaW5jcmVhc2UgYmVjYXVzZSByZWN2bW1zZyBkb2VzIG5vdCBnZXQgYnJva2VuIGFs
bCAKdGhlIHRpbWUgaW50byBzbWFsbGVyIHZlY3RvciBzaXplcyBhbmQgbm8gZnJhbWVzIHJlcG9y
dGVkIGFzIGRyb3BwZWQgZHVlIAp0byBjaGVja3N1bSBvciBvdGhlciBpc3N1ZXMuCgpJIHdpbGwg
c2VuZCBhIHBhdGNoIHdpdGggYSBwcm9wb3NlZCBmaXggc2hvcnRseS4KCldlIHNob3VsZCBzdGls
bCBmaW5kIHdobyBpcyBwcm9kdWNpbmcgdGhlc2UgZnJhbWVzIHRob3VnaC4KCj4gCj4gCj4+Cj4+
IMKgwqDCoMKgwqAgQXJuZAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBsaW51eC11bSBtYWlsaW5nIGxpc3QKPj4gbGludXgtdW1AbGlzdHMu
aW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXVtCj4+Cj4gCgotLSAKQW50b24gUi4gSXZhbm92CkNhbWJyaWRnZWdyZXlzIExp
bWl0ZWQuIFJlZ2lzdGVyZWQgaW4gRW5nbGFuZC4gQ29tcGFueSBOdW1iZXIgMTAyNzM2NjEKaHR0
cHM6Ly93d3cuY2FtYnJpZGdlZ3JleXMuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC11bQo=
