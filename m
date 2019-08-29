Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DB3A2897
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 23:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5DjeIXpYKHgBw6hiF6J7Yd3a3VgUZUvMxEMKxLAvGw=; b=u/SP/8p9cSPRjp
	tH/EXsYrdriYmhgk6OSOScOKIOirgaMzbTg1V4R19U1u0vCCg/hP4+3z2rQGwMW+98B2v6nJy7en/
	wUsSnQVkCFEI/aN+uqHpnBn+1VhV48UzoMs2diqub2yN6a5J9KrKSw8zwVs0evZ0h4KiUtF3Wtvzb
	KGr/FWiBSbs+CmTqdmHMttkX2uNltxFqhRVhtb6IYq0BWTShFHQmmvgRp69VWGtdDsYUfA4dwlcA4
	3JOvoTOrNwPqjWOLjxPdeC/Z2u/D5vzR3QwvK6leprJCdliI0PzlblhaByz++83LfX9te6D9544Bw
	NV+hHc6kWH5wFBPOtlHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3RZs-0002Sq-Ds; Thu, 29 Aug 2019 21:03:32 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3RZp-0002SU-Uj
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 21:03:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id BFE666083139;
 Thu, 29 Aug 2019 23:03:27 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id UvgXmJNLFfTl; Thu, 29 Aug 2019 23:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 80C88608313E;
 Thu, 29 Aug 2019 23:03:27 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 0-XjAj7s1amn; Thu, 29 Aug 2019 23:03:27 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 56B0F6083139;
 Thu, 29 Aug 2019 23:03:27 +0200 (CEST)
Date: Thu, 29 Aug 2019 23:03:27 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Dark <dark@volatile.bz>
Message-ID: <1408538854.76578.1567112607283.JavaMail.zimbra@nod.at>
In-Reply-To: <20190829165442.3a3425ad@TheDarkness>
References: <20190829135001.6a5ff940@TheDarkness.local>
 <899887272.76523.1567104513068.JavaMail.zimbra@nod.at>
 <20190829165442.3a3425ad@TheDarkness>
Subject: Re: [PATCH v2] um: Rewrite host RNG driver.
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: Rewrite host RNG driver.
Thread-Index: Oma/16tRMf5Dqk+nSnu/JJtVBEaoAw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_140330_139409_0F58C3C8 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
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
 Johannes Berg <johannes@sipsolutions.net>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiAtLS0tLSBVcnNwcsO8bmdsaWNoZSBN
YWlsIC0tLS0tCj4+ID4gVm9uOiAiRGFyayIgPGRhcmtAdm9sYXRpbGUuYno+Cj4+ID4gKwkvLyBS
ZXR1cm5pbmcgLUVBR0FJTiB0byB1c2Vyc3BhY2UgaXMgbm90IG5pY2UuCj4+ID4gKwlpZiAoZXJy
ID09IC1FQUdBSU4pCj4+ID4gKwkJcmV0dXJuIDA7Cj4+IAo+PiBIbW0sIGRvZXNuJ3QgdGhpcyBy
ZXN1bHQgaW4gYSBzaG9ydCByZWFkPwo+PiBUaGUgY3VycmVudCBkcml2ZXMgc2V0cyB0aGUgY2Fs
bGluZyB0YXNrIHRvIHNsZWVwIGFuZCB3YWtlcwo+PiBpdCB1cCBhcyBzb29uIGRhdGEgaXMgYXZh
aWxhYmxlIGFnYWluLiBJJ2QgYXNzdW1lcyB0aSBoYXZlIHRoZQo+PiBzYW1lIGJlaGF2aW9yIGZv
ciB0aGUgbmV3IGRyaXZlci4KPj4gCj4+IFRoYW5rcywKPj4gLy9yaWNoYXJkCj4gCj4gQ2xlYXJs
eSB0aGlzIHBhdGNoIG5lZWRzIGEgbG90IG1vcmUgd29yayBiZWZvcmUgSSBzdWJtaXQgaXQuIEkn
bGwKPiB0YWtlIHNvbWUgdGltZSB0byBwb2xpc2ggaXQgdXAgYW5kIHRoZW4gcmVzdWJtaXQgaXQg
aWYgdGhhdCdzIGZpbmUuCgpObyBuZWVkIHRvIHdvcnJ5LCB0YWtlIHlvdXIgdGltZS4gVGhhbmtz
IGEgbG90IGZvciB3b3JraW5nIG9uIHRoaXMgZHJpdmVyIQoKVGhhbmtzLAovL3JpY2hhcmQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1h
aWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
