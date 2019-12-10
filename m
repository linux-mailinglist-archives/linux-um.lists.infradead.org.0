Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E27118112
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 08:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KaFtdC27md76CCSbdt7NH9p3Eq5Q0bI+d9mJA92ViKo=; b=enNpihHWyQ71xI7vGPhWiyasc
	mo6Co2m2Lsb++W3Wo5YpKsN+yIitnLDrG9dJBD0fJzqoZVx9SXewUFTs7RJaLtH4/oYYVPyUMhPWq
	O4klWT/VqRsojPVw0LxhZjoipVKNG9Vnf39OHjxn4xUQx1FzV+Lk5QBUv0v4M2EHMOvvcHp+0yLdQ
	a+O+3ebaSn6zcZ0I9xt9JXtxp8fOZjRVR9Z76i/RFf4pu+isrRGKSXhkRcF8Ne4AJyPmrVWyTZm9F
	aYJ1GDnyLEMK2PFux5l7Ki8GabBc/oo/YRspbevilYSVmFdIp7asDApHPp9Zb9rIf+dgkM1dpm1CU
	oPB+vT31g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZde-0002BX-Mk; Tue, 10 Dec 2019 07:08:54 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZdb-0002Ar-96
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 07:08:53 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieZdT-0001M9-4T; Tue, 10 Dec 2019 07:08:43 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1ieZdQ-0002j8-NY; Tue, 10 Dec 2019 07:08:42 +0000
Subject: Re: [RFC v1 1/2] um: drivers: remove support for UML_NET_PCAP
To: Brendan Higgins <brendanhiggins@google.com>
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-2-brendanhiggins@google.com>
 <f217945d-ab64-10cc-bb12-3a4d810ff25a@cambridgegreys.com>
 <CAFd5g45cSKATfw4GKPw6QdhQKDNi=0gcDRjQ7N0T1XrdtSTPrg@mail.gmail.com>
 <20191207012108.GA220741@google.com>
 <15f048d3-07ab-61c1-c6e0-0712e626dd33@cambridgegreys.com>
 <CAFd5g448yZ5nSVLnN0gvsv3jLnhWG+dzJgvH1jdV+s2eTq4wxg@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <778d990f-5e07-b7af-498e-61f69c26f040@cambridgegreys.com>
Date: Tue, 10 Dec 2019 07:08:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAFd5g448yZ5nSVLnN0gvsv3jLnhWG+dzJgvH1jdV+s2eTq4wxg@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_230851_320507_2975E25E 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: johannes.berg@intel.com, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gMDkvMTIvMjAxOSAyMzo0MCwgQnJlbmRhbiBIaWdnaW5zIHdyb3RlOgo+IE9uIFNhdCwgRGVj
IDcsIDIwMTkgYXQgMToxNSBBTSBBbnRvbiBJdmFub3YKPiA8YW50b24uaXZhbm92QGNhbWJyaWRn
ZWdyZXlzLmNvbT4gd3JvdGU6Cj4+IE9uIDA3LzEyLzIwMTkgMDE6MjEsIEJyZW5kYW4gSGlnZ2lu
cyB3cm90ZToKPj4+IE9uIEZyaSwgRGVjIDA2LCAyMDE5IGF0IDA0OjMyOjM0UE0gLTA4MDAsIEJy
ZW5kYW4gSGlnZ2lucyB3cm90ZToKPj4+PiBPbiBUaHUsIERlYyA1LCAyMDE5IGF0IDExOjIzIFBN
IEFudG9uIEl2YW5vdgo+Pj4+IDxhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPiB3cm90
ZToKPj4+PiBbLi4uXQo+Pj4+PiAxLiBUaGVyZSBpcyBhIHByb3Bvc2VkIHBhdGNoIGZvciB0aGUg
YnVpbGQgc3lzdGVtIHRvIGZpeCBpdC4KPj4+IFNvIEkganVzdCB0cmllZCB0aGUgcGF0Y2ggeW91
IGxpbmtlZCBvbiB0aGUgY292ZXIgbGV0dGVyWzFdLCBhbmQgSSBhbQo+Pj4gc3RpbGwgZ2V0dGlu
ZyB0aGUgYnVpbGQgZXJyb3IgZGVzY3JpYmVkIGFib3ZlOgo+Pj4KPj4+IGFyY2gvdW0vZHJpdmVy
cy9wY2FwX3VzZXIuYzozNToxMjogZXJyb3I6IGNvbmZsaWN0aW5nIHR5cGVzIGZvciDigJhwY2Fw
X29wZW7igJkKPj4+ICAgIHN0YXRpYyBpbnQgcGNhcF9vcGVuKHZvaWQgKmRhdGEpCj4+PiAgICAg
ICAgICAgICAgIF5+fn5+fn5+fgo+Pj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC91c3IvaW5jbHVk
ZS9wY2FwLmg6NDMsCj4+PiAgICAgICAgICAgICAgICAgICAgZnJvbSBhcmNoL3VtL2RyaXZlcnMv
cGNhcF91c2VyLmM6NzoKPj4+IC91c3IvaW5jbHVkZS9wY2FwL3BjYXAuaDo4NTk6MTg6IG5vdGU6
IHByZXZpb3VzIGRlY2xhcmF0aW9uIG9mIOKAmHBjYXBfb3BlbuKAmSB3YXMgaGVyZQo+Pj4gICAg
UENBUF9BUEkgcGNhcF90ICpwY2FwX29wZW4oY29uc3QgY2hhciAqc291cmNlLCBpbnQgc25hcGxl
biwgaW50IGZsYWdzLAo+Pj4KPj4+IExvb2tpbmcgYXQgdGhlIHBhdGNoLCBJIHdvdWxkbid0IGV4
cGVjdCBpdCB0byBzb2x2ZSB0aGlzIHByb2JsZW0uCj4+Pgo+Pj4gQXJlIHRoZXJlIG1heWJlIGRp
ZmZlcmVudCBjb25mbGljdGluZyBsaWJwY2FwLWRldiBsaWJyYXJpZXMgYW5kIEkgaGF2ZQo+Pj4g
dGhlIHdyb25nIG9uZT8gT3IgaXMgdGhpcyBqdXN0IHN0aWxsIGJyb2tlbj8KPj4+Cj4+Pj4+IDIu
IFdlIHNob3VsZCBiZSByZW1vdmluZyBhbGwgb2xkIGRyaXZlcnMgYW5kIHJlcGxhY2luZyB0aGVt
IHdpdGggdGhlCj4+Pj4+IHZlY3RvciBvbmVzLgo+Pj4+IEhtbS4uLmRvZXMgdGhpcyBtZWFuIHlv
dSB3b3VsZCBlbnRlcnRhaW4gYSBwYXRjaCByZW1vdmluZyBhbGwgdGhlCj4+Pj4gbm9uLXZlY3Rv
ciBVTUwgbmV0d29yayBkcml2ZXJzPyBJIHdvdWxkIGJlIGhhcHB5IHRvIHNlZSBWREUgZ28gYXMK
Pj4+PiB3ZWxsLgo+Pj4+Cj4+Pj4gSW4gYW55IGV2ZW50LCBpdCBzb3VuZHMgbGlrZSBJIHNob3Vs
ZCBwcm9iYWJseSBkcm9wIHRoaXMgcGF0Y2ggYXMgaXQKPj4+PiBpcyBjdXJyZW50bHkuCj4+Pj4K
Pj4+PiBUaGFua3MhCj4+PiBbMV0gaHR0cHM6Ly9idWdzLmRlYmlhbi5vcmcvY2dpLWJpbi9idWdy
ZXBvcnQuY2dpP2J1Zz05Mzg5NjIjNzkKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4gbGludXgtdW0gbWFpbGluZyBsaXN0Cj4+PiBsaW51
eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCj4+Pgo+PiBPSywgbG9va3MgbGlrZSB0aGUgcGNhcC5o
IGRpZmZlcnMgbm93IGFzIHdlbGwuCj4+Cj4+IEkgd2lsbCBmaXggdGhhdCB0b28uIEl0IGxvb2tz
IGxpa2UgeW91IG5lZWQgYm90aCBhIHBjYXAgZml4IGFuZCBhCj4+IGxpYnJhcnkgbGlua2luZyBm
aXggZm9yIHRoaXMgdG8gd29yay4KPj4KPj4gVGhlIHBhdGNoIGZpeGVzIHRoZSBpc3N1ZSB3aXRo
IHRoZSBidWlsZCBzeXN0ZW0gd2hpY2ggbm8gbG9uZ2VyIHByb3ZpZGVzCj4+IHRoZSBtZWFucyBm
b3IgVU1MIHRvIHNwZWNpZnkgZXh0cmEgbGlicmFyaWVzIChJIHByb2JhYmx5IGhhZCBhbiBvbGRl
cgo+PiBwY2FwIHZlcnNpb24gb24gdGhlIG1hY2hpbmUgd2hlcmUgSSB0ZXN0ZWQgdGhpcykuCj4+
Cj4+IElNSE8gZnJhbmtseSBpdCBpcyBubyBsb25nZXIgbmVjZXNzYXJ5Lgo+Pgo+PiA1LjUtcmMx
IHZlY3RvciByYXcgbm93IGhhcyB0aGUgZmFjaWxpdHkgdG8gYWRkL3JlbW92ZSAoaW5jbHVkaW5n
IGF0Cj4+IHJ1bnRpbWUpIGZpbHRlcnMgY29tcGlsZWQgd2l0aCBwY2FwIG91dHNpZGUgVU1MLiBJ
dCB3YXMgbWVyZ2VkIHRoaXMgd2Vlay4KPj4KPj4gV2Ugbm93IGhhdmUgdGhlIGZvbGxvd2luZyBs
aW5lLXVwIGZvciB2ZWN0b3IgZHJpdmVycyAtIEVvR1JFLCBFb0wyVFB2MywKPj4gUkFXICgrLy0g
QlBGKSwgVEFQIGFuZCBCRVNTLiBTcGVlZHMgYXJlIDIuNSB0byA5R2JpdCBvbiBteSBtYWNoaW5l
Cj4+IChtaWQtcmFuZ2UgUnl6ZW4gZGVza3RvcCkuCj4+Cj4+IElmIEkgZmlndXJlIG91dCBhIHdh
eSB0byBnZXQgaG9sZCBvZiB0aGUgdW5kZXJseWluZyB0YXAgcmF3IHNvY2tldHMgdGhlCj4+IHNh
bWUgd2F5IHZob3N0IGRvZXMsIFRBUCBjYW4gcHJvYmFibHkgZ28gdG8gMTJHYml0IG9yIHRoZXJl
YWJvdXRzLiBTYW1lCj4+IGFwcGxpZXMgdG8gZ2V0dGluZyB6ZXJvY29weSB3b3JraW5nIHdpdGgg
cmF3Lgo+Pgo+PiBBcyBhIGJhc2lzIGZvciBjb21wYXJpc29uIEkgZ2V0IDE4R2JpdCBvbiB0aGUg
c2FtZSBtYWNoaW5lIHVzaW5nIHZFdGgKPj4gYW5kIGNvbnRhaW5lcnMuIDUwJSBvZiB0aGF0IGlz
IGFjdHVhbGx5IGEgdmVyeSBkZWNlbnQgbnVtYmVyLgo+Pgo+PiBXaGlsZSB2ZWN0b3IgZHJpdmVy
cyBhcmUgbm90IDE6MSByZXBsYWNlbWVudHMgZm9yIHRoZSBleGlzdGluZyBkcml2ZXJzLAo+PiB5
b3UgY2FuIGFjaGlldmUgdGhlIHNhbWUgdG9wb2xvZ2llcyBhbmQgdGhlIHNhbWUgY29ubmVjdGl2
aXR5IGF0IG11Y2gKPj4gaGlnaGVyIHBlcmZvcm1hbmNlIC0gdGhlIG9sZCBkcml2ZXJzIHRlc3Qg
b3V0IGluIHRoZSA1MDBNYml0IHJhbmdlIG9uCj4+IHRoZSBzYW1lIGhhcmR3YXJlLgo+Pgo+PiBJ
TUhPIHdlIHNob3VsZCBhdCBsZWFzdCBtYXJrIHRoZW0gYXMgIm9ic29sZXRlIiBhbmQgc3RhcnQg
cHJlcGFyaW5nIHRvCj4+IHJlbW92ZSB0aGVtLgo+IEFscmlnaHQsIEkgd2lsbCBzZW5kIGEgcGF0
Y2ggb3V0IHdoaWNoIG1hcmtzIHRoZSBvdGhlciBuZXR3b3JrIGRyaXZlcnMKPiBhcyAib2Jzb2xl
dGUiLgo+Cj4gQ2xhcmlmaWNhdGlvbjogU2hvdWxkIEkgbWFyayBhbGwgVU1MIG5ldHdvcmsgZGV2
aWNlcyBhcyAib2Jzb2xldGUiCj4gZXhjZXB0IGZvciBORVRfVkVDVE9SPyBEYWVtb24gYW5kIE1D
QVNUIGxvb2tlZCB0byBtZSAoSSBhbSBub3QgYQo+IG5ldHdvcmtpbmcgZXhwZXJ0KSwgbGlrZSB0
aGV5IG1pZ2h0IG5vdCBiZSBjb3ZlcmVkIGJ5IHZlY3Rvci4KPgpUaGV5IGFyZSBub3QgMToxIHJl
cGxhY2VtZW50cyB1bmZvcnR1bmF0ZWx5LgoKSG93ZXZlciwgaW4gb3JkZXIgdG8gZml4IGRhZW1v
biBJIGhhdmUgdG8gcmV3cml0ZSB0aGUgc3dpdGNoIGZyb20gCnVtbC11dGlsaXRpZXMgdG9vLiBJ
dCBpcyBiZXlvbmQgb2Jzb2xldGUuCgpNQ0FTVCBmb3IgMiBVTUwgaW5zdGFuY2VzIGNhbiBiZSBy
ZXBsYWNlZCBieSBlaXRoZXIgR1JFIG9yIEwyVFB2MywgZm9yIAptb3JlIHRoYW4gMiB5b3UgYXJl
IGJldHRlciBvZmYgaW50cm9kdWNpbmcgYSBwcm9wZXIgc3dpdGNoLgoKSSBhbSBPSyBpZiBhbGwg
b2xkIGRyaXZlcnMgYXJlIG1hcmtlZCBhcyBvYnNvbGV0ZSBhdCB0aGlzIHBvaW50LCBzbyAKcGxl
YXNlIHByb2NlZWQgd2l0aCB0aGUgcGF0Y2guCgpCcmdkcywKCi0tIApBbnRvbiBSLiBJdmFub3YK
Q2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21wYW55IE51
bWJlciAxMDI3MzY2MQpodHRwczovL3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBs
aXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
