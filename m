Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84BB112659
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 10:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foD+oYOXLtUW8Vvf5g8MoJQC5VIdjsHMczdpZLzOJp8=; b=GQF3ihUFNdhHJZ
	vTTTi47/1fqi+A/UEmTi6WvlPoBh9vxvbKWvMTFl7LG+eGN98SZtIT1lkgbm0GXnhh7f9vR7XrKls
	tGtWiPcZg0kHOWzA2FgQLmNk46gi+vfRqkDL/1B3GNJrLgn1c+WL5Id/RYMDFAJh/H1R8/0F9l1fG
	RKHpnMFLDs07WYd84KioDlBOdBLK/NqxR6o7TUiRsAwJpq9dVuQ81/kNtvHVCqJnHceKjr268Indk
	zCir0jibyGzUGAPulIATp9KqH6y8vbzyexZ2/jIg0lHd8Qcrte0ExYhfyALFGijOj6a/qYoTY5LQT
	LeudNNma8+lOsQLfzMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQZT-0005U2-Lj; Wed, 04 Dec 2019 09:03:43 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQZQ-0005Td-Mw
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 09:03:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 580CD60B302D;
 Wed,  4 Dec 2019 10:03:37 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id DYhJhW1_TE7m; Wed,  4 Dec 2019 10:03:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id F2F316126B4B;
 Wed,  4 Dec 2019 10:03:36 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id a-CiBlPCT63O; Wed,  4 Dec 2019 10:03:36 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id D508860B302D;
 Wed,  4 Dec 2019 10:03:36 +0100 (CET)
Date: Wed, 4 Dec 2019 10:03:36 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: anton ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
In-Reply-To: <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
Subject: Re: I get 5.4 fail to start
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: I get 5.4 fail to start
Thread-Index: U0Rx4orK+iwI0dBvOTmYXS97ZlkHiw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_010340_898279_748A1F6D 
X-CRM114-Status: UNSURE (   4.42  )
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
Cc: linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogImFudG9uIGl2YW5vdiIgPGFu
dG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+IFtzbmlwXQo+IAo+IElmIEkgY29tbWVu
dCBvdXQgdGhlIGNoZWNrcyBvciBtYWtlIHRoZW0gdG8gZXhwZWN0IDYgaXQgcnVucyBmaW5lIGFm
dGVyCj4gdGhhdC4KPiAKPiBObyBpZGVhIHdoYXQncyBnb2luZyBvbiAtIEkgZG8gbm90IHNlZSB3
aGVyZSB0aGUgNiBjYW4gY29tZSBmcm9tLgoKSSBzdXNwZWN0IGEgY2hhbmdlL3JlZ3Jlc3Npb24g
b24gdGhlIGhvc3Qgc2lkZSwgbm90IHRoZSBVTUwgc2lkZS4KTWF5YmUgc29tZSBMU00gbW9kdWxl
IHdoaWNoIG1ha2VzIHB0cmFjZSgpICJiZXR0ZXIiPwoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxp
bmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
