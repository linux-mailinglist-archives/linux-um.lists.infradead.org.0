Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B0211294D
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 11:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8usWxo0Nq8QGa+mxeQk0Xw67VOnoZJtCCyTU9Fdn0dQ=; b=o6uPnf6JRWRdWu
	mn7U0xrhDrNQ/pS+Q1dkPK+zBHQjkL9WgIosFQUau7/pZt72o0qU7CsKdPwIJABzlcDnK9yKdfpMR
	1YC7BLdl5JtpxTJ7MVTEdjBx8gV6pyUgwsxGfgaHw5D2Ev57tPRQvOwFPXQ2duePd55qhrs8vzgOh
	hf/2Th9c8nbam9NWNg0jAv8flx1bsIvqbGjzGnltQ5F4soXaGzkeJP2EO1q/lAIAxqliMqmyrnxSg
	/PPOLxliLkCMZRaunh7GBIfKa88+fmUZnOoNa6qcOjVP2Yn2EGUpeAjPpr/MZOiqbskMjn8ukCe0m
	iwqbK+uz8rwtQfxa4x+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRwA-0006kH-SH; Wed, 04 Dec 2019 10:31:14 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRw7-0006jT-FP
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 10:31:12 +0000
Received: by mail-ot1-f43.google.com with SMTP id 66so5847622otd.9
 for <linux-um@lists.infradead.org>; Wed, 04 Dec 2019 02:31:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sMDN7FxBcsMrp8pI0Sjlhf5q8MrX/43M1F8n5na61lk=;
 b=MCAuFmE5n+oBKNbbNYXoIC1VBZkBBLoHdK8YSLPwnS/I4LM6bq+pAi4MYRfbEa2Gb6
 eM+VomsDcOVFyIlruPoq+vjRkKtcQo/XR3TpnC5w3C7BIxMHRAwZZdxn62GIjgcbEj3a
 LeAu9PSc4K4sNxTpdFfFN2eVJqzM7KkrXAEz0+1f0/hLUmWH9zzCI6RiTKEKoAn2fh6U
 4WJcEfIXJoKrWBm9qaNAXbewsQdUn2Cj81cqDuYhD0O2HZqvRGdoMH9faNdXhWZQn4c+
 prRoH1iPVMFW0hIvPGt4LfN2vhlN05LT7PiyVWSd0FtBe67Fn28WAl74fsGqqRrybe08
 p9Qw==
X-Gm-Message-State: APjAAAWZeeYMXPERDy1hhiUvWDAeKZs2cdXOr8vQE2CcQwweFBZC7gMc
 RrppaR/dAV84Hcz3chKevKsxtL5Kwjw8L68NF9Nc1A==
X-Google-Smtp-Source: APXvYqwUkO6N6E9UaBr/DUqlWv5jhKC1LUR2Y0UiKSmbbldidFIxNTc3rjVMSjs92LTUeyG+YzZulM1wAbe/XmPxt0Q=
X-Received: by 2002:a9d:5d10:: with SMTP id b16mr1912496oti.250.1575455469770; 
 Wed, 04 Dec 2019 02:31:09 -0800 (PST)
MIME-Version: 1.0
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
 <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
 <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
 <CAMuHMdVrLPKwXxfyG3-Y5yUF9KPrTzosydxN1rkBFcJXsWi86Q@mail.gmail.com>
 <a9620d0a-31cd-f208-76de-63406496e4a0@cambridgegreys.com>
In-Reply-To: <a9620d0a-31cd-f208-76de-63406496e4a0@cambridgegreys.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Dec 2019 11:30:58 +0100
Message-ID: <CAMuHMdV_+Ed0Km0K70ZgFOd0jTeCD8eBraC54mw3=otcVnDc_g@mail.gmail.com>
Subject: Re: I get 5.4 fail to start
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_023111_509398_85FBF848 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
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

SGkgQW50b24sCgpPbiBXZWQsIERlYyA0LCAyMDE5IGF0IDExOjI3IEFNIEFudG9uIEl2YW5vdgo8
YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4gd3JvdGU6Cj4gT24gMDQvMTIvMjAxOSAx
MDoxMywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4gT24gV2VkLCBEZWMgNCwgMjAxOSBh
dCAxMDoyMCBBTSBBbnRvbiBJdmFub3YKPiA+IDxhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMu
Y29tPiB3cm90ZToKPiA+PiBPbiAwNC8xMi8yMDE5IDA5OjAzLCBSaWNoYXJkIFdlaW5iZXJnZXIg
d3JvdGU6Cj4gPj4+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiA+Pj4+IFZvbjog
ImFudG9uIGl2YW5vdiIgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4gPj4+Pj4g
W3NuaXBdCj4gPj4+Pgo+ID4+Pj4gSWYgSSBjb21tZW50IG91dCB0aGUgY2hlY2tzIG9yIG1ha2Ug
dGhlbSB0byBleHBlY3QgNiBpdCBydW5zIGZpbmUgYWZ0ZXIKPiA+Pj4+IHRoYXQuCj4gPj4+Pgo+
ID4+Pj4gTm8gaWRlYSB3aGF0J3MgZ29pbmcgb24gLSBJIGRvIG5vdCBzZWUgd2hlcmUgdGhlIDYg
Y2FuIGNvbWUgZnJvbS4KPiA+Pj4KPiA+Pj4gSSBzdXNwZWN0IGEgY2hhbmdlL3JlZ3Jlc3Npb24g
b24gdGhlIGhvc3Qgc2lkZSwgbm90IHRoZSBVTUwgc2lkZS4KPiA+Pj4gTWF5YmUgc29tZSBMU00g
bW9kdWxlIHdoaWNoIG1ha2VzIHB0cmFjZSgpICJiZXR0ZXIiPwo+ID4+Cj4gPj4gVGhpcyBpcyBw
b3NzaWJsZS4gSSB3aWxsIHJ1biBob3N0IHJlZ3Jlc3Npb24gYXMgd2VsbCB0byBzZWUgaWYgaXQg
aXMgYW55Cj4gPj4gZGlmZmVyZW50Lgo+ID4+Cj4gPj4gSSBzdGlsbCBkbyBub3QgaGF2ZSBhbnkg
aWRlYXMgb24gd2h5IGRvIEkgZ2V0IFVNTCB3aXRoIHVwIHRvIDUuMyBndWVzdAo+ID4+IHdvcmtp
bmcgYW5kIGJyZWFraW5nIGluIDUuNCBhbmQgNS41LXJjLi4uCj4gPj4KPiA+PiBUaGUgY2hhbmdl
IGluIHRoYXQgY2FzZSBpcyBndWVzdCBvbmx5IC0gdGhleSBhcmUgYWxsIGJlaW5nIHJ1biBvbiB0
aGUKPiA+PiBzYW1lIDUuMyBob3N0IChhbmQgb2NjYXNpb25hbGx5IG9uIGEgNC4xOSkuCj4gPj4K
PiA+PiBJIGFtIGdvaW5nIHRocm91Z2ggdGhlIGtidWlsZCBhbmQgbWFrZWZpbGUgY2hhbmdlcyBi
ZXR3ZWVuIDUuMyBhbmQgNS40Cj4gPj4gYXQgdGhlIG1vbWVudCB0byB0cnkgdG8gZmlndXJlIGl0
IG91dC4KPiA+Cj4gPiBIYXZlIHlvdSB0cmllZCBnaXQgYmlzZWN0Pwo+Cj4gVW5kZXIgd2F5IGF0
IHRoZSBtb21lbnQuIEkgZmlyc3QgdHJpZWQgdG8gaGF2ZSBhIGxvb2sgYXQgdXN1YWwgc3VzcGVj
dHMKPiBiZWZvcmUgSSByZXNvcnRlZCB0byB0aGF0IGJlY2F1c2UgdGhlIHdpbmRvdyBpcyBxdWl0
ZSBiaWcuCj4KPiBJIGhhdmUgNS4zIC0gZ29vZCBhbmQgNS40LXJjMSBiYWQgd2hpY2ggaXMgMTI3
MzMgY29tbWl0cyA6KQoKTXVjaCBiZXR0ZXIgdGhhbiB0aGUgNC4xMS1nb29kLCA1LjQtYmFkIEkg
YmlzZWN0ZWQgeWVzdGVyZGF5LgpGb3J0dW5hdGVseSBiaXNlY3Rpb24gdGltZSBpcyBsb2dhcml0
aG1pYyA7LSkKCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2Vl
cnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9u
ZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25z
IHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4g
SSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29t
ZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51
cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
