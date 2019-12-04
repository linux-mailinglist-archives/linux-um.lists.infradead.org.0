Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD03C11290F
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 11:13:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHoe6LYtiMONncmgeA+8xb3rKBLL5nN6r3tHr0JhMWU=; b=hAIWcL1RO61uxl
	QKIvxQiEE6lI/EZfEG6sJMGDOGNgttFarFToLfoaH2DJb9Dz6MGrkS/gH9JKrOKbBeeBasRsnUVG1
	WND/z3WcbLnWVlLfOmaRIiW2o7ej5E3BAbW0BIBAmBFl03xMONH3eAem/vXm/WOazWVvC+tISfyRV
	YVuo+gwNWx93sI31ZjOQevP2zVdgBwxE5SkUtaM/2tfXc7DJWlv8gmqzJq5cy1UFQVGefxJbGIPeq
	2IV673DvFIZGoJIo26YX64UNJa7DPvv0EczpaRQm0toi7W282uDZtnDxHtEtOFE3szJS/FpOPclVi
	pFFM8RdcPSaR/DRKQGqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icReo-0006Xa-T5; Wed, 04 Dec 2019 10:13:18 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRem-0006X6-7f
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 10:13:17 +0000
Received: by mail-ot1-f50.google.com with SMTP id k14so5843865otn.4
 for <linux-um@lists.infradead.org>; Wed, 04 Dec 2019 02:13:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hXtWTM1a4y2cLC+cUiUrzJi9LMJ3x3cSblxyqVcDPx0=;
 b=nUAOXLXcFuLsBgtt1UhAUlfHl72fMO5AAJiHDv3awrrNPfizznKD3V7/KHiyLF1ov5
 ohHMR5IISGyrq4MERBPb71VQjGXalptGpD+P3YD1DaxLg6A207k9bB1TdVj+5lhIG4sR
 3Drl14PyEknqYPhkRziwnbqrgfhsg66EgE7xjOoauf/hvklZST/mrun6IKByEeh8oKhF
 YwjtauU45ewHorfBl7S645SDxRA2S0MnVAyNBYQXR8DZSDPqUe+EyGL2nXhN0G6x58g5
 6N4ENeOMd84TEdolSNWtvpNuQshI9GfK0kJdue/jra9ZRFL0tGxVTZajr58hlk5Fp8eJ
 hOxg==
X-Gm-Message-State: APjAAAVNP5HgW0a9jw90VuKJFCbSrvfvDLFF8M+zkDNxWnu+4bMKK7CW
 pf75iTd3QCSf4kZLDZ9jPpMSOe5L03xLvfR+dvjk6Q==
X-Google-Smtp-Source: APXvYqwioEByUHUGcbXjLpwWcdM6HEJhqv+QGe6oPzB11KyYq/iFgXhJFFApN0/yPpW7N6winbxNzd8PO16+fkVYGe8=
X-Received: by 2002:a9d:6c81:: with SMTP id c1mr484643otr.39.1575454394365;
 Wed, 04 Dec 2019 02:13:14 -0800 (PST)
MIME-Version: 1.0
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
 <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
 <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
In-Reply-To: <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Dec 2019 11:13:03 +0100
Message-ID: <CAMuHMdVrLPKwXxfyG3-Y5yUF9KPrTzosydxN1rkBFcJXsWi86Q@mail.gmail.com>
Subject: Re: I get 5.4 fail to start
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_021316_273145_5BA2EC86 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

SGkgQW50b24sCgpPbiBXZWQsIERlYyA0LCAyMDE5IGF0IDEwOjIwIEFNIEFudG9uIEl2YW5vdgo8
YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4gd3JvdGU6Cj4gT24gMDQvMTIvMjAxOSAw
OTowMywgUmljaGFyZCBXZWluYmVyZ2VyIHdyb3RlOgo+ID4gLS0tLS0gVXJzcHLDvG5nbGljaGUg
TWFpbCAtLS0tLQo+ID4+IFZvbjogImFudG9uIGl2YW5vdiIgPGFudG9uLml2YW5vdkBjYW1icmlk
Z2VncmV5cy5jb20+Cj4gPj4+IFtzbmlwXQo+ID4+Cj4gPj4gSWYgSSBjb21tZW50IG91dCB0aGUg
Y2hlY2tzIG9yIG1ha2UgdGhlbSB0byBleHBlY3QgNiBpdCBydW5zIGZpbmUgYWZ0ZXIKPiA+PiB0
aGF0Lgo+ID4+Cj4gPj4gTm8gaWRlYSB3aGF0J3MgZ29pbmcgb24gLSBJIGRvIG5vdCBzZWUgd2hl
cmUgdGhlIDYgY2FuIGNvbWUgZnJvbS4KPiA+Cj4gPiBJIHN1c3BlY3QgYSBjaGFuZ2UvcmVncmVz
c2lvbiBvbiB0aGUgaG9zdCBzaWRlLCBub3QgdGhlIFVNTCBzaWRlLgo+ID4gTWF5YmUgc29tZSBM
U00gbW9kdWxlIHdoaWNoIG1ha2VzIHB0cmFjZSgpICJiZXR0ZXIiPwo+Cj4gVGhpcyBpcyBwb3Nz
aWJsZS4gSSB3aWxsIHJ1biBob3N0IHJlZ3Jlc3Npb24gYXMgd2VsbCB0byBzZWUgaWYgaXQgaXMg
YW55Cj4gZGlmZmVyZW50Lgo+Cj4gSSBzdGlsbCBkbyBub3QgaGF2ZSBhbnkgaWRlYXMgb24gd2h5
IGRvIEkgZ2V0IFVNTCB3aXRoIHVwIHRvIDUuMyBndWVzdAo+IHdvcmtpbmcgYW5kIGJyZWFraW5n
IGluIDUuNCBhbmQgNS41LXJjLi4uCj4KPiBUaGUgY2hhbmdlIGluIHRoYXQgY2FzZSBpcyBndWVz
dCBvbmx5IC0gdGhleSBhcmUgYWxsIGJlaW5nIHJ1biBvbiB0aGUKPiBzYW1lIDUuMyBob3N0IChh
bmQgb2NjYXNpb25hbGx5IG9uIGEgNC4xOSkuCj4KPiBJIGFtIGdvaW5nIHRocm91Z2ggdGhlIGti
dWlsZCBhbmQgbWFrZWZpbGUgY2hhbmdlcyBiZXR3ZWVuIDUuMyBhbmQgNS40Cj4gYXQgdGhlIG1v
bWVudCB0byB0cnkgdG8gZmlndXJlIGl0IG91dC4KCkhhdmUgeW91IHRyaWVkIGdpdCBiaXNlY3Q/
CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAK
R2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAt
LSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRl
Y2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxr
aW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBs
aWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFs
ZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
