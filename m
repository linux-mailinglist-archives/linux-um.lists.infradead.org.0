Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BEA117B91
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 00:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDT6rs/ktm+5otCGMnuPNVX9RvI/WGv0AkycJVfKvoc=; b=GVTk9Ri6nmwadA
	nxA2NkMuzK1k8Hyxk7y8xSGhuja0oCIuneqYpBekJaFBe0njZQrN5nfn/3iYuKhqjUD8wDWhzfCIC
	RmFOa+eTMrE1PnCfTRh5gjnxz0WxuCo34kDQRtfEtxs645ejPZ8i4aiW56FokxLCvSsaRDWe3YVFi
	iK6+NOttEWKn5bx6Q69huiYzm0ROi9tRckL3uuYpmYsJz5Tx7OcsgbXcnR3HQwssEnEW9W76w6ibh
	r7T8N7+JxTxnqAWpZ941U1MKfmq+DUArlsbdTzqT+/drWcA4eFzTn/ewpFmMsE5thWl+LzhruOilZ
	0bYoo/S4Kky0wpYdM4dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieSdb-0007Ir-BN; Mon, 09 Dec 2019 23:40:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieSdY-0007GK-Hn
 for linux-um@lists.infradead.org; Mon, 09 Dec 2019 23:40:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id x184so6604514pfb.3
 for <linux-um@lists.infradead.org>; Mon, 09 Dec 2019 15:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Vl02im/rN6crfZYM0xjGCQ9VgZJr5qrqGs7/N7GKCu8=;
 b=vG78SzmWLo36DtbpDPAEr79GTtu6zsyI7LUWkbmM9c4sLQd16bdKsA4M05vEM3fgLX
 gRXhZ4HHPiJq6y3tfxWnnoRBgFDelqfowK50edVtujTEiQ1x/8KMNbTYtFpb+t76OKb+
 yPYsH7sC4O9/w0IDQO+0Kk7DbAallpuT/edxIoZZ256UBEVviTuSKjs6E4zyfQ/rlO+B
 c14IeRSxNt5NTzmxIGX/ueFe3wY4ruPBNDAYJKG1JcDeP4ktq/tQXJ3VhzPdQd/HCwvt
 4THzXgEUxW96st6rWBfxrU5cThkb8y5BuWBVzhEBe/RTmgRq95DeZyE0FdfjT2r/F8w2
 yjxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Vl02im/rN6crfZYM0xjGCQ9VgZJr5qrqGs7/N7GKCu8=;
 b=oBtx7WNoUFUdT7kR3+oR72rp1ONNO6p5tZUst/+uQCn3KvZh9xCg8lSqhfy6vtL4l5
 Bo+V5LqT8sD1+Ocv2MvY7NG3LgN9R8GOLBpQfquOZtk9gywcUPebTKKrOx3eM4k7meiO
 73rsa7dYe7DdcET9+ozMp7LgbRZA9eLzsBPPWMODJUfKumiMrcLSM711Ojr3HhDE5EMq
 vn94gb0Nm8J19fe7FARozru9KUH6gC3az4epdPl6jydgc65REsNxWZndL69AZJtIRM7/
 Ki2D3ffnd49aKJ02mu1onpqpxFyB79B3YpKni3OXTA6u+N2+5HrhYiQwTy73cInkd+Dq
 qSvw==
X-Gm-Message-State: APjAAAUTgl06l1PJSA9jWC379cQDdMFgsN+InQtfGLTN1AXRl2ZN1NWV
 l4UGluLwoUnq/5I/RuHuXp20SEZG59bpD5+xN9blPg==
X-Google-Smtp-Source: APXvYqwMJdVJ1wR+zJ5xK8rJ0KAxWUjjX34i0zHtAWbe0J69fF4p+2Ap4C+aphdVxZ/GdtoBOYBSOLxwodAo6S5non8=
X-Received: by 2002:a62:174b:: with SMTP id 72mr32322933pfx.185.1575934816254; 
 Mon, 09 Dec 2019 15:40:16 -0800 (PST)
MIME-Version: 1.0
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-2-brendanhiggins@google.com>
 <f217945d-ab64-10cc-bb12-3a4d810ff25a@cambridgegreys.com>
 <CAFd5g45cSKATfw4GKPw6QdhQKDNi=0gcDRjQ7N0T1XrdtSTPrg@mail.gmail.com>
 <20191207012108.GA220741@google.com>
 <15f048d3-07ab-61c1-c6e0-0712e626dd33@cambridgegreys.com>
In-Reply-To: <15f048d3-07ab-61c1-c6e0-0712e626dd33@cambridgegreys.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 9 Dec 2019 15:40:04 -0800
Message-ID: <CAFd5g448yZ5nSVLnN0gvsv3jLnhWG+dzJgvH1jdV+s2eTq4wxg@mail.gmail.com>
Subject: Re: [RFC v1 1/2] um: drivers: remove support for UML_NET_PCAP
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_154020_619703_1ACF2DB5 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gU2F0LCBEZWMgNywgMjAxOSBhdCAxOjE1IEFNIEFudG9uIEl2YW5vdgo8YW50b24uaXZhbm92
QGNhbWJyaWRnZWdyZXlzLmNvbT4gd3JvdGU6Cj4KPiBPbiAwNy8xMi8yMDE5IDAxOjIxLCBCcmVu
ZGFuIEhpZ2dpbnMgd3JvdGU6Cj4gPiBPbiBGcmksIERlYyAwNiwgMjAxOSBhdCAwNDozMjozNFBN
IC0wODAwLCBCcmVuZGFuIEhpZ2dpbnMgd3JvdGU6Cj4gPj4gT24gVGh1LCBEZWMgNSwgMjAxOSBh
dCAxMToyMyBQTSBBbnRvbiBJdmFub3YKPiA+PiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlz
LmNvbT4gd3JvdGU6Cj4gPj4gWy4uLl0KPiA+Pj4gMS4gVGhlcmUgaXMgYSBwcm9wb3NlZCBwYXRj
aCBmb3IgdGhlIGJ1aWxkIHN5c3RlbSB0byBmaXggaXQuCj4gPgo+ID4gU28gSSBqdXN0IHRyaWVk
IHRoZSBwYXRjaCB5b3UgbGlua2VkIG9uIHRoZSBjb3ZlciBsZXR0ZXJbMV0sIGFuZCBJIGFtCj4g
PiBzdGlsbCBnZXR0aW5nIHRoZSBidWlsZCBlcnJvciBkZXNjcmliZWQgYWJvdmU6Cj4gPgo+ID4g
YXJjaC91bS9kcml2ZXJzL3BjYXBfdXNlci5jOjM1OjEyOiBlcnJvcjogY29uZmxpY3RpbmcgdHlw
ZXMgZm9yIOKAmHBjYXBfb3BlbuKAmQo+ID4gICBzdGF0aWMgaW50IHBjYXBfb3Blbih2b2lkICpk
YXRhKQo+ID4gICAgICAgICAgICAgIF5+fn5+fn5+fgo+ID4gSW4gZmlsZSBpbmNsdWRlZCBmcm9t
IC91c3IvaW5jbHVkZS9wY2FwLmg6NDMsCj4gPiAgICAgICAgICAgICAgICAgICBmcm9tIGFyY2gv
dW0vZHJpdmVycy9wY2FwX3VzZXIuYzo3Ogo+ID4gL3Vzci9pbmNsdWRlL3BjYXAvcGNhcC5oOjg1
OToxODogbm90ZTogcHJldmlvdXMgZGVjbGFyYXRpb24gb2Yg4oCYcGNhcF9vcGVu4oCZIHdhcyBo
ZXJlCj4gPiAgIFBDQVBfQVBJIHBjYXBfdCAqcGNhcF9vcGVuKGNvbnN0IGNoYXIgKnNvdXJjZSwg
aW50IHNuYXBsZW4sIGludCBmbGFncywKPiA+Cj4gPiBMb29raW5nIGF0IHRoZSBwYXRjaCwgSSB3
b3VsZG4ndCBleHBlY3QgaXQgdG8gc29sdmUgdGhpcyBwcm9ibGVtLgo+ID4KPiA+IEFyZSB0aGVy
ZSBtYXliZSBkaWZmZXJlbnQgY29uZmxpY3RpbmcgbGlicGNhcC1kZXYgbGlicmFyaWVzIGFuZCBJ
IGhhdmUKPiA+IHRoZSB3cm9uZyBvbmU/IE9yIGlzIHRoaXMganVzdCBzdGlsbCBicm9rZW4/Cj4g
Pgo+ID4+PiAyLiBXZSBzaG91bGQgYmUgcmVtb3ZpbmcgYWxsIG9sZCBkcml2ZXJzIGFuZCByZXBs
YWNpbmcgdGhlbSB3aXRoIHRoZQo+ID4+PiB2ZWN0b3Igb25lcy4KPiA+Pgo+ID4+IEhtbS4uLmRv
ZXMgdGhpcyBtZWFuIHlvdSB3b3VsZCBlbnRlcnRhaW4gYSBwYXRjaCByZW1vdmluZyBhbGwgdGhl
Cj4gPj4gbm9uLXZlY3RvciBVTUwgbmV0d29yayBkcml2ZXJzPyBJIHdvdWxkIGJlIGhhcHB5IHRv
IHNlZSBWREUgZ28gYXMKPiA+PiB3ZWxsLgo+ID4+Cj4gPj4gSW4gYW55IGV2ZW50LCBpdCBzb3Vu
ZHMgbGlrZSBJIHNob3VsZCBwcm9iYWJseSBkcm9wIHRoaXMgcGF0Y2ggYXMgaXQKPiA+PiBpcyBj
dXJyZW50bHkuCj4gPj4KPiA+PiBUaGFua3MhCj4gPgo+ID4gWzFdIGh0dHBzOi8vYnVncy5kZWJp
YW4ub3JnL2NnaS1iaW4vYnVncmVwb3J0LmNnaT9idWc9OTM4OTYyIzc5Cj4gPgo+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IGxpbnV4LXVtIG1h
aWxpbmcgbGlzdAo+ID4gbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo+ID4KPgo+IE9LLCBs
b29rcyBsaWtlIHRoZSBwY2FwLmggZGlmZmVycyBub3cgYXMgd2VsbC4KPgo+IEkgd2lsbCBmaXgg
dGhhdCB0b28uIEl0IGxvb2tzIGxpa2UgeW91IG5lZWQgYm90aCBhIHBjYXAgZml4IGFuZCBhCj4g
bGlicmFyeSBsaW5raW5nIGZpeCBmb3IgdGhpcyB0byB3b3JrLgo+Cj4gVGhlIHBhdGNoIGZpeGVz
IHRoZSBpc3N1ZSB3aXRoIHRoZSBidWlsZCBzeXN0ZW0gd2hpY2ggbm8gbG9uZ2VyIHByb3ZpZGVz
Cj4gdGhlIG1lYW5zIGZvciBVTUwgdG8gc3BlY2lmeSBleHRyYSBsaWJyYXJpZXMgKEkgcHJvYmFi
bHkgaGFkIGFuIG9sZGVyCj4gcGNhcCB2ZXJzaW9uIG9uIHRoZSBtYWNoaW5lIHdoZXJlIEkgdGVz
dGVkIHRoaXMpLgo+Cj4gSU1ITyBmcmFua2x5IGl0IGlzIG5vIGxvbmdlciBuZWNlc3NhcnkuCj4K
PiA1LjUtcmMxIHZlY3RvciByYXcgbm93IGhhcyB0aGUgZmFjaWxpdHkgdG8gYWRkL3JlbW92ZSAo
aW5jbHVkaW5nIGF0Cj4gcnVudGltZSkgZmlsdGVycyBjb21waWxlZCB3aXRoIHBjYXAgb3V0c2lk
ZSBVTUwuIEl0IHdhcyBtZXJnZWQgdGhpcyB3ZWVrLgo+Cj4gV2Ugbm93IGhhdmUgdGhlIGZvbGxv
d2luZyBsaW5lLXVwIGZvciB2ZWN0b3IgZHJpdmVycyAtIEVvR1JFLCBFb0wyVFB2MywKPiBSQVcg
KCsvLSBCUEYpLCBUQVAgYW5kIEJFU1MuIFNwZWVkcyBhcmUgMi41IHRvIDlHYml0IG9uIG15IG1h
Y2hpbmUKPiAobWlkLXJhbmdlIFJ5emVuIGRlc2t0b3ApLgo+Cj4gSWYgSSBmaWd1cmUgb3V0IGEg
d2F5IHRvIGdldCBob2xkIG9mIHRoZSB1bmRlcmx5aW5nIHRhcCByYXcgc29ja2V0cyB0aGUKPiBz
YW1lIHdheSB2aG9zdCBkb2VzLCBUQVAgY2FuIHByb2JhYmx5IGdvIHRvIDEyR2JpdCBvciB0aGVy
ZWFib3V0cy4gU2FtZQo+IGFwcGxpZXMgdG8gZ2V0dGluZyB6ZXJvY29weSB3b3JraW5nIHdpdGgg
cmF3Lgo+Cj4gQXMgYSBiYXNpcyBmb3IgY29tcGFyaXNvbiBJIGdldCAxOEdiaXQgb24gdGhlIHNh
bWUgbWFjaGluZSB1c2luZyB2RXRoCj4gYW5kIGNvbnRhaW5lcnMuIDUwJSBvZiB0aGF0IGlzIGFj
dHVhbGx5IGEgdmVyeSBkZWNlbnQgbnVtYmVyLgo+Cj4gV2hpbGUgdmVjdG9yIGRyaXZlcnMgYXJl
IG5vdCAxOjEgcmVwbGFjZW1lbnRzIGZvciB0aGUgZXhpc3RpbmcgZHJpdmVycywKPiB5b3UgY2Fu
IGFjaGlldmUgdGhlIHNhbWUgdG9wb2xvZ2llcyBhbmQgdGhlIHNhbWUgY29ubmVjdGl2aXR5IGF0
IG11Y2gKPiBoaWdoZXIgcGVyZm9ybWFuY2UgLSB0aGUgb2xkIGRyaXZlcnMgdGVzdCBvdXQgaW4g
dGhlIDUwME1iaXQgcmFuZ2Ugb24KPiB0aGUgc2FtZSBoYXJkd2FyZS4KPgo+IElNSE8gd2Ugc2hv
dWxkIGF0IGxlYXN0IG1hcmsgdGhlbSBhcyAib2Jzb2xldGUiIGFuZCBzdGFydCBwcmVwYXJpbmcg
dG8KPiByZW1vdmUgdGhlbS4KCkFscmlnaHQsIEkgd2lsbCBzZW5kIGEgcGF0Y2ggb3V0IHdoaWNo
IG1hcmtzIHRoZSBvdGhlciBuZXR3b3JrIGRyaXZlcnMKYXMgIm9ic29sZXRlIi4KCkNsYXJpZmlj
YXRpb246IFNob3VsZCBJIG1hcmsgYWxsIFVNTCBuZXR3b3JrIGRldmljZXMgYXMgIm9ic29sZXRl
IgpleGNlcHQgZm9yIE5FVF9WRUNUT1I/IERhZW1vbiBhbmQgTUNBU1QgbG9va2VkIHRvIG1lIChJ
IGFtIG5vdCBhCm5ldHdvcmtpbmcgZXhwZXJ0KSwgbGlrZSB0aGV5IG1pZ2h0IG5vdCBiZSBjb3Zl
cmVkIGJ5IHZlY3Rvci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
