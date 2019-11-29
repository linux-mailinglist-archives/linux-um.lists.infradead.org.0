Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7093B10DBCA
	for <lists+linux-um@lfdr.de>; Sat, 30 Nov 2019 00:28:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l3E7iYlODTFabuISiGIws/QRIIHAlyju8CgcDCBaEt8=; b=CO7TF//kUmIS5XOeyxp0eru6v
	sC5e7vE4G+id5tKZppZelF4BMsLOibeDMbVRjrn18E7Xj8loqbg70RneM1KF5grGiBxxswg1ltWzP
	1+53t+SrDPel6soFwwnlGUZC1BepoLxiyMo/Q8MR300H+Q+VWyyORNJr7257KLCHDv/txNIHrSfSU
	rGua/rmEwmxBGFRjNGAsZtDoJJuhOYJxv7zdp68nrWVe3iqlDEIbqTIpuaJaEiGJYygsTBEPOhWgb
	smKc9munAGg4G/fnDBRMyAhrAyru3BSc3G6CgjP4LDmJeLwHw5qqKgqPbiHdl7uvZBJTGkFS0HJTP
	zD8N3hF3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iapgE-0002d4-G5; Fri, 29 Nov 2019 23:28:06 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iapgB-0002cN-8k
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 23:28:05 +0000
Received: from sslproxy06.your-server.de ([78.46.172.3])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1iapQk-0007kH-5i; Sat, 30 Nov 2019 00:12:06 +0100
Received: from [178.197.249.29] (helo=pc-9.home)
 by sslproxy06.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1iapQj-0005xn-Mr; Sat, 30 Nov 2019 00:12:05 +0100
Subject: Re: [PATCH] um: vector: fix BPF loading in vector drivers
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
References: <20191128174405.4244-1-anton.ivanov@cambridgegreys.com>
 <1416753c-e966-e259-a84d-2a5f0a166660@iogearbox.net>
 <cccc22d6-ee0a-c219-2bf0-2b89ae07ac2b@cambridgegreys.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <c54efbb0-8ac4-2788-5957-ff99ab357584@iogearbox.net>
Date: Sat, 30 Nov 2019 00:12:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <cccc22d6-ee0a-c219-2bf0-2b89ae07ac2b@cambridgegreys.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25648/Fri Nov 29 10:44:54 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_152803_309563_50F8E827 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gMTEvMjkvMTkgMTI6NTQgUE0sIEFudG9uIEl2YW5vdiB3cm90ZToKPiBPbiAyOS8xMS8yMDE5
IDA5OjE1LCBEYW5pZWwgQm9ya21hbm4gd3JvdGU6Cj4+IE9uIDExLzI4LzE5IDY6NDQgUE0sIGFu
dG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20gd3JvdGU6Cj4+PiBGcm9tOiBBbnRvbiBJdmFu
b3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+Pgo+Pj4gVGhpcyBmaXhlcyBh
IHBvc3NpYmxlIGhhbmcgaW4gYnBmIGZpcm13YXJlIGxvYWRpbmcgaW4gdGhlCj4+PiBVTUwgdmVj
dG9yIGlvIGRyaXZlcnMgZHVlIHRvIHVzZSBvZiBHRlBfS0VSTkVMIHdoaWxlIGhvbGRpbmcKPj4+
IGEgc3BpbmxvY2suCj4+Pgo+Pj4gQmFzZWQgb24gYSBwcnBvc2VkIGZpeCBieSB3ZWl5b25nanVu
MUBodWF3ZWkuY29tIGFuZCBzdWdnZXN0aW9ucyBmb3IKPj4+IGltcHJvdmluZyBpdCBieSBkYW4u
Y2FycGVudGVyQG9yYWNsZS5jb20KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBbnRvbiBJdmFub3Yg
PGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+Cj4+IEFueSByZWFzb24gd2h5IHRo
aXMgQlBGIGZpcm13YXJlIGxvYWRpbmcgbWVjaGFuaXNtIGluIFVNTCB2ZWN0b3IgZHJpdmVyIHRo
YXQgd2FzCj4+IHJlY2VudGx5IGFkZGVkIFswXSBpcyBwbGFpbiBvbGQgY2xhc3NpYyBCUEY/IFF1
b3RpbmcgeW91ciBjb21taXQgbG9nIFswXToKPiAKPiBJdCB3aWxsIGFsbG93IHdoYXRldmVyIGlz
IGFsbG93ZWQgYnkgc29ja2ZpbHRlci4gTG9va2luZyBhdCB0aGUgc29ja2ZpbHRlciBpbXBsZW1l
bnRhdGlvbiBpbiB0aGUga2VybmVsIGl0IHRha2VzIGVCUEYsIGhvd2V2ZXIgZXZlbiB0aGUga2Vy
bmVsIGRvY3Mgc3RpbGwgc3RhdGUgQlBGLgoKWW91IGFyZSB1c2luZyBTT19BVFRBQ0hfRklMVEVS
IGluIHVtbF92ZWN0b3JfYXR0YWNoX2JwZigpIHdoaWNoIGlzIHRoZSBvbGQgY2xhc3NpYwpCUEYg
KGFuZCBub3QgZUJQRikuIFRoZSBrZXJuZWwgaW50ZXJuYWxseSBtb3ZlcyB0aGF0IG92ZXIgdG8g
ZUJQRiBpbnNucywgYnV0IHlvdSdsbApiZSBjb25zdHJhaW5lZCBmb3JldmVyIHdpdGggdGhlIGFi
aWxpdGllcyBvZiBjQlBGLiBUaGUgbGF0ZXIgYWRkZWQgU09fQVRUQUNIX0JQRiBpcwp0aGUgb25l
IGZvciBlQlBGIHdoZXJlIHlvdSBwYXNzIHRoZSBwcm9nIGZkIGZyb20gYnBmKCkuCgo+PiDCoMKg
IEFsbCB2ZWN0b3IgZHJpdmVycyBub3cgYWxsb3cgYSBCUEYgcHJvZ3JhbSB0byBiZSBsb2FkZWQg
YW5kCj4+IMKgwqAgYXNzb2NpYXRlZCB3aXRoIHRoZSBSWCBzb2NrZXQgaW4gdGhlIGhvc3Qga2Vy
bmVsLgo+Pgo+PiDCoMKgIDEuIFRoZSBwcm9ncmFtIGNhbiBiZSBsb2FkZWQgYXMgYW4gZXh0cmEg
a2VybmVsIGNvbW1hbmQgbGluZQo+PiDCoMKgIG9wdGlvbiB0byBhbnkgb2YgdGhlIHZlY3RvciBk
cml2ZXJzLgo+Pgo+PiDCoMKgIDIuIFRoZSBwcm9ncmFtIGNhbiBhbHNvIGJlIGxvYWRlZCBhcyAi
ZmlybXdhcmUiLCB1c2luZyB0aGUKPj4gwqDCoCBldGh0b29sIGZsYXNoIG9wdGlvbi4gSXQgaXMg
cG9zc2libGUgdG8gdHVybiB0aGlzIGZhY2lsaXR5Cj4+IMKgwqAgb24gb3Igb2ZmIHVzaW5nIGEg
Y29tbWFuZCBsaW5lIG9wdGlvbi4KPj4KPj4gwqDCoCBBIHNpbXBsaXN0aWMgd3JhcHBlciBmb3Ig
Z2VuZXJhdGluZyB0aGUgQlBGIGZpcm13YXJlIGZvciB0aGUgcmF3Cj4+IMKgwqAgc29ja2V0IGRy
aXZlciBvdXQgb2YgYSB0Y3BkdW1wL2xpYnBjYXAgZmlsdGVyIGV4cHJlc3Npb24gY2FuIGJlCj4+
IMKgwqAgZm91bmQgYXQ6IGh0dHBzOi8vZ2l0aHViLmNvbS9rb3QtYmVnZW1vdC11ay91bWxfdmVj
dG9yX3V0aWxpdGllcy8KPj4KPj4gLi4uIGl0IHRlbGxzIHdoYXQgaXQgZG9lcyBidXQgL25vdGhp
bmcvIGFib3V0IHRoZSBvcmlnaW5hbCByYXRpb25hbGUgLyB1c2UgY2FzZQo+PiB3aHkgaXQgaXMg
bmVlZGVkLiBTbyB3aGF0IGlzIHRoZSB1c2UgY2FzZT8gQW5kIHdoeSBpcyB0aGlzIG9ubHkgY2xh
c3NpYyBCUEY/IElzCj4+IHRoZXJlIGFueSBkaXNjdXNzaW9uIHRvIHJlYWQgdXAgdGhhdCBsZWFk
IHlvdSB0byB0aGlzIGRlY2lzaW9uIG9mIG9ubHkgaW1wbGVtZW50aW5nCj4+IGhhbmRsaW5nIGZv
ciBjbGFzc2ljIEJQRj8KPiAKPiBNb3ZpbmcgcHJvY2Vzc2luZyBvdXQgb2YgdGhlIEdVRVNUIG9u
dG8gdGhlIEhPU1QgdXNpbmcgYSBzYWZlIGxhbmd1YWdlLiBUaGUgZmlybXdhcmUgbG9hZCBpcyBv
biB0aGUgR1VFU1QgYW5kIHlvdXIgQlBGIGlzIHlvdXIgdmlydHVhbCBOSUMgImZpcm13YXJlIiB3
aGljaCBydW5zIG9uIHRoZSBIT1NUIChpbiB0aGUgaG9zdCBrZXJuZWwgaW4gZmFjdCkuCj4gCj4g
SXQgaXMgaWRlbnRpY2FsIGFzIGFuIGlkZWEgdG8gd2hhdCBOZXRyb25vbWUgY2FyZHMgZG8gaW4g
aGFyZHdhcmUuCj4gCj4+IEknbSBhc2tpbmcgYmVjYXVzZSBjbGFzc2ljIEJQRiBpcyAvbGVnYWN5
LyBzdHVmZiB0aGF0IGlzIG9uIGZlYXR1cmUgZnJlZXplIGFuZAo+PiBvbmx5IHZlcnkgbGltaXRl
ZCBpbiB0ZXJtcyBvZiBmdW5jdGlvbmFsaXR5IGNvbXBhcmVkIHRvIG5hdGl2ZSAoZSlCUEYgd2hp
Y2ggaXMKPj4gd2h5IHlvdSBuZWVkIHRoaXMgd2VpcmQgJ2Zpcm13YXJlJyBsb2FkZXIgWzFdIHdo
aWNoIHdyYXBzIGFyb3VuZCB0Y3BkdW1wIHRvCj4+IHBhcnNlIHRoZSAtZGRkIG91dHB1dCBpbnRv
IEJQRiBpbnNucyAuLi4KPiAKPiBCZWNhdXNlIHRoZXJlIGlzIG5vIG90aGVyIG1lY2hhbmlzbSBv
ZiByZXRyaWV2aW5nIGl0IGFmdGVyIGl0IGlzIGNvbXBpbGVkIGJ5IGxpYnBjYXAgaW4gYW55IG9m
IHRoZSBjb21tb24gc2NyaXB0aW5nIGxhbmd1YWdlcy4KPiAKPiBUaGUgcGNhcCBQZXJsLCBQeXRo
b24sIEdvIChvciB3aGF0ZXZlciBlbHNlKSB3cmFwcGVycyBkbyBub3QgZ2l2ZSB5b3UgYWNjZXNz
IHRvIHRoZSBjb21waWxlZCBjb2RlIGFmdGVyIHRoZSBmaWx0ZXIgaGFzIGJlZW4gY29tcGlsZWQu
Cj4gCj4gV2h5IGlzIHRoYXQgaW5nZW5pb3VzIGRlc2lnbiAtIHlvdSBoYXZlIHRvIHRha2UgaXQg
d2l0aCB0aGVpciBtYWludGFpbmVycy4KPiAKPiBTbyBpZiB5b3Ugd2FudCB0byBzdGFydCB3aXRo
IHBjYXAvdGNwZHVtcCBzeW50YXggYW5kIHlvdSBkbyBub3Qgd2FudCB0byByZXdyaXRlIHRoYXQg
cGFydCBvZiB0Y3BkdW1wIGFzIGEgZHVtcGVyIGluIEMgeW91IGhhdmUgbm8gb3RoZXIgY2hvaWNl
Lgo+IAo+IFRoZSBzdGFydGluZyBwb2ludCBpcyBjaG9zZW4gYmVjYXVzZSB0aGUgaWRlYSBpcyBh
dCBzb21lIHBvaW50IHRvIHJlcGxhY2UgdGhlIGV4aXN0aW5nIGFuZCB2ZXJ5IGFnZWQgcGNhcCBu
ZXR3b3JrIHRyYW5zcG9ydCBpbiBVTUwuIFRoYXQgdGFrZXMgcGNhcCBzeW50YXggb24gdGhlIGtl
cm5lbCBjb21tYW5kIGxpbmUuCj4gCj4gSSBhZG1pdCBpdCBpcyBhIGtsdWRnZSwgSSB3aWxsIHBy
b2JhYmx5IGRvIHRoZSAiZG8gbm90IHdhbnQiIGJpdCBhbmQgcmV3cml0ZSB0aGF0IGluIEMuCgpZ
ZWFoLCBpdCB3b3VsZCBwcm9iYWJseSBiZSBhYm91dCB0aGUgc2FtZSAjIG9mIExPQyBpbiBDLgoK
PiBJbiBhbnkgY2FzZSAtIHRoZSAibG9hZGVyIiBpcyBvbmx5IGFuIGV4YW1wbGUsIHlvdSBjYW4g
Y29tcGlsZSBCUEYgdXNpbmcgTExWTSBvciB3aGF0ZXZlciBlbHNlIHlvdSBsaWtlLgoKQnV0IGRp
ZCB5b3UgdHJ5IHRoYXQgd2l0aCB0aGUgY29kZSB5b3UgaGF2ZT8gU2VlbXMgbm90LCB3aGljaCBp
cyBwZXJoYXBzIHdoeSB0aGVyZSBhcmUgc29tZQp3cm9uZyBhc3N1bXB0aW9ucy4KCllvdSBjYW4n
dCB1c2UgTExWTSdzIEJQRiBiYWNrZW5kIGhlcmUgc2luY2UgeW91IG9ubHkgYWxsb3cgdG8gcGFz
cyBpbiBjQlBGLCBhbmQgTExWTSBlbWl0cwphbiBvYmplY3QgZmlsZSB3aXRoIG5hdGl2ZSBlQlBG
IGluc25zICh5b3UgY291bGQgdXNlIGxpYmJwZiAoaW4tdHJlZSB1bmRlciB0b29scy9saWIvYnBm
LykKZm9yIGxvYWRpbmcgdGhhdCkuCgo+IEEuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXVtCg==
