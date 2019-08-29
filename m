Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ACEA21DE
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 19:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWHUzdzstMO/K4yF+wRzpXX9cDQ9eZ2x+GC8QZBGEWg=; b=fR6I+heAlULT7n
	eWV0kgUhOkYMUuWzx5Kl25Ptr8oltdsF4VEx2umNyziCJ61wv5gvkWfiACN9pyypHvMc6D4hh9Jpy
	TUuYNDytJbFENF2Ple2HxqXsfXDgQY9uHpik8Li3AY6++M6nUrdg7DmyvjDivllr7xivRFbdsi2pX
	AtRZwdWtZKACfQfyPxWyovIsZV9MYw8s+us4W9Khm0oQkhvE5VxKAZS2FNbLGaV/ALOwr1RzIv4oe
	yY/BcVlpd8UF0hhZiM2XHyGICBCUB3f9hUcHjOdI6JdrHQ0kmUtC0/3UVl5QjeCNiDavE3D4BU4QS
	71mC9CIn4fp9qFeH6NRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3NwF-0001cf-QK; Thu, 29 Aug 2019 17:10:23 +0000
Received: from mx1.volatile.bz ([2001:67c:2db8:301:138:0:101:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Nw9-0001XW-Qs
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 17:10:22 +0000
Received: from TheDarkness.local (unknown
 [IPv6:2600:6c5d:4200:1e2a:a077:9bc9:2f0:8eb9])
 by mx1.volatile.bz (Postfix) with ESMTPSA id C72EB590;
 Thu, 29 Aug 2019 17:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=volatile.bz;
 s=default; t=1567098606;
 bh=S+o2J+owdblBkkWC9LHtU/ruSRBVwfwplyhgfA2Ch4E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=d0uj69xoJI1nnoh2dMn+f6LJn2KwnUep+KVGsYedDdqJwM1oLZAg8nihhIcv3hfId
 Ocxad7wXbbWNCT8DDTmvaJViquVM/1eB+UiOOsxhkM73BKDYT7aOfv/S6KfFeOquCR
 +De78K+qoZKmkd3qZPOGRiLomi8bKD1bWiEFb0kY=
Date: Thu, 29 Aug 2019 13:10:01 -0400
From: Dark <dark@volatile.bz>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] um: Rewrite host RNG driver.
Message-ID: <20190829130804.5e644540@TheDarkness>
In-Reply-To: <1851013915.76434.1567092659763.JavaMail.zimbra@nod.at>
References: <20190828204609.02a7ff70@TheDarkness>
 <CAFLxGvyiviQxr_Bj57ibTU4DQ1H5wQC4DE5DNFBtAFoohcgbsg@mail.gmail.com>
 <20190829103628.61953f50@thedarkness.local>
 <1851013915.76434.1567092659763.JavaMail.zimbra@nod.at>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_101018_288832_21A762AD 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:67c:2db8:301:138:0:101:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

PiBXZWxsLCBpdCBkb2VzIG5vdCBibG9jayBidXQgcGFzc2luZyAtRUFHQUlOIGRpcmVjdGx5IGJh
Y2sgaXMgbm90IG5pY2UuCj4gT3IgZG9lcyB0aGUgaHdfcmFuZG9tIGZyYW1ld29yayBoYW5kbGUg
dGhpcz8KClRoZSBmcmFtZXdvcmsgaXMgcGFzc2luZyAtRUFHQUlOIHRvIHVzZXJzcGFjZSB3aGlj
aCBpc24ndCB2ZXJ5IG5pY2UgYXQKYWxsLiBMdWNraWx5LCBoYW5kbGluZyBpdCBpcyBwcmV0dHkg
dHJpdmFsIHNvIEkgd2VudCBhaGVhZCBhbmQgbWFkZSBhbgp1cGRhdGVkIHBhdGNoIHRvIGFkZHJl
c3MgdGhpcy4gKEknbSB1bnN1cmUgb2YgaG93IHRvIHN1Ym1pdCBhbiB1cGRhdGUKdG8gbXkgcGF0
Y2ggc28gSSdsbCBuZWVkIGEgYml0IG9mIGd1aWRlbmNlIG9uIHRoaXMuKQoKPiBNYXliZSBvdXIg
LUVBR0FJTiBoYW5kbGluZyBpcyBidWdneS4KPiBUaGF0IHNhaWQgSSdtIGFsbCBmb3IgY2hhbmdp
bmcgdGhlIGRyaXZlciB0byB1c2UgdGhlIHJpZ2h0IGZyYW1ld29yawo+IGJ1dCBwbGVhc2UgbWFr
ZSBzdXJlIHRoYXQgd2UgZG9uJ3QgZHJvcCB1c2VmdWwgc3R1ZmYgbGlrZSAtRUFHQUlOIGhhbmRs
aW5nLgoKTW9zdCBvZiB0aGUgb2xkIGNvZGUgd2FzIHB1bGxlZCBmcm9tIHRoZSBmcmFtZXdvcmsg
YW55d2F5IHNvIGl0J3MgdmVyeQp1bmxpa2VseSB0aGF0IGFueXRoaW5nIGVsc2Ugd291bGQgYmUg
ZHJvcHBlZCBoZXJlLgoKT24gVGh1LCAyOSBBdWcgMjAxOSAxNzozMDo1OSArMDIwMCAoQ0VTVCks
IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+IHdyb3RlOgoKPiAtLS0tLSBVcnNw
csO8bmdsaWNoZSBNYWlsIC0tLS0tCj4gPiBWb246ICJEYXJrIiA8ZGFya0B2b2xhdGlsZS5iej4K
PiA+IEFuOiAiUmljaGFyZCBXZWluYmVyZ2VyIiA8cmljaGFyZC53ZWluYmVyZ2VyQGdtYWlsLmNv
bT4sICJsaW51eC1rZXJuZWwiIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPgo+ID4gQ0M6
ICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+LCAiYW50b24gaXZhbm92IiA8YW50b24uaXZhbm92
QGNhbWJyaWRnZWdyZXlzLmNvbT4sICJsaW51eC11bSIKPiA+IDxsaW51eC11bUBsaXN0cy5pbmZy
YWRlYWQub3JnPgo+ID4gR2VzZW5kZXQ6IERvbm5lcnN0YWcsIDI5LiBBdWd1c3QgMjAxOSAxNjoz
NjoyOAo+ID4gQmV0cmVmZjogUmU6IFtQQVRDSF0gdW06IFJld3JpdGUgaG9zdCBSTkcgZHJpdmVy
LiAgCj4gCj4gPiBPbiBUaHUsIDI5IEF1ZyAyMDE5IDE1OjI2OjI0ICswMjAwLCBSaWNoYXJkIFdl
aW5iZXJnZXIKPiA+IDxyaWNoYXJkLndlaW5iZXJnZXJAZ21haWwuY29tPiB3cm90ZTogIAo+ID4+
IFNvLCB5b3UgcmVtb3ZlZCAtRUFHQUlOIGhhbmRsaW5nLCBtYWRlIGV2ZXJ5dGhpbmcgc3luY2hy
b25vdXMsCj4gPj4gYW5kIGNoYW5nZWQgdGhlIGludGVyZmFjZS50Cj4gPj4gSSdtIG5vdCBzdXJl
IGlmIHRoaXMgcmVhbGx5IGEgbXVjaCBiZXR0ZXIgb3B0aW9uLiAgCj4gPiAKPiA+IEkgc2hvdWxk
IGhhdmUgYmVlbiBtb3JlIGNsZWFyIGhlcmUgdGhhdCBJJ20gdXNpbmcgdGhlIGludGVyZmFjZXMK
PiA+IHByb3ZpZGVkIGJ5IGBkcml2ZXJzL2NoYXIvaHdfcmFuZG9tL2NvcmUuY2AgZm9yIGNvbnNp
c3RlbmN5IHdpdGggdGhlCj4gPiBvdGhlciBoYXJkd2FyZSBSTkcgZHJpdmVycyBhbmQgdG8gYXZv
aWQgcmVpbXBsZW1lbnRpbmcgc3R1ZmYgdGhhdCdzCj4gPiBhbHJlYWR5IHRoZXJlLiAgCj4gCj4g
SSBnb3QgdGhpcywgYW5kIHRoaXMgaXMgYSBnb29kIHRoaW5nIQo+ICAKPiA+IEl0IG1pZ2h0IGJl
IGEgYml0IGhhcmQgdG8gc2VlIGluIHRoZSBkaWZmLCBidXQgSSBwYXNzIHRoZSBmaWxlCj4gPiBk
ZXNjcmlwdG9yIHRvIGBvc19zZXRfZmRfYXN5bmMoKWAgdG8gcHJldmVudCBpdCBmcm9tIGJsb2Nr
aW5nLiAgCj4gCj4gV2VsbCwgaXQgZG9lcyBub3QgYmxvY2sgYnV0IHBhc3NpbmcgLUVBR0FJTiBk
aXJlY3RseSBiYWNrIGlzIG5vdCBuaWNlLgo+IE9yIGRvZXMgdGhlIGh3X3JhbmRvbSBmcmFtZXdv
cmsgaGFuZGxlIHRoaXM/Cj4gCj4gPiBGb3IgdGhlIC1FQUdBSU4gaGFuZGxpbmcsIEknbSBwYXNz
aW5nIGl0IG9udG8gdGhlIGNhbGxlci4gU2luY2UgeW91Cj4gPiBtZW50aW9uZWQgaXQsIEl0IHdv
dWxkIGJlIGJldHRlciB0byBoYW5kbGUgaXQgaW4gdGhlIGRyaXZlciBpdHNlbGYKPiA+IHNvIEkn
bGwgdXBkYXRlIHRoZSBwYXRjaCB0byBhZGRyZXNzIHRoYXQuCj4gPiAgIAo+ID4+IFJld3JpdGlu
ZyB0aGUgZHJpdmVyIGluIGEgbW9kZXJuIG1hbm5lciBpcyBhIGdvb2QgdGhpbmcsIGJ1dCB0aHJv
d2luZyB0aGUKPiA+PiBvbGQgb25lIHdheSB3aXRoIGEgbGl0dGxlIGhhbmQgd2VhdmluZyBqdXN0
IGJlY2F1c2Ugb2YgYSB1bnNwZWNpZmllZCBpc3N1ZQo+ID4+IGlzIGEgbGl0dGxlIGhhcnNoLgo+
ID4+IENhbiB5b3UgYXQgbGVzdCBwcm92aWRlIG1vcmUgaW5mb3Mgd2hhdCBwcm9ibGVtIHlvdSdy
ZSBmYWNpbmcgd2l0aCB0aGUKPiA+PiBvbGQgZHJpdmVyPyAgCj4gPiAKPiA+IE1vc3Qgb2YgaXQg
Ym9pbGVkIGRvd24gdG8gaXQgc2lsZW50bHkgYnJlYWtpbmcgaWYgL2Rldi9yYW5kb20gb24gdGhl
Cj4gPiBob3N0IHdlcmUgdG8gYmxvY2sgZm9yIGFueSByZWFzb24sIGFuZCB0aGVyZSB3YXMgdGhl
IHVzZXJzcGFjZSB0b29sCj4gPiByZXF1aXJlbWVudCB0byBwcm9wZXJseSBtYWtlIHVzZSBvZiBp
dC4gV2l0aCB0aGF0IHNhaWQsIHRoZSBpbnRlcmZhY2UKPiA+IHdhcyBhbHNvIGluY29uc2lzdGVu
dCB3aXRoIHRoZSBvdGhlciBoYXJkd2FyZSBSTkcgZHJpdmVycyB3aGljaCB3b3VsZAo+ID4gcmVx
dWlyZSBhIHJld3JpdGUgdG8gYWRkcmVzcyBhbnl3YXkuICAKPiAKPiBNYXliZSBvdXIgLUVBR0FJ
TiBoYW5kbGluZyBpcyBidWdneS4KPiBUaGF0IHNhaWQgSSdtIGFsbCBmb3IgY2hhbmdpbmcgdGhl
IGRyaXZlciB0byB1c2UgdGhlIHJpZ2h0IGZyYW1ld29yawo+IGJ1dCBwbGVhc2UgbWFrZSBzdXJl
IHRoYXQgd2UgZG9uJ3QgZHJvcCB1c2VmdWwgc3R1ZmYgbGlrZSAtRUFHQUlOIGhhbmRsaW5nLgo+
IAo+IFRoYW5rcywKPiAvL3JpY2hhcmQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXVtCg==
