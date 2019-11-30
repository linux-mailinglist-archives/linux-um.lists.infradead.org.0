Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B7B10DCF2
	for <lists+linux-um@lfdr.de>; Sat, 30 Nov 2019 08:30:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EcWZzIG6e8c1OemNILy00byYTrsTAi5lqzpy4B5qlz8=; b=N0SedT8XW5Ng/E1PyIPBPDMiW
	nVGkRYPAHruCrPbI7J7YyfySq5E2NMTCih2J/U+lfnN616U5oL5ToqvV5ax4N8DVi3DpvwfPEeYkn
	sBS3+WBta+criAmUcCJAVSwpCKfdxyCWltN0pIoIsTHj0hq0sBSjpkM0RFAIBfkm1SpVupz5ag2eZ
	hZ66oCk4YIzr1v9bdK3VAyMDdWf7j1yGQYyxmG7oEkDTg7tY/SPbYuADurfeVlAYumvowH/33UDNM
	oyXrlZSso2x/r9uyl3/pUycg31fGq514Nt2nYrgq9AqM41xQQiafFZsVFpzpu2Tq7WwtKV/ibgzZn
	Z+SV9o9bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaxCT-00047k-LC; Sat, 30 Nov 2019 07:29:53 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaxCQ-00046O-3U
 for linux-um@lists.infradead.org; Sat, 30 Nov 2019 07:29:52 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iaxC5-00052H-CP; Sat, 30 Nov 2019 07:29:30 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iaxC2-0001Vf-SY; Sat, 30 Nov 2019 07:29:29 +0000
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH] um: vector: fix BPF loading in vector drivers
To: Daniel Borkmann <daniel@iogearbox.net>, linux-um@lists.infradead.org
References: <20191128174405.4244-1-anton.ivanov@cambridgegreys.com>
 <1416753c-e966-e259-a84d-2a5f0a166660@iogearbox.net>
 <cccc22d6-ee0a-c219-2bf0-2b89ae07ac2b@cambridgegreys.com>
 <c54efbb0-8ac4-2788-5957-ff99ab357584@iogearbox.net>
Organization: Cambridge Greys
Message-ID: <fe8a15ff-7e95-548e-d41d-fa3ce1113202@cambridgegreys.com>
Date: Sat, 30 Nov 2019 07:29:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <c54efbb0-8ac4-2788-5957-ff99ab357584@iogearbox.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_232950_147405_E0D05740 
X-CRM114-Status: GOOD (  23.52  )
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
Cc: songliubraving@fb.com, jakub.kicinski@netronome.com, richard@nod.at,
 kernel-janitors@vger.kernel.org, ast@kernel.org, weiyongjun1@huawei.com,
 netdev@vger.kernel.org, bpf@vger.kernel.org, kafai@fb.com,
 dan.carpenter@oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMjkvMTEvMjAxOSAyMzoxMiwgRGFuaWVsIEJvcmttYW5uIHdyb3RlOgo+IE9uIDExLzI5LzE5
IDEyOjU0IFBNLCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4+IE9uIDI5LzExLzIwMTkgMDk6MTUsIERh
bmllbCBCb3JrbWFubiB3cm90ZToKPj4+IE9uIDExLzI4LzE5IDY6NDQgUE0sIGFudG9uLml2YW5v
dkBjYW1icmlkZ2VncmV5cy5jb20gd3JvdGU6Cj4+Pj4gRnJvbTogQW50b24gSXZhbm92IDxhbnRv
bi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPgo+Pj4+Cj4+Pj4gVGhpcyBmaXhlcyBhIHBvc3Np
YmxlIGhhbmcgaW4gYnBmIGZpcm13YXJlIGxvYWRpbmcgaW4gdGhlCj4+Pj4gVU1MIHZlY3RvciBp
byBkcml2ZXJzIGR1ZSB0byB1c2Ugb2YgR0ZQX0tFUk5FTCB3aGlsZSBob2xkaW5nCj4+Pj4gYSBz
cGlubG9jay4KPj4+Pgo+Pj4+IEJhc2VkIG9uIGEgcHJwb3NlZCBmaXggYnkgd2VpeW9uZ2p1bjFA
aHVhd2VpLmNvbSBhbmQgc3VnZ2VzdGlvbnMgZm9yCj4+Pj4gaW1wcm92aW5nIGl0IGJ5IGRhbi5j
YXJwZW50ZXJAb3JhY2xlLmNvbQo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQW50b24gSXZhbm92
IDxhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPgo+Pj4KPj4+IEFueSByZWFzb24gd2h5
IHRoaXMgQlBGIGZpcm13YXJlIGxvYWRpbmcgbWVjaGFuaXNtIGluIFVNTCB2ZWN0b3IgCj4+PiBk
cml2ZXIgdGhhdCB3YXMKPj4+IHJlY2VudGx5IGFkZGVkIFswXSBpcyBwbGFpbiBvbGQgY2xhc3Np
YyBCUEY/IFF1b3RpbmcgeW91ciBjb21taXQgbG9nIAo+Pj4gWzBdOgo+Pgo+PiBJdCB3aWxsIGFs
bG93IHdoYXRldmVyIGlzIGFsbG93ZWQgYnkgc29ja2ZpbHRlci4gTG9va2luZyBhdCB0aGUgCj4+
IHNvY2tmaWx0ZXIgaW1wbGVtZW50YXRpb24gaW4gdGhlIGtlcm5lbCBpdCB0YWtlcyBlQlBGLCBo
b3dldmVyIGV2ZW4gCj4+IHRoZSBrZXJuZWwgZG9jcyBzdGlsbCBzdGF0ZSBCUEYuCj4gCj4gWW91
IGFyZSB1c2luZyBTT19BVFRBQ0hfRklMVEVSIGluIHVtbF92ZWN0b3JfYXR0YWNoX2JwZigpIHdo
aWNoIGlzIHRoZSAKPiBvbGQgY2xhc3NpYwo+IEJQRiAoYW5kIG5vdCBlQlBGKS4gVGhlIGtlcm5l
bCBpbnRlcm5hbGx5IG1vdmVzIHRoYXQgb3ZlciB0byBlQlBGIGluc25zLCAKPiBidXQgeW91J2xs
Cj4gYmUgY29uc3RyYWluZWQgZm9yZXZlciB3aXRoIHRoZSBhYmlsaXRpZXMgb2YgY0JQRi4gVGhl
IGxhdGVyIGFkZGVkIAo+IFNPX0FUVEFDSF9CUEYgaXMKPiB0aGUgb25lIGZvciBlQlBGIHdoZXJl
IHlvdSBwYXNzIHRoZSBwcm9nIGZkIGZyb20gYnBmKCkuCgpJIHdpbGwgc3dpdGNoIHRvIHRoYXQg
aW4gdGhlIG5leHQgdmVyc2lvbi4KCj4gCj4+PiDCoMKgIEFsbCB2ZWN0b3IgZHJpdmVycyBub3cg
YWxsb3cgYSBCUEYgcHJvZ3JhbSB0byBiZSBsb2FkZWQgYW5kCj4+PiDCoMKgIGFzc29jaWF0ZWQg
d2l0aCB0aGUgUlggc29ja2V0IGluIHRoZSBob3N0IGtlcm5lbC4KPj4+Cj4+PiDCoMKgIDEuIFRo
ZSBwcm9ncmFtIGNhbiBiZSBsb2FkZWQgYXMgYW4gZXh0cmEga2VybmVsIGNvbW1hbmQgbGluZQo+
Pj4gwqDCoCBvcHRpb24gdG8gYW55IG9mIHRoZSB2ZWN0b3IgZHJpdmVycy4KPj4+Cj4+PiDCoMKg
IDIuIFRoZSBwcm9ncmFtIGNhbiBhbHNvIGJlIGxvYWRlZCBhcyAiZmlybXdhcmUiLCB1c2luZyB0
aGUKPj4+IMKgwqAgZXRodG9vbCBmbGFzaCBvcHRpb24uIEl0IGlzIHBvc3NpYmxlIHRvIHR1cm4g
dGhpcyBmYWNpbGl0eQo+Pj4gwqDCoCBvbiBvciBvZmYgdXNpbmcgYSBjb21tYW5kIGxpbmUgb3B0
aW9uLgo+Pj4KPj4+IMKgwqAgQSBzaW1wbGlzdGljIHdyYXBwZXIgZm9yIGdlbmVyYXRpbmcgdGhl
IEJQRiBmaXJtd2FyZSBmb3IgdGhlIHJhdwo+Pj4gwqDCoCBzb2NrZXQgZHJpdmVyIG91dCBvZiBh
IHRjcGR1bXAvbGlicGNhcCBmaWx0ZXIgZXhwcmVzc2lvbiBjYW4gYmUKPj4+IMKgwqAgZm91bmQg
YXQ6IGh0dHBzOi8vZ2l0aHViLmNvbS9rb3QtYmVnZW1vdC11ay91bWxfdmVjdG9yX3V0aWxpdGll
cy8KPj4+Cj4+PiAuLi4gaXQgdGVsbHMgd2hhdCBpdCBkb2VzIGJ1dCAvbm90aGluZy8gYWJvdXQg
dGhlIG9yaWdpbmFsIHJhdGlvbmFsZSAKPj4+IC8gdXNlIGNhc2UKPj4+IHdoeSBpdCBpcyBuZWVk
ZWQuIFNvIHdoYXQgaXMgdGhlIHVzZSBjYXNlPyBBbmQgd2h5IGlzIHRoaXMgb25seSAKPj4+IGNs
YXNzaWMgQlBGPyBJcwo+Pj4gdGhlcmUgYW55IGRpc2N1c3Npb24gdG8gcmVhZCB1cCB0aGF0IGxl
YWQgeW91IHRvIHRoaXMgZGVjaXNpb24gb2YgCj4+PiBvbmx5IGltcGxlbWVudGluZwo+Pj4gaGFu
ZGxpbmcgZm9yIGNsYXNzaWMgQlBGPwo+Pgo+PiBNb3ZpbmcgcHJvY2Vzc2luZyBvdXQgb2YgdGhl
IEdVRVNUIG9udG8gdGhlIEhPU1QgdXNpbmcgYSBzYWZlIAo+PiBsYW5ndWFnZS4gVGhlIGZpcm13
YXJlIGxvYWQgaXMgb24gdGhlIEdVRVNUIGFuZCB5b3VyIEJQRiBpcyB5b3VyIAo+PiB2aXJ0dWFs
IE5JQyAiZmlybXdhcmUiIHdoaWNoIHJ1bnMgb24gdGhlIEhPU1QgKGluIHRoZSBob3N0IGtlcm5l
bCBpbiAKPj4gZmFjdCkuCj4+Cj4+IEl0IGlzIGlkZW50aWNhbCBhcyBhbiBpZGVhIHRvIHdoYXQg
TmV0cm9ub21lIGNhcmRzIGRvIGluIGhhcmR3YXJlLgo+Pgo+Pj4gSSdtIGFza2luZyBiZWNhdXNl
IGNsYXNzaWMgQlBGIGlzIC9sZWdhY3kvIHN0dWZmIHRoYXQgaXMgb24gZmVhdHVyZSAKPj4+IGZy
ZWV6ZSBhbmQKPj4+IG9ubHkgdmVyeSBsaW1pdGVkIGluIHRlcm1zIG9mIGZ1bmN0aW9uYWxpdHkg
Y29tcGFyZWQgdG8gbmF0aXZlIChlKUJQRiAKPj4+IHdoaWNoIGlzCj4+PiB3aHkgeW91IG5lZWQg
dGhpcyB3ZWlyZCAnZmlybXdhcmUnIGxvYWRlciBbMV0gd2hpY2ggd3JhcHMgYXJvdW5kIAo+Pj4g
dGNwZHVtcCB0bwo+Pj4gcGFyc2UgdGhlIC1kZGQgb3V0cHV0IGludG8gQlBGIGluc25zIC4uLgo+
Pgo+PiBCZWNhdXNlIHRoZXJlIGlzIG5vIG90aGVyIG1lY2hhbmlzbSBvZiByZXRyaWV2aW5nIGl0
IGFmdGVyIGl0IGlzIAo+PiBjb21waWxlZCBieSBsaWJwY2FwIGluIGFueSBvZiB0aGUgY29tbW9u
IHNjcmlwdGluZyBsYW5ndWFnZXMuCj4+Cj4+IFRoZSBwY2FwIFBlcmwsIFB5dGhvbiwgR28gKG9y
IHdoYXRldmVyIGVsc2UpIHdyYXBwZXJzIGRvIG5vdCBnaXZlIHlvdSAKPj4gYWNjZXNzIHRvIHRo
ZSBjb21waWxlZCBjb2RlIGFmdGVyIHRoZSBmaWx0ZXIgaGFzIGJlZW4gY29tcGlsZWQuCj4+Cj4+
IFdoeSBpcyB0aGF0IGluZ2VuaW91cyBkZXNpZ24gLSB5b3UgaGF2ZSB0byB0YWtlIGl0IHdpdGgg
dGhlaXIgCj4+IG1haW50YWluZXJzLgo+Pgo+PiBTbyBpZiB5b3Ugd2FudCB0byBzdGFydCB3aXRo
IHBjYXAvdGNwZHVtcCBzeW50YXggYW5kIHlvdSBkbyBub3Qgd2FudCAKPj4gdG8gcmV3cml0ZSB0
aGF0IHBhcnQgb2YgdGNwZHVtcCBhcyBhIGR1bXBlciBpbiBDIHlvdSBoYXZlIG5vIG90aGVyIAo+
PiBjaG9pY2UuCj4+Cj4+IFRoZSBzdGFydGluZyBwb2ludCBpcyBjaG9zZW4gYmVjYXVzZSB0aGUg
aWRlYSBpcyBhdCBzb21lIHBvaW50IHRvIAo+PiByZXBsYWNlIHRoZSBleGlzdGluZyBhbmQgdmVy
eSBhZ2VkIHBjYXAgbmV0d29yayB0cmFuc3BvcnQgaW4gVU1MLiBUaGF0IAo+PiB0YWtlcyBwY2Fw
IHN5bnRheCBvbiB0aGUga2VybmVsIGNvbW1hbmQgbGluZS4KPj4KPj4gSSBhZG1pdCBpdCBpcyBh
IGtsdWRnZSwgSSB3aWxsIHByb2JhYmx5IGRvIHRoZSAiZG8gbm90IHdhbnQiIGJpdCBhbmQgCj4+
IHJld3JpdGUgdGhhdCBpbiBDLgo+IAo+IFllYWgsIGl0IHdvdWxkIHByb2JhYmx5IGJlIGFib3V0
IHRoZSBzYW1lICMgb2YgTE9DIGluIEMuCj4gCj4+IEluIGFueSBjYXNlIC0gdGhlICJsb2FkZXIi
IGlzIG9ubHkgYW4gZXhhbXBsZSwgeW91IGNhbiBjb21waWxlIEJQRiAKPj4gdXNpbmcgTExWTSBv
ciB3aGF0ZXZlciBlbHNlIHlvdSBsaWtlLgo+IAo+IEJ1dCBkaWQgeW91IHRyeSB0aGF0IHdpdGgg
dGhlIGNvZGUgeW91IGhhdmU/IFNlZW1zIG5vdCwgd2hpY2ggaXMgcGVyaGFwcyAKPiB3aHkgdGhl
cmUgYXJlIHNvbWUKPiB3cm9uZyBhc3N1bXB0aW9ucy4KCkFsbCBvZiBteSB0ZXN0cyB3ZXJlIGRv
bmUgdXNpbmcgYnBmIGdlbmVyYXRlZCBieSB0Y3BkdW1wIG91dCBvZiBhIHBjYXAgCmV4cHJlc3Np
b24uIFNvIHRoZSBhbnN3ZXIgaXMgbm8gLSBJIGRpZCBub3QgdHJ5IExMVk0gYmVjYXVzZSBJIGRp
ZCBub3QgCm5lZWQgdG8gZm9yIHdoYXQgSSB3YXMgYWltaW5nIHRvIGFjaGlldmUuCgpUaGUgcGNh
cCByb3V0ZSBtYXRjaGVzIDE6MSBleGlzdGluZyBmdW5jdGlvbmFsaXR5IGluIHRoZSB1bWwgcGNh
cCBkcml2ZXIgCmFzIHdlbGwgYXMgZXhpc3RpbmcgZnVuY3Rpb25hbGl0eSBpbiB0aGUgdmVjdG9y
IGRyaXZlcnMgZm9yIHRoZSBjYXNlcyAKd2hlcmUgdGhleSBuZWVkIHRvIGF2b2lkIHNlZWluZyB0
aGVpciBvd24geG1pdHMgYW5kIGNhbm5vdCB1c2UgZmVhdHVyZXMgCmxpa2UgUURJU0NfQllQQVNT
LgoKPiAKPiBZb3UgY2FuJ3QgdXNlIExMVk0ncyBCUEYgYmFja2VuZCBoZXJlIHNpbmNlIHlvdSBv
bmx5IGFsbG93IHRvIHBhc3MgaW4gCj4gY0JQRiwgYW5kIExMVk0gZW1pdHMKPiBhbiBvYmplY3Qg
ZmlsZSB3aXRoIG5hdGl2ZSBlQlBGIGluc25zICh5b3UgY291bGQgdXNlIGxpYmJwZiAoaW4tdHJl
ZSAKPiB1bmRlciB0b29scy9saWIvYnBmLykKPiBmb3IgbG9hZGluZyB0aGF0KS4KCk15IGluaXRp
YWwgYWltIHdhcyB0aGUgc2FtZSBmZWF0dXJlIHNldHMgYXMgcGNhcCBhbmQgYWNoaWV2ZSBpdCB1
c2luZyBhIAp2aXJ0dWFsIGFuYWxvZ3VlIG9mIHdoYXQgY2FyZHMgbGlrZSBOZXRyb25vbWUgZG8g
LSB2aWEgdGhlIGZpcm13YXJlIHJvdXRlLgoKU3dpdGNoaW5nIHRvIFNPX0FUVEFDSF9CUEYgd2ls
bCBjb21lIGluIHRoZSBuZXh0IHJldmlzaW9uLgoKQS4KCj4gCj4+IEEuCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC11bSBtYWlsaW5n
IGxpc3QKPiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQoKCi0tIApBbnRvbiBSLiBJdmFub3YK
Q2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21wYW55IE51
bWJlciAxMDI3MzY2MQpodHRwczovL3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxp
c3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
