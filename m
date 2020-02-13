Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DDA15C469
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 16:53:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rU7AQlQ+pwVzErhzJKLiMsg3+qVP9st/Co+fyPr/LQ=; b=tX2Z+oe4tt/L2D
	LTjGvQaJrzxRdvJAzEfL7h7vTjsg20WhRqK8/al5KuaoNezCyjRKEjcyyKOEFYtE5o+XDUvt24jdf
	1KhAl3w+Bc6mVKxjl4QsBK/adV+5Xfneu6+ulsnM8WotpSHc0MRoNYWjmBUsVzdaLQlxKfg6QMb7X
	B94FWwDqE/GT4hhFVai2CWMKQB2UGMREXe2fGdI4hRWsUbAG790AG9DGSX3ec0KgCw27wLYVM2dqA
	A5J2TrC0HLfsIo7Hd9arZmD7BB3pjNyJcqy7RTV6AKXknnZASBLWMqFbLuFWh2XF4kyqeglcP7xzb
	VkoAEjPTKxehNmhEqprw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Go6-0001Mh-H2; Thu, 13 Feb 2020 15:53:38 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Go3-0001Lh-1v
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 15:53:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581609213;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FCJAHmAOynberCyY4eirpxDMguWM6gnk1E1tkrK4ZRw=;
 b=h9o0nr/aX5WmEh+3BmNCxH2/wIZuvYdsgvcGy3HyBSgEDFzEdB/kors3y4hTEjWlbt4S7o
 +dFdgVI4NmzIiri1ybIG/Pvl5H7wfqzb/D2MX0vfbzvUXKLFi6vyHvW/3vXFgBJHyOnOyI
 CTYn1YU9eRnU1t6Q2W/ypjBl5MRCVIA=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-YfC1ZaQIPtueQc8eTeVxEw-1; Thu, 13 Feb 2020 10:53:31 -0500
Received: by mail-qv1-f69.google.com with SMTP id z9so3751465qvo.10
 for <linux-um@lists.infradead.org>; Thu, 13 Feb 2020 07:53:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3FkWdFXSGm8nRf/G4t6XQozUjKUXP7Krdr59zDr+Cjw=;
 b=BZMqvM60CGPYlLJfiCtXknX/l+84lu6UmDfiZ1FKcuv8MbOdn2a9jYRMGvcCcIzo4/
 280tY/Wd74E8O0owDVwEhEcDoyo6IuEuTmH/JN6J5JtlYfS9FpBytVPG5k5l1Uk5Rx7m
 m2AguHm0B+RCG31s+oP6N6djTXkzyDjZJt0eVAslqkDhDEJD9HJ1ku4dNPao9/IzCmox
 n6HYsHwLugtN3ADxki1GRzWOabdQgWeKTih6jrix4zhgZpgkh4/mdnTnGXTVYlRzFdVN
 thn+v++tsztHcJS236a9306J4MkDtI7OpqjmsR4z4tNqdAVSKluHFI80MA7pC/eACB7X
 85+A==
X-Gm-Message-State: APjAAAUK0PGPb6BlJBhFUolkfxwGDzRyghLsTZ3z/sM+iUdJ0ACkqYt6
 NCojscn8nM3JAjWlPOO6SYzyt+Wbr5d4nAolkyi34jH0+qjQ/hvEYQ5uKubXjg3gTxAyiMhNEAL
 9eTEgblCCIVmeGejGa27U1s5f
X-Received: by 2002:ae9:e88e:: with SMTP id a136mr172042qkg.71.1581609210920; 
 Thu, 13 Feb 2020 07:53:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqxik+NUrSDUNwyo9OGo5sO0s3wLTjJedNNG8mgbQZB+akZZDVEf2GTRfMcPb1EYKXHzYpEcoQ==
X-Received: by 2002:ae9:e88e:: with SMTP id a136mr172018qkg.71.1581609210635; 
 Thu, 13 Feb 2020 07:53:30 -0800 (PST)
Received: from redhat.com (bzq-79-176-28-95.red.bezeqint.net. [79.176.28.95])
 by smtp.gmail.com with ESMTPSA id
 l6sm1651426qti.10.2020.02.13.07.53.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 07:53:29 -0800 (PST)
Date: Thu, 13 Feb 2020 10:53:25 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Eric Dumazet <eric.dumazet@gmail.com>
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
Message-ID: <20200213105010-mutt-send-email-mst@kernel.org>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
 <20200213045937-mutt-send-email-mst@kernel.org>
 <94fb9656-99ee-a001-e428-9d76c3620e61@gmail.com>
MIME-Version: 1.0
In-Reply-To: <94fb9656-99ee-a001-e428-9d76c3620e61@gmail.com>
X-MC-Unique: YfC1ZaQIPtueQc8eTeVxEw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_075335_174939_B60B623A 
X-CRM114-Status: GOOD (  27.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 virtualization@lists.linux-foundation.org, linux-um@lists.infradead.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMDc6NDQ6MDZBTSAtMDgwMCwgRXJpYyBEdW1hemV0IHdy
b3RlOgo+IAo+IAo+IE9uIDIvMTMvMjAgMjowMCBBTSwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gV2VkLCBGZWIgMTIsIDIwMjAgYXQgMDU6Mzg6MDlQTSArMDAwMCwgQW50b24gSXZh
bm92IHdyb3RlOgo+ID4+Cj4gPj4KPiA+PiBPbiAxMS8wMi8yMDIwIDEwOjM3LCBNaWNoYWVsIFMu
IFRzaXJraW4gd3JvdGU6Cj4gPj4+IE9uIFR1ZSwgRmViIDExLCAyMDIwIGF0IDA3OjQyOjM3QU0g
KzAwMDAsIEFudG9uIEl2YW5vdiB3cm90ZToKPiA+Pj4+IE9uIDExLzAyLzIwMjAgMDI6NTEsIEph
c29uIFdhbmcgd3JvdGU6Cj4gPj4+Pj4KPiA+Pj4+PiBPbiAyMDIwLzIvMTEg5LiK5Y2IMTI6NTUs
IEFudG9uIEl2YW5vdiB3cm90ZToKPiA+Pj4+Pj4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gT24gMDkvMTIv
MjAxOSAxMDo0OCwgYW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbSB3cm90ZToKPiA+Pj4+
Pj4+IEZyb206IEFudG9uIEl2YW5vdiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4K
PiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBTb21lIG9mIHRoZSBmcmFtZXMgbWFya2VkIGFzIEdTTyB3aGlj
aCBhcnJpdmUgYXQKPiA+Pj4+Pj4+IHZpcnRpb19uZXRfaGRyX2Zyb21fc2tiKCkgaGF2ZSBubyBH
U09fVFlQRSwgbm8KPiA+Pj4+Pj4+IGZyYWdtZW50cyAoZGF0YV9sZW4gPSAwKSBhbmQgbGVuZ3Ro
IHNpZ25pZmljYW50bHkgc2hvcnRlcgo+ID4+Pj4+Pj4gdGhhbiB0aGUgTVRVICg3NTIgaW4gbXkg
ZXhwZXJpbWVudHMpLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFRoaXMgaXMgb2JzZXJ2ZWQgb24gcmF3
IHNvY2tldHMgcmVhZGluZyBvZmYgdkV0aCBpbnRlcmZhY2VzCj4gPj4+Pj4+PiBpbiBhbGwgNC54
IGFuZCA1Lngga2VybmVscyBJIHRlc3RlZC4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBUaGVzZSBmcmFt
ZXMgYXJlIHJlcG9ydGVkIGFzIGludmFsaWQgd2hpbGUgdGhleSBhcmUgaW4gZmFjdAo+ID4+Pj4+
Pj4gZ3NvLWxlc3MgZnJhbWVzLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFRoaXMgcGF0Y2ggbWFya3Mg
dGhlIHZuZXQgaGVhZGVyIGFzIG5vLUdTTyBmb3IgdGhlbSBpbnN0ZWFkCj4gPj4+Pj4+PiBvZiBy
ZXBvcnRpbmcgaXQgYXMgaW52YWxpZC4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4gPj4+Pj4+
PiAtLS0KPiA+Pj4+Pj4+ICDCoCBpbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaCB8IDggKysrKysr
LS0KPiA+Pj4+Pj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3Zp
cnRpb19uZXQuaCBiL2luY2x1ZGUvbGludXgvdmlydGlvX25ldC5oCj4gPj4+Pj4+PiBpbmRleCAw
ZDFmZTkyOTdhYzYuLmQ5MGQ1Y2ZmMWI5YSAxMDA2NDQKPiA+Pj4+Pj4+IC0tLSBhL2luY2x1ZGUv
bGludXgvdmlydGlvX25ldC5oCj4gPj4+Pj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L3ZpcnRpb19u
ZXQuaAo+ID4+Pj4+Pj4gQEAgLTExMiw4ICsxMTIsMTIgQEAgc3RhdGljIGlubGluZSBpbnQKPiA+
Pj4+Pj4+IHZpcnRpb19uZXRfaGRyX2Zyb21fc2tiKGNvbnN0IHN0cnVjdCBza19idWZmICpza2Is
Cj4gPj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5nc29fdHlwZSA9IFZJ
UlRJT19ORVRfSERSX0dTT19UQ1BWNDsKPiA+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgZWxz
ZSBpZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19UQ1BWNikKPiA+Pj4+Pj4+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX1RD
UFY2Owo+ID4+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGVsc2UKPiA+Pj4+Pj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+ID4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGVs
c2Ugewo+ID4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNrYi0+ZGF0YV9sZW4g
PT0gMCkKPiA+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5nc29f
dHlwZSA9IFZJUlRJT19ORVRfSERSX0dTT19OT05FOwo+ID4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZWxzZQo+ID4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gLUVJTlZBTDsKPiA+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4gPj4+Pj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgIGlmIChzaW5mby0+Z3NvX3R5cGUgJiBTS0JfR1NPX1RDUF9FQ04pCj4g
Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5nc29fdHlwZSB8PSBWSVJU
SU9fTkVUX0hEUl9HU09fRUNOOwo+ID4+Pj4+Pj4gIMKgwqDCoMKgwqAgfSBlbHNlCj4gPj4+Pj4+
Pgo+ID4+Pj4+Pgo+ID4+Pj4+PiBwaW5nLgo+ID4+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gRG8geW91
IG1lYW4gZ3NvX3NpemUgaXMgc2V0IGJ1dCBnc29fdHlwZSBpcyBub3Q/IExvb2tzIGxpa2UgYSBi
dWcKPiA+Pj4+PiBlbHNld2hlcmUuCj4gPj4+Pj4KPiA+Pj4+PiBUaGFua3MKPiA+Pj4+Pgo+ID4+
Pj4+Cj4gPj4+PiBZZXMuCj4gPj4+Pgo+ID4+Pj4gSSBjb3VsZCBub3QgdHJhY2UgaXQgd2hlcmUg
aXQgaXMgY29taW5nIGZyb20uCj4gPj4+Pgo+ID4+Pj4gSSBzZWUgaXQgd2hlbiBkb2luZyByZWN2
bW1zZyBvbiByYXcgc29ja2V0cyBpbiB0aGUgVU1MIHZlY3RvciBuZXR3b3JrCj4gPj4+PiBkcml2
ZXJzLgo+ID4+Pj4KPiA+Pj4KPiA+Pj4gSSB0aGluayB3ZSBuZWVkIHRvIGZpbmQgdGhlIGN1bHBy
aXQgYW5kIGZpeCBpdCB0aGVyZSwgbG90cyBvZiBvdGhlciB0aGluZ3MKPiA+Pj4gY2FuIGJyZWFr
IG90aGVyd2lzZS4KPiA+Pj4gSnVzdCBwcmludGluZyBvdXQgc2tiLT5kZXYtPm5hbWUgc2hvdWxk
IGRvIHRoZSB0cmljaywgbm8/Cj4gPj4KPiA+PiBUaGUgcHJpbnRrIGluIHZpcnRpb19uZXRfaGRy
X2Zyb21fc2tiIHNheXMgTlVMTC4KPiA+Pgo+ID4+IFRoYXQgaXMgcHJvYmFibHkgbm9ybWFsIGZv
ciBhIGxvY2FsbHkgb3JpZ2luYXRlZCBmcmFtZS4KPiA+Pgo+ID4+IEkgY2Fubm90IHJlcHJvZHVj
ZSB0aGlzIHdpdGggbmV0d29yayB0cmFmZmljIGJ5IHRoZSB3YXkgLSBpdCBoYXBwZW5zIG9ubHkg
aWYgdGhlIHRyYWZmaWMgaXMgbG9jYWxseSBvcmlnaW5hdGVkIG9uIHRoZSBob3N0Lgo+ID4+Cj4g
Pj4gQSwKPiA+IAo+ID4gT0sgc28gaXMgaXQgY29kZSBpbiBfX3RjcF90cmFuc21pdF9za2IgdGhh
dCBzZXRzIGdzb19zaXplIHRvIG5vbi1udWxsCj4gPiB3aGVuIGdzb190eXBlIGlzIDA/Cj4gPgo+
IAo+IENvcnJlY3Qgd2F5IHRvIGRldGVybWluZSBpZiBhIHBhY2tldCBpcyBhIGdzbyBvbmUgaXMg
YnkgbG9va2luZyBhdCBnc29fc2l6ZS4KPiBUaGVuIG9ubHkgaXQgaXMgbGVnYWwgbG9va2luZyBh
dCBnc29fdHlwZQo+IAo+IAo+IHN0YXRpYyBpbmxpbmUgYm9vbCBza2JfaXNfZ3NvKGNvbnN0IHN0
cnVjdCBza19idWZmICpza2IpCj4gewo+ICAgICByZXR1cm4gc2tiX3NoaW5mbyhza2IpLT5nc29f
c2l6ZTsKPiB9Cj4gCj4gLyogTm90ZTogU2hvdWxkIGJlIGNhbGxlZCBvbmx5IGlmIHNrYl9pc19n
c28oc2tiKSBpcyB0cnVlICovCj4gc3RhdGljIGlubGluZSBib29sIHNrYl9pc19nc29fdjYoY29u
c3Qgc3RydWN0IHNrX2J1ZmYgKnNrYikKPiAuLi4KPiAKPiAKPiBUaGVyZSBpcyBhYnNvbHV0ZWx5
IG5vIHJlbGF0aW9uIGJldHdlZW4gR1NPIGFuZCBza2ItPmRhdGFfbGVuLCBza2IgY2FuIGJlIGxp
bmVhcml6ZWQKPiBmb3IgdmFyaW91cyBvcnRob2dvbmFsIHJlYXNvbnMuCgpUaGUgcmVwb3J0ZWQg
cHJvYmxlbSBpcyB0aGF0IHZpcnRpbyBnZXRzIGEgcGFja2V0IHdoZXJlIGdzb19zaXplCmlzICEw
IGJ1dCBnc29fdHlwZSBpcyAwLgoKSXQgY3VycmVudGx5IGRyb3BzIHRoZXNlIG9uIHRoZSBhc3N1
bXB0aW9uIHRoYXQgaXQncyBzb21lIHR5cGUKb2YgYSBnc28gcGFja2V0IGl0IGRvZXMgbm90IGtu
b3cgaG93IHRvIGhhbmRsZS4KCgpTbyB5b3UgYXJlIHNheWluZyBpZiBza2JfaXNfZ3NvIHdlIGNh
biBzdGlsbCBoYXZlIGdzb190eXBlIHNldCB0byAwLAphbmQgdGhhdCdzIGFuIGV4cGVjdGVkIGNv
bmZpZ3VyYXRpb24/CgpTbyB0aGUgcGF0Y2ggc2hvdWxkIGp1c3QgYmU6CgoKLSAgICAgICAgaWYg
KHNrYl9pc19nc28oc2tiKSkgeworICAgICAgICBpZiAoc2tiX2lzX2dzbyhza2IpICYmIHNpbmZv
LT5nc29fdHlwZSkgewoKCgo/CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11
bQo=
