Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9661F488E
	for <lists+linux-um@lfdr.de>; Tue,  9 Jun 2020 23:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sfY0qQwtK+yAbIuYwDBT29CZvh6z+MZArfbZf/Epo9U=; b=kudPoP8WIilJgZ
	QYPEsL1KoDec629bJVPW4ttlzdEHMoQWb664NPbNeu80X3D0sqPsUKiiG82wDYIOydV13RKvXOn8P
	LwbfgCdz3YDYthx3MPRRKm1MjerNnsVU9rwng1QQL/eTlh1oPMfTNxYBH1IpX6QdLXXmMw5bXa6Ys
	7jXDu+3A6ygb2fTD5OE5mSpjUOvy/Ih0/hjUdqM8cywVVENu7uabBaV27hNqGzc+QO36HBkszLD3W
	mnflnpyLRbYZ0zkrUKCMpAYw0tHDmBXk7NmVSvHRUawbdA3+Ez/IOg7ISBLwWQEQA1f7udlLTDo95
	xnFdkgnLiSfYE/AnfIMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jilNb-00031v-IG; Tue, 09 Jun 2020 21:01:55 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jilNY-00031J-Ov
 for linux-um@lists.infradead.org; Tue, 09 Jun 2020 21:01:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 81B1F607400D;
 Tue,  9 Jun 2020 23:01:51 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id SM50kajbXWN9; Tue,  9 Jun 2020 23:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 25BB36074010;
 Tue,  9 Jun 2020 23:01:51 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id OZ7bmjqrn-kD; Tue,  9 Jun 2020 23:01:51 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id EA2E4607400D;
 Tue,  9 Jun 2020 23:01:50 +0200 (CEST)
Date: Tue, 9 Jun 2020 23:01:50 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <1858220125.350.1591736510906.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UML changes for v5.8
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Index: eBoFZpqVB3Ctbf548VMEVBglzkcn8A==
Thread-Topic: UML changes for v5.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_140152_957685_85EF4202 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

TGludXMsCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDNkNzdlNmE4ODA0YWJj
YzA1MDRjOTA0YmQ2ZTVjZGYzYTVjZjgxNjI6CgogIExpbnV4IDUuNyAoMjAyMC0wNS0zMSAxNjo0
OToxNSAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBn
aXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvcncvdW1sLmdpdCB0
YWdzL2Zvci1saW51cy01LjgtcmMxCgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZjZl
OGM0NzQzOTBiZTJlNmY1YmQwYjg5NjZlMTk5NTgyMTQ2MDlmZjoKCiAgdW06IHZpcnRpbzogUmVw
bGFjZSB6ZXJvLWxlbmd0aCBhcnJheSB3aXRoIGZsZXhpYmxlLWFycmF5ICgyMDIwLTA2LTAyIDIy
OjM4OjAwICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpUaGlzIHB1bGwgcmVxdWVzdCBjb250YWlucyB0aGUgZm9s
bG93aW5nIGNoYW5nZXMgZm9yIFVNTDoKCi0gVXNlIGZkYXRhc3luYygpIGluIHViZAotIEFkZCBh
IGdlbmVyaWMgImZkIiB2ZWN0b3IgdHJhbnNwb3J0Ci0gTWlub3IgY2xlYW51cHMgYW5kIGZpeGVz
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCkFudG9uIEl2YW5vdiAoMSk6CiAgICAgIHVtOiBVc2UgZmRhdGFzeW5jKCkgd2hl
biBtYXBwaW5nIHRoZSBVQkQgRlNZTkMgY29tbWFuZAoKR3VzdGF2byBBLiBSLiBTaWx2YSAoMSk6
CiAgICAgIHVtOiB2aXJ0aW86IFJlcGxhY2UgemVyby1sZW5ndGggYXJyYXkgd2l0aCBmbGV4aWJs
ZS1hcnJheQoKSm9lIFBlcmNoZXMgKDEpOgogICAgICB1bTogTmVhdGVuIHZ1X2VyciBtYWNybyBk
ZWZpbml0aW9uCgpNYXJjLUFuZHLDqSBMdXJlYXUgKDEpOgogICAgICB1bTogQWRkIGEgZ2VuZXJp
YyAiZmQiIHZlY3RvciB0cmFuc3BvcnQKCk1hc2FoaXJvIFlhbWFkYSAoMSk6CiAgICAgIHVtOiBE
byBub3QgZXZhbHVhdGUgY29tcGlsZXIncyBsaWJyYXJ5IHBhdGggd2hlbiBjbGVhbmluZwoKWmFj
aCB2YW4gUmlqbiAoMSk6CiAgICAgIHVtOiBBZGQgaW5jbHVkZTogbWVtc2V0KCkgYW5kIG1lbWNw
eSgpIGFyZSBpbiA8c3RyaW5nLmg+CgogYXJjaC91bS9kcml2ZXJzL01ha2VmaWxlICAgICAgfCAg
NCArLS0KIGFyY2gvdW0vZHJpdmVycy92ZWN0b3Jfa2Vybi5oIHwgIDIgKy0KIGFyY2gvdW0vZHJp
dmVycy92ZWN0b3JfdXNlci5jIHwgNTkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwogYXJjaC91bS9kcml2ZXJzL3Zob3N0X3VzZXIuaCAgfCAgMiArLQogYXJjaC91
bS9kcml2ZXJzL3ZpcnRpb191bWwuYyAgfCAgMiArLQogYXJjaC91bS9vcy1MaW51eC9maWxlLmMg
ICAgICAgfCAgMyArKy0KIDYgZmlsZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
