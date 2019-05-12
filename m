Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89541AE45
	for <lists+linux-um@lfdr.de>; Sun, 12 May 2019 23:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b1O4gnpJpYTZu+mPnw0zLEJSLn+wzSrfJEva9zv3Gwg=; b=GYEvMrDhpf07f8
	4GNwkVe5XjWXDwqfFb2/ASLryQVRRwdG1Bx29VOnFFbcbSw8slq0e4ed3PEkqzgEUVefYILZma1Pt
	rasqBw0pPk/t0RdQmkTGYOI/VbfydksE/GCWXv58jlJtErroWd6IUVNx0a0NOYVVntpvaAfU+pLlY
	fP/7hdwb7PhswEUuoqMk69lS7E7imGlnHlbsF4u4OGho990hb9C4P2B94kNJLLR/tHncmP3B214fo
	dxopBuyYDO5rqNaR4g5FwajJnwRY2sn1x9xIuh2CiKhy7FDrRISJAbi00LzFUVxxi0tAAtvrCRhPi
	N3J5sP3V48qCkosRIu2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPwEP-0004UA-3S; Sun, 12 May 2019 21:42:05 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPwEL-0004Mp-5Y
 for linux-um@lists.infradead.org; Sun, 12 May 2019 21:42:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 587396083106;
 Sun, 12 May 2019 23:41:50 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id POWOPeyX2ONQ; Sun, 12 May 2019 23:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id E33726083105;
 Sun, 12 May 2019 23:41:49 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8XRIXltUOqMA; Sun, 12 May 2019 23:41:49 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id BD503608A3BE;
 Sun, 12 May 2019 23:41:49 +0200 (CEST)
Date: Sun, 12 May 2019 23:41:49 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <1836274340.56055.1557697309728.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UML changes for v5.2-rc1
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Index: SN9iPxMprvjqEtUbv+z+Su/q/2FDMA==
Thread-Topic: UML changes for v5.2-rc1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_144201_462748_D9E7D5DF 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

TGludXMsCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDM3NjI0YjU4NTQyZmI5
ZjJkOWE3MGU2ZWEwMDZlZjhhNWY2NmMzMGI6CgogIExpbnV4IDUuMS1yYzcgKDIwMTktMDQtMjgg
MTc6MDQ6MTMgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
CiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3J3L3VtbC5n
aXQgdGFncy9mb3ItbGludXMtNS4yLXJjMQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRv
IDE5ODdiMWI4ZjlmMTdhMDYyNTU4NzdlNzkxN2QwYmI1YjUzNzc3NzQ6CgogIHVtOiBpcnE6IGRv
bid0IHNldCB0aGUgY2hpcCBmb3IgYWxsIGlycXMgKDIwMTktMDUtMDcgMjM6MTg6MjggKzAyMDAp
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tClRoaXMgcHVsbCByZXF1ZXN0IGNvbnRhaW5zIHRoZSBmb2xsb3dpbmcgY2hhbmdl
cyBmb3IgVU1MOgoKLSBLY29uZmlnIGNsZWFudXBzCi0gRml4IGNwdV9hbGxfbWFzaygpIHVzYWdl
Ci0gVmFyaW91cyBidWcgZml4ZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQW50b24gSXZhbm92ICgxKToKICAgICAgdW06
IFJldmVydCB0byB1c2luZyBzdGFjayBmb3IgcHRfcmVncyBpbiBzaWduYWwgaGFuZGxpbmcKCkJh
cnRvc3ogR29sYXN6ZXdza2kgKDQpOgogICAgICB1bTogcmVtb3ZlIHVudXNlZCB2YXJpYWJsZQog
ICAgICB1bTogcmVtb3ZlIHVzZXMgb2YgdmFyaWFibGUgbGVuZ3RoIGFycmF5cwogICAgICB1bTog
ZGVmaW5lIHNldF9wdGVfYXQoKSBhcyBhIHN0YXRpYyBpbmxpbmUgZnVuY3Rpb24sIG5vdCBhIG1h
Y3JvCiAgICAgIHVtOiBpcnE6IGRvbid0IHNldCB0aGUgY2hpcCBmb3IgYWxsIGlycXMKCkNvbGlu
IElhbiBLaW5nICgxKToKICAgICAgaG9zdGZzOiBmaXggbWlzbWF0Y2ggYmV0d2VlbiBsaW5rX2Zp
bGUgZGVmaW5pdGlvbiBhbmQgZGVjbGFyYXRpb24KCkRhbmllbCBXYWx0ZXIgKDEpOgogICAgICB1
bTogRG8gbm90IHVubG9jayBtdXRleCB0aGF0IGlzIG5vdCBob2xkLgoKRW5yaWNvIFdlaWdlbHQs
IG1ldHV4IElUIGNvbnN1bHQgKDIpOgogICAgICBhcmNoOiB1bTogS2NvbmZpZzogcGVkYW50aWMg
aW5kZW50aW9uIGNsZWFudXBzCiAgICAgIGFyY2g6IHVtOiBkcml2ZXJzOiBLY29uZmlnOiBwZWRh
bnRpYyBmb3JtYXR0aW5nCgpNYWNpZWogxbtlbmN6eWtvd3NraSAoMSk6CiAgICAgIHVtbDogZml4
IGEgYm9vdCBzcGxhdCB3cnQgdXNlIG9mIGNwdV9hbGxfbWFzawoKIGFyY2gvdW0vS2NvbmZpZyAg
ICAgICAgICAgICAgIHwgIDU4ICsrKy0tLS0KIGFyY2gvdW0vZHJpdmVycy9LY29uZmlnICAgICAg
IHwgMzUyICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQogYXJjaC91
bS9kcml2ZXJzL3ViZF9rZXJuLmMgICAgfCAgIDQgKy0KIGFyY2gvdW0vaW5jbHVkZS9hc20vcGd0
YWJsZS5oIHwgICA3ICstCiBhcmNoL3VtL2tlcm5lbC9pcnEuYyAgICAgICAgICB8ICAgMiArLQog
YXJjaC91bS9rZXJuZWwvc2thcy91YWNjZXNzLmMgfCAgIDEgLQogYXJjaC91bS9rZXJuZWwvdGlt
ZS5jICAgICAgICAgfCAgIDIgKy0KIGFyY2gvdW0vb3MtTGludXgvc2lnbmFsLmMgICAgIHwgIDI4
ICstLS0KIGFyY2gvdW0vb3MtTGludXgvdW1pZC5jICAgICAgIHwgIDM2ICsrKy0tCiBmcy9ob3N0
ZnMvaG9zdGZzLmggICAgICAgICAgICB8ICAgMiArLQogMTAgZmlsZXMgY2hhbmdlZCwgMjUzIGlu
c2VydGlvbnMoKyksIDIzOSBkZWxldGlvbnMoLSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtdW0K
