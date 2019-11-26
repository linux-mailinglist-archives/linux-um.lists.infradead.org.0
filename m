Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC2910A1B0
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 17:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASSgB3s+T2x9EKjUiMHESEQ//TP50rfjCP05QOt86Io=; b=T/lsmooiCloq2t
	zfjqkC2zTzxPDOmBVmS0zn+k3CcQZ+IpoIwiCFM4L+NKYkoTzzqM8jM81M+lkqqvjeAojiY2YVRpf
	l0vYQhZoIsCZite8spgIRQYjelUBfAWq9VMRtKrMmdrm/RPiuDJPANq2KkPRZ5hiJdot2ULHvF95q
	D/00yrijlTuYAKltdch0HcB0pFRDfuxp/aYNZOEvE1gzjJ1YOgH3GDpUaHdXUwl+EDQqiGsXvR0aD
	qcka9Pj0dLInL3u6MTdGlN5uWTCfzOuoeO1PHlYPnJac7fWqycdCyrTxSNvNtiaYm9piLkGZiaMgS
	8GLiAbNbMLggUIv0DxkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZdIC-0001s7-Jr; Tue, 26 Nov 2019 16:02:20 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZdI9-0001rF-Hz
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 16:02:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id C138760A073C;
 Tue, 26 Nov 2019 17:02:14 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id f34gkYDE1roQ; Tue, 26 Nov 2019 17:02:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id C5044607BD95;
 Tue, 26 Nov 2019 17:02:12 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id X44XAjAkgYcv; Tue, 26 Nov 2019 17:02:12 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 7FC1062EBCAB;
 Tue, 26 Nov 2019 17:02:12 +0100 (CET)
Date: Tue, 26 Nov 2019 17:02:12 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Hajime Tazaki <thehajime@gmail.com>
Message-ID: <907430042.98310.1574784132348.JavaMail.zimbra@nod.at>
In-Reply-To: <m2v9r6iux5.wl-thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
 <64a5d6c94d331058331af7d191d2cdbe870d009b.1573179553.git.thehajime@gmail.com>
 <CAFLxGvw+w+xmput3xMjKPXPn4hj9opbo+gtV6896hhzDUzQNiA@mail.gmail.com>
 <m2v9r6iux5.wl-thehajime@gmail.com>
Subject: Re: [RFC v2 03/37] lkl: architecture skeleton for Linux kernel library
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: architecture skeleton for Linux kernel library
Thread-Index: lvbtPMSot5jWCgVHtFQyj94K0JHInQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_080217_886669_17CA3AB9 
X-CRM114-Status: UNSURE (   7.53  )
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
Cc: linux-arch <linux-arch@vger.kernel.org>, levex <levex@linux.com>,
 mattator <mattator@gmail.com>, cem <cem@freebsd.org>,
 tavi purdila <tavi.purdila@gmail.com>, jiangshanlai <jiangshanlai@gmail.com>,
 staal1978 <staal1978@gmail.com>, motomuman <motomuman@gmail.com>,
 linux-um <linux-um@lists.infradead.org>, retrage01 <retrage01@gmail.com>,
 petrosagg <petrosagg@gmail.com>, edisonmcastro <edisonmcastro@hotmail.com>,
 xiaoj <xiaoj@google.com>, mark <mark@stillwell.me>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 pscollins <pscollins@google.com>, phh <phh@phh.me>,
 sigmaepsilon92 <sigmaepsilon92@gmail.com>, luca dariz <luca.dariz@gmail.com>,
 liuyuan <liuyuan@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkhhamltZSBUYXpha2kiIDx0
aGVoYWppbWVAZ21haWwuY29tPgo+IEFuOiAiUmljaGFyZCBXZWluYmVyZ2VyIiA8cmljaGFyZC53
ZWluYmVyZ2VyQGdtYWlsLmNvbT4KPiBDQzogImxpbnV4LXVtIiA8bGludXgtdW1AbGlzdHMuaW5m
cmFkZWFkLm9yZz4sICJsaW51eC1hcmNoIiA8bGludXgtYXJjaEB2Z2VyLmtlcm5lbC5vcmc+LCAi
cHNjb2xsaW5zIgo+IDxwc2NvbGxpbnNAZ29vZ2xlLmNvbT4sICJsZXZleCIgPGxldmV4QGxpbnV4
LmNvbT4sICJtYXR0YXRvciIgPG1hdHRhdG9yQGdtYWlsLmNvbT4sICJjZW0iIDxjZW1AZnJlZWJz
ZC5vcmc+LCAidGF2aQo+IHB1cmRpbGEiIDx0YXZpLnB1cmRpbGFAZ21haWwuY29tPiwgInN0YWFs
MTk3OCIgPHN0YWFsMTk3OEBnbWFpbC5jb20+LCAibW90b211bWFuIiA8bW90b211bWFuQGdtYWls
LmNvbT4sICJqaWFuZ3NoYW5sYWkiCj4gPGppYW5nc2hhbmxhaUBnbWFpbC5jb20+LCAicmV0cmFn
ZTAxIiA8cmV0cmFnZTAxQGdtYWlsLmNvbT4sICJwZXRyb3NhZ2ciIDxwZXRyb3NhZ2dAZ21haWwu
Y29tPiwgImxpdXl1YW4iCj4gPGxpdXl1YW5AZ29vZ2xlLmNvbT4sICJ4aWFvaiIgPHhpYW9qQGdv
b2dsZS5jb20+LCAibWFyayIgPG1hcmtAc3RpbGx3ZWxsLm1lPiwgImxpbnV4LWtlcm5lbC1saWJy
YXJ5Igo+IDxsaW51eC1rZXJuZWwtbGlicmFyeUBmcmVlbGlzdHMub3JnPiwgInBoaCIgPHBoaEBw
aGgubWU+LCAic2lnbWFlcHNpbG9uOTIiIDxzaWdtYWVwc2lsb245MkBnbWFpbC5jb20+LCAibHVj
YSBkYXJpeiIKPiA8bHVjYS5kYXJpekBnbWFpbC5jb20+LCAiZWRpc29ubWNhc3RybyIgPGVkaXNv
bm1jYXN0cm9AaG90bWFpbC5jb20+Cj4gR2VzZW5kZXQ6IERpZW5zdGFnLCAyNi4gTm92ZW1iZXIg
MjAxOSAxNToxNzoyNgo+IEJldHJlZmY6IFJlOiBbUkZDIHYyIDAzLzM3XSBsa2w6IGFyY2hpdGVj
dHVyZSBza2VsZXRvbiBmb3IgTGludXgga2VybmVsIGxpYnJhcnkKCj4gT24gVHVlLCAyNiBOb3Yg
MjAxOSAwNzowMDozMyArMDkwMCwKPiBSaWNoYXJkIFdlaW5iZXJnZXIgd3JvdGU6Cj4+IAo+IChz
bmlwKQo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBBYmVsIDxhYWJlbEBnb29nbGUu
Y29tPgo+PiA+IFNpZ25lZC1vZmYtYnk6IENvbnJhZCBNZXllciA8Y2VtQEZyZWVCU0Qub3JnPgo+
PiA+IFNpZ25lZC1vZmYtYnk6IEVkaXNvbiBNLiBDYXN0cm8gPGVkaXNvbm1jYXN0cm9AaG90bWFp
bC5jb20+Cj4+ID4gU2lnbmVkLW9mZi1ieTogSC5LLiBKZXJyeSBDaHUgPGhrY2h1QGdvb2dsZS5j
b20+Cj4+ID4gU2lnbmVkLW9mZi1ieTogSGFqaW1lIFRhemFraSA8dGhlaGFqaW1lQGdtYWlsLmNv
bT4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBKZW5zIFN0YWFsIDxzdGFhbDE5NzhAZ21haWwuY29tPgo+
PiA+IFNpZ25lZC1vZmYtYnk6IExhaSBKaWFuZ3NoYW4gPGppYW5nc2hhbmxhaUBnbWFpbC5jb20+
Cj4+ID4gU2lnbmVkLW9mZi1ieTogTGV2ZW50ZSBLdXJ1c2EgPGxldmV4QGxpbnV4LmNvbT4KPj4g
PiBTaWduZWQtb2ZmLWJ5OiBMdWNhIERhcml6IDxsdWNhLmRhcml6QGdtYWlsLmNvbT4KPj4gPiBT
aWduZWQtb2ZmLWJ5OiBNYXJrIFN0aWxsd2VsbCA8bWFya0BzdGlsbHdlbGwubWU+Cj4+ID4gU2ln
bmVkLW9mZi1ieTogTWF0dGhpZXUgQ291ZHJvbiA8bWF0dGF0b3JAZ21haWwuY29tPgo+PiA+IFNp
Z25lZC1vZmYtYnk6IE1pY2hhZWwgWmltbWVybWFubiA8c2lnbWFlcHNpbG9uOTJAZ21haWwuY29t
Pgo+PiA+IFNpZ25lZC1vZmYtYnk6IE1vdG9tdSBVdHN1bWkgPG1vdG9tdW1hbkBnbWFpbC5jb20+
Cj4+ID4gU2lnbmVkLW9mZi1ieTogUGF0cmljayBDb2xsaW5zIDxwc2NvbGxpbnNAZ29vZ2xlLmNv
bT4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRyb3MgQW5nZWxhdG9zIDxwZXRyb3NhZ2dAZ21haWwu
Y29tPgo+PiA+IFNpZ25lZC1vZmYtYnk6IFBpZXJyZS1IdWd1ZXMgSHVzc29uIDxwaGhAcGhoLm1l
Pgo+PiA+IFNpZ25lZC1vZmYtYnk6IFhpYW8gSmlhIDx4aWFvakBnb29nbGUuY29tPgo+PiA+IFNp
Z25lZC1vZmYtYnk6IFl1YW4gTGl1IDxsaXV5dWFuQGdvb2dsZS5jb20+Cj4+ID4gU2lnbmVkLW9m
Zi1ieTogT2N0YXZpYW4gUHVyZGlsYSA8dGF2aS5wdXJkaWxhQGdtYWlsLmNvbT4KPj4gCj4+IENh
biB3ZSBwbGVhc2UgaGF2ZSB0aGlzIGNoYWluIGNsZWFuZWQgdXA/Cj4+IFBsZWFzZSBzZWUgcHJv
Y2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0Lgo+IAo+IERvIHlvdSBtZWFuICJ0aGlzIGNoYWlu
IiBieSB0aGUgbG9uZyBsaXN0IG9mIFNpZ25lZC1vZmYtYnkgbGluZXMsIG9yCj4gc29tZXRoaW5n
IGVsc2UgPwoKVGhlIGxvbmcgbGlzdCBpcyByYXRoZXIgdW51c3VhbC4KIAo+IFdlIHdlcmUgdHJ5
aW5nIHRvIHB1dCBhbGwgb2YgY29udHJpYnV0b3JzIG9uIHRoZSBsaXN0LiAgSSB3YXMgZmFpbGVk
IHRvCj4gaW50ZXJwcmV0IHByb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCBvbiB3aGljaCBw
YXJ0IGlzIG5vdCBhcHByb3ByaWF0ZS4KCklmIGV2ZXJ5IGNvbnRyaWJ1dG9yIGlzIGFsc28gYSBD
by1BdXRob3IuIE9rYXkuIEJ1dCBoYXZpbmcgc3VjaCBhIGxvbmcKbGlzdCBvZiBhdXRob3JzIGlz
IHN0aWxsIGEgbGl0dGxlIG9kZC4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGlu
dXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
