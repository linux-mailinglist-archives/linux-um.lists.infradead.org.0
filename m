Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED8415BC44
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 11:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adlPazxmRVOob3ug9sQexWTBD6IL0gp/Jh4VDwdTUtw=; b=nzb4uf0Fwci1mZ
	MItjOMF3psrV/F35o2BvZFKcfgcsL0pefI5BN6PnEj+JAfzKMpxD10iCKIcWNSc75IsnXavJrJJb6
	UQJTpPXgo1wX8uwofyhUIXhJ1NGzqJ1EXMFoJaVnW1n5UqcVmMZcZcmh+N+pP9N0SgyX7t9vi3O6c
	rLXzLE+J6uenkiTturhCpTbAVGAgiQ6kW0VdJC6xqlBLMHGYnTaPr/LgeLeszD6AS7c8IhWrzISe9
	HSe3GJWf2wM3Y1L6ue9y0oG6NTMaeRO5xCosczh/q0zUiqD8f5S++gTnEwXPu8ezGlhvm+y78Tc1K
	Z6jv61uDH/DNNIct5RWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BJ0-0007N3-47; Thu, 13 Feb 2020 10:01:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BIy-0007Ml-L9
 for linux-um@bombadil.infradead.org; Thu, 13 Feb 2020 10:01:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Jr7hImg2+/GgMz++oca5zw7cqRvFVh9P56U3vCP6o6E=; b=tpby1dKY84dXWYTI0uAWvotg9I
 WmI5wHoUBVX5agy4AWHGqy5Ie4ViLKne25rygHxnYMD48mHUDyqq+q3YECFk6j7C+5E+35ik0H9XS
 Mcq0/yrh+D563P9ArPoxdBE0jIiNFZH/qOP5mJ2eU75Jzu9fXEfK9c/KZLzVbF+WHQVuJH+o9BFXa
 1Rswgk7MCTWoK+L/Gp/Recu625hDIeXyXdH8hk45dVzNrBKUp2qYmwW4jqdCUwHrLHB2R+r7HAih6
 WnQz5+tyVaLehVJpURcYffTG+XylRYigJK7JIujsmvzlWhVWLWIPTom9Mia9EzEnMEp3Cg0CrbvmO
 bKPbn9SQ==;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BIv-0007PX-FZ
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 10:01:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581588043;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jr7hImg2+/GgMz++oca5zw7cqRvFVh9P56U3vCP6o6E=;
 b=XmxbG6LpKbunb3YNsC7OoqVTZMnas8BIxokZ4p66wxs7/hwYalqfgZhHfqbFOqjJiIHJze
 HJ8fUtC5hvqJXlaNbJ/0I7I4Ra17F9kZRhVE/cHZN8KL/kONM+VYymhZ1IDuKmkx4mE/TF
 lZhXd+HDP8wYrqTMbeYUhhXULQJ+SdE=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-WaKPyfuRMWW28LGVMwA78g-1; Thu, 13 Feb 2020 05:00:36 -0500
Received: by mail-qt1-f200.google.com with SMTP id c8so3286612qte.22
 for <linux-um@lists.infradead.org>; Thu, 13 Feb 2020 02:00:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Ytg6S/SjmgY27QCPpYz1CiXOXhwp3fWgAbdebdN5iyM=;
 b=sSnadzuNHYiY6JcTYXssJVBK4JPZIdk68B5rSquAR+PTYxV1nV6jrcLW8treRPezur
 q1BpULeXtPV+7SpprqEgqOmNXwlJB4zKpOoLgzr6XcHSjZyRrw+F/rRahOJKcvdd4suX
 9o3sP3dYJK9lkY8G5NovWaMJtUil3QzZOvtDR7HoqH253E8vB75qFuQmdn5szdlJEK2Q
 9h8+GAE2T0041ZU41LT7iIkr+hNl7TuWG/RG4DONCPVFT11mghWikxCrg0bc63LkaqP7
 K+ebCaiPDIwjJKnokTdR4l5lU60kuYcFLwxfSZ6ekB4/Mlk04GMAq9aCgyqNZxgEnlcV
 M0kQ==
X-Gm-Message-State: APjAAAWy2/lLx7gYTDxFglMRqXoFZaidIvgCGhvDtIyaSEQ3zSFNQgWQ
 sFVWN2NzbK9KuBKYyPuaYAiweOThrv+lc1fLwTj/S/CBJwJCEvbSJt/XuxBcC/fF5DpDV8KMHO4
 CYIhn/V0e5a+8rNRjNIEFnZgN
X-Received: by 2002:ac8:5486:: with SMTP id h6mr11035480qtq.17.1581588035511; 
 Thu, 13 Feb 2020 02:00:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqy5YIEiMuYiBy1dpXQWozHdfbbuS4aN+XNzTRes1+I7PcyUDz39RveWTfedPrdmALPyWPBi8w==
X-Received: by 2002:ac8:5486:: with SMTP id h6mr11035446qtq.17.1581588035063; 
 Thu, 13 Feb 2020 02:00:35 -0800 (PST)
Received: from redhat.com (bzq-79-176-28-95.red.bezeqint.net. [79.176.28.95])
 by smtp.gmail.com with ESMTPSA id
 g6sm1030372qki.100.2020.02.13.02.00.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 02:00:34 -0800 (PST)
Date: Thu, 13 Feb 2020 05:00:29 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
Message-ID: <20200213045937-mutt-send-email-mst@kernel.org>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
MIME-Version: 1.0
In-Reply-To: <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
X-MC-Unique: WaKPyfuRMWW28LGVMwA78g-1
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
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gV2VkLCBGZWIgMTIsIDIwMjAgYXQgMDU6Mzg6MDlQTSArMDAwMCwgQW50b24gSXZhbm92IHdy
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
IHNrYi0+ZGV2LT5uYW1lIHNob3VsZCBkbyB0aGUgdHJpY2ssIG5vPwo+IAo+IFRoZSBwcmludGsg
aW4gdmlydGlvX25ldF9oZHJfZnJvbV9za2Igc2F5cyBOVUxMLgo+IAo+IFRoYXQgaXMgcHJvYmFi
bHkgbm9ybWFsIGZvciBhIGxvY2FsbHkgb3JpZ2luYXRlZCBmcmFtZS4KPiAKPiBJIGNhbm5vdCBy
ZXByb2R1Y2UgdGhpcyB3aXRoIG5ldHdvcmsgdHJhZmZpYyBieSB0aGUgd2F5IC0gaXQgaGFwcGVu
cyBvbmx5IGlmIHRoZSB0cmFmZmljIGlzIGxvY2FsbHkgb3JpZ2luYXRlZCBvbiB0aGUgaG9zdC4K
PiAKPiBBLAoKT0sgc28gaXMgaXQgY29kZSBpbiBfX3RjcF90cmFuc21pdF9za2IgdGhhdCBzZXRz
IGdzb19zaXplIHRvIG5vbi1udWxsCndoZW4gZ3NvX3R5cGUgaXMgMD8KCgo+ID4gCj4gPiAKPiA+
ID4gLS0gCj4gPiA+IEFudG9uIFIuIEl2YW5vdgo+ID4gPiBDYW1icmlkZ2VncmV5cyBMaW1pdGVk
LiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkgTnVtYmVyIDEwMjczNjYxCj4gPiA+IGh0
dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KPiA+IAo+ID4gCj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gbGludXgtdW0gbWFpbGluZyBs
aXN0Cj4gPiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCj4gPiAKPiAKPiAtLSAKPiBBbnRv
biBSLiBJdmFub3YKPiBDYW1icmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xh
bmQuIENvbXBhbnkgTnVtYmVyIDEwMjczNjYxCj4gaHR0cHM6Ly93d3cuY2FtYnJpZGdlZ3JleXMu
Y29tLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
