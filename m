Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3444A109C22
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 11:17:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nl4hhmc79S7BWP+BaLq1NbORTP492oldeU7wVamIDmw=; b=rXtU48UFb9hcdp
	Km9wNbSuE1W0NZ78HeuA/HGZpKyBflXhsYRXwBVmFoKuGlncCq7MMmafzI7wxcCmFo05K1rpxBS1/
	pOB58MyPiGX+gf7oSsPl4K6tu2D4D0X4sHjmcWMy3zJj4gAhot/HKXH4OF3e4HsNbg/QpHsmnwIpq
	8rjvtjt8AeYqGYboByDMdAKVwbwRn7bX8eWVcMo47QuN0xz+wqHm2YGGHTa9fP1zdfoWRq1uu1gYw
	5Wgfp+hNQT45An6Smea2C1Jk/8ViihJiNpMhs40nInMgFhvVbzljRYRBwmWGceRknI21pccx7TP23
	A3k1dV/pTs3pYenEojRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZXu3-0001LO-M6; Tue, 26 Nov 2019 10:17:03 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZXtz-0000xD-K6
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 10:17:01 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iZXtu-00B9G2-Qu; Tue, 26 Nov 2019 11:16:54 +0100
Message-ID: <98acf77a7c6f6cba7f76c12a850ac2929b9e5a48.camel@sipsolutions.net>
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
From: Johannes Berg <johannes@sipsolutions.net>
To: Richard Weinberger <richard@nod.at>
Date: Tue, 26 Nov 2019 11:16:53 +0100
In-Reply-To: <243342257.98153.1574762974057.JavaMail.zimbra@nod.at>
References: <cover.1573179553.git.thehajime@gmail.com>
 <1531c5f16a00b608635c9a62fa3951807075f950.1573179553.git.thehajime@gmail.com>
 <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
 <de90b04151bafee083727c9769833932788cf428.camel@sipsolutions.net>
 <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
 <4ebb14dc67ccb70543617ce1f7066f3f27cd11a8.camel@sipsolutions.net>
 <243342257.98153.1574762974057.JavaMail.zimbra@nod.at>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_021659_680457_8D9710D6 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch <linux-arch@vger.kernel.org>, cem <cem@freebsd.org>,
 tavi purdila <tavi.purdila@gmail.com>, linux-um <linux-um@lists.infradead.org>,
 retrage01 <retrage01@gmail.com>, liuyuan <liuyuan@google.com>,
 pscollins <pscollins@google.com>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 sigmaepsilon92 <sigmaepsilon92@gmail.com>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTExLTI2IGF0IDExOjA5ICswMTAwLCBSaWNoYXJkIFdlaW5iZXJnZXIgd3Jv
dGU6Cj4gLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+ID4gPiBNeSBwb2ludCBpcyB0
aGF0IFVNTCBhbmQgTEtMIHNob3VsZCB0cnkgdG8gZG8gdXNlIHRoZSBzYW1lIGNvbmNlcHQvY29k
ZQo+ID4gPiByZWdhcmRpbmcgdmlydGlvLiBBdCB0aGUgZW5kIG9mIGRheSBib3RoIHVzZSB2aXJ0
dWFsIGRldmljZXMgd2hpY2ggdXNlCj4gPiA+IGZhY2lsaXRpZXMgZnJvbSB0aGUgaG9zdC4KPiA+
ID4gSWYgdGhpcyBpcyByZWFsbHkgbm90IHBvc3NpYmxlIGl0IG5lZWRzIGEgZ29vZCBleHBsYW5h
dGlvbi4KPiA+IAo+ID4gSSB0aGluayBpdCBpc24ndCBwb3NzaWJsZSwgdW5sZXNzIHlvdSB1c2Ug
dmhvc3QtdXNlciBvdmVyIGEgdW5peCBkb21haW4KPiA+IHNvY2tldCBpbnRlcm5hbGx5IHRvIHRh
bGsgYmV0d2VlbiB0aGUga2VybmVsICh2aXJ0aW9fdW1sKSBhbmQgaHlwZXJ2aXNvcgo+ID4gKGRl
dmljZSkgY29tcG9uZW50cy4KPiA+IAo+ID4gSW4gdmlydGlvX3VtbCwgdGhlIGRldmljZSBpbXBs
ZW1lbnRhdGlvbiBpcyBhc3N1bWVkIHRvIGJlIGEgc2VwYXJhdGUKPiA+IHByb2Nlc3Mgd2l0aCBh
IHZob3N0LXVzZXIgY29ubmVjdGlvbi4gSGVyZSBpbiBMS0wsIHRoZSB2aXJ0aW8gZGV2aWNlIGlz
Cj4gPiBwYXJ0IG9mIHRoZSAiaHlwZXJ2aXNvciIsIGkuZS4gaW4gdGhlIHNhbWUgcHJvY2Vzcy4K
PiAKPiBFeGFjdGx5LCBjdXJyZW50bHkgVU1MIGFuZCBMS0wgc29sdmUgc2FtZSB0aGluZ3MgZGlm
ZmVyZW50bHksIGJ1dCBkbyB3ZSBuZWVkIHRvPwoKSXQncyBub3QgdGhlIHNhbWUgdGhpbmcgdGhv
dWdoIDotKQoKVU1MIHJpZ2h0IG5vdyBkb2Vzbid0IGhhdmUgb3Igc3VwcG9ydCB2aXJ0aW8gZGV2
aWNlcyBpbiB0aGUgYnVpbHQtaW4KaHlwZXJ2aXNvciwgd2hhdCB3ZSB3YW50ZWQgdG8gdXNlIHZp
cnRpbyBmb3Igd2FzIGV4cGxpY2l0bHkgZm9yIHRoZQp2aG9zdC11c2VyIGRldmljZXMuCgpMS0wg
Y2xlYXJseSB3YW50cyB0byBoYXZlIGRldmljZSBpbXBsZW1lbnRhdGlvbnMgaW4gdGhlIGh5cGVy
dmlzb3IsCnBlcmhhcHMgZm9yIG5ldHdvcmtpbmcgb3IgY29uc29sZSBldGMuPyBUaGF0IF9taWdo
dF8gYmUgdXNlZnVsIHNpbmNlIGl0Cm1ha2VzIHRoZSBkZXZpY2UgaW1wbGVtZW50YXRpb24gbW9y
ZSBnZW5lcmFsLCB1bmxpa2UgdGhlIFVNTCBhcHByb2FjaAp3aGVyZSBhbGwgZGV2aWNlcyBjb21l
IHdpdGggYSBrZXJuZWwtIGFuZCB1c2VyLXNpZGUgYW5kIGFyZSBzcGVjaWFsCmRyaXZlcnMgaW4g
dGhlIGtlcm5lbCwgdnMuIGdlbmVyYWwgdmlydGlvIGRyaXZlcnMuCgpOb3csIGFyZ3VhYmx5LCBz
aW5jZSBVTUwgaGFzIGFsbCB0aGVzZSBhbHJlYWR5IGEgY29tYmluZWQgVU1ML0xLTApkb2Vzbid0
IGFjdHVhbGx5ICpuZWVkKiBhbnkgdmlydGlvIGRldmljZXMsIHNpbmNlIGFsbCAob3IgYXQgbGVh
c3QgbW9zdCkKb2YgdGhlIHRoaW5ncyB0aGF0IGNvdWxkIGJlIGNvdmVyZWQgYnkgdmlydGlvIHRv
ZGF5IGFyZSBhbHJlYWR5IGNvdmVyZWQKYnkgVU1MIGRldmljZXMgKGJsb2NrLCBuZXQsIGNvbnNv
bGUsIHJhbmRvbSkuCgpJJ2QgcHJvYmFibHkgc2F5IHRoZW4gdGhhdCB0aGlzIGNhbiBiZSByZW1v
dmVkIGZyb20gYW4gaW5pdGlhbCAibWluaW11bQp2aWFibGUgcHJvZHVjdCIgb2YgTEtMLCBzaW5j
ZSBvbmNlIG1lcmdlZCB3aXRoIFVNTCB5b3UgZ2V0IHRoZSBkZXZpY2VzCmZyb20gdGhhdC4gTGF0
ZXIsIHdlIGNvdWxkIGRlY2lkZSB0aGF0IFVNTCBkZXZpY2VzIGFjdHVhbGx5IGFyZSBiZXR0ZXIK
ZG9uZSBhcyB2aXJ0aW8sIGFuZCBzdXBwb3J0IHNvbWV0aGluZyBsaWtlIHRoaXMuCgpqb2hhbm5l
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
