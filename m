Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D36115BD55
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 12:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NNDHKq+A/FDQq1CkPfvwdquXNIMq6jFkkqlM/wK1GpU=; b=U63b+CCDo3hk/Rj5GaKTDuPpA
	Tf1+fS8c7Ij83CZ7T5otcMevOPAnxd3cWO0UYJLN4s576HFGzxo4ar2/8enf8WDmZNhMhn8Jk+rNZ
	dgQm3Ih4mQg7gJcMhqDGkHLXEu3Yba0IVT3kLVXYWXw5Xec5Iz0bn/SCzclWKRsXNnBK7qojt+oyJ
	cvcTciLQTl+9+mJyXJtjc0jmpdflYRzATuHz2BggcaIgm4fjI32CqiQFoW0FvMp1gGOoOtCcwns1D
	0Zb0wzOKFSDmyI8ShVdade7JAFFzuaZcFPs31EauRUtwTg4YyT8emzcvbHCFrvTmW1z8yyyVVfKWE
	fWmHvQdDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2CLf-00017l-8Q; Thu, 13 Feb 2020 11:07:59 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CLc-000175-9t
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 11:07:58 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j2CLV-0007ye-DZ; Thu, 13 Feb 2020 11:07:49 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j2CLT-0007ip-6t; Thu, 13 Feb 2020 11:07:49 +0000
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
To: Jason Wang <jasowang@redhat.com>, "Michael S. Tsirkin" <mst@redhat.com>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
 <71193f51-9606-58ba-39d7-904bc9fbd29a@redhat.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <0c204585-d297-0ecb-2af1-cc3b4cac13da@cambridgegreys.com>
Date: Thu, 13 Feb 2020 11:07:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <71193f51-9606-58ba-39d7-904bc9fbd29a@redhat.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_030756_352177_73CB6F33 
X-CRM114-Status: GOOD (  17.83  )
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
Cc: netdev@vger.kernel.org, linux-um@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAxMy8wMi8yMDIwIDAzOjMxLCBKYXNvbiBXYW5nIHdyb3RlOgo+IAo+IE9uIDIwMjAvMi8x
MyDkuIrljYgxOjM4LCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4+Cj4+Cj4+IE9uIDExLzAyLzIwMjAg
MTA6MzcsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+IE9uIFR1ZSwgRmViIDExLCAyMDIw
IGF0IDA3OjQyOjM3QU0gKzAwMDAsIEFudG9uIEl2YW5vdiB3cm90ZToKPj4+PiBPbiAxMS8wMi8y
MDIwIDAyOjUxLCBKYXNvbiBXYW5nIHdyb3RlOgo+Pj4+Pgo+Pj4+PiBPbiAyMDIwLzIvMTEg5LiK
5Y2IMTI6NTUsIEFudG9uIEl2YW5vdiB3cm90ZToKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gT24gMDkv
MTIvMjAxOSAxMDo0OCwgYW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbSB3cm90ZToKPj4+
Pj4+PiBGcm9tOiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+
Cj4+Pj4+Pj4KPj4+Pj4+PiBTb21lIG9mIHRoZSBmcmFtZXMgbWFya2VkIGFzIEdTTyB3aGljaCBh
cnJpdmUgYXQKPj4+Pj4+PiB2aXJ0aW9fbmV0X2hkcl9mcm9tX3NrYigpIGhhdmUgbm8gR1NPX1RZ
UEUsIG5vCj4+Pj4+Pj4gZnJhZ21lbnRzIChkYXRhX2xlbiA9IDApIGFuZCBsZW5ndGggc2lnbmlm
aWNhbnRseSBzaG9ydGVyCj4+Pj4+Pj4gdGhhbiB0aGUgTVRVICg3NTIgaW4gbXkgZXhwZXJpbWVu
dHMpLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBpcyBvYnNlcnZlZCBvbiByYXcgc29ja2V0cyByZWFk
aW5nIG9mZiB2RXRoIGludGVyZmFjZXMKPj4+Pj4+PiBpbiBhbGwgNC54IGFuZCA1Lngga2VybmVs
cyBJIHRlc3RlZC4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoZXNlIGZyYW1lcyBhcmUgcmVwb3J0ZWQgYXMg
aW52YWxpZCB3aGlsZSB0aGV5IGFyZSBpbiBmYWN0Cj4+Pj4+Pj4gZ3NvLWxlc3MgZnJhbWVzLgo+
Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBwYXRjaCBtYXJrcyB0aGUgdm5ldCBoZWFkZXIgYXMgbm8tR1NP
IGZvciB0aGVtIGluc3RlYWQKPj4+Pj4+PiBvZiByZXBvcnRpbmcgaXQgYXMgaW52YWxpZC4KPj4+
Pj4+Pgo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFudG9uIEl2YW5vdiA8YW50b24uaXZhbm92QGNh
bWJyaWRnZWdyZXlzLmNvbT4KPj4+Pj4+PiAtLS0KPj4+Pj4+PiDCoMKgIGluY2x1ZGUvbGludXgv
dmlydGlvX25ldC5oIHwgOCArKysrKystLQo+Pj4+Pj4+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaCBiL2luY2x1ZGUvbGludXgvdmlydGlvX25ldC5o
Cj4+Pj4+Pj4gaW5kZXggMGQxZmU5Mjk3YWM2Li5kOTBkNWNmZjFiOWEgMTAwNjQ0Cj4+Pj4+Pj4g
LS0tIGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPj4+Pj4+PiArKysgYi9pbmNsdWRlL2xp
bnV4L3ZpcnRpb19uZXQuaAo+Pj4+Pj4+IEBAIC0xMTIsOCArMTEyLDEyIEBAIHN0YXRpYyBpbmxp
bmUgaW50Cj4+Pj4+Pj4gdmlydGlvX25ldF9oZHJfZnJvbV9za2IoY29uc3Qgc3RydWN0IHNrX2J1
ZmYgKnNrYiwKPj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5
cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fVENQVjQ7Cj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZWxzZSBpZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19UQ1BWNikKPj4+Pj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9H
U09fVENQVjY7Cj4+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGVsc2UKPj4+Pj4+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgZWxz
ZSB7Cj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNrYi0+ZGF0YV9sZW4gPT0g
MCkKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUg
PSBWSVJUSU9fTkVUX0hEUl9HU09fTk9ORTsKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBlbHNlCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJ
TlZBTDsKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChzaW5mby0+Z3NvX3R5cGUgJiBTS0JfR1NPX1RDUF9FQ04pCj4+Pj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190eXBlIHw9IFZJUlRJT19ORVRfSERSX0dT
T19FQ047Cj4+Pj4+Pj4gwqDCoMKgwqDCoMKgIH0gZWxzZQo+Pj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4g
cGluZy4KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IERvIHlvdSBtZWFuIGdzb19zaXplIGlzIHNldCBidXQg
Z3NvX3R5cGUgaXMgbm90PyBMb29rcyBsaWtlIGEgYnVnCj4+Pj4+IGVsc2V3aGVyZS4KPj4+Pj4K
Pj4+Pj4gVGhhbmtzCj4+Pj4+Cj4+Pj4+Cj4+Pj4gWWVzLgo+Pj4+Cj4+Pj4gSSBjb3VsZCBub3Qg
dHJhY2UgaXQgd2hlcmUgaXQgaXMgY29taW5nIGZyb20uCj4+Pj4KPj4+PiBJIHNlZSBpdCB3aGVu
IGRvaW5nIHJlY3ZtbXNnIG9uIHJhdyBzb2NrZXRzIGluIHRoZSBVTUwgdmVjdG9yIG5ldHdvcmsK
Pj4+PiBkcml2ZXJzLgo+Pj4+Cj4+Pgo+Pj4gSSB0aGluayB3ZSBuZWVkIHRvIGZpbmQgdGhlIGN1
bHByaXQgYW5kIGZpeCBpdCB0aGVyZSwgbG90cyBvZiBvdGhlciB0aGluZ3MKPj4+IGNhbiBicmVh
ayBvdGhlcndpc2UuCj4+PiBKdXN0IHByaW50aW5nIG91dCBza2ItPmRldi0+bmFtZSBzaG91bGQg
ZG8gdGhlIHRyaWNrLCBubz8KPj4KPj4gVGhlIHByaW50ayBpbiB2aXJ0aW9fbmV0X2hkcl9mcm9t
X3NrYiBzYXlzIE5VTEwuCj4+Cj4+IFRoYXQgaXMgcHJvYmFibHkgbm9ybWFsIGZvciBhIGxvY2Fs
bHkgb3JpZ2luYXRlZCBmcmFtZS4KPj4KPj4gSSBjYW5ub3QgcmVwcm9kdWNlIHRoaXMgd2l0aCBu
ZXR3b3JrIHRyYWZmaWMgYnkgdGhlIHdheSAtIGl0IGhhcHBlbnMgb25seSBpZiB0aGUgdHJhZmZp
YyBpcyBsb2NhbGx5IG9yaWdpbmF0ZWQgb24gdGhlIGhvc3QuCj4+Cj4+IEEsCj4gCj4gCj4gT3Ig
bWF5YmUgeW91IGNhbiB0cnkgYWRkIGR1bXBfc3RhY2soKSB0aGVyZS4KClRoYXQgdW5mb3J0dW5h
dGVseSBpcyBub3QgdmVyeSBpbmZvcm1hdGl2ZS4gQXQgdGhhdCBwb2ludCBpdCBzaG93cyBtZSB0
aGUgaW52b2NhdGlvbiBjaGFpbiBmcm9tIHJlY3ZtbXNnOgoKWyAyMzM0LjE4MDg1NF0gQ2FsbCBU
cmFjZToKWyAyMzM0LjE4MTk0N10gIGR1bXBfc3RhY2srMHg1Yy8weDgwClsgMjMzNC4xODMwMjFd
ICBwYWNrZXRfcmVjdm1zZy5jb2xkKzB4MjMvMHg0OQpbIDIzMzQuMTg0MDYzXSAgX19fc3lzX3Jl
Y3Ztc2crMHhlMS8weDFmMApbIDIzMzQuMTg1MDM0XSAgPyBwYWNrZXRfcG9sbCsweGNhLzB4MTMw
ClsgMjMzNC4xODYwMTRdICA/IHNvY2tfcG9sbCsweDc3LzB4YjAKWyAyMzM0LjE4Njk3N10gID8g
ZXBfaXRlbV9wb2xsLmlzcmEuMCsweDNmLzB4YjAKWyAyMzM0LjE4NzkzNl0gID8gZXBfc2VuZF9l
dmVudHNfcHJvYysweGYxLzB4MjQwClsgMjMzNC4xODg5MDFdICA/IGRlcXVldWVfc2lnbmFsKzB4
ZGIvMHgxODAKWyAyMzM0LjE4OTg0OF0gIGRvX3JlY3ZtbXNnKzB4YzgvMHgyZDAKWyAyMzM0LjE5
MDcyOF0gID8gZXBfcG9sbCsweDhjLzB4NDcwClsgMjMzNC4xOTE1ODFdICBfX3N5c19yZWN2bW1z
ZysweDEwOC8weDE1MApbIDIzMzQuMTkyNDQxXSAgX194NjRfc3lzX3JlY3ZtbXNnKzB4MjUvMHgz
MApbIDIzMzQuMTkzMzQ2XSAgZG9fc3lzY2FsbF82NCsweDUzLzB4MTQwClsgMjMzNC4xOTQyNjJd
ICBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg0NC8weGE5CgoKPiAKPiBUaGFua3MK
PiAKPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IGxpbnV4LXVtIG1haWxpbmcgbGlzdAo+IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVt
CgotLSAKQW50b24gUi4gSXZhbm92CkNhbWJyaWRnZWdyZXlzIExpbWl0ZWQuIFJlZ2lzdGVyZWQg
aW4gRW5nbGFuZC4gQ29tcGFueSBOdW1iZXIgMTAyNzM2NjEKaHR0cHM6Ly93d3cuY2FtYnJpZGdl
Z3JleXMuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
