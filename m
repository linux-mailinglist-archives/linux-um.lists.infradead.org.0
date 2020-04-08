Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3557F1A27B3
	for <lists+linux-um@lfdr.de>; Wed,  8 Apr 2020 19:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPkfHgfjuNfVj79vh/oSEn2PLGQ/iEXvqLOH6QXIi6I=; b=LCqe3aHBwS0Og3
	4w4fJhDyt6fKeWOu6ZB2PFHGMJ7hzk3ybdN5W1K3JxzMsEN1+j/YOOxv7g0simJL3r3bAMqTaZaX+
	xZJDNFMyJNL0AR7iSWH+Ci7IDexObtfp04vb+QynS3WMt8dJ+TitDA+dDvPoGwrr7kcu+D7z/DGrP
	T6kEjH9PHnO2jppKVRfYjoD/AIRAKCnT+Qh4B6x/tF8Uex2x+8iQjoG0ktucp3YlrINvrbCo4aYCC
	yNk9PQWVscqFBvf425sQbduBaWTz7bLXRV97h/kH3chVChNS6QFwKFuG9PNcB3JTdmZr3nnsELb4S
	4H1LLZIODWUfvFVY7FAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMEBH-0001Sr-O0; Wed, 08 Apr 2020 17:08:03 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMEBE-0001S6-1y
 for linux-um@lists.infradead.org; Wed, 08 Apr 2020 17:08:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586365678;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=831n3NNH1eOyJVeWwcK0b1hYMKlT0SmVSL68krCbNsU=;
 b=fYtnQ7q7TC3yLE5fEYOVY9F7beAgGr42MM+uoMj+iD+e6EuULAsGNVzbq9dvwMGhFiTKAN
 GjNejQU9Pm4yuKbgglxu51Mm1HAMmW+TcmCmxHOWjkq0xGIc3Ow75gD8aBN+x8Db+TA5XJ
 kdoWare79tWzm4YV+kfX1R+59+3zu+g=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-36-upMYOnCzOluuhg9_Ykvskg-1; Wed, 08 Apr 2020 13:07:54 -0400
X-MC-Unique: upMYOnCzOluuhg9_Ykvskg-1
Received: by mail-io1-f69.google.com with SMTP id h17so532968ioh.20
 for <linux-um@lists.infradead.org>; Wed, 08 Apr 2020 10:07:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=831n3NNH1eOyJVeWwcK0b1hYMKlT0SmVSL68krCbNsU=;
 b=VJjIlDvMMLXlNRk8EUYNduCWmy/MafEoG/3D3VKaGHBSiYHIn1wF3O1pCjyMcUMvHI
 xTZQ1j64podF+JcIyZ3voIc7uQZ3He7ilYPrjdIy2MEfahCFPB4fXncb659eC9S713HB
 o5hGFEzSVIOXidBERy4fnBMHWCNOEWGjSssRKFWOB9WVXm1elAA0BFrfGowyzoC75BcK
 mm1gg5qZWbRY+UFJtkghXHJMkxy/SFXO3B/ZVcW1Jvc2ezoSGKMF6YW/c6qmUpBeXafU
 e9NgWwVL4OrGpfcZai9zEsDgCqqWIHLyXnm3vat377uqOfjuc8UZEK2osej1JuZ5xiXx
 iIZA==
X-Gm-Message-State: AGi0Pua4duKrCScHw6dJ2eXkVi0zS9ExGKJEPjyi0w/BuScYvRfvz7Ct
 cI3BJwlnGpBwi/7LSNsWFZNF3tUUVBLw05409SgvWZSq7hs8/oHFq+6KMUHtJA/bb2AepxeJX3i
 3cQ3kM7HUewa66J5LHcxAPIop1w5OkY54ZgIk5Mck
X-Received: by 2002:a02:aa93:: with SMTP id u19mr3298084jai.70.1586365673742; 
 Wed, 08 Apr 2020 10:07:53 -0700 (PDT)
X-Google-Smtp-Source: APiQypJVwAt/GF+D/bFHyQ0hslIrhAHYssU13qonP7sA8qIVwe7mp31P/nG0Ns3obKBCHr/rn/cjYLWmSsjifKOJBNo=
X-Received: by 2002:a02:aa93:: with SMTP id u19mr3298064jai.70.1586365673393; 
 Wed, 08 Apr 2020 10:07:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200407202853.1791218-1-marcandre.lureau@redhat.com>
 <8a6dced2-886f-f8bd-aff9-3793f418cb0e@cambridgegreys.com>
In-Reply-To: <8a6dced2-886f-f8bd-aff9-3793f418cb0e@cambridgegreys.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@redhat.com>
Date: Wed, 8 Apr 2020 19:07:42 +0200
Message-ID: <CAMxuvaz17pVzSQ--y1_zXNFeM-MkH8L8ayiM34eCN0OkEF21WQ@mail.gmail.com>
Subject: Re: [PATCH] um: add a generic "fd" vector transport
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_100800_174044_D49133E2 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: joerd.simons@collabora.co.uk, richard@nod.at, jdike@addtoit.com,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, alex.dewar@gmx.co.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

SGkKCk9uIFR1ZSwgQXByIDcsIDIwMjAgYXQgMTE6MDIgUE0gQW50b24gSXZhbm92CjxhbnRvbi5p
dmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPiB3cm90ZToKPgo+IE9uIDA3LzA0LzIwMjAgMjE6Mjgs
IE1hcmMtQW5kcsOpIEx1cmVhdSB3cm90ZToKPiA+IExlYXJuIHRvIHRha2UgYSBwcmUtb3BlbmVk
IGZpbGUtZGVzY3JpcHRvciBmb3IgdmVjdG9yIElPLgo+ID4KPiA+IEluc3RlYWQgb2YgdGVhY2hp
bmcgdGhlIGRyaXZlciB0byBvcGVuIGEgRkQgaW4gbXVsdGlwbGUgd2F5cywgaXQgY2FuCj4gPiBy
ZWx5IG9uIG1hbmFnZW1lbnQgbGF5ZXIgdG8gZG8gaXQgb24gaXRzIGJlaGFsZi4gRm9yIGV4YW1w
bGUsIHRoaXMKPiA+IGFsbG93cyBpbmhlcml0aW5nIGEgcHJlY29uZmlndXJlZCBkZXZpY2UgZmQg
b3IgYSBzaW1wbGUgc29ja2V0cGFpcigpCj4gPiBzZXR1cCwgd2l0aG91dCBmdXJ0aGVyIGFyZ3Vt
ZW50cywgcHJpdmlsZWdlcyBvciBzeXN0ZW0gYWNjZXNzIGJ5IFVNTC4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNvbT4K
PiA+IC0tLQo+ID4gICBhcmNoL3VtL2RyaXZlcnMvdmVjdG9yX3VzZXIuYyB8IDU5ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA1OSBpbnNl
cnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvdW0vZHJpdmVycy92ZWN0b3JfdXNl
ci5jIGIvYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl91c2VyLmMKPiA+IGluZGV4IDI5ZmFlMDQ1NmFk
ZS4uNDVjMTU1MGRiYjM3IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC91bS9kcml2ZXJzL3ZlY3Rvcl91
c2VyLmMKPiA+ICsrKyBiL2FyY2gvdW0vZHJpdmVycy92ZWN0b3JfdXNlci5jCj4gPiBAQCAtMjks
NiArMjksNyBAQAo+ID4gICAjaW5jbHVkZSA8bmV0ZGIuaD4KPiA+ICAgI2luY2x1ZGUgPHN0ZGxp
Yi5oPgo+ID4gICAjaW5jbHVkZSA8b3MuaD4KPiA+ICsjaW5jbHVkZSA8bGltaXRzLmg+Cj4gPiAg
ICNpbmNsdWRlIDx1bV9tYWxsb2MuaD4KPiA+ICAgI2luY2x1ZGUgInZlY3Rvcl91c2VyLmgiCj4g
Pgo+ID4gQEAgLTQyLDYgKzQzLDkgQEAKPiA+ICAgI2RlZmluZSBUUkFOU19SQVcgInJhdyIKPiA+
ICAgI2RlZmluZSBUUkFOU19SQVdfTEVOIHN0cmxlbihUUkFOU19SQVcpCj4gPgo+ID4gKyNkZWZp
bmUgVFJBTlNfRkQgImZkIgo+ID4gKyNkZWZpbmUgVFJBTlNfRkRfTEVOIHN0cmxlbihUUkFOU19G
RCkKPiA+ICsKPiA+ICAgI2RlZmluZSBWTkVUX0hEUl9GQUlMICJjb3VsZCBub3QgZW5hYmxlIHZu
ZXQgaGVhZGVycyBvbiBmZCAlZCIKPiA+ICAgI2RlZmluZSBUVU5fR0VUX0ZfRkFJTCAidGFwcmF3
OiBUVU5HRVRGRUFUVVJFUyBmYWlsZWQ6ICVzIgo+ID4gICAjZGVmaW5lIEwyVFBWM19CSU5EX0ZB
SUwgImwydHB2M19vcGVuIDogY291bGQgbm90IGJpbmQgc29ja2V0IGVycj0laSIKPiA+IEBAIC0z
NDcsNiArMzUxLDU5IEBAIHN0YXRpYyBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdXNlcl9pbml0X3VuaXhf
ZmRzKHN0cnVjdCBhcmdsaXN0ICppZnNwZWMsIGludCBpZCkKPiA+ICAgICAgIHJldHVybiBOVUxM
Owo+ID4gICB9Cj4gPgo+ID4gK3N0YXRpYyBpbnQgc3RydG9mZChjb25zdCBjaGFyICpucHRyKQo+
ID4gK3sKPiA+ICsgICAgIGxvbmcgZmQ7Cj4gPiArICAgICBjaGFyICplbmRwdHI7Cj4gPiArCj4g
PiArICAgICBpZiAobnB0ciA9PSBOVUxMKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gLTE7Cj4g
PiArCj4gPiArICAgICBlcnJubyA9IDA7Cj4gPiArICAgICBmZCA9IHN0cnRvbChucHRyLCAmZW5k
cHRyLCAxMCk7Cj4gPiArICAgICBpZiAobnB0ciA9PSBlbmRwdHIgfHwKPiA+ICsgICAgICAgICAg
ICAgZXJybm8gIT0gMCB8fAo+ID4gKyAgICAgICAgICAgICAqZW5kcHRyICE9ICdcMCcgfHwKPiA+
ICsgICAgICAgICAgICAgZmQgPCAwIHx8Cj4gPiArICAgICAgICAgICAgIGZkID4gSU5UX01BWCkg
ewo+ID4gKyAgICAgICAgICAgICByZXR1cm4gLTE7Cj4gPiArICAgICB9Cj4gPiArICAgICByZXR1
cm4gZmQ7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdXNlcl9p
bml0X2ZkX2ZkcyhzdHJ1Y3QgYXJnbGlzdCAqaWZzcGVjKQo+ID4gK3sKPiA+ICsgICAgIGludCBm
ZCA9IC0xOwo+ID4gKyAgICAgY2hhciAqZmRhcmcgPSBOVUxMOwo+ID4gKyAgICAgc3RydWN0IHZl
Y3Rvcl9mZHMgKnJlc3VsdCA9IE5VTEw7Cj4gPiArCj4gPiArICAgICBmZGFyZyA9IHVtbF92ZWN0
b3JfZmV0Y2hfYXJnKGlmc3BlYywgImZkIik7Cj4gPiArICAgICBmZCA9IHN0cnRvZmQoZmRhcmcp
Owo+ID4gKyAgICAgaWYgKGZkID09IC0xKSB7Cj4gPiArICAgICAgICAgICAgIHByaW50ayhVTV9L
RVJOX0VSUiAiZmQgb3BlbjogYmFkIG9yIG1pc3NpbmcgZmQgYXJndW1lbnQiKTsKPiA+ICsgICAg
ICAgICAgICAgZ290byBmZF9jbGVhbnVwOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgcmVz
dWx0ID0gdW1sX2ttYWxsb2Moc2l6ZW9mKHN0cnVjdCB2ZWN0b3JfZmRzKSwgVU1fR0ZQX0tFUk5F
TCk7Cj4gPiArICAgICBpZiAocmVzdWx0ID09IE5VTEwpIHsKPiA+ICsgICAgICAgICAgICAgcHJp
bnRrKFVNX0tFUk5fRVJSICJmZCBvcGVuOiBhbGxvY2F0aW9uIGZhaWxlZCIpOwo+ID4gKyAgICAg
ICAgICAgICBnb3RvIGZkX2NsZWFudXA7Cj4gPiArICAgICB9Cj4gPiArCj4gPiArICAgICByZXN1
bHQtPnJ4X2ZkID0gZmQ7Cj4gPiArICAgICByZXN1bHQtPnR4X2ZkID0gZmQ7Cj4gPiArICAgICBy
ZXN1bHQtPnJlbW90ZV9hZGRyX3NpemUgPSAwOwo+ID4gKyAgICAgcmVzdWx0LT5yZW1vdGVfYWRk
ciA9IE5VTEw7Cj4gPiArICAgICByZXR1cm4gcmVzdWx0Owo+ID4gKwo+ID4gK2ZkX2NsZWFudXA6
Cj4gPiArICAgICBpZiAoZmQgPj0gMCkKPiA+ICsgICAgICAgICAgICAgb3NfY2xvc2VfZmlsZShm
ZCk7Cj4gPiArICAgICBpZiAocmVzdWx0ICE9IE5VTEwpCj4gPiArICAgICAgICAgICAgIGtmcmVl
KHJlc3VsdCk7Cj4gPiArICAgICByZXR1cm4gTlVMTDsKPiA+ICt9Cj4gPiArCj4gPiAgIHN0YXRp
YyBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdXNlcl9pbml0X3Jhd19mZHMoc3RydWN0IGFyZ2xpc3QgKmlm
c3BlYykKPiA+ICAgewo+ID4gICAgICAgaW50IHJ4ZmQgPSAtMSwgdHhmZCA9IC0xOwo+ID4gQEAg
LTU3OCw2ICs2MzUsOCBAQCBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdW1sX3ZlY3Rvcl91c2VyX29wZW4o
Cj4gPiAgICAgICAgICAgICAgIHJldHVybiB1c2VyX2luaXRfc29ja2V0X2ZkcyhwYXJzZWQsIElE
X0wyVFBWMyk7Cj4gPiAgICAgICBpZiAoc3RybmNtcCh0cmFuc3BvcnQsIFRSQU5TX0JFU1MsIFRS
QU5TX0JFU1NfTEVOKSA9PSAwKQo+ID4gICAgICAgICAgICAgICByZXR1cm4gdXNlcl9pbml0X3Vu
aXhfZmRzKHBhcnNlZCwgSURfQkVTUyk7Cj4gPiArICAgICBpZiAoc3RybmNtcCh0cmFuc3BvcnQs
IFRSQU5TX0ZELCBUUkFOU19GRF9MRU4pID09IDApCj4gPiArICAgICAgICAgICAgIHJldHVybiB1
c2VyX2luaXRfZmRfZmRzKHBhcnNlZCk7Cj4gPiAgICAgICByZXR1cm4gTlVMTDsKPiA+ICAgfQo+
ID4KPiA+Cj4KPiBXZSBzaG91bGQgYWxzbyBjb250cm9sIGVuYWJsZS9kaXNhYmxlIG9mIHJlY3Yv
c2VuZG1tc2cgYXMgYW4gb3B0aW9uIGhlcmUuCj4KPiBJdCBjYW4gYmUgbWFkZSBnZW5lcmljIGFu
ZCBiZSBmZWQgaW50byBnZXRfdHJhbnNwb3J0X29wdGlvbnMoKSBpbgo+IHZlY3Rvcl9rZXJuLmMg
YXMgYW4gb3ZlcnJpZGUuCgpTbyBhY3R1YWxseSwgdGhlcmUgc2VlbXMgdG8gYmUgYSB3YXkgdG8g
ZG8gdGhhdCBhbHJlYWR5OgoKdmVjMDp0cmFuc3BvcnQ9ZmQsZmQ9Tix2ZWM9MAoKPgo+IC0tCj4g
QW50b24gUi4gSXZhbm92Cj4gQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBF
bmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2MQo+IGh0dHBzOi8vd3d3LmNhbWJyaWRnZWdy
ZXlzLmNvbS8KPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
