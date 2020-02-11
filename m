Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE07F158CD1
	for <lists+linux-um@lfdr.de>; Tue, 11 Feb 2020 11:38:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOyP1WNkqK1Cs8TM0u8rOl1EZ08U4s701RfGpKvJ32Y=; b=XIy3Io+BrbMNCD
	/LcrbZZ0IXM3RCgiALB/QqK8MwJrZfQzaP4HyDfDfTXcY8cIAbpWngOwqE/xo79VYigi5O58y8tK8
	a3uYcbtg2UjYtAHlcSm1fzXq5c1Sj04yr8ungnU6oRV4BYbQ/0OwbCt+rag/cFpyHCZ2hB2XKR7R1
	r4JCMiFdDE9ogh8SYSwkc85tG3NBedXpJB2sHa7Q6+vUIbmbVyN9I0VgsVkeom/FG5EJBxWXMkcO/
	WgDu3c2crbNhBPZ7iUK6zRgye2sFMKcpeJfwfVeGocE4Vn8pVXq+H63KrQORNmSvw5j36iz/1DJB5
	1ZjDuZoSA3JJEdxc1rkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Svt-00026z-NC; Tue, 11 Feb 2020 10:38:21 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Svr-00026r-D4
 for linux-um@bombadil.infradead.org; Tue, 11 Feb 2020 10:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=5PC0HCludKqchk7qA7elCoVA/0IiH3BfkrsPcUclbyk=; b=R7kVba06BTkC9Ibusvpy+fgw8b
 qJhu67EjMsWspfekKmFbeNI+/EQluTi8FQ0eHctUsflzWwWJ9Pav20WxHDGWb36JqbPSfAbDIdadM
 CbaYs4+nNzN7NFukCgT0Z6ojy2kLbHVFCttu2J2SyX5dvkTuEbXJpKNnw1NEQWmFveDDe9OMVBfB5
 zrXiEx433H0yzoLq4SwKh10KYgyKAecoXFGUHTKJRSmdgu0YAhT9QJLY0DKXmKNXm/bkp3h4JMkM/
 KHNMDTKMHOfWD4nGGQqMh0S3atXih1RFqX1CIgligLlfU8wpmr829sKfIAWzYCC+yCjGjmsto6T41
 ZxT6nv5w==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Svp-00013Q-4N
 for linux-um@lists.infradead.org; Tue, 11 Feb 2020 10:38:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581417479;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5PC0HCludKqchk7qA7elCoVA/0IiH3BfkrsPcUclbyk=;
 b=KnJtSauU58IvrNHNCdr/yV5t1rVPR9L9HJY4xRAXlgFKqPJvPM0rhrcFV//CTwNl958ZEM
 cBFolhWSPecfEUd/OApsDkexLJT6JwdUbaOY6v82Ai9IQZWPCZRvY/+kRP929PIAZodEJK
 LCndIDDNEA8pJ77sW28UiDaoBgq+OEM=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-74-Cgx-dForMcOO9awfFhz_Ug-1; Tue, 11 Feb 2020 05:37:56 -0500
Received: by mail-qk1-f197.google.com with SMTP id e3so5225665qkf.7
 for <linux-um@lists.infradead.org>; Tue, 11 Feb 2020 02:37:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ShA6gshvRnZ0GGC3w/T/LthefFbDChD5+kxR6pT+rSA=;
 b=Y7TfeqrJH4nIhdFXdv6FhrBtc/zhLvSFC6DiiURsc1c5aZYbwRdCmHJhg0nGF1Foa1
 0wsUr3CXtHXPMkIGRo6Is6DK9ilyDvSqxYlX8PrcPNB0pyI+VK6uuv+B1EjfdHo+uQxv
 VxZdYYhi7y9EzzJkEmO0F/nrMDzBRWshhAI8ShaDdv+xwkRrKknsCKLiO5vvS4Obumx2
 S+uXpsxyMva5BQHVNqyGobJooeSjfswonzYX2PgD3pp2to+ev53Y/ocvFU83uyaWG6hP
 2mN0kHwMnNgpCS7Iqoi41ioiAtsmQ2OPoVBzae5sTnzTpOJ2OsKVoCuzmJHoAGpJ/pDE
 Ypeg==
X-Gm-Message-State: APjAAAWSQXBj6pSAJ4BRyOqTJdUcXHLLs6ciZb6JwdKPrgEDd/YI/Gov
 9Kq248TUhQ8i0oVpsRdK62Psashtlp+Fni/UZyyzXvPQsMnljM6SVAQrKxFfC18tiqT8ZZFtLr3
 X/OsNgdLLibWSTE0ljSUPOwXi
X-Received: by 2002:a0c:ea50:: with SMTP id u16mr14484815qvp.110.1581417475251; 
 Tue, 11 Feb 2020 02:37:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqy8CBMwITEeHUVRHIfIioI1sZv68eWt44VxQnsBgQVT6VXW8NhtMwPENj6EvZ4Ioukyy/gL1g==
X-Received: by 2002:a0c:ea50:: with SMTP id u16mr14484803qvp.110.1581417475041; 
 Tue, 11 Feb 2020 02:37:55 -0800 (PST)
Received: from redhat.com (bzq-79-176-41-183.red.bezeqint.net. [79.176.41.183])
 by smtp.gmail.com with ESMTPSA id v55sm1987057qtc.1.2020.02.11.02.37.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 02:37:54 -0800 (PST)
Date: Tue, 11 Feb 2020 05:37:50 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
Message-ID: <20200211053502-mutt-send-email-mst@kernel.org>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
MIME-Version: 1.0
In-Reply-To: <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
X-MC-Unique: Cgx-dForMcOO9awfFhz_Ug-1
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgMDc6NDI6MzdBTSArMDAwMCwgQW50b24gSXZhbm92IHdy
b3RlOgo+IE9uIDExLzAyLzIwMjAgMDI6NTEsIEphc29uIFdhbmcgd3JvdGU6Cj4gPiAKPiA+IE9u
IDIwMjAvMi8xMSDkuIrljYgxMjo1NSwgQW50b24gSXZhbm92IHdyb3RlOgo+ID4gPiAKPiA+ID4g
Cj4gPiA+IE9uIDA5LzEyLzIwMTkgMTA6NDgsIGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5j
b20gd3JvdGU6Cj4gPiA+ID4gRnJvbTogQW50b24gSXZhbm92IDxhbnRvbi5pdmFub3ZAY2FtYnJp
ZGdlZ3JleXMuY29tPgo+ID4gPiA+IAo+ID4gPiA+IFNvbWUgb2YgdGhlIGZyYW1lcyBtYXJrZWQg
YXMgR1NPIHdoaWNoIGFycml2ZSBhdAo+ID4gPiA+IHZpcnRpb19uZXRfaGRyX2Zyb21fc2tiKCkg
aGF2ZSBubyBHU09fVFlQRSwgbm8KPiA+ID4gPiBmcmFnbWVudHMgKGRhdGFfbGVuID0gMCkgYW5k
IGxlbmd0aCBzaWduaWZpY2FudGx5IHNob3J0ZXIKPiA+ID4gPiB0aGFuIHRoZSBNVFUgKDc1MiBp
biBteSBleHBlcmltZW50cykuCj4gPiA+ID4gCj4gPiA+ID4gVGhpcyBpcyBvYnNlcnZlZCBvbiBy
YXcgc29ja2V0cyByZWFkaW5nIG9mZiB2RXRoIGludGVyZmFjZXMKPiA+ID4gPiBpbiBhbGwgNC54
IGFuZCA1Lngga2VybmVscyBJIHRlc3RlZC4KPiA+ID4gPiAKPiA+ID4gPiBUaGVzZSBmcmFtZXMg
YXJlIHJlcG9ydGVkIGFzIGludmFsaWQgd2hpbGUgdGhleSBhcmUgaW4gZmFjdAo+ID4gPiA+IGdz
by1sZXNzIGZyYW1lcy4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIHBhdGNoIG1hcmtzIHRoZSB2bmV0
IGhlYWRlciBhcyBuby1HU08gZm9yIHRoZW0gaW5zdGVhZAo+ID4gPiA+IG9mIHJlcG9ydGluZyBp
dCBhcyBpbnZhbGlkLgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFudG9uIEl2YW5v
diA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiDC
oCBpbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaCB8IDggKysrKysrLS0KPiA+ID4gPiDCoCAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiA+IAo+ID4g
PiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaCBiL2luY2x1ZGUvbGlu
dXgvdmlydGlvX25ldC5oCj4gPiA+ID4gaW5kZXggMGQxZmU5Mjk3YWM2Li5kOTBkNWNmZjFiOWEg
MTAwNjQ0Cj4gPiA+ID4gLS0tIGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPiA+ID4gPiAr
KysgYi9pbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaAo+ID4gPiA+IEBAIC0xMTIsOCArMTEyLDEy
IEBAIHN0YXRpYyBpbmxpbmUgaW50Cj4gPiA+ID4gdmlydGlvX25ldF9oZHJfZnJvbV9za2IoY29u
c3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBoZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX1RDUFY0Owo+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoCBlbHNlIGlmIChzaW5mby0+Z3NvX3R5cGUgJiBTS0JfR1NPX1RDUFY2KQo+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9f
TkVUX0hEUl9HU09fVENQVjY7Cj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgIGVsc2UKPiA+ID4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqAgZWxzZSB7Cj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNrYi0+ZGF0
YV9sZW4gPT0gMCkKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+
Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fTk9ORTsKPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBlbHNlCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gLUVJTlZBTDsKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgfQo+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoCBpZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19UQ1BfRUNOKQo+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgfD0gVklSVElPX05FVF9I
RFJfR1NPX0VDTjsKPiA+ID4gPiDCoMKgwqDCoMKgIH0gZWxzZQo+ID4gPiA+IAo+ID4gPiAKPiA+
ID4gcGluZy4KPiA+ID4gCj4gPiAKPiA+IERvIHlvdSBtZWFuIGdzb19zaXplIGlzIHNldCBidXQg
Z3NvX3R5cGUgaXMgbm90PyBMb29rcyBsaWtlIGEgYnVnCj4gPiBlbHNld2hlcmUuCj4gPiAKPiA+
IFRoYW5rcwo+ID4gCj4gPiAKPiBZZXMuCj4gCj4gSSBjb3VsZCBub3QgdHJhY2UgaXQgd2hlcmUg
aXQgaXMgY29taW5nIGZyb20uCj4gCj4gSSBzZWUgaXQgd2hlbiBkb2luZyByZWN2bW1zZyBvbiBy
YXcgc29ja2V0cyBpbiB0aGUgVU1MIHZlY3RvciBuZXR3b3JrCj4gZHJpdmVycy4KPiAKCkkgdGhp
bmsgd2UgbmVlZCB0byBmaW5kIHRoZSBjdWxwcml0IGFuZCBmaXggaXQgdGhlcmUsIGxvdHMgb2Yg
b3RoZXIgdGhpbmdzCmNhbiBicmVhayBvdGhlcndpc2UuCkp1c3QgcHJpbnRpbmcgb3V0IHNrYi0+
ZGV2LT5uYW1lIHNob3VsZCBkbyB0aGUgdHJpY2ssIG5vPwoKCj4gLS0gCj4gQW50b24gUi4gSXZh
bm92Cj4gQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21w
YW55IE51bWJlciAxMDI3MzY2MQo+IGh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBt
YWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
