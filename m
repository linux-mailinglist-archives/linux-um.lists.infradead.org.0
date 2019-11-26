Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6536F109C8B
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 11:50:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dwn2/zG/LDvwmsVWi070UTaxUSUmhQnovCE3HW4sKqo=; b=MeBgbNwvio2H+lW1angANyMBh
	uXbyl+XSW4I7pzmEztS16k+JSOxqM6Lm1seiPuhBgJMdySifx5PmR9tXfzO1GQpRhUv7eRsx/oUiG
	npFHiJhe222QD2w0ac/SPtF7k6GDTMsi1T8WjpBEAd8j7VTHCBIK+Osq9KavR4p2A0MI3m98b4+XG
	MCJKcZjknVzrsxDqTGf2LWylSjCcNH7ByOia0okybLJy7pirlUhZkJOK6UuI+s88hqCpGkqlcJ/Fs
	OvbUQSZinG/GrgQAZs/jsaw8TD0ebNrDNkT58Rh/s0vnprm9pt6iJ2mbUT+vJ1zTlw50XMc8z4oEQ
	LCTlizWFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZYPy-0006oa-F2; Tue, 26 Nov 2019 10:50:02 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYPu-0006D6-7k
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 10:50:00 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iZYPm-0007J0-ON; Tue, 26 Nov 2019 10:49:51 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iZYPk-00072p-Fs; Tue, 26 Nov 2019 10:49:50 +0000
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
To: Octavian Purdila <tavi.purdila@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>
References: <cover.1573179553.git.thehajime@gmail.com>
 <1531c5f16a00b608635c9a62fa3951807075f950.1573179553.git.thehajime@gmail.com>
 <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
 <de90b04151bafee083727c9769833932788cf428.camel@sipsolutions.net>
 <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
 <4ebb14dc67ccb70543617ce1f7066f3f27cd11a8.camel@sipsolutions.net>
 <243342257.98153.1574762974057.JavaMail.zimbra@nod.at>
 <98acf77a7c6f6cba7f76c12a850ac2929b9e5a48.camel@sipsolutions.net>
 <CAMoF9u3LRC_NaVJzmKPc0+XBxhAqdhnr4-ZzY_ypwQEzUz78yQ@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <ce1a96d4-3d5e-32be-f493-3522fc56a25b@kot-begemot.co.uk>
Date: Tue, 26 Nov 2019 10:49:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMoF9u3LRC_NaVJzmKPc0+XBxhAqdhnr4-ZzY_ypwQEzUz78yQ@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_024958_385805_9F725F30 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Hajime Tazaki <thehajime@gmail.com>, cem <cem@freebsd.org>,
 Richard Weinberger <richard@nod.at>, linux-um <linux-um@lists.infradead.org>,
 retrage01 <retrage01@gmail.com>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 pscollins <pscollins@google.com>, sigmaepsilon92 <sigmaepsilon92@gmail.com>,
 liuyuan <liuyuan@google.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAyNi8xMS8yMDE5IDEwOjQyLCBPY3RhdmlhbiBQdXJkaWxhIHdyb3RlOgo+IE9uIFR1ZSwg
Tm92IDI2LCAyMDE5IGF0IDEyOjE2IFBNIEpvaGFubmVzIEJlcmcKPiA8am9oYW5uZXNAc2lwc29s
dXRpb25zLm5ldD4gd3JvdGU6Cj4+Cj4+IE9uIFR1ZSwgMjAxOS0xMS0yNiBhdCAxMTowOSArMDEw
MCwgUmljaGFyZCBXZWluYmVyZ2VyIHdyb3RlOgo+Pj4gLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFp
bCAtLS0tLQo+Pj4+PiBNeSBwb2ludCBpcyB0aGF0IFVNTCBhbmQgTEtMIHNob3VsZCB0cnkgdG8g
ZG8gdXNlIHRoZSBzYW1lIGNvbmNlcHQvY29kZQo+Pj4+PiByZWdhcmRpbmcgdmlydGlvLiBBdCB0
aGUgZW5kIG9mIGRheSBib3RoIHVzZSB2aXJ0dWFsIGRldmljZXMgd2hpY2ggdXNlCj4+Pj4+IGZh
Y2lsaXRpZXMgZnJvbSB0aGUgaG9zdC4KPj4+Pj4gSWYgdGhpcyBpcyByZWFsbHkgbm90IHBvc3Np
YmxlIGl0IG5lZWRzIGEgZ29vZCBleHBsYW5hdGlvbi4KPj4+Pgo+Pj4+IEkgdGhpbmsgaXQgaXNu
J3QgcG9zc2libGUsIHVubGVzcyB5b3UgdXNlIHZob3N0LXVzZXIgb3ZlciBhIHVuaXggZG9tYWlu
Cj4+Pj4gc29ja2V0IGludGVybmFsbHkgdG8gdGFsayBiZXR3ZWVuIHRoZSBrZXJuZWwgKHZpcnRp
b191bWwpIGFuZCBoeXBlcnZpc29yCj4+Pj4gKGRldmljZSkgY29tcG9uZW50cy4KPj4+Pgo+Pj4+
IEluIHZpcnRpb191bWwsIHRoZSBkZXZpY2UgaW1wbGVtZW50YXRpb24gaXMgYXNzdW1lZCB0byBi
ZSBhIHNlcGFyYXRlCj4+Pj4gcHJvY2VzcyB3aXRoIGEgdmhvc3QtdXNlciBjb25uZWN0aW9uLiBI
ZXJlIGluIExLTCwgdGhlIHZpcnRpbyBkZXZpY2UgaXMKPj4+PiBwYXJ0IG9mIHRoZSAiaHlwZXJ2
aXNvciIsIGkuZS4gaW4gdGhlIHNhbWUgcHJvY2Vzcy4KPj4+Cj4+PiBFeGFjdGx5LCBjdXJyZW50
bHkgVU1MIGFuZCBMS0wgc29sdmUgc2FtZSB0aGluZ3MgZGlmZmVyZW50bHksIGJ1dCBkbyB3ZSBu
ZWVkIHRvPwo+Pgo+PiBJdCdzIG5vdCB0aGUgc2FtZSB0aGluZyB0aG91Z2ggOi0pCj4+Cj4+IFVN
TCByaWdodCBub3cgZG9lc24ndCBoYXZlIG9yIHN1cHBvcnQgdmlydGlvIGRldmljZXMgaW4gdGhl
IGJ1aWx0LWluCj4+IGh5cGVydmlzb3IsIHdoYXQgd2Ugd2FudGVkIHRvIHVzZSB2aXJ0aW8gZm9y
IHdhcyBleHBsaWNpdGx5IGZvciB0aGUKPj4gdmhvc3QtdXNlciBkZXZpY2VzLgo+Pgo+PiBMS0wg
Y2xlYXJseSB3YW50cyB0byBoYXZlIGRldmljZSBpbXBsZW1lbnRhdGlvbnMgaW4gdGhlIGh5cGVy
dmlzb3IsCj4+IHBlcmhhcHMgZm9yIG5ldHdvcmtpbmcgb3IgY29uc29sZSBldGMuPyBUaGF0IF9t
aWdodF8gYmUgdXNlZnVsIHNpbmNlIGl0Cj4+IG1ha2VzIHRoZSBkZXZpY2UgaW1wbGVtZW50YXRp
b24gbW9yZSBnZW5lcmFsLCB1bmxpa2UgdGhlIFVNTCBhcHByb2FjaAo+PiB3aGVyZSBhbGwgZGV2
aWNlcyBjb21lIHdpdGggYSBrZXJuZWwtIGFuZCB1c2VyLXNpZGUgYW5kIGFyZSBzcGVjaWFsCj4+
IGRyaXZlcnMgaW4gdGhlIGtlcm5lbCwgdnMuIGdlbmVyYWwgdmlydGlvIGRyaXZlcnMuCj4+Cj4g
Cj4gVGhhdCBpcyBjb3JyZWN0LiBJbml0aWFsbHkgd2UgdXNlZCB0aGUgc2FtZSBVTUwgbW9kZWws
IHdpdGggZGVkaWNhdGVkCj4gZHJpdmVycyBmb3IgTEtMLCBhbmQgbGF0ZXIgc3dpdGNoZWQgdG8g
dXNpbmcgdGhlIGJ1aWx0LWluIHZpcnRpbwo+IGRyaXZlcnMgKHNvIGZhciBmb3IgbmV0d29yayBh
bmQgYmxvY2sgZGV2aWNlcykuCj4gCj4+IE5vdywgYXJndWFibHksIHNpbmNlIFVNTCBoYXMgYWxs
IHRoZXNlIGFscmVhZHkgYSBjb21iaW5lZCBVTUwvTEtMCj4+IGRvZXNuJ3QgYWN0dWFsbHkgKm5l
ZWQqIGFueSB2aXJ0aW8gZGV2aWNlcywgc2luY2UgYWxsIChvciBhdCBsZWFzdCBtb3N0KQo+PiBv
ZiB0aGUgdGhpbmdzIHRoYXQgY291bGQgYmUgY292ZXJlZCBieSB2aXJ0aW8gdG9kYXkgYXJlIGFs
cmVhZHkgY292ZXJlZAo+PiBieSBVTUwgZGV2aWNlcyAoYmxvY2ssIG5ldCwgY29uc29sZSwgcmFu
ZG9tKS4KPj4KPj4gSSdkIHByb2JhYmx5IHNheSB0aGVuIHRoYXQgdGhpcyBjYW4gYmUgcmVtb3Zl
ZCBmcm9tIGFuIGluaXRpYWwgIm1pbmltdW0KPj4gdmlhYmxlIHByb2R1Y3QiIG9mIExLTCwgc2lu
Y2Ugb25jZSBtZXJnZWQgd2l0aCBVTUwgeW91IGdldCB0aGUgZGV2aWNlcwo+PiBmcm9tIHRoYXQu
IExhdGVyLCB3ZSBjb3VsZCBkZWNpZGUgdGhhdCBVTUwgZGV2aWNlcyBhY3R1YWxseSBhcmUgYmV0
dGVyCj4+IGRvbmUgYXMgdmlydGlvLCBhbmQgc3VwcG9ydCBzb21ldGhpbmcgbGlrZSB0aGlzLgo+
Pgo+IAo+IEkgYWdyZWUsIEkgdGhpbmsgaXQgbWFrZSBzZW5zZSB0byBkcm9wIHRoZXNlIHNpbmNl
IHRoZSBwcm9ibGVtIG9mCj4gZGVkaWNhdGVkIHZzIGdlbmVyaWMgLyB2aXJ0aW8gZHJpdmVycyBh
cmUgb3J0aG9nb25hbCB3aXRoIHJlZ2FyZCB0bwo+IFVNTCBhbmQgTEtMIHVuaWZpY2F0aW9uIGFu
ZCBjYW4gbGF0ZXIgYmUgd29ya2VkIG9uLgoKVGhpcyBicmluZ3MgdXMgYmFjayB0byB0aGUgaW50
ZXJydXB0IGNvbnRyb2xsZXIgYXMgbm90ZWQgYnkgUmljaGFyZCBlYXJsaWVyLgoKVU1MIGRldmlj
ZXMgYXJlIGhlYXZpbHkgZGVwZW5kZW50IG9uIHRoZSBmaWxlIGlvIGFzIGFuIElSUSB0cmlnZ2Vy
IApwYXJhZGlnbSBhbmQgdGhleSBuZWVkIGFuIGludGVycnVwdCBjb250cm9sbGVyIHdoaWNoIGhh
cyBhbiBJTyBldmVudCAKZmVlZCBpbnRvIGl0LiBJIGRpZCBub3Qgc2VlIHRoYXQgaW4gTEtMIG9u
IGZpcnN0IHJlYWQuCgpTbyBhcyBhIGZpcnN0IHN0ZXAgd2Ugc2hvdWxkIGdldCBpdCB0byB3b3Jr
IHdpdGggZXhpc3RpbmcgVU1MIElSUSAKY29udHJvbGxlciBhbmQgd2hhdGV2ZXIgaW5jcmVtZW50
YWwgcGF0Y2hlcyBhcmUgbmVlZGVkIG9uIHRvcCBvZiB0aGF0LgoKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LXVtIG1haWxpbmcgbGlz
dAo+IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCj4gCgotLSAKQW50b24gUi4gSXZhbm92Cmh0
dHBzOi8vd3d3LmtvdC1iZWdlbW90LmNvLnVrLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC11bQo=
