Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325B415BF04
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 14:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDGHoK1FNbyho1V2iJZagauhWQTRSFYQDPTF5UEKjU8=; b=tRWQtr3cJg2s6F
	XMxODEjy+Y6DBWtnlF9QrnnFApH7/aY7jNKRM8UZ4JF6ZoQsFmvADLsLSW98t0eQYx045rMLoCQnB
	SVaWPaCg8YZA5G9G1rsB/PpLlu1Qw20/udjOE2gVPRajzxe3gjR6KT+7t8HFMKNUzWfKbPsM73hoB
	w6xw9tJyn0an8ZTp+aaaCrHdfI/djqGrIRAcZ6EW9IzP5hgXspwPZjhy+eafxI2hJya851mnz366U
	CiEqjXINwjNY6v05jAlo6DG1DVXCtTyQyGyJXuxMxi2QNApqSx/h4Fv6GwVi3ZYMInGop2EVQA2k+
	zhGTnkmw56nJ45fMpH/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2EIC-0005d0-W3; Thu, 13 Feb 2020 13:12:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2EI9-0005cE-9J
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 13:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581599543;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MJnsW8ML25eF24/pwSETKmkCR0wsKHBQ+aW8gK3mERM=;
 b=eLkTt5Kgpl+lu+5ARQi6naPg+6Sehxse1bdr2ndFAuxjXeyQ9mulamcWjEu13v6/f2QV6V
 2aMTZ+4nhYW4RfmpjXYT7SOsvHsiMPVUbiTLKBUpJfa/S/xrw/DdMMBa+0Drmo5LJyvt+x
 6gauGbXRLtL+ASIqFM5tJlGEY3TIpCc=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-Gjq2p9_dN66Wp4tdcJmUWQ-1; Thu, 13 Feb 2020 08:12:16 -0500
Received: by mail-wm1-f71.google.com with SMTP id d4so2318961wmd.7
 for <linux-um@lists.infradead.org>; Thu, 13 Feb 2020 05:12:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wsQZ3q+lcvXCCh85Qi7IpJnWbcPUNf37iJtXE8O7tyE=;
 b=gAZAEbqKJWf4wb4GltEgDMirmKK5R2uV3HbsqLFZBDP384+XzO9orPoj7JTpU7XYfc
 aT3Se97GdqHkYlPf8zIdpPgrUPCaG+7x8uCgsmHTZCrIrqRjoLnl9fqUiwuzKTUc1e3W
 mvHDU8UiVrQBT2Oh6MBXaP/I/HZx3PQ4xsJKiwhPCCLXI18OYqdy8yrixnhsfEDg0jva
 QaJ66kPYy2zO96Nj1ShFU11TYp+CWtmdITA25LRg8XU2jhtJGmrXkPEJiBJ4PX6icUdW
 pkvhF2XJklrp1J2STUIbZacNLVUZLZxSC0Kx4WhV68BedttZA3C16SZsgQHMHab9Z3my
 68nw==
X-Gm-Message-State: APjAAAXrBoVshkE0357RY7yyQ8klO25wcOq8xrWJMA0fH7Pn0ldP2GPi
 QwFCaoNZQWy4nU7LPyA8x3ch5A3VkO0ZRJIUN2lL1xsaCt33+B7VlVzqNho654CRyOoIrMx4pnk
 ZuCyKdya4h9g7Fu73Zw7vjhwf
X-Received: by 2002:a1c:7d93:: with SMTP id y141mr5715546wmc.111.1581599534675; 
 Thu, 13 Feb 2020 05:12:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqzTTvnhnAah+aJFeotACloGF4Z8cs+TlgrEmrseuB5EWMr6pm93mTatL71DwY45++oS6yAGhQ==
X-Received: by 2002:a1c:7d93:: with SMTP id y141mr5715529wmc.111.1581599534436; 
 Thu, 13 Feb 2020 05:12:14 -0800 (PST)
Received: from redhat.com (bzq-79-176-28-95.red.bezeqint.net. [79.176.28.95])
 by smtp.gmail.com with ESMTPSA id
 q1sm2692269wrw.5.2020.02.13.05.12.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 05:12:13 -0800 (PST)
Date: Thu, 13 Feb 2020 08:12:11 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
Message-ID: <20200213081154-mutt-send-email-mst@kernel.org>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
 <20200213045937-mutt-send-email-mst@kernel.org>
 <54692f06-f687-8bd3-7a1b-3dac3e79110b@cambridgegreys.com>
MIME-Version: 1.0
In-Reply-To: <54692f06-f687-8bd3-7a1b-3dac3e79110b@cambridgegreys.com>
X-MC-Unique: Gjq2p9_dN66Wp4tdcJmUWQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_051229_402030_1FAC69C4 
X-CRM114-Status: GOOD (  29.78  )
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
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMTE6MTI6NDVBTSArMDAwMCwgQW50b24gSXZhbm92IHdy
b3RlOgo+IAo+IAo+IE9uIDEzLzAyLzIwMjAgMTA6MDAsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPiA+IE9uIFdlZCwgRmViIDEyLCAyMDIwIGF0IDA1OjM4OjA5UE0gKzAwMDAsIEFudG9uIEl2
YW5vdiB3cm90ZToKPiA+ID4gCj4gPiA+IAo+ID4gPiBPbiAxMS8wMi8yMDIwIDEwOjM3LCBNaWNo
YWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgMDc6
NDI6MzdBTSArMDAwMCwgQW50b24gSXZhbm92IHdyb3RlOgo+ID4gPiA+ID4gT24gMTEvMDIvMjAy
MCAwMjo1MSwgSmFzb24gV2FuZyB3cm90ZToKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IE9uIDIw
MjAvMi8xMSDkuIrljYgxMjo1NSwgQW50b24gSXZhbm92IHdyb3RlOgo+ID4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IE9uIDA5LzEyLzIwMTkgMTA6NDgsIGFudG9uLml2
YW5vdkBjYW1icmlkZ2VncmV5cy5jb20gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiBGcm9tOiBBbnRv
biBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4gPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiA+IFNvbWUgb2YgdGhlIGZyYW1lcyBtYXJrZWQgYXMgR1NPIHdoaWNo
IGFycml2ZSBhdAo+ID4gPiA+ID4gPiA+ID4gdmlydGlvX25ldF9oZHJfZnJvbV9za2IoKSBoYXZl
IG5vIEdTT19UWVBFLCBubwo+ID4gPiA+ID4gPiA+ID4gZnJhZ21lbnRzIChkYXRhX2xlbiA9IDAp
IGFuZCBsZW5ndGggc2lnbmlmaWNhbnRseSBzaG9ydGVyCj4gPiA+ID4gPiA+ID4gPiB0aGFuIHRo
ZSBNVFUgKDc1MiBpbiBteSBleHBlcmltZW50cykuCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiA+IFRoaXMgaXMgb2JzZXJ2ZWQgb24gcmF3IHNvY2tldHMgcmVhZGluZyBvZmYgdkV0aCBp
bnRlcmZhY2VzCj4gPiA+ID4gPiA+ID4gPiBpbiBhbGwgNC54IGFuZCA1Lngga2VybmVscyBJIHRl
c3RlZC4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gVGhlc2UgZnJhbWVzIGFyZSBy
ZXBvcnRlZCBhcyBpbnZhbGlkIHdoaWxlIHRoZXkgYXJlIGluIGZhY3QKPiA+ID4gPiA+ID4gPiA+
IGdzby1sZXNzIGZyYW1lcy4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gVGhpcyBw
YXRjaCBtYXJrcyB0aGUgdm5ldCBoZWFkZXIgYXMgbm8tR1NPIGZvciB0aGVtIGluc3RlYWQKPiA+
ID4gPiA+ID4gPiA+IG9mIHJlcG9ydGluZyBpdCBhcyBpbnZhbGlkLgo+ID4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5v
dkBjYW1icmlkZ2VncmV5cy5jb20+Cj4gPiA+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gPiA+
ICAgwqAgaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggfCA4ICsrKysrKy0tCj4gPiA+ID4gPiA+
ID4gPiAgIMKgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L3ZpcnRpb19uZXQuaCBiL2luY2x1ZGUvbGludXgvdmlydGlvX25ldC5oCj4gPiA+ID4gPiA+
ID4gPiBpbmRleCAwZDFmZTkyOTdhYzYuLmQ5MGQ1Y2ZmMWI5YSAxMDA2NDQKPiA+ID4gPiA+ID4g
PiA+IC0tLSBhL2luY2x1ZGUvbGludXgvdmlydGlvX25ldC5oCj4gPiA+ID4gPiA+ID4gPiArKysg
Yi9pbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaAo+ID4gPiA+ID4gPiA+ID4gQEAgLTExMiw4ICsx
MTIsMTIgQEAgc3RhdGljIGlubGluZSBpbnQKPiA+ID4gPiA+ID4gPiA+IHZpcnRpb19uZXRfaGRy
X2Zyb21fc2tiKGNvbnN0IHN0cnVjdCBza19idWZmICpza2IsCj4gPiA+ID4gPiA+ID4gPiAgIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9H
U09fVENQVjQ7Cj4gPiA+ID4gPiA+ID4gPiAgIMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlIGlmIChz
aW5mby0+Z3NvX3R5cGUgJiBTS0JfR1NPX1RDUFY2KQo+ID4gPiA+ID4gPiA+ID4gICDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX1RD
UFY2Owo+ID4gPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgIGVsc2UKPiA+ID4gPiA+ID4gPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+ID4gPiA+ID4gPiA+ID4g
K8KgwqDCoMKgwqDCoMKgIGVsc2Ugewo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaWYgKHNrYi0+ZGF0YV9sZW4gPT0gMCkKPiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5nc29fdHlwZSA9IFZJUlRJT19ORVRfSERSX0dTT19O
T05FOwo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZQo+ID4gPiA+
ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsK
PiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCB9Cj4gPiA+ID4gPiA+ID4gPiAgIMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19UQ1BfRUNOKQo+ID4g
PiA+ID4gPiA+ID4gICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190eXBlIHw9
IFZJUlRJT19ORVRfSERSX0dTT19FQ047Cj4gPiA+ID4gPiA+ID4gPiAgIMKgwqDCoMKgwqAgfSBl
bHNlCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBwaW5nLgo+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gRG8geW91IG1lYW4gZ3NvX3Np
emUgaXMgc2V0IGJ1dCBnc29fdHlwZSBpcyBub3Q/IExvb2tzIGxpa2UgYSBidWcKPiA+ID4gPiA+
ID4gZWxzZXdoZXJlLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhhbmtzCj4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+IFllcy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSBjb3Vs
ZCBub3QgdHJhY2UgaXQgd2hlcmUgaXQgaXMgY29taW5nIGZyb20uCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IEkgc2VlIGl0IHdoZW4gZG9pbmcgcmVjdm1tc2cgb24gcmF3IHNvY2tldHMgaW4gdGhlIFVN
TCB2ZWN0b3IgbmV0d29yawo+ID4gPiA+ID4gZHJpdmVycy4KPiA+ID4gPiA+IAo+ID4gPiA+IAo+
ID4gPiA+IEkgdGhpbmsgd2UgbmVlZCB0byBmaW5kIHRoZSBjdWxwcml0IGFuZCBmaXggaXQgdGhl
cmUsIGxvdHMgb2Ygb3RoZXIgdGhpbmdzCj4gPiA+ID4gY2FuIGJyZWFrIG90aGVyd2lzZS4KPiA+
ID4gPiBKdXN0IHByaW50aW5nIG91dCBza2ItPmRldi0+bmFtZSBzaG91bGQgZG8gdGhlIHRyaWNr
LCBubz8KPiA+ID4gCj4gPiA+IFRoZSBwcmludGsgaW4gdmlydGlvX25ldF9oZHJfZnJvbV9za2Ig
c2F5cyBOVUxMLgo+ID4gPiAKPiA+ID4gVGhhdCBpcyBwcm9iYWJseSBub3JtYWwgZm9yIGEgbG9j
YWxseSBvcmlnaW5hdGVkIGZyYW1lLgo+ID4gPiAKPiA+ID4gSSBjYW5ub3QgcmVwcm9kdWNlIHRo
aXMgd2l0aCBuZXR3b3JrIHRyYWZmaWMgYnkgdGhlIHdheSAtIGl0IGhhcHBlbnMgb25seSBpZiB0
aGUgdHJhZmZpYyBpcyBsb2NhbGx5IG9yaWdpbmF0ZWQgb24gdGhlIGhvc3QuCj4gPiA+IAo+ID4g
PiBBLAo+ID4gCj4gPiBPSyBzbyBpcyBpdCBjb2RlIGluIF9fdGNwX3RyYW5zbWl0X3NrYiB0aGF0
IHNldHMgZ3NvX3NpemUgdG8gbm9uLW51bGwKPiA+IHdoZW4gZ3NvX3R5cGUgaXMgMD8KPiAKPiBJ
dCBkb2VzIGxvb2sgbGlrZSB0aGF0LCBidXQgSSBjYW5ub3Qgc2VlIGl0IHdoZW4gcmVhZGluZyBp
dCA6KAoKZHVtcCBza2IgcG9pbnRlciBhdCB0aGUgdHdvIGxvY2F0aW9ucyBhbmQgc2VlIHdoZXRo
ZXIgaXQgbWF0Y2hlcyA6KQoKPiAKPiA+IAo+ID4gCj4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4g
PiAtLSAKPiA+ID4gPiA+IEFudG9uIFIuIEl2YW5vdgo+ID4gPiA+ID4gQ2FtYnJpZGdlZ3JleXMg
TGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2MQo+
ID4gPiA+ID4gaHR0cHM6Ly93d3cuY2FtYnJpZGdlZ3JleXMuY29tLwo+ID4gPiA+IAo+ID4gPiA+
IAo+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPiA+ID4gbGludXgtdW0gbWFpbGluZyBsaXN0Cj4gPiA+ID4gbGludXgtdW1AbGlzdHMuaW5m
cmFkZWFkLm9yZwo+ID4gPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtdW0KPiA+ID4gPiAKPiA+ID4gCj4gPiA+IC0tIAo+ID4gPiBBbnRvbiBSLiBJ
dmFub3YKPiA+ID4gQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5k
LiBDb21wYW55IE51bWJlciAxMDI3MzY2MQo+ID4gPiBodHRwczovL3d3dy5jYW1icmlkZ2VncmV5
cy5jb20vCj4gPiAKPiA+IAo+IAo+IC0tIAo+IEFudG9uIFIuIEl2YW5vdgo+IENhbWJyaWRnZWdy
ZXlzIExpbWl0ZWQuIFJlZ2lzdGVyZWQgaW4gRW5nbGFuZC4gQ29tcGFueSBOdW1iZXIgMTAyNzM2
NjEKPiBodHRwczovL3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4
LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC11bQo=
