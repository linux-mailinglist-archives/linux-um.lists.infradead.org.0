Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8808115AEDE
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 18:38:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y1IAZzyyfnSMn5NM6QFViKBKhWo81yfbRIWNC6APD3Q=; b=O32HhN+iLDS7j3W4CChDstV8C
	1y9PaV7FdnQndAMPaurmRiWc/9Cp0C58etf49s3Jxy4t6hdoWrDy0V3B1MmFZRQO2M6HrwV62Weli
	41piY3O7FMTr13nyirEeCeH0+ZK8rA+Nj3rthham+in0HNb28eefPjVGT1zevBozB/cXOIR3FPuQw
	m3PFabP0ihJwn/bTYBATbxpnDrkRQQdRrLMjFwlIQBYJg7/ildl9pu9fDQHPUbQ7oSmrOoX6ZRydV
	o4x6gkp/RUsfavxLfkblrkS8YeB7gcZ7amQBKjHPCQC3JT8lLtZzDJSDrPtwS7RsmQtuu2iT4wzCf
	3qqPx5uhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vxs-00066q-Ls; Wed, 12 Feb 2020 17:38:20 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vxo-00065z-Ay
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 17:38:19 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1vxk-00050o-Aa; Wed, 12 Feb 2020 17:38:12 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1vxh-0002ep-QX; Wed, 12 Feb 2020 17:38:11 +0000
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
Date: Wed, 12 Feb 2020 17:38:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211053502-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_093816_391349_885353CD 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: netdev@vger.kernel.org, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAxMS8wMi8yMDIwIDEwOjM3LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24gVHVl
LCBGZWIgMTEsIDIwMjAgYXQgMDc6NDI6MzdBTSArMDAwMCwgQW50b24gSXZhbm92IHdyb3RlOgo+
PiBPbiAxMS8wMi8yMDIwIDAyOjUxLCBKYXNvbiBXYW5nIHdyb3RlOgo+Pj4KPj4+IE9uIDIwMjAv
Mi8xMSDkuIrljYgxMjo1NSwgQW50b24gSXZhbm92IHdyb3RlOgo+Pj4+Cj4+Pj4KPj4+PiBPbiAw
OS8xMi8yMDE5IDEwOjQ4LCBhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tIHdyb3RlOgo+
Pj4+PiBGcm9tOiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+
Cj4+Pj4+Cj4+Pj4+IFNvbWUgb2YgdGhlIGZyYW1lcyBtYXJrZWQgYXMgR1NPIHdoaWNoIGFycml2
ZSBhdAo+Pj4+PiB2aXJ0aW9fbmV0X2hkcl9mcm9tX3NrYigpIGhhdmUgbm8gR1NPX1RZUEUsIG5v
Cj4+Pj4+IGZyYWdtZW50cyAoZGF0YV9sZW4gPSAwKSBhbmQgbGVuZ3RoIHNpZ25pZmljYW50bHkg
c2hvcnRlcgo+Pj4+PiB0aGFuIHRoZSBNVFUgKDc1MiBpbiBteSBleHBlcmltZW50cykuCj4+Pj4+
Cj4+Pj4+IFRoaXMgaXMgb2JzZXJ2ZWQgb24gcmF3IHNvY2tldHMgcmVhZGluZyBvZmYgdkV0aCBp
bnRlcmZhY2VzCj4+Pj4+IGluIGFsbCA0LnggYW5kIDUueCBrZXJuZWxzIEkgdGVzdGVkLgo+Pj4+
Pgo+Pj4+PiBUaGVzZSBmcmFtZXMgYXJlIHJlcG9ydGVkIGFzIGludmFsaWQgd2hpbGUgdGhleSBh
cmUgaW4gZmFjdAo+Pj4+PiBnc28tbGVzcyBmcmFtZXMuCj4+Pj4+Cj4+Pj4+IFRoaXMgcGF0Y2gg
bWFya3MgdGhlIHZuZXQgaGVhZGVyIGFzIG5vLUdTTyBmb3IgdGhlbSBpbnN0ZWFkCj4+Pj4+IG9m
IHJlcG9ydGluZyBpdCBhcyBpbnZhbGlkLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbnRv
biBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+Pj4+IC0tLQo+Pj4+
PiAgwqAgaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggfCA4ICsrKysrKy0tCj4+Pj4+ICDCoCAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggYi9pbmNsdWRlL2xpbnV4
L3ZpcnRpb19uZXQuaAo+Pj4+PiBpbmRleCAwZDFmZTkyOTdhYzYuLmQ5MGQ1Y2ZmMWI5YSAxMDA2
NDQKPj4+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPj4+Pj4gKysrIGIvaW5j
bHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPj4+Pj4gQEAgLTExMiw4ICsxMTIsMTIgQEAgc3RhdGlj
IGlubGluZSBpbnQKPj4+Pj4gdmlydGlvX25ldF9oZHJfZnJvbV9za2IoY29uc3Qgc3RydWN0IHNr
X2J1ZmYgKnNrYiwKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5
cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fVENQVjQ7Cj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAg
ZWxzZSBpZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19UQ1BWNikKPj4+Pj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fVENQ
VjY7Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCBlbHNlCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybiAtRUlOVkFMOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgZWxzZSB7Cj4+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChza2ItPmRhdGFfbGVuID09IDApCj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5nc29fdHlwZSA9IFZJUlRJT19ORVRfSERS
X0dTT19OT05FOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlCj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoCB9Cj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNpbmZvLT5nc29fdHlwZSAm
IFNLQl9HU09fVENQX0VDTikKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+
Z3NvX3R5cGUgfD0gVklSVElPX05FVF9IRFJfR1NPX0VDTjsKPj4+Pj4gIMKgwqDCoMKgwqAgfSBl
bHNlCj4+Pj4+Cj4+Pj4KPj4+PiBwaW5nLgo+Pj4+Cj4+Pgo+Pj4gRG8geW91IG1lYW4gZ3NvX3Np
emUgaXMgc2V0IGJ1dCBnc29fdHlwZSBpcyBub3Q/IExvb2tzIGxpa2UgYSBidWcKPj4+IGVsc2V3
aGVyZS4KPj4+Cj4+PiBUaGFua3MKPj4+Cj4+Pgo+PiBZZXMuCj4+Cj4+IEkgY291bGQgbm90IHRy
YWNlIGl0IHdoZXJlIGl0IGlzIGNvbWluZyBmcm9tLgo+Pgo+PiBJIHNlZSBpdCB3aGVuIGRvaW5n
IHJlY3ZtbXNnIG9uIHJhdyBzb2NrZXRzIGluIHRoZSBVTUwgdmVjdG9yIG5ldHdvcmsKPj4gZHJp
dmVycy4KPj4KPiAKPiBJIHRoaW5rIHdlIG5lZWQgdG8gZmluZCB0aGUgY3VscHJpdCBhbmQgZml4
IGl0IHRoZXJlLCBsb3RzIG9mIG90aGVyIHRoaW5ncwo+IGNhbiBicmVhayBvdGhlcndpc2UuCj4g
SnVzdCBwcmludGluZyBvdXQgc2tiLT5kZXYtPm5hbWUgc2hvdWxkIGRvIHRoZSB0cmljaywgbm8/
CgpUaGUgcHJpbnRrIGluIHZpcnRpb19uZXRfaGRyX2Zyb21fc2tiIHNheXMgTlVMTC4KClRoYXQg
aXMgcHJvYmFibHkgbm9ybWFsIGZvciBhIGxvY2FsbHkgb3JpZ2luYXRlZCBmcmFtZS4KCkkgY2Fu
bm90IHJlcHJvZHVjZSB0aGlzIHdpdGggbmV0d29yayB0cmFmZmljIGJ5IHRoZSB3YXkgLSBpdCBo
YXBwZW5zIG9ubHkgaWYgdGhlIHRyYWZmaWMgaXMgbG9jYWxseSBvcmlnaW5hdGVkIG9uIHRoZSBo
b3N0LgoKQSwKCj4gCj4gCj4+IC0tIAo+PiBBbnRvbiBSLiBJdmFub3YKPj4gQ2FtYnJpZGdlZ3Jl
eXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2
MQo+PiBodHRwczovL3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCj4gCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC11bSBtYWlsaW5nIGxp
c3QKPiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo+IAoKLS0gCkFudG9uIFIuIEl2YW5vdgpD
YW1icmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkgTnVt
YmVyIDEwMjczNjYxCmh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlz
dApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
