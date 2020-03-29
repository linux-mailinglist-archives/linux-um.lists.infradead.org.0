Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6A3196F9D
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 21:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVHUGpa8A7/LdvJyk2GnZyEWxaYHD7dk429aF+2dWQM=; b=MPNn93K6CC1A+X
	+sZgmblrihB4JyXsQ80gRUy+hIIG3Dol812mlUzYzOBWzH75ySaUfNcMJCxcAb17dqp9txcQFXZPq
	TXsfghWavRLRN35YrT2vQCgQVC8TZApwzSjFdz6OH5TW2Lqb4z+tBSrXsA4tAltcEcNSUXWWQVirR
	i8pRGRJw87pGCnWphEz/agayUC0X1ZumQOt48dp7AKRrsoXyO8Pd76fodsRBeUR/0ihxbuKsRLuQw
	Hta3u4FzALX2lAPKsUdoifJGq/Gt6Nh4pd4Oe8nWjVBSdgyF4VOSD/u5SJOXjhwjK1V9cg0IY9FXX
	EXYVieju6v7wN14WKQ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIdGD-0005wE-4n; Sun, 29 Mar 2020 19:06:17 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIdG9-0005sv-6R
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 19:06:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 251696094C4B;
 Sun, 29 Mar 2020 21:06:08 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id QJ2GV9CvNgMe; Sun, 29 Mar 2020 21:06:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D9B5560D0873;
 Sun, 29 Mar 2020 21:06:05 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id y4bO9EX9EtU0; Sun, 29 Mar 2020 21:06:05 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 8D17C6089320;
 Sun, 29 Mar 2020 21:06:05 +0200 (CEST)
Date: Sun, 29 Mar 2020 21:06:05 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <1606942453.56384.1585508765254.JavaMail.zimbra@nod.at>
In-Reply-To: <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: add support for KASAN under x86_64
Thread-Index: efampVW5tmWSwSdm2ja8syshwdMa9w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_120613_389560_8A8035CD 
X-CRM114-Status: UNSURE (   6.86  )
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 linux-um <linux-um@lists.infradead.org>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, davidgow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkpvaGFubmVzIEJlcmciIDxq
b2hhbm5lc0BzaXBzb2x1dGlvbnMubmV0Pgo+IEFuOiAiUGF0cmljaWEgQWxmb25zbyIgPHRyaXNo
YWxmb25zb0Bnb29nbGUuY29tPiwgIkplZmYgRGlrZSIgPGpkaWtlQGFkZHRvaXQuY29tPiwgInJp
Y2hhcmQiIDxyaWNoYXJkQG5vZC5hdD4sICJhbnRvbgo+IGl2YW5vdiIgPGFudG9uLml2YW5vdkBj
YW1icmlkZ2VncmV5cy5jb20+LCAiQW5kcmV5IFJ5YWJpbmluIiA8YXJ5YWJpbmluQHZpcnR1b3p6
by5jb20+LCAiRG1pdHJ5IFZ5dWtvdiIKPiA8ZHZ5dWtvdkBnb29nbGUuY29tPiwgIkJyZW5kYW4g
SGlnZ2lucyIgPGJyZW5kYW5oaWdnaW5zQGdvb2dsZS5jb20+LCAiZGF2aWRnb3ciIDxkYXZpZGdv
d0Bnb29nbGUuY29tPgo+IENDOiAia2FzYW4tZGV2IiA8a2FzYW4tZGV2QGdvb2dsZWdyb3Vwcy5j
b20+LCAibGludXgta2VybmVsIiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4sICJsaW51
eC11bSIKPiA8bGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZz4KPiBHZXNlbmRldDogTWl0dHdv
Y2gsIDExLiBNw6RyeiAyMDIwIDExOjMyOjAwCj4gQmV0cmVmZjogUmU6IFtQQVRDSF0gVU1MOiBh
ZGQgc3VwcG9ydCBmb3IgS0FTQU4gdW5kZXIgeDg2XzY0Cgo+IEhpLAo+IAo+PiBIaSBhbGwsIEkg
anVzdCB3YW50IHRvIGJ1bXAgdGhpcyBzbyB3ZSBjYW4gZ2V0IGFsbCB0aGUgY29tbWVudHMgd2hp
bGUKPj4gdGhpcyBpcyBzdGlsbCBmcmVzaCBpbiBldmVyeW9uZSdzIG1pbmRzLiBJIHdvdWxkIGxv
dmUgaWYgc29tZSBVTUwKPj4gbWFpbnRhaW5lcnMgY291bGQgZ2l2ZSB0aGVpciB0aG91Z2h0cyEK
PiAKPiBJJ20gbm90IHRoZSBtYWludGFpbmVyLCBhbmQgSSBkb24ndCBrbm93IHdoZXJlIFJpY2hh
cmQgaXMsIGJ1dCBJIGp1c3QKPiB0cmllZCB3aXRoIHRoZSB0ZXN0X2thc2FuLmtvIG1vZHVsZSwg
YW5kIHRoYXQgc2VlbXMgdG8gd29yay4gRGlkIHlvdQo+IHRlc3QgdGhhdCB0b28/IEkgd2FzIHN1
cnByaXNlZCB0byBzZWUgdGhpcyBiZWNhdXNlIHlvdSBzYWlkIHlvdSBkaWRuJ3QKPiB0ZXN0IG1v
ZHVsZXMsIGJ1dCBzdXJlbHkgdGhpcyB3b3VsZCd2ZSBiZWVuIHRoZSBlYXNpZXN0IHdheT8KClNv
cnJ5IGZvciB2YW5pc2hpbmcuCgpJIHJlYWQgdGhvdWdodCB0aGUgZGlzY3Vzc2lvbiBhbmQgaXQg
c2VlbXMgbGlrZSB0aGUgcGF0Y2ggaXMgbm90IHJlYWR5LApyaWdodD8KCkpvaGFubmVzLCB0aGFu
a3MgYSBsb3QgZm9yIHBvaW50aW5nIG91dCBhbGwgdGhlc2UgaXNzdWVzLgoKVGhhbmtzLAovL3Jp
Y2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
