Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045331658DE
	for <lists+linux-um@lfdr.de>; Thu, 20 Feb 2020 08:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdpUHXdKxP7lQLSjFLeRZacXAD0a8t8Or2QZjTy7nmk=; b=EYhZLPsy1lwFZr
	7iB1vSSvfCedTKKb2XPfWSJWJ7el5hr6SgAX25CswstvMfdO0VWImiW9aBswGGmBzzeBpCF9IUFtB
	6gZBIVY4Jc9/C42og2QVtORZ0AMBgsWPDaeEZq7XesZmoVWOqi5AGOnXTy4LHINhxDhSPk4N5tpB2
	O8AVHai128j0jZVpxnX0MEZHm2rEBe6t16/gdDI9YSpgNh1jrklcYVrIoG8Sa4kNr4pHSjSrDMkg7
	BcnAXBrxNYAEVGwhK8pTa8OfOI1+bJR9naeZBzQhw0qaqVseTlszsvvjyhYs2C0kUYLEunv2rF1RA
	D17kXAJDSPlzdMLd3EYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4gjm-00088h-1j; Thu, 20 Feb 2020 07:59:10 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4gjj-00087F-1u
 for linux-um@lists.infradead.org; Thu, 20 Feb 2020 07:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582185540;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uuVaTTO3NLTBU+26M5J4/FlOisaPYDihI2GbPJ+/YQ0=;
 b=dTQ2yrh0/DX4Z92Xv78ZIfr9r7WeQqUO0gtMFSJstCxenaLAao140HdgpMqmxxzAWfEvNt
 nQLO34dAIwnBWMlmiHkgos44nw5av30O0fC08vHwuYumnOu+aMyeaDM2h9riy/sHRjl9K0
 0FrZlpFlTgBl1TxNPIqUp0JUcRAMOnc=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-v5jmcuVfN_GD94UxNlhrKw-1; Thu, 20 Feb 2020 02:58:50 -0500
Received: by mail-qk1-f200.google.com with SMTP id z124so2094285qkd.20
 for <linux-um@lists.infradead.org>; Wed, 19 Feb 2020 23:58:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7Z0RijPXNJdfGzvA5NYGTBhclOcf2eBEKOyQVAGm4Ws=;
 b=aj+KXF+clCkm+FxnJ8LmdSgNK5LSJDXqQxtUdESYbkXOq8CAOZh43z9ZX0sHpCaqwg
 h8bUlJkOwuMw4VMAGu1lT/N2nul7aD4+qBUCWKCBWTEh3CLoDMTw8K7YjNJzl50DBwBU
 lOlJ0EHY0kQfsEDPQGxGZXa+EyKinrZSK5NIJlA3z/2lBNSueBPtKjz1LEzOgJwfpa2c
 gaNFWj0HQDghCEgCYbz4pZDo6n9MzP++tpWVTKP5I1vBZRe6FeASyfg3QCvKezNLGci1
 467cqyOx4glaIx74fzRjz0bDmxWfUC3EOuAIjeQWsj1+OD2FKnHSSiUGZxrHouW8EQmH
 /03w==
X-Gm-Message-State: APjAAAX7rTdH9wVkJuVAU8XT4WVU/dU1cyeu09Yif+jIZoDRcMO3HO7Y
 w5Js6TV14LjVyomlh9VnVBfBKZFLaMCkf16pFoRTng6OoYhf7ns2+37qiZRcHEu6lgxmKGxiZb7
 /+L/qm9Q7TNaPHISogr+CAcna
X-Received: by 2002:ad4:44ee:: with SMTP id p14mr23520862qvt.114.1582185530485; 
 Wed, 19 Feb 2020 23:58:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqyyWmYqvCM00xyfylnKvfB52g6zUzd0XRMWKnK5T4ecBLdvSAA5F6G69aWL1guNfOqbGh5aog==
X-Received: by 2002:ad4:44ee:: with SMTP id p14mr23520857qvt.114.1582185530206; 
 Wed, 19 Feb 2020 23:58:50 -0800 (PST)
Received: from redhat.com (bzq-109-67-14-209.red.bezeqint.net. [109.67.14.209])
 by smtp.gmail.com with ESMTPSA id o10sm1327660qtp.38.2020.02.19.23.58.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 23:58:49 -0800 (PST)
Date: Thu, 20 Feb 2020 02:58:44 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
Message-ID: <20200220025506-mutt-send-email-mst@kernel.org>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
 <20200213045937-mutt-send-email-mst@kernel.org>
 <94fb9656-99ee-a001-e428-9d76c3620e61@gmail.com>
 <20200213105010-mutt-send-email-mst@kernel.org>
 <35510da7-08f1-4aa5-c6d6-6bffbccaee0c@cambridgegreys.com>
MIME-Version: 1.0
In-Reply-To: <35510da7-08f1-4aa5-c6d6-6bffbccaee0c@cambridgegreys.com>
X-MC-Unique: v5jmcuVfN_GD94UxNlhrKw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_235907_176594_398584A0 
X-CRM114-Status: GOOD (  35.20  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-um@lists.infradead.org, Eric Dumazet <eric.dumazet@gmail.com>,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMDQ6MjM6MjRQTSArMDAwMCwgQW50b24gSXZhbm92IHdy
b3RlOgo+IAo+IE9uIDEzLzAyLzIwMjAgMTU6NTMsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToK
PiA+IE9uIFRodSwgRmViIDEzLCAyMDIwIGF0IDA3OjQ0OjA2QU0gLTA4MDAsIEVyaWMgRHVtYXpl
dCB3cm90ZToKPiA+ID4gCj4gPiA+IE9uIDIvMTMvMjAgMjowMCBBTSwgTWljaGFlbCBTLiBUc2ly
a2luIHdyb3RlOgo+ID4gPiA+IE9uIFdlZCwgRmViIDEyLCAyMDIwIGF0IDA1OjM4OjA5UE0gKzAw
MDAsIEFudG9uIEl2YW5vdiB3cm90ZToKPiA+ID4gPiA+IAo+ID4gPiA+ID4gT24gMTEvMDIvMjAy
MCAxMDozNywgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBUdWUsIEZl
YiAxMSwgMjAyMCBhdCAwNzo0MjozN0FNICswMDAwLCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4gPiA+
ID4gPiA+ID4gT24gMTEvMDIvMjAyMCAwMjo1MSwgSmFzb24gV2FuZyB3cm90ZToKPiA+ID4gPiA+
ID4gPiA+IE9uIDIwMjAvMi8xMSDkuIrljYgxMjo1NSwgQW50b24gSXZhbm92IHdyb3RlOgo+ID4g
PiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gT24gMDkvMTIvMjAxOSAxMDo0OCwgYW50
b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbSB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gPiBG
cm9tOiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gU29tZSBvZiB0aGUgZnJhbWVzIG1h
cmtlZCBhcyBHU08gd2hpY2ggYXJyaXZlIGF0Cj4gPiA+ID4gPiA+ID4gPiA+ID4gdmlydGlvX25l
dF9oZHJfZnJvbV9za2IoKSBoYXZlIG5vIEdTT19UWVBFLCBubwo+ID4gPiA+ID4gPiA+ID4gPiA+
IGZyYWdtZW50cyAoZGF0YV9sZW4gPSAwKSBhbmQgbGVuZ3RoIHNpZ25pZmljYW50bHkgc2hvcnRl
cgo+ID4gPiA+ID4gPiA+ID4gPiA+IHRoYW4gdGhlIE1UVSAoNzUyIGluIG15IGV4cGVyaW1lbnRz
KS4KPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiBUaGlzIGlzIG9ic2Vy
dmVkIG9uIHJhdyBzb2NrZXRzIHJlYWRpbmcgb2ZmIHZFdGggaW50ZXJmYWNlcwo+ID4gPiA+ID4g
PiA+ID4gPiA+IGluIGFsbCA0LnggYW5kIDUueCBrZXJuZWxzIEkgdGVzdGVkLgo+ID4gPiA+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+IFRoZXNlIGZyYW1lcyBhcmUgcmVwb3J0ZWQg
YXMgaW52YWxpZCB3aGlsZSB0aGV5IGFyZSBpbiBmYWN0Cj4gPiA+ID4gPiA+ID4gPiA+ID4gZ3Nv
LWxlc3MgZnJhbWVzLgo+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+IFRo
aXMgcGF0Y2ggbWFya3MgdGhlIHZuZXQgaGVhZGVyIGFzIG5vLUdTTyBmb3IgdGhlbSBpbnN0ZWFk
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gb2YgcmVwb3J0aW5nIGl0IGFzIGludmFsaWQuCj4gPiA+ID4g
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQW50b24gSXZh
bm92IDxhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPgo+ID4gPiA+ID4gPiA+ID4gPiA+
IC0tLQo+ID4gPiA+ID4gPiA+ID4gPiA+ICAgwqAgaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0Lmgg
fCA4ICsrKysrKy0tCj4gPiA+ID4gPiA+ID4gPiA+ID4gICDCoCAxIGZpbGUgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaCBiL2lu
Y2x1ZGUvbGludXgvdmlydGlvX25ldC5oCj4gPiA+ID4gPiA+ID4gPiA+ID4gaW5kZXggMGQxZmU5
Mjk3YWM2Li5kOTBkNWNmZjFiOWEgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gPiA+ID4gLS0tIGEvaW5j
bHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPiA+ID4gPiA+ID4gPiA+ID4gPiArKysgYi9pbmNsdWRl
L2xpbnV4L3ZpcnRpb19uZXQuaAo+ID4gPiA+ID4gPiA+ID4gPiA+IEBAIC0xMTIsOCArMTEyLDEy
IEBAIHN0YXRpYyBpbmxpbmUgaW50Cj4gPiA+ID4gPiA+ID4gPiA+ID4gdmlydGlvX25ldF9oZHJf
ZnJvbV9za2IoY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiA+ID4gPiA+ID4gPiA+ID4gPiAg
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hE
Ul9HU09fVENQVjQ7Cj4gPiA+ID4gPiA+ID4gPiA+ID4gICDCoMKgwqDCoMKgwqDCoMKgwqAgZWxz
ZSBpZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19UQ1BWNikKPiA+ID4gPiA+ID4gPiA+ID4g
PiAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVU
X0hEUl9HU09fVENQVjY7Cj4gPiA+ID4gPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgIGVsc2UK
PiA+ID4gPiA+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZB
TDsKPiA+ID4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgZWxzZSB7Cj4gPiA+ID4gPiA+
ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHNrYi0+ZGF0YV9sZW4gPT0gMCkK
PiA+ID4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+
Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fTk9ORTsKPiA+ID4gPiA+ID4gPiA+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlCj4gPiA+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPiA+ID4gPiA+ID4gPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqAgfQo+ID4gPiA+ID4gPiA+ID4gPiA+ICAgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChzaW5mby0+Z3NvX3R5cGUgJiBTS0JfR1NPX1RDUF9FQ04pCj4gPiA+ID4gPiA+ID4g
PiA+ID4gICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190eXBlIHw9IFZJUlRJ
T19ORVRfSERSX0dTT19FQ047Cj4gPiA+ID4gPiA+ID4gPiA+ID4gICDCoMKgwqDCoMKgIH0gZWxz
ZQo+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBwaW5nLgo+ID4gPiA+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IERvIHlvdSBtZWFuIGdzb19zaXplIGlzIHNldCBidXQg
Z3NvX3R5cGUgaXMgbm90PyBMb29rcyBsaWtlIGEgYnVnCj4gPiA+ID4gPiA+ID4gPiBlbHNld2hl
cmUuCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IFRoYW5rcwo+ID4gPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBZZXMuCj4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gSSBjb3VsZCBub3QgdHJhY2UgaXQgd2hlcmUgaXQgaXMgY29taW5nIGZyb20u
Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gSSBzZWUgaXQgd2hlbiBkb2luZyByZWN2bW1z
ZyBvbiByYXcgc29ja2V0cyBpbiB0aGUgVU1MIHZlY3RvciBuZXR3b3JrCj4gPiA+ID4gPiA+ID4g
ZHJpdmVycy4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gSSB0aGluayB3ZSBuZWVkIHRvIGZp
bmQgdGhlIGN1bHByaXQgYW5kIGZpeCBpdCB0aGVyZSwgbG90cyBvZiBvdGhlciB0aGluZ3MKPiA+
ID4gPiA+ID4gY2FuIGJyZWFrIG90aGVyd2lzZS4KPiA+ID4gPiA+ID4gSnVzdCBwcmludGluZyBv
dXQgc2tiLT5kZXYtPm5hbWUgc2hvdWxkIGRvIHRoZSB0cmljaywgbm8/Cj4gPiA+ID4gPiBUaGUg
cHJpbnRrIGluIHZpcnRpb19uZXRfaGRyX2Zyb21fc2tiIHNheXMgTlVMTC4KPiA+ID4gPiA+IAo+
ID4gPiA+ID4gVGhhdCBpcyBwcm9iYWJseSBub3JtYWwgZm9yIGEgbG9jYWxseSBvcmlnaW5hdGVk
IGZyYW1lLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJIGNhbm5vdCByZXByb2R1Y2UgdGhpcyB3aXRo
IG5ldHdvcmsgdHJhZmZpYyBieSB0aGUgd2F5IC0gaXQgaGFwcGVucyBvbmx5IGlmIHRoZSB0cmFm
ZmljIGlzIGxvY2FsbHkgb3JpZ2luYXRlZCBvbiB0aGUgaG9zdC4KPiA+ID4gPiA+IAo+ID4gPiA+
ID4gQSwKPiA+ID4gPiBPSyBzbyBpcyBpdCBjb2RlIGluIF9fdGNwX3RyYW5zbWl0X3NrYiB0aGF0
IHNldHMgZ3NvX3NpemUgdG8gbm9uLW51bGwKPiA+ID4gPiB3aGVuIGdzb190eXBlIGlzIDA/Cj4g
PiA+ID4gCj4gPiA+IENvcnJlY3Qgd2F5IHRvIGRldGVybWluZSBpZiBhIHBhY2tldCBpcyBhIGdz
byBvbmUgaXMgYnkgbG9va2luZyBhdCBnc29fc2l6ZS4KPiA+ID4gVGhlbiBvbmx5IGl0IGlzIGxl
Z2FsIGxvb2tpbmcgYXQgZ3NvX3R5cGUKPiA+ID4gCj4gPiA+IAo+ID4gPiBzdGF0aWMgaW5saW5l
IGJvb2wgc2tiX2lzX2dzbyhjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+ID4gPiB7Cj4gPiA+
ICAgICAgcmV0dXJuIHNrYl9zaGluZm8oc2tiKS0+Z3NvX3NpemU7Cj4gPiA+IH0KPiA+ID4gCj4g
PiA+IC8qIE5vdGU6IFNob3VsZCBiZSBjYWxsZWQgb25seSBpZiBza2JfaXNfZ3NvKHNrYikgaXMg
dHJ1ZSAqLwo+ID4gPiBzdGF0aWMgaW5saW5lIGJvb2wgc2tiX2lzX2dzb192Nihjb25zdCBzdHJ1
Y3Qgc2tfYnVmZiAqc2tiKQo+ID4gPiAuLi4KPiA+ID4gCj4gPiA+IAo+ID4gPiBUaGVyZSBpcyBh
YnNvbHV0ZWx5IG5vIHJlbGF0aW9uIGJldHdlZW4gR1NPIGFuZCBza2ItPmRhdGFfbGVuLCBza2Ig
Y2FuIGJlIGxpbmVhcml6ZWQKPiA+ID4gZm9yIHZhcmlvdXMgb3J0aG9nb25hbCByZWFzb25zLgo+
ID4gVGhlIHJlcG9ydGVkIHByb2JsZW0gaXMgdGhhdCB2aXJ0aW8gZ2V0cyBhIHBhY2tldCB3aGVy
ZSBnc29fc2l6ZQo+ID4gaXMgITAgYnV0IGdzb190eXBlIGlzIDAuCj4gPiAKPiA+IEl0IGN1cnJl
bnRseSBkcm9wcyB0aGVzZSBvbiB0aGUgYXNzdW1wdGlvbiB0aGF0IGl0J3Mgc29tZSB0eXBlCj4g
PiBvZiBhIGdzbyBwYWNrZXQgaXQgZG9lcyBub3Qga25vdyBob3cgdG8gaGFuZGxlLgo+ID4gCj4g
PiAKPiA+IFNvIHlvdSBhcmUgc2F5aW5nIGlmIHNrYl9pc19nc28gd2UgY2FuIHN0aWxsIGhhdmUg
Z3NvX3R5cGUgc2V0IHRvIDAsCj4gPiBhbmQgdGhhdCdzIGFuIGV4cGVjdGVkIGNvbmZpZ3VyYXRp
b24/Cj4gPiAKPiA+IFNvIHRoZSBwYXRjaCBzaG91bGQganVzdCBiZToKPiA+IAo+ID4gCj4gPiAt
ICAgICAgICBpZiAoc2tiX2lzX2dzbyhza2IpKSB7Cj4gPiArICAgICAgICBpZiAoc2tiX2lzX2dz
byhza2IpICYmIHNpbmZvLT5nc29fdHlwZSkgewo+ID4gCj4gWWVzLCBwcm92aWRlZCB0aGF0IHNr
Yl9pc19nc28oc2tiKSBhbmQgc2luZm8tPmdzb190eXBlID09IDAgaXMgYSB2YWxpZCBzdGF0ZS4K
PiAKPiBJIGFncmVlIHdpdGggSmFzb24sIHRoZXJlIG1heSBiZSBzb21ldGhpbmcgd3JvbmcgZ29p
bmcgb24gaGVyZSBhbmQgd2UgbmVlZCB0byBmaW5kIHRoZSBzb3VyY2Ugd2hpY2ggY3JlYXRlcyB0
aGVzZSBwYWNrZXRzLgo+IAo+IEEuCgoKV2FudCB0byBzdWJtaXQgYSBwYXRjaCB0byBhZGRyZXNz
IHRoaXMgZm9yIG5vdz8KCj4gPiAKPiA+ID8KPiA+IAo+ID4gCj4gPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gbGludXgtdW0gbWFpbGluZyBsaXN0
Cj4gPiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCj4gCj4gLS0gCj4gQW50b24gUi4gSXZh
bm92Cj4gQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21w
YW55IE51bWJlciAxMDI3MzY2MQo+IGh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBt
YWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
