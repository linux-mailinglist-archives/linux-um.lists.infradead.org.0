Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6931AE437
	for <lists+linux-um@lfdr.de>; Fri, 17 Apr 2020 20:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oGRg5YQimIyGhPBMhxJ0BucAUuSdans/B6Y3eDxylmA=; b=JHJf0wJlm8tPQ0
	Hp7RtanViXnOw6WgS6GmSzztGcKMAvcaAyeHUSEnKC4kyu3Z5neBYGdatphQMFj9JxDzb7mZTBkGX
	JKXAM8eoxbXfLNr7fXulTsf/+nbeCjCZp4qb/wDRDE+IF2eDKxYTchdsXp5YyVk7cSUdbKJlH9vSK
	d+hZKaVR6UV5H+LTJil55uk0GCzOAd6DbzLozzxICyede6ieQTvhzlATlrx2tnz2o6yn8StyDpgMK
	RIOoW3vfgGBQ24v4aGr1hqqD0t2TtSTt845cedWpNNDwFDQBD4hBktO8fSedHV7sbnwlpp12NLiMb
	tSU0/8z8r2Ph2z5m+TXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVNK-0006OF-5g; Fri, 17 Apr 2020 18:06:02 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVNH-0006NW-94
 for linux-um@lists.infradead.org; Fri, 17 Apr 2020 18:06:00 +0000
Received: from oscar.flets-west.jp (softbank060142179096.bbtec.net
 [60.142.179.96]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 03HI5ABN029932;
 Sat, 18 Apr 2020 03:05:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 03HI5ABN029932
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587146711;
 bh=SFGIrF50APy5dH88SntYVAB40FrC6WituPFt2il885M=;
 h=From:To:Cc:Subject:Date:From;
 b=khCtS4XBOln4glzBZmoYcVnO3BquMr7u+AR+bU/tCPRR9LyZVixoBaxeoHhLDVLfV
 lDXnnNcgNaV0Oei0lEmP/r2/vt4cxEv8O4fF2n27X7jGwyWh8glK1eUljcn0vjcU+D
 35fBGnhLPjNGFJj662itfmv0wa5AgXX62V3RQ1MNTIPKPSFOCyOmvnnWhAHLYQBjd3
 dkCaUuz8AmHF0vBqWk7zF4vWEdx11stnl/4UK6R84IiXdSkWpTbqqUc+yvoaeO5hwd
 OOskfDPcclqNhE1KA9vtE2iN1Z+HQgJY7DIwJ9RDUlGQYUhlcTR363CltdrsWg8gzp
 wdgjc8Bkxv2Ew==
X-Nifty-SrcIP: [60.142.179.96]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
Subject: [PATCH] um: do not evaluate compiler's library path when cleaning
Date: Sat, 18 Apr 2020 03:04:55 +0900
Message-Id: <20200417180455.1174340-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_110559_717596_A4AB7C0E 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Johannes Berg <johannes.berg@intel.com>, linux-kbuild@vger.kernel.org,
 Erel Geron <erelx.geron@intel.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Alex Dewar <alex.dewar@gmx.co.uk>,
 Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Since commit a83e4ca26af8 ("kbuild: remove cc-option switch from
-Wframe-larger-than="), 'make ARCH=um clean' emits an error message
as follows:

  $ make ARCH=um clean
  gcc: error: missing argument to '-Wframe-larger-than='

We do not care compiler flags when cleaning.

Use the '=' operator for lazy expansion because we do not use
LDFLAGS_pcap.o or LDFLAGS_vde.o when cleaning.

While I was here, I removed the redundant -r option because it
already exists in the recipe.

Fixes: a83e4ca26af8 ("kbuild: remove cc-option switch from -Wframe-larger-than=")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/um/drivers/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/um/drivers/Makefile b/arch/um/drivers/Makefile
index a290821e355c..2a249f619467 100644
--- a/arch/um/drivers/Makefile
+++ b/arch/um/drivers/Makefile
@@ -18,9 +18,9 @@ ubd-objs := ubd_kern.o ubd_user.o
 port-objs := port_kern.o port_user.o
 harddog-objs := harddog_kern.o harddog_user.o
 
-LDFLAGS_pcap.o := -r $(shell $(CC) $(KBUILD_CFLAGS) -print-file-name=libpcap.a)
+LDFLAGS_pcap.o = $(shell $(CC) $(KBUILD_CFLAGS) -print-file-name=libpcap.a)
 
-LDFLAGS_vde.o := -r $(shell $(CC) $(CFLAGS) -print-file-name=libvdeplug.a)
+LDFLAGS_vde.o = $(shell $(CC) $(CFLAGS) -print-file-name=libvdeplug.a)
 
 targets := pcap_kern.o pcap_user.o vde_kern.o vde_user.o
 
-- 
2.25.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
