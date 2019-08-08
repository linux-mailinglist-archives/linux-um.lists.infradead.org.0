Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB07486804
	for <lists+linux-um@lfdr.de>; Thu,  8 Aug 2019 19:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RFYnYiEL9NcZTbnizM3Gpx1SKsmdpAoFmHG+G//KkKk=; b=R/t
	m5pHzwNoZ7/ikS9cmfwzl97y4mz/kAMszogAIFGxcmPQ0QAwEnlLadKNiV+b/575y7DtI7YofmzNN
	dPu4RKKGwyyVNdnOhxlXqJ3YIHkriyq7fjJQDAd49at5clIRGqPmiwjHS6t4/LBMiwTe8zuKA+fa6
	eiRkifYDzcWg4xLOgx9FhhnlA97ZQEoEPqwRgMEMv6uWEA11FalT9ZSfB9XEdHNIbpQBmGl9qXo5P
	2R+Maocd/DXTncmV6PCmOwLNA7pdPKLtpgrz7/suJFAdSZIXZPkKxrx6GQJq1fBMWIdxf71APD02B
	dr3PozjXiyCVO3GPhSTqECyJtTlQ6kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmEF-00047X-FV; Thu, 08 Aug 2019 17:29:31 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmEB-00046v-Sh
 for linux-um@lists.infradead.org; Thu, 08 Aug 2019 17:29:29 +0000
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net
 [126.125.143.222]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id x78HSihL013374;
 Fri, 9 Aug 2019 02:28:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x78HSihL013374
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1565285325;
 bh=ZXKGOGQbV1dII2jtvp/G7SZGpjYQxATkV4zvzvc+42Y=;
 h=From:To:Cc:Subject:Date:From;
 b=PX+490OrPVmLr92V97na/zJGYY1zwrnzhbkh4/10NTxSeQWMGWhxeAckWMIDlpl+5
 MsDx2yuQmGUkwqbl1S4SfKcn1d7sQ5os/wL2PEHtxvoKEri50kYMbe12qN9y0BSGI6
 raozvMs++pCGP6PIraeN0/y96eeIaxv4GgqLKXGpmAYvmAVP88cJucAwnfuYmxbBMs
 f/o8s76wNNeu51PJguAgtjotY3y0RMF1u+pYRwR7vGvsCDChU9khY4ARKyjDarSwMc
 Gjra9+McXY0gsXBNq07y9g/JWj4qEExsjzzB67/ai2/YHG9hFhx7gPG54NUCF0YnTC
 lzKDTj6bfgsmA==
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
Subject: [PATCH] um: remove meaningless clearing of clean-files
Date: Fri,  9 Aug 2019 02:28:43 +0900
Message-Id: <20190808172843.1568-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_102928_290209_B80720FB 
X-CRM114-Status: UNSURE (   5.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/um/kernel/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/um/kernel/Makefile b/arch/um/kernel/Makefile
index 2f36d515762e..89afc54f8699 100644
--- a/arch/um/kernel/Makefile
+++ b/arch/um/kernel/Makefile
@@ -13,7 +13,6 @@ CPPFLAGS_vmlinux.lds := -DSTART=$(LDS_START)		\
                         -DELF_FORMAT=$(LDS_ELF_FORMAT)	\
 			$(LDS_EXTRA)
 extra-y := vmlinux.lds
-clean-files :=
 
 obj-y = config.o exec.o exitcode.o irq.o ksyms.o mem.o \
 	physmem.o process.o ptrace.o reboot.o sigio.o \
-- 
2.17.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
