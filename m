Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3C2109BDE
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 11:09:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgF+DlMqMbJF85Q2er7vPuH68D2ZJOmUiO7mNVzyiuc=; b=Q5stoa5qo4BaRw
	gK+X5zk6E9TrqbIC/gFwXKJAnnkeSkIjZZ36IchzSqjhSxnArU8fSOpNlMPpJ9oe11aIYFl6LOcz/
	J6RqsvqJ2NCEqUwzFmzfEIB0A6IFR1FEoZYs4yJxghX2gn7XpXMohlj3CkLt4QivTOSw1Wmcrx8ZK
	zfTKGfUPoAJM7CgkeLqEftO/KeGpbHlKQoIMsJwCHih4bst9SruumCyGskOJlaIKQYcfKOjXAfooO
	EtzmyiE3/0srQuKtZv6fHADm9HnHukfBcB91liz9DeTwa2VwKMQneuvIHeivGTWywQpgdKTdSawrW
	1fvK0yr7pOCF5WM08D1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZXmy-0004t3-UV; Tue, 26 Nov 2019 10:09:44 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZXmu-0003tq-U6
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 10:09:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id AA6996094C4B;
 Tue, 26 Nov 2019 11:09:34 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Af0A0an_-wMR; Tue, 26 Nov 2019 11:09:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 500166083137;
 Tue, 26 Nov 2019 11:09:34 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id bRCW5lumB39m; Tue, 26 Nov 2019 11:09:34 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 22D0A6058360;
 Tue, 26 Nov 2019 11:09:34 +0100 (CET)
Date: Tue, 26 Nov 2019 11:09:34 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <243342257.98153.1574762974057.JavaMail.zimbra@nod.at>
In-Reply-To: <4ebb14dc67ccb70543617ce1f7066f3f27cd11a8.camel@sipsolutions.net>
References: <cover.1573179553.git.thehajime@gmail.com>
 <1531c5f16a00b608635c9a62fa3951807075f950.1573179553.git.thehajime@gmail.com>
 <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
 <de90b04151bafee083727c9769833932788cf428.camel@sipsolutions.net>
 <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
 <4ebb14dc67ccb70543617ce1f7066f3f27cd11a8.camel@sipsolutions.net>
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: lkl tools: host lib: virtio devices
Thread-Index: vtsq9z9Hi+l5QCwjicL7m1zZU0IZfA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_020941_144778_82DFDB96 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBNeSBwb2ludCBpcyB0aGF0IFVNTCBh
bmQgTEtMIHNob3VsZCB0cnkgdG8gZG8gdXNlIHRoZSBzYW1lIGNvbmNlcHQvY29kZQo+PiByZWdh
cmRpbmcgdmlydGlvLiBBdCB0aGUgZW5kIG9mIGRheSBib3RoIHVzZSB2aXJ0dWFsIGRldmljZXMg
d2hpY2ggdXNlCj4+IGZhY2lsaXRpZXMgZnJvbSB0aGUgaG9zdC4KPj4gSWYgdGhpcyBpcyByZWFs
bHkgbm90IHBvc3NpYmxlIGl0IG5lZWRzIGEgZ29vZCBleHBsYW5hdGlvbi4KPiAKPiBJIHRoaW5r
IGl0IGlzbid0IHBvc3NpYmxlLCB1bmxlc3MgeW91IHVzZSB2aG9zdC11c2VyIG92ZXIgYSB1bml4
IGRvbWFpbgo+IHNvY2tldCBpbnRlcm5hbGx5IHRvIHRhbGsgYmV0d2VlbiB0aGUga2VybmVsICh2
aXJ0aW9fdW1sKSBhbmQgaHlwZXJ2aXNvcgo+IChkZXZpY2UpIGNvbXBvbmVudHMuCj4gCj4gSW4g
dmlydGlvX3VtbCwgdGhlIGRldmljZSBpbXBsZW1lbnRhdGlvbiBpcyBhc3N1bWVkIHRvIGJlIGEg
c2VwYXJhdGUKPiBwcm9jZXNzIHdpdGggYSB2aG9zdC11c2VyIGNvbm5lY3Rpb24uIEhlcmUgaW4g
TEtMLCB0aGUgdmlydGlvIGRldmljZSBpcwo+IHBhcnQgb2YgdGhlICJoeXBlcnZpc29yIiwgaS5l
LiBpbiB0aGUgc2FtZSBwcm9jZXNzLgoKRXhhY3RseSwgY3VycmVudGx5IFVNTCBhbmQgTEtMIHNv
bHZlIHNhbWUgdGhpbmdzIGRpZmZlcmVudGx5LCBidXQgZG8gd2UgbmVlZCB0bz8KCklmIHdlIGZh
aWwgdG8gYWdyZWUgb24gc3VjaCBhIGhpZ2ggbGV2ZWwgSSBtaWdodCBtYWtlIHNlbnNlIHRvIHJl
ZXZhbHVhdGUgdG8gb3B0aW9uCm9mIG5vdCBtZXJnaW5nIFVNTCBhbmQgTEtMIGF0IGFsbC4KQnV0
IHRoaXMgaXMgYmV5b25kIG15IGRlY2lzaW9uYWwgcG93ZXIgYW5kIHNvbWV0aGluZyBJJ2QgbGlr
ZSB0byBhdm9pZC4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXVtCg==
