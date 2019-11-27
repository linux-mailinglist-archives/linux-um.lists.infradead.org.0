Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781C10B14B
	for <lists+linux-um@lfdr.de>; Wed, 27 Nov 2019 15:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDNiWYx9W+HZLE6vl3thsZeKUm8qTyEDoxDE0ZXi9V4=; b=r1T7ocgisXVz+A
	Vh5p4fhfnon/+ezB/V4dd85+TJ2Rt2urkHqBt+szLbMdsc885Vhtpn9ctBb5/ZxUN88WLPrYfX/cB
	GnKjZvFJPCAn8nIsdZ8oceNB7ZS0tZsaB6KsmDu7AN2Gg96UgBmIEcrkqilh9kOlNTApWj3a272Nm
	hPt2p5xLvj+I0Xb0fHUSkvAl8CSMP/nVcAHa8ZtILP1x8UjQUc/AK7C/bwynvfiOr5l2BTe/w1Rnl
	kMbZMo1lgfMjppuza7RFeOcrCYi7vqNGMZnFdD+oKVGEw2yhTl1Pn1m6zUGZuxQgyz6Im2UNKFRa8
	GJCXBiM7fkEYVnN89ecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZyJK-0001y2-5s; Wed, 27 Nov 2019 14:28:54 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyJH-0001xF-3T
 for linux-um@lists.infradead.org; Wed, 27 Nov 2019 14:28:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 7443F6058360;
 Wed, 27 Nov 2019 15:28:38 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id TlatcLpTclcL; Wed, 27 Nov 2019 15:28:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 1FEB8605A912;
 Wed, 27 Nov 2019 15:28:38 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FvQWTClmKLzL; Wed, 27 Nov 2019 15:28:38 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id E98146058360;
 Wed, 27 Nov 2019 15:28:37 +0100 (CET)
Date: Wed, 27 Nov 2019 15:28:37 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Hajime Tazaki <thehajime@gmail.com>
Message-ID: <48783237.99334.1574864917843.JavaMail.zimbra@nod.at>
In-Reply-To: <m2wobmq7v8.wl-thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
 <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
 <4ebb14dc67ccb70543617ce1f7066f3f27cd11a8.camel@sipsolutions.net>
 <243342257.98153.1574762974057.JavaMail.zimbra@nod.at>
 <98acf77a7c6f6cba7f76c12a850ac2929b9e5a48.camel@sipsolutions.net>
 <CAMoF9u3LRC_NaVJzmKPc0+XBxhAqdhnr4-ZzY_ypwQEzUz78yQ@mail.gmail.com>
 <293078386.98317.1574784295793.JavaMail.zimbra@nod.at>
 <m2wobmq7v8.wl-thehajime@gmail.com>
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: lkl tools: host lib: virtio devices
Thread-Index: vsG9rMhagKP3M5YFcBzxoH42Dsol8w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_062851_292442_03C4135A 
X-CRM114-Status: UNSURE (   3.85  )
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
Cc: linux-arch <linux-arch@vger.kernel.org>, cem <cem@freebsd.org>,
 tavi purdila <tavi.purdila@gmail.com>, linux-um <linux-um@lists.infradead.org>,
 retrage01 <retrage01@gmail.com>, pscollins <pscollins@google.com>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 sigmaepsilon92 <sigmaepsilon92@gmail.com>, liuyuan <liuyuan@google.com>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBDYW4geW91IHBsZWFzZSBwb2ludCBv
dXQgYSBsaXR0bGUgZnVydGhlciB3aHkgVU1MJ3MgbmV0IG9yIGJsb2NrIGRyaXZlcnMKPj4gYXJl
IG5vdCB1c2FibGUgZm9yIExLTD8KPiAKPiBJIHRoaW5rIHdlIGNhbiBkbyBpdCAoYnV0IG5lZWQg
dG8gY2hlY2spLgo+IAo+IExLTCBtYXkgdXNlIFVNTCdzIGRyaXZlcnMsIGFuZCBVTUwgY2FuIGFs
c28gdXNlIExLTCdzIGRldmljZXMvZHJpdmVycwo+IChhcyBteSAzNi8zNyBhbmQgMzcvMzcgcGF0
Y2hlcyBkbywgdGhvdWdoIHRoZSBwYXRjaGVzIGhhcyBubyBjYXJlZnVsCj4gY29uc2lkZXJhdGlv
biBvbiBJUlEgaGFuZGxpbmcpLgoKT2YgY291cnNlLiBTbyBwbGVhc2UgZG9uJ3QgZ2V0IG1lIHdy
b25nLCBJIGRvbid0IHdhbnQgTEtMIHRvIGJlY29tZQpVTUwuIEkgaG9wZSB0aGF0IFVNTCBjYW4g
YWxzbyBiZW5lZml0IGZyb20gTEtMLgoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdAps
aW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtdW0K
