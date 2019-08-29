Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B458A1F4E
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 17:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxMOjotxi8ICPU3V7scNxcQJlIXn22Wg64UipX5bBug=; b=ZQ+WRpg/BvE4Vn
	YtMD6Dz5BovahHLZAih3JwxS/lIY0WE6mrDUC5X4kFFMn2/qMBz0tlCj1dDL+lJoykuKRUA6Lqnm1
	TS4QN1K5Ac9I49Q183JfYU06JK1KeKrJnpirQow9syWTmZ1GiuI5y0aZcbnJPIrrAezAX5UL3bTjf
	5spycD29xc44vD9QwwjhoOM/w93uCZ/4QXvp/6IyCoekZ5k4zB5uBy4slfb70iYGINO8yhAQNtN31
	0878Vu8O/1nAYSL1sVJ+YNnIWy8LdyfXnNqnlfM7gqO9SpKtCVBjhbv2nxo/pZSVSwe9Rg0MGQEr5
	5B7+MBOuJtkXSFQqwnKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MRS-00044w-Ht; Thu, 29 Aug 2019 15:34:30 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MOE-0002va-UR
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 15:31:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id BFB7060632C8;
 Thu, 29 Aug 2019 17:31:00 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id l0ArbPxmnKEu; Thu, 29 Aug 2019 17:31:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 0359A6083139;
 Thu, 29 Aug 2019 17:31:00 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ZIcI1Ha_Olgo; Thu, 29 Aug 2019 17:30:59 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id CE25460632C8;
 Thu, 29 Aug 2019 17:30:59 +0200 (CEST)
Date: Thu, 29 Aug 2019 17:30:59 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Dark <dark@volatile.bz>
Message-ID: <1851013915.76434.1567092659763.JavaMail.zimbra@nod.at>
In-Reply-To: <20190829103628.61953f50@thedarkness.local>
References: <20190828204609.02a7ff70@TheDarkness>
 <CAFLxGvyiviQxr_Bj57ibTU4DQ1H5wQC4DE5DNFBtAFoohcgbsg@mail.gmail.com>
 <20190829103628.61953f50@thedarkness.local>
Subject: Re: [PATCH] um: Rewrite host RNG driver.
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: Rewrite host RNG driver.
Thread-Index: 5ROVPaoIle6zHgGJuGUZ0lu9vjcmrw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_083111_498286_9EF4816D 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkRhcmsiIDxkYXJrQHZvbGF0
aWxlLmJ6Pgo+IEFuOiAiUmljaGFyZCBXZWluYmVyZ2VyIiA8cmljaGFyZC53ZWluYmVyZ2VyQGdt
YWlsLmNvbT4sICJsaW51eC1rZXJuZWwiIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPgo+
IENDOiAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0PiwgImFudG9uIGl2YW5vdiIgPGFudG9uLml2
YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+LCAibGludXgtdW0iCj4gPGxpbnV4LXVtQGxpc3RzLmlu
ZnJhZGVhZC5vcmc+Cj4gR2VzZW5kZXQ6IERvbm5lcnN0YWcsIDI5LiBBdWd1c3QgMjAxOSAxNjoz
NjoyOAo+IEJldHJlZmY6IFJlOiBbUEFUQ0hdIHVtOiBSZXdyaXRlIGhvc3QgUk5HIGRyaXZlci4K
Cj4gT24gVGh1LCAyOSBBdWcgMjAxOSAxNToyNjoyNCArMDIwMCwgUmljaGFyZCBXZWluYmVyZ2Vy
Cj4gPHJpY2hhcmQud2VpbmJlcmdlckBnbWFpbC5jb20+IHdyb3RlOgo+PiBTbywgeW91IHJlbW92
ZWQgLUVBR0FJTiBoYW5kbGluZywgbWFkZSBldmVyeXRoaW5nIHN5bmNocm9ub3VzLAo+PiBhbmQg
Y2hhbmdlZCB0aGUgaW50ZXJmYWNlLnQKPj4gSSdtIG5vdCBzdXJlIGlmIHRoaXMgcmVhbGx5IGEg
bXVjaCBiZXR0ZXIgb3B0aW9uLgo+IAo+IEkgc2hvdWxkIGhhdmUgYmVlbiBtb3JlIGNsZWFyIGhl
cmUgdGhhdCBJJ20gdXNpbmcgdGhlIGludGVyZmFjZXMKPiBwcm92aWRlZCBieSBgZHJpdmVycy9j
aGFyL2h3X3JhbmRvbS9jb3JlLmNgIGZvciBjb25zaXN0ZW5jeSB3aXRoIHRoZQo+IG90aGVyIGhh
cmR3YXJlIFJORyBkcml2ZXJzIGFuZCB0byBhdm9pZCByZWltcGxlbWVudGluZyBzdHVmZiB0aGF0
J3MKPiBhbHJlYWR5IHRoZXJlLgoKSSBnb3QgdGhpcywgYW5kIHRoaXMgaXMgYSBnb29kIHRoaW5n
IQogCj4gSXQgbWlnaHQgYmUgYSBiaXQgaGFyZCB0byBzZWUgaW4gdGhlIGRpZmYsIGJ1dCBJIHBh
c3MgdGhlIGZpbGUKPiBkZXNjcmlwdG9yIHRvIGBvc19zZXRfZmRfYXN5bmMoKWAgdG8gcHJldmVu
dCBpdCBmcm9tIGJsb2NraW5nLgoKV2VsbCwgaXQgZG9lcyBub3QgYmxvY2sgYnV0IHBhc3Npbmcg
LUVBR0FJTiBkaXJlY3RseSBiYWNrIGlzIG5vdCBuaWNlLgpPciBkb2VzIHRoZSBod19yYW5kb20g
ZnJhbWV3b3JrIGhhbmRsZSB0aGlzPwoKPiBGb3IgdGhlIC1FQUdBSU4gaGFuZGxpbmcsIEknbSBw
YXNzaW5nIGl0IG9udG8gdGhlIGNhbGxlci4gU2luY2UgeW91Cj4gbWVudGlvbmVkIGl0LCBJdCB3
b3VsZCBiZSBiZXR0ZXIgdG8gaGFuZGxlIGl0IGluIHRoZSBkcml2ZXIgaXRzZWxmCj4gc28gSSds
bCB1cGRhdGUgdGhlIHBhdGNoIHRvIGFkZHJlc3MgdGhhdC4KPiAKPj4gUmV3cml0aW5nIHRoZSBk
cml2ZXIgaW4gYSBtb2Rlcm4gbWFubmVyIGlzIGEgZ29vZCB0aGluZywgYnV0IHRocm93aW5nIHRo
ZQo+PiBvbGQgb25lIHdheSB3aXRoIGEgbGl0dGxlIGhhbmQgd2VhdmluZyBqdXN0IGJlY2F1c2Ug
b2YgYSB1bnNwZWNpZmllZCBpc3N1ZQo+PiBpcyBhIGxpdHRsZSBoYXJzaC4KPj4gQ2FuIHlvdSBh
dCBsZXN0IHByb3ZpZGUgbW9yZSBpbmZvcyB3aGF0IHByb2JsZW0geW91J3JlIGZhY2luZyB3aXRo
IHRoZQo+PiBvbGQgZHJpdmVyPwo+IAo+IE1vc3Qgb2YgaXQgYm9pbGVkIGRvd24gdG8gaXQgc2ls
ZW50bHkgYnJlYWtpbmcgaWYgL2Rldi9yYW5kb20gb24gdGhlCj4gaG9zdCB3ZXJlIHRvIGJsb2Nr
IGZvciBhbnkgcmVhc29uLCBhbmQgdGhlcmUgd2FzIHRoZSB1c2Vyc3BhY2UgdG9vbAo+IHJlcXVp
cmVtZW50IHRvIHByb3Blcmx5IG1ha2UgdXNlIG9mIGl0LiBXaXRoIHRoYXQgc2FpZCwgdGhlIGlu
dGVyZmFjZQo+IHdhcyBhbHNvIGluY29uc2lzdGVudCB3aXRoIHRoZSBvdGhlciBoYXJkd2FyZSBS
TkcgZHJpdmVycyB3aGljaCB3b3VsZAo+IHJlcXVpcmUgYSByZXdyaXRlIHRvIGFkZHJlc3MgYW55
d2F5LgoKTWF5YmUgb3VyIC1FQUdBSU4gaGFuZGxpbmcgaXMgYnVnZ3kuClRoYXQgc2FpZCBJJ20g
YWxsIGZvciBjaGFuZ2luZyB0aGUgZHJpdmVyIHRvIHVzZSB0aGUgcmlnaHQgZnJhbWV3b3JrCmJ1
dCBwbGVhc2UgbWFrZSBzdXJlIHRoYXQgd2UgZG9uJ3QgZHJvcCB1c2VmdWwgc3R1ZmYgbGlrZSAt
RUFHQUlOIGhhbmRsaW5nLgoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11
bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtdW0K
