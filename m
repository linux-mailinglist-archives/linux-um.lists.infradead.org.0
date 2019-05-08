Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC8517269
	for <lists+linux-um@lfdr.de>; Wed,  8 May 2019 09:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jO24ATcZDeFha0z1HiR9nxkcVhL+QNTgKhl+93HZD7A=; b=TDzc21tSxpKIFb
	3OOMsr0ILySvdUsx3DzpiM9h0PBzPpak6nQhH/nPDP5qlUAzAfUbd5GP+uzPos+V82+PArBs0tF4I
	4kGV1Cq2IMpWAFl1wpAXCvVYxJsxjERv24O/EfuYD/DiSIbbcRuOSaiNZ9k+FPH1PTdVECfS9X4SL
	HJzDdMfKcL+7cS9OCLZ2tbImiMyhbc8rFaiQwfNC50a+fKBpR5t2QWRV8pJtzotaSeRWztgAGZd3/
	x3f7gbZxukiNWJJIPARgzNCOmOYwyMU2I8T1p4AT5DjQTNfCy2RBrPLgl07ADv0n2bpupTZtkly/q
	M4vodRbOUKGLTS4cY8aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGlO-0002dn-Q8; Wed, 08 May 2019 07:13:14 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGlJ-0002bm-Ud
 for linux-um@lists.infradead.org; Wed, 08 May 2019 07:13:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 9311A608A3BE;
 Wed,  8 May 2019 09:13:08 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 7O9YdVMuBROE; Wed,  8 May 2019 09:13:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 429A96083252;
 Wed,  8 May 2019 09:13:08 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lAF-Ddb-j-e5; Wed,  8 May 2019 09:13:08 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 0B8BF608A3BE;
 Wed,  8 May 2019 09:13:08 +0200 (CEST)
Date: Wed, 8 May 2019 09:13:07 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: anton ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <684874198.48863.1557299587958.JavaMail.zimbra@nod.at>
In-Reply-To: <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
 <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
 <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Topic: don't set the chip for all irqs
Thread-Index: pxd+KbenH1D6FBwFpBKeg4P9rwgbfQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_001310_213448_A9AB4978 
X-CRM114-Status: UNSURE (   5.23  )
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, linux-um@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Jeff Dike <jdike@addtoit.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBDYW4geW91IHBsZWFzZSBjaGVjaz8K
Pj4gVGhpcyBwYXRjaCBpcyBhbHJlYWR5IHF1ZXVlZCBpbiAtbmV4dC4gU28gd2UgbmVlZCB0byBk
ZWNpZGUgd2hldGhlciB0bwo+PiByZXZlcnQgb3IgZml4IGl0IG5vdy4KPj4gCj4gSSBhbSBsb29r
aW5nIGF0IGl0LiBJdCBwYXNzZWQgdGVzdHMgaW4gbXkgY2FzZSAoSSBkaWQgdGhlIHVzdWFsIHJv
dW5kKS4KCkl0IHdvcmtzIGhlcmUgdG9vLiBUaGF0J3Mgd2h5IEkgbmV2ZXIgbm90aWNlZC4KWWVz
dGVyZGF5IEkgbm90aWNlZCBqdXN0IGJlY2F1c2UgSSBsb29rZWQgZm9yIHNvbWV0aGluZyBlbHNl
IGluIHRoZSBrZXJuZWwgbG9ncy4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGlu
dXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
