Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5E715A63E
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 11:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDEpJWgmD2CloAXRJ/ITOFfWoSahHJd1i0A2dwUr2LE=; b=WU3zP///MCpU56
	g2jM/zG8dAVNuDq2xxoIz2QglrcjqjeLeG2LbolG70k+tQZgUbg90ahnh6tUEBKjZe3SZZWLpKSSj
	FUVprGKxXfIOZC380ovv9MrV6icrRTELJAxsXWZ5GArS8TRFM1A3/OVX+ghAoF/aFCIjKD2b2tCPX
	SUmWPOOVbBumLhh5jyTX5VZZGcJ9QceJmd6dQfz+tdZQLWha03KM4NgFMq1L44WFpEPWmvMt5xzWQ
	X9jv/chyXXI/YsXm3VWz/3NUEGT2PM14OY+gTi0Rxk61djb0lKQTDPkc+ZBsKhQRHH8/cgeCkpjK7
	xECzoQzce7tlGAP/jXVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pCT-0005ic-8V; Wed, 12 Feb 2020 10:24:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pCQ-0005Vo-85
 for linux-um@bombadil.infradead.org; Wed, 12 Feb 2020 10:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=FzMRMmY6NoXA/6WS5Y0wy3AtW5fcV2z/VxgLzBNER0g=; b=SacR0xvxF2dj4mVZnzJsISICtG
 VLYooPGVYX7pXX7OrQ95sX22RKCSI7uGmo0duRezTRImwhglaXduRt7Et6SKASzNHATgrc3gmrzLo
 EbNM+uBhc2+HiXmKKwBdLshC2bn2KddNGDgn62r1A3YmesccyUt8I2QUMV5lgF87WV9qecMvNQTMZ
 pspyuaaDmiR2wuR6QaFsf1WuB8Y1t5GpJFCX36OBjOKlIciuNN7YvM6F3tCFzkzJd16JP+g+29h2A
 eoiQUsxKeJWp1qHnKe4ON7q6SsEttkZvJ5yUT/NPK3DO1XMf6Nq8dxKO6vNFh+/4kscKxMWw6fEQd
 8hZ/nprA==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1p7y-0006yK-PA
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 10:20:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581502797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FzMRMmY6NoXA/6WS5Y0wy3AtW5fcV2z/VxgLzBNER0g=;
 b=TEu8/sr5bzH7G+W1N0wLWkXsxvrYNyRl4u9w07yOrWrgWKke8hbbkQ1CoKfs6FS7AHnC0b
 fhdZdtzXpmRJl/qqAij1ztkQkImP+xjXDiCGMJo1ZvtGIWsUJ7M07BWPhe8yJve7lMR3+i
 6BoWZYh3WPs+N5bdg9zdOAFFbnzJTas=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70-wg4TW9fzMHanpT38QMcodw-1; Wed, 12 Feb 2020 05:19:51 -0500
Received: by mail-qk1-f197.google.com with SMTP id d134so1039621qkc.0
 for <linux-um@lists.infradead.org>; Wed, 12 Feb 2020 02:19:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pkNV/KaDwN6AKmUOQ5xnMqy8J0aNzbNDziugjPZsXyc=;
 b=la1SM3KOKEZaC2g4gq+Wfo5GffPqRsBLYQqW9LmVqcC9xxUpn1yji6Smf/KmGZn4xJ
 UzrVpIUbLWrWtuuwXcZ1bOu7ld6z/I4njAmkEo5KaGIu0LMjz3rH9LjFLNqz9kxBSANK
 8rfVmn7SgcTZEiobGVdImzduOvnW1bP4MhiGF11CnLhq2vnRpR1ffMym/alSW4UzomHl
 /w4xbTDfvopmXg0FQnAGfshSxDOl0sLUP6GVq73calTX3TEFXczdv5V2xeKAEKJ0QBy9
 RlV+3kIwETKg4Hk6Gw5DHzYuyYnLG7F/7yeu602dOMKe6+56zZukM82lFpgtX76meLPo
 pTwQ==
X-Gm-Message-State: APjAAAVYPqyScXCgEOp0y/vTCv58y9jwZhmiulGp4yeCvvHt1pa5VffY
 VnzHTZLRYzvs6qZhBaqNfeKCQSAnHH1iSSfVSEdfMM3UWvDD2v/o0lGyok6yDnKt0iQlK2VV6Km
 NUBg/fW+pguMGwcL3cpYkcYwm
X-Received: by 2002:ac8:498f:: with SMTP id f15mr6359538qtq.123.1581502789850; 
 Wed, 12 Feb 2020 02:19:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqz8bIfk3B81LZ2B3XHLSDkzZ+2r6RRQancRdP1l7oFpUpC4EeBkeHbMVGxD5yYdqkLQc9G2DA==
X-Received: by 2002:ac8:498f:: with SMTP id f15mr6359509qtq.123.1581502789462; 
 Wed, 12 Feb 2020 02:19:49 -0800 (PST)
Received: from redhat.com (bzq-79-176-41-183.red.bezeqint.net. [79.176.41.183])
 by smtp.gmail.com with ESMTPSA id s6sm1435263qth.16.2020.02.12.02.19.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 02:19:48 -0800 (PST)
Date: Wed, 12 Feb 2020 05:19:44 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
Message-ID: <20200212051913-mutt-send-email-mst@kernel.org>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <8e730fe1-3129-de8d-bcb6-d5e10695238a@cambridgegreys.com>
MIME-Version: 1.0
In-Reply-To: <8e730fe1-3129-de8d-bcb6-d5e10695238a@cambridgegreys.com>
X-MC-Unique: wg4TW9fzMHanpT38QMcodw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gV2VkLCBGZWIgMTIsIDIwMjAgYXQgMTA6MDM6MzFBTSArMDAwMCwgQW50b24gSXZhbm92IHdy
b3RlOgo+IAo+IAo+IE9uIDExLzAyLzIwMjAgMTA6MzcsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPiA+IE9uIFR1ZSwgRmViIDExLCAyMDIwIGF0IDA3OjQyOjM3QU0gKzAwMDAsIEFudG9uIEl2
YW5vdiB3cm90ZToKPiA+ID4gT24gMTEvMDIvMjAyMCAwMjo1MSwgSmFzb24gV2FuZyB3cm90ZToK
PiA+ID4gPiAKPiA+ID4gPiBPbiAyMDIwLzIvMTEg5LiK5Y2IMTI6NTUsIEFudG9uIEl2YW5vdiB3
cm90ZToKPiA+ID4gPiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBPbiAwOS8xMi8yMDE5IDEwOjQ4
LCBhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tIHdyb3RlOgo+ID4gPiA+ID4gPiBGcm9t
OiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiBTb21lIG9mIHRoZSBmcmFtZXMgbWFya2VkIGFzIEdTTyB3aGljaCBh
cnJpdmUgYXQKPiA+ID4gPiA+ID4gdmlydGlvX25ldF9oZHJfZnJvbV9za2IoKSBoYXZlIG5vIEdT
T19UWVBFLCBubwo+ID4gPiA+ID4gPiBmcmFnbWVudHMgKGRhdGFfbGVuID0gMCkgYW5kIGxlbmd0
aCBzaWduaWZpY2FudGx5IHNob3J0ZXIKPiA+ID4gPiA+ID4gdGhhbiB0aGUgTVRVICg3NTIgaW4g
bXkgZXhwZXJpbWVudHMpLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhpcyBpcyBvYnNlcnZl
ZCBvbiByYXcgc29ja2V0cyByZWFkaW5nIG9mZiB2RXRoIGludGVyZmFjZXMKPiA+ID4gPiA+ID4g
aW4gYWxsIDQueCBhbmQgNS54IGtlcm5lbHMgSSB0ZXN0ZWQuCj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiBUaGVzZSBmcmFtZXMgYXJlIHJlcG9ydGVkIGFzIGludmFsaWQgd2hpbGUgdGhleSBhcmUg
aW4gZmFjdAo+ID4gPiA+ID4gPiBnc28tbGVzcyBmcmFtZXMuCj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiBUaGlzIHBhdGNoIG1hcmtzIHRoZSB2bmV0IGhlYWRlciBhcyBuby1HU08gZm9yIHRoZW0g
aW5zdGVhZAo+ID4gPiA+ID4gPiBvZiByZXBvcnRpbmcgaXQgYXMgaW52YWxpZC4KPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFudG9uIEl2YW5vdiA8YW50b24uaXZhbm92
QGNhbWJyaWRnZWdyZXlzLmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICDCoCBpbmNs
dWRlL2xpbnV4L3ZpcnRpb19uZXQuaCB8IDggKysrKysrLS0KPiA+ID4gPiA+ID4gIMKgIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggYi9pbmNs
dWRlL2xpbnV4L3ZpcnRpb19uZXQuaAo+ID4gPiA+ID4gPiBpbmRleCAwZDFmZTkyOTdhYzYuLmQ5
MGQ1Y2ZmMWI5YSAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvaW5jbHVkZS9saW51eC92aXJ0aW9f
bmV0LmgKPiA+ID4gPiA+ID4gKysrIGIvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPiA+ID4g
PiA+ID4gQEAgLTExMiw4ICsxMTIsMTIgQEAgc3RhdGljIGlubGluZSBpbnQKPiA+ID4gPiA+ID4g
dmlydGlvX25ldF9oZHJfZnJvbV9za2IoY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiA+ID4g
PiA+ID4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9f
TkVUX0hEUl9HU09fVENQVjQ7Cj4gPiA+ID4gPiA+ICDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZSBp
ZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19UQ1BWNikKPiA+ID4gPiA+ID4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fVENQ
VjY7Cj4gPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoCBlbHNlCj4gPiA+ID4gPiA+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqAgZWxzZSB7Cj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChza2ItPmRh
dGFfbGVuID09IDApCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aGRyLT5nc29fdHlwZSA9IFZJUlRJT19ORVRfSERSX0dTT19OT05FOwo+ID4gPiA+ID4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCB9
Cj4gPiA+ID4gPiA+ICDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNpbmZvLT5nc29fdHlwZSAmIFNL
Ql9HU09fVENQX0VDTikKPiA+ID4gPiA+ID4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhk
ci0+Z3NvX3R5cGUgfD0gVklSVElPX05FVF9IRFJfR1NPX0VDTjsKPiA+ID4gPiA+ID4gIMKgwqDC
oMKgwqAgfSBlbHNlCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBwaW5nLgo+ID4g
PiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gRG8geW91IG1lYW4gZ3NvX3NpemUgaXMgc2V0IGJ1dCBn
c29fdHlwZSBpcyBub3Q/IExvb2tzIGxpa2UgYSBidWcKPiA+ID4gPiBlbHNld2hlcmUuCj4gPiA+
ID4gCj4gPiA+ID4gVGhhbmtzCj4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+IFllcy4KPiA+ID4gCj4g
PiA+IEkgY291bGQgbm90IHRyYWNlIGl0IHdoZXJlIGl0IGlzIGNvbWluZyBmcm9tLgo+ID4gPiAK
PiA+ID4gSSBzZWUgaXQgd2hlbiBkb2luZyByZWN2bW1zZyBvbiByYXcgc29ja2V0cyBpbiB0aGUg
VU1MIHZlY3RvciBuZXR3b3JrCj4gPiA+IGRyaXZlcnMuCj4gPiA+IAo+ID4gCj4gPiBJIHRoaW5r
IHdlIG5lZWQgdG8gZmluZCB0aGUgY3VscHJpdCBhbmQgZml4IGl0IHRoZXJlLCBsb3RzIG9mIG90
aGVyIHRoaW5ncwo+ID4gY2FuIGJyZWFrIG90aGVyd2lzZS4KPiA+IEp1c3QgcHJpbnRpbmcgb3V0
IHNrYi0+ZGV2LT5uYW1lIHNob3VsZCBkbyB0aGUgdHJpY2ssIG5vPwo+IAo+IEkgd2lsbCByZWJ1
aWxkIG15IHJpZyBhbmQgcmV0ZXN0IChpdCdzIGJlZW4gYSB3aGlsZSBzaW5jZSBJIHdvcmtlZCBv
biB0aGlzIGJ1ZykuCj4gCj4gSW4gdGhlb3J5LCBpdCBzaG91bGQgYmUgdmV0aCAtIHRoZSB0ZXN0
IGlzIG92ZXIgYSB2RXRoIHBhaXIgYW5kIGFsbCBmcmFtZXMgYXJlIGxvY2FsbHkgb3JpZ2luYXRl
ZCBieSBpcGVyZi4KPiAKPiBJbiBwcmFjdGljZSAtIEkgd2lsbCByZXRlc3QgYW5kIHBvc3QgdGhl
IHJlc3VsdHMgc29tZXRpbWVzIGxhdGVyIHRvZGF5Lgo+IAo+IEJyZ2RzLAoKCm9rIGlmIGl0J3Mg
dmV0aCB0aGVuIHlvdSBuZWVkIHRvIGFkZCBhIHNpbWlsYXIgcHJpbnRrIHBhdGNoIHRvIHZldGgK
YW5kIHJlLXJ1biB0byBzZWUgd2hlcmUgZG9lcyBpdCBjb21lIGZyb20gb3JpZ2luYWxseS4KCj4g
Pgo+ID4gCj4gPiAKPiA+ID4gLS0gCj4gPiA+IEFudG9uIFIuIEl2YW5vdgo+ID4gPiBDYW1icmlk
Z2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkgTnVtYmVyIDEw
MjczNjYxCj4gPiA+IGh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KPiA+IAo+ID4gCj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gbGlu
dXgtdW0gbWFpbGluZyBsaXN0Cj4gPiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCj4gPiAK
PiAKPiAtLSAKPiBBbnRvbiBSLiBJdmFub3YKPiBDYW1icmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdp
c3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkgTnVtYmVyIDEwMjczNjYxCj4gaHR0cHM6Ly93d3cu
Y2FtYnJpZGdlZ3JleXMuY29tLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
dW0K
