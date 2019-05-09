Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23ED1830C
	for <lists+linux-um@lfdr.de>; Thu,  9 May 2019 03:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=molrt5agc93O3WI1yLkUfQvsCHB+m7ljASYYnstYnUw=; b=Jraxi7SoaEo0L8
	hmbeJdiqKlx+q/jr36v1KqXLz7ingF8PtRxkCQDgJN6J4vI0xqxkNcvFgbYeotJYNXtP4zHAJZO7m
	loBQydqQqFO+JSx41lowYKNH0pQORmlVk3ljR3/j0PzcQHx88QNGRm/M4Lu9ZIzlMZ7Gx2yXCfmUJ
	sCgaHb/KV61U5UIYypo3zhJWq9sxWMyy0X9aagbCLuI++tZaiBgzExAfuIOUXrEqShmgNS8dnG/5G
	RUwqmLPLcAc8S6hf13rXNYPAtxk5HjHyuvJR2EDUWwcI7qI88vSLKJC93LFe0DLGk5cz741/srl0k
	2/9h7g0cqK91LH0Hplww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOXQp-00030v-Oe; Thu, 09 May 2019 01:01:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOXQn-00030Q-8F
 for linux-um@lists.infradead.org; Thu, 09 May 2019 01:01:06 +0000
Received: by mail-pg1-x544.google.com with SMTP id t22so259169pgi.10
 for <linux-um@lists.infradead.org>; Wed, 08 May 2019 18:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yViYa+n9NYDtvHDz0r+K4+Oq95Cqmi6zykBegH2S9+U=;
 b=q6xuWARhhaCyOtUDiM13Mq2TCdqcqKupS3zwIqMPehPxy2dz2ZMD7U2PVt+jR9lZz+
 2nRqsnpVOKzcK54vtxFntv+RFvdYg4stm9737Agrnk2/tY5aURLb8arfUosWg9ydusYH
 W1TWfgD3pvEWC39AVZVJ4j3ptsQ9ZNc7yOXKPURwxPcO9gN+TT273HnVJ3QjfSDMsugZ
 HwS2354TdboEeYwv/UOXS1+XimZ2WljTCF2XE0z5K9/D/XSnTxbJImLp2p1Y0Y8MbhcW
 ahg4eVcH+uEmwOrLS6T5gfmIwH8EtOEJaiZEHJ2OETOp0h4LkXlUemXkJCW5Vv5rKgFC
 X1Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yViYa+n9NYDtvHDz0r+K4+Oq95Cqmi6zykBegH2S9+U=;
 b=pimScfQ9X5XXYTb2/HV/K/HWoGt+t2Q+Wl13M+dBl8g2sPziRtsvqpHIY6ao9d7ZsF
 4WFTMh3BTGHSUpkZFu6iGB7U3wrG1zy4uDmSAnzEvHVksyuOkhlcDYjqpfh0iD+cnLRv
 ic8pBHhuNqd1Z8Qcm+TX1Vx+bCzPX+95s8TiBlpnOs5oaddypxpyogtrRYfPxOKvzymQ
 0CJEBii0Zib22wwJsmKIxlveVaUCN7chnapCjj/7ST5vkcywxMe1XPUW8YBb/FKWY0Zg
 8ZADrR5S7dEyTdcKyjTZOdojVqkva7UOJA/otyCSGotaJiK5dmnw8wsSlMY+1Pd1J6gJ
 Tqbw==
X-Gm-Message-State: APjAAAWjp+Ltibu5LQ98g/HF41hbwnXyJ05th9DnZ2z9dPPLydjLITDR
 TrkJ3gYKUB8jawNnh2chK0I=
X-Google-Smtp-Source: APXvYqz/V92Failmv0rkia78qR5hdpdS0xfB1JYjVMeOpzkJ527SwnH/qSInDGxbdmN18Nckfk3b+A==
X-Received: by 2002:aa7:8a81:: with SMTP id a1mr900658pfc.121.1557363664135;
 Wed, 08 May 2019 18:01:04 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id u66sm553077pfb.76.2019.05.08.18.01.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 18:01:03 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: shuah <shuah@kernel.org>, Greg KH <gregkh@linuxfoundation.org>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com>
 <1b1efa91-0523-21a9-e541-fdc3612bd117@kernel.org>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <911e44bb-9bb1-e603-a260-fac63760fff6@gmail.com>
Date: Wed, 8 May 2019 18:01:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1b1efa91-0523-21a9-e541-fdc3612bd117@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_180105_299492_11701D22 
X-CRM114-Status: GOOD (  24.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, robh@kernel.org, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com, kieran.bingham@ideasonboard.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gNS83LzE5IDg6MjMgQU0sIHNodWFoIHdyb3RlOgo+IE9uIDUvNy8xOSAyOjAxIEFNLCBHcmVn
IEtIIHdyb3RlOgo+PiBPbiBNb24sIE1heSAwNiwgMjAxOSBhdCAwODoxNDoxMlBNIC0wNzAwLCBG
cmFuayBSb3dhbmQgd3JvdGU6Cj4+PiBPbiA1LzEvMTkgNDowMSBQTSwgQnJlbmRhbiBIaWdnaW5z
IHdyb3RlOgo+Pj4+ICMjIFRMRFIKPj4+Pgo+Pj4+IEkgcmViYXNlZCB0aGUgbGFzdCBwYXRjaHNl
dCBvbiA1LjEtcmM3IGluIGhvcGVzIHRoYXQgd2UgY2FuIGdldCB0aGlzIGluCj4+Pj4gNS4yLgo+
Pj4+Cj4+Pj4gU2h1YWgsIEkgdGhpbmsgeW91LCBHcmVnIEtILCBhbmQgbXlzZWxmIHRhbGtlZCBv
ZmYgdGhyZWFkLCBhbmQgd2UgYWdyZWVkCj4+Pj4gd2Ugd291bGQgbWVyZ2UgdGhyb3VnaCB5b3Vy
IHRyZWUgd2hlbiB0aGUgdGltZSBjYW1lPyBBbSBJIHJlbWVtYmVyaW5nCj4+Pj4gY29ycmVjdGx5
Pwo+Pj4+Cj4+Pj4gIyMgQmFja2dyb3VuZAo+Pj4+Cj4+Pj4gVGhpcyBwYXRjaCBzZXQgcHJvcG9z
ZXMgS1VuaXQsIGEgbGlnaHR3ZWlnaHQgdW5pdCB0ZXN0aW5nIGFuZCBtb2NraW5nCj4+Pj4gZnJh
bWV3b3JrIGZvciB0aGUgTGludXgga2VybmVsLgo+Pj4+Cj4+Pj4gVW5saWtlIEF1dG90ZXN0IGFu
ZCBrc2VsZnRlc3QsIEtVbml0IGlzIGEgdHJ1ZSB1bml0IHRlc3RpbmcgZnJhbWV3b3JrOwo+Pj4+
IGl0IGRvZXMgbm90IHJlcXVpcmUgaW5zdGFsbGluZyB0aGUga2VybmVsIG9uIGEgdGVzdCBtYWNo
aW5lIG9yIGluIGEgVk0KPj4+PiBhbmQgZG9lcyBub3QgcmVxdWlyZSB0ZXN0cyB0byBiZSB3cml0
dGVuIGluIHVzZXJzcGFjZSBydW5uaW5nIG9uIGEgaG9zdAo+Pj4+IGtlcm5lbC4gQWRkaXRpb25h
bGx5LCBLVW5pdCBpcyBmYXN0OiBGcm9tIGludm9jYXRpb24gdG8gY29tcGxldGlvbiBLVW5pdAo+
Pj4+IGNhbiBydW4gc2V2ZXJhbCBkb3plbiB0ZXN0cyBpbiB1bmRlciBhIHNlY29uZC4gQ3VycmVu
dGx5LCB0aGUgZW50aXJlCj4+Pj4gS1VuaXQgdGVzdCBzdWl0ZSBmb3IgS1VuaXQgcnVucyBpbiB1
bmRlciBhIHNlY29uZCBmcm9tIHRoZSBpbml0aWFsCj4+Pj4gaW52b2NhdGlvbiAoYnVpbGQgdGlt
ZSBleGNsdWRlZCkuCj4+Pj4KPj4+PiBLVW5pdCBpcyBoZWF2aWx5IGluc3BpcmVkIGJ5IEpVbml0
LCBQeXRob24ncyB1bml0dGVzdC5tb2NrLCBhbmQKPj4+PiBHb29nbGV0ZXN0L0dvb2dsZW1vY2sg
Zm9yIEMrKy4gS1VuaXQgcHJvdmlkZXMgZmFjaWxpdGllcyBmb3IgZGVmaW5pbmcKPj4+PiB1bml0
IHRlc3QgY2FzZXMsIGdyb3VwaW5nIHJlbGF0ZWQgdGVzdCBjYXNlcyBpbnRvIHRlc3Qgc3VpdGVz
LCBwcm92aWRpbmcKPj4+PiBjb21tb24gaW5mcmFzdHJ1Y3R1cmUgZm9yIHJ1bm5pbmcgdGVzdHMs
IG1vY2tpbmcsIHNweWluZywgYW5kIG11Y2ggbW9yZS4KPj4+Cj4+PiBBcyBhIHJlc3VsdCBvZiB0
aGUgZW1haWxzIHJlcGx5aW5nIHRvIHRoaXMgcGF0Y2ggdGhyZWFkLCBJIGFtIG5vdwo+Pj4gc3Rh
cnRpbmcgdG8gbG9vayBhdCBrc2VsZnRlc3QuwqAgTXkgbGV2ZWwgb2YgdW5kZXJzdGFuZGluZyBp
cyBiYXNlZAo+Pj4gb24gc29tZSBzbGlkZSBwcmVzZW50YXRpb25zLCBhbiBMV04gYXJ0aWNsZSwg
aHR0cHM6Ly9rc2VsZnRlc3Qud2lraS5rZXJuZWwub3JnLwo+Pj4gYW5kIGEgX3RpbnlfIGJpdCBv
ZiBsb29raW5nIGF0IGtzZWxmdGVzdCBjb2RlLgo+Pj4KPj4+IHRsO2RyOyBJIGRvbid0IHJlYWxs
eSB1bmRlcnN0YW5kIGtzZWxmdGVzdCB5ZXQuCj4+Pgo+Pj4KPj4+ICgxKSB3aHkgS1VuaXQgZXhp
c3RzCj4+Pgo+Pj4+ICMjIFdoYXQncyBzbyBzcGVjaWFsIGFib3V0IHVuaXQgdGVzdGluZz8KPj4+
Pgo+Pj4+IEEgdW5pdCB0ZXN0IGlzIHN1cHBvc2VkIHRvIHRlc3QgYSBzaW5nbGUgdW5pdCBvZiBj
b2RlIGluIGlzb2xhdGlvbiwKPj4+PiBoZW5jZSB0aGUgbmFtZS4gVGhlcmUgc2hvdWxkIGJlIG5v
IGRlcGVuZGVuY2llcyBvdXRzaWRlIHRoZSBjb250cm9sIG9mCj4+Pj4gdGhlIHRlc3Q7IHRoaXMg
bWVhbnMgbm8gZXh0ZXJuYWwgZGVwZW5kZW5jaWVzLCB3aGljaCBtYWtlcyB0ZXN0cyBvcmRlcnMK
Pj4+PiBvZiBtYWduaXR1ZGVzIGZhc3Rlci4gTGlrZXdpc2UsIHNpbmNlIHRoZXJlIGFyZSBubyBl
eHRlcm5hbCBkZXBlbmRlbmNpZXMsCj4+Pj4gdGhlcmUgYXJlIG5vIGhvb3BzIHRvIGp1bXAgdGhy
b3VnaCB0byBydW4gdGhlIHRlc3RzLiBBZGRpdGlvbmFsbHksIHRoaXMKPj4+PiBtYWtlcyB1bml0
IHRlc3RzIGRldGVybWluaXN0aWM6IGEgZmFpbGluZyB1bml0IHRlc3QgYWx3YXlzIGluZGljYXRl
cyBhCj4+Pj4gcHJvYmxlbS4gRmluYWxseSwgYmVjYXVzZSB1bml0IHRlc3RzIG5lY2Vzc2FyaWx5
IGhhdmUgZmluZXIgZ3JhbnVsYXJpdHksCj4+Pj4gdGhleSBhcmUgYWJsZSB0byB0ZXN0IGFsbCBj
b2RlIHBhdGhzIGVhc2lseSBzb2x2aW5nIHRoZSBjbGFzc2ljIHByb2JsZW0KPj4+PiBvZiBkaWZm
aWN1bHR5IGluIGV4ZXJjaXNpbmcgZXJyb3IgaGFuZGxpbmcgY29kZS4KPj4+Cj4+PiAoMikgS1Vu
aXQgaXMgbm90IG1lYW50IHRvIHJlcGxhY2Uga3NlbGZ0ZXN0Cj4+Pgo+Pj4+ICMjIElzIEtVbml0
IHRyeWluZyB0byByZXBsYWNlIG90aGVyIHRlc3RpbmcgZnJhbWV3b3JrcyBmb3IgdGhlIGtlcm5l
bD8KPj4+Pgo+Pj4+IE5vLiBNb3N0IGV4aXN0aW5nIHRlc3RzIGZvciB0aGUgTGludXgga2VybmVs
IGFyZSBlbmQtdG8tZW5kIHRlc3RzLCB3aGljaAo+Pj4+IGhhdmUgdGhlaXIgcGxhY2UuIEEgd2Vs
bCB0ZXN0ZWQgc3lzdGVtIGhhcyBsb3RzIG9mIHVuaXQgdGVzdHMsIGEKPj4+PiByZWFzb25hYmxl
IG51bWJlciBvZiBpbnRlZ3JhdGlvbiB0ZXN0cywgYW5kIHNvbWUgZW5kLXRvLWVuZCB0ZXN0cy4g
S1VuaXQKPj4+PiBpcyBqdXN0IHRyeWluZyB0byBhZGRyZXNzIHRoZSB1bml0IHRlc3Qgc3BhY2Ug
d2hpY2ggaXMgY3VycmVudGx5IG5vdAo+Pj4+IGJlaW5nIGFkZHJlc3NlZC4KPj4+Cj4+PiBNeSB1
bmRlcnN0YW5kaW5nIGlzIHRoYXQgdGhlIGludGVudCBvZiBLVW5pdCBpcyB0byBhdm9pZCBib290
aW5nIGEga2VybmVsIG9uCj4+PiByZWFsIGhhcmR3YXJlIG9yIGluIGEgdmlydHVhbCBtYWNoaW5l
LsKgIFRoYXQgc2VlbXMgdG8gYmUgYSBtYXR0ZXIgb2Ygc2VtYW50aWNzCj4+PiB0byBtZSBiZWNh
dXNlIGlzbid0IGludm9raW5nIGEgVU1MIExpbnV4IGp1c3QgcnVubmluZyB0aGUgTGludXgga2Vy
bmVsIGluCj4+PiBhIGRpZmZlcmVudCBmb3JtIG9mIHZpcnR1YWxpemF0aW9uPwo+Pj4KPj4+IFNv
IEkgZG8gbm90IHVuZGVyc3RhbmQgd2h5IEtVbml0IGlzIGFuIGltcHJvdmVtZW50IG92ZXIga3Nl
bGZ0ZXN0Lgo+IAo+IFRoZXkgYXJlIGluIHR3byBkaWZmZXJlbnQgY2F0ZWdvcmllcy4gS3NlbGZ0
ZXN0IGZhbGxzIGludG8gYmxhY2sgYm94Cj4gcmVncmVzc2lvbiB0ZXN0IHN1aXRlIHdoaWNoIGlz
IGEgY29sbGVjdGlvbiBvZiB1c2VyLXNwYWNlIHRlc3RzIHdpdGggYQo+IGZldyBrZXJuZWwgdGVz
dCBtb2R1bGVzIGJhY2stZW5kaW5nIHRoZSB0ZXN0cyBpbiBzb21lIGNhc2VzLgo+IAo+IEtzZWxm
dGVzdCBjYW4gYmUgdXNlZCBieSBib3RoIGtlcm5lbCBkZXZlbG9wZXJzIGFuZCB1c2VycyBhbmQg
cHJvdmlkZXMKPiBhIGdvb2Qgd2F5IHRvIHJlZ3Jlc3Npb24gdGVzdCByZWxlYXNlcyBpbiB0ZXN0
IHJpbmdzLgo+IAo+IEtVbml0IGlzIGEgd2hpdGUgYm94IGNhdGVnb3J5IGFuZCBpcyBhIGJldHRl
ciBmaXQgYXMgdW5pdCB0ZXN0IGZyYW1ld29yawo+IGZvciBkZXZlbG9wbWVudCBhbmQgcHJvdmlk
ZXMgYSBpbi1rZXJuZWwgdGVzdGluZy4gSSB3b3VsZG4ndCB2aWV3IHRoZW0KPiBvbmUgcmVwbGFj
aW5nIHRoZSBvdGhlci4gVGhleSBqdXN0IHByb3ZpZGUgY292ZXJhZ2UgZm9yIGRpZmZlcmVudCBh
cmVhcwo+IG9mIHRlc3RpbmcuCgpJIGRvbid0IHNlZSB3aGF0IGFib3V0IGtzZWxmdGVzdCBvciBL
VW5pdCBpcyBpbmhlcmVudGx5IGJsYWNrIGJveCBvcgp3aGl0ZSBib3guICBJIHdvdWxkIGV4cGVj
dCBib3RoIGZyYW1ld29ya3MgdG8gYmUgdXNlZCBmb3IgZWl0aGVyIHR5cGUKb2YgdGVzdGluZy4K
Cgo+IEkgd291bGRuJ3QgdmlldyBLVW5pdCBhcyBzb21ldGhpbmcgdGhhdCB3b3VsZCBiZSBlYXNp
bHkgcnVuIGluIHRlc3QgcmluZ3MgZm9yIGV4YW1wbGUuCgpJIGRvbid0IHNlZSB3aHkgbm90LgoK
LUZyYW5rCgo+IAo+IEJyZW5kYW4sIGRvZXMgdGhhdCBzb3VuZCBhYm91dCByaWdodD8KPiAKPj4+
Cj4+PiBJdCBzZWVtcyB0byBtZSB0aGF0IEtVbml0IGlzIGp1c3QgYW5vdGhlciBwaWVjZSBvZiBp
bmZyYXN0cnVjdHVyZSB0aGF0IEkKPj4+IGFtIGdvaW5nIHRvIGhhdmUgdG8gYmUgZmFtaWxpYXIg
d2l0aCBhcyBhIGtlcm5lbCBkZXZlbG9wZXIuwqAgTW9yZSBvdmVyaGVhZCwKPj4+IG1vcmUgaW5m
b3JtYXRpb24gdG8gc3R1ZmYgaW50byBteSB0aW55IGxpdHRsZSBicmFpbi4KPj4+Cj4+PiBJIHdv
dWxkIGd1ZXNzIHRoYXQgc29tZSBkZXZlbG9wZXJzIHdpbGwgZm9jdXMgb24ganVzdCBvbmUgb2Yg
dGhlIHR3byB0ZXN0Cj4+PiBlbnZpcm9ubWVudHMgKGFuZCBzb21lIHdpbGwgZm9jdXMgb24gYm90
aCksIHNwbGl0dGluZyB0aGUgZGV2ZWxvcG1lbnQKPj4+IHJlc291cmNlcyBpbnN0ZWFkIG9mIHBv
b2xpbmcgdGhlbSBvbiBhIGNvbW1vbiBpbmZyYXN0cnVjdHVyZS4KPiAKPj4+IFdoYXQgYW0gSSBt
aXNzaW5nPwo+Pgo+PiBrc2VsZnRlc3QgcHJvdmlkZXMgbm8gaW4ta2VybmVsIGZyYW1ld29yayBm
b3IgdGVzdGluZyBrZXJuZWwgY29kZQo+PiBzcGVjaWZpY2FsbHkuwqAgVGhhdCBzaG91bGQgYmUg
d2hhdCBrdW5pdCBwcm92aWRlcywgYW4gImVhc3kiIHdheSB0bwo+PiB3cml0ZSBpbi1rZXJuZWwg
dGVzdHMgZm9yIHRoaW5ncy4KPj4KPj4gQnJlbmRhbiwgZGlkIEkgZ2V0IGl0IHJpZ2h0Pwo+IHRo
YW5rcywKPiAtLSBTaHVhaAo+IC4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXVtCg==
