Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962D434554
	for <lists+linux-um@lfdr.de>; Tue,  4 Jun 2019 13:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Mdd/GNiuFFG1BjumFY1ENyEpsBUlgM5W2ulGHtGMZZs=; b=B90
	IwCZgE8zLkJ1PuDPI5bCD8UYmrDO5/aVEwXjYGcCq7mKOsvnHt3wbihEEcn0p9BCgo0uuxPTYecY6
	MMHhbYEnpdsyWWEJetJvd+pmvTL5m33pifSripQw3iBD6qf56MveL7UarWVToSI8PLvA+wOdD+DT8
	2jCMLuiAWT3MyPHOtZJYKvM0MXVOVoZ1N1j1+awc1V2Q1CEur0LQ6P2Mn2wUx968WqKdRfGeMN6Id
	/Yqw4hAwGurSK0aeEavxlmML+3friryN7zP9Ker3tHWIAaCaRR4nwIEITdajxQkBikZ9927MaZeh3
	2N8mmI2tUq7BwPzAxxhH9TUbUbZ+7cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7VE-0006Fc-2x; Tue, 04 Jun 2019 11:21:16 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7V4-00061U-Q7
 for linux-um@lists.infradead.org; Tue, 04 Jun 2019 11:21:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id q26so16154944lfc.3
 for <linux-um@lists.infradead.org>; Tue, 04 Jun 2019 04:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qshvxd0W7R29VobaBRXTtoIizOn6NJU3q2wi1l4Tf+E=;
 b=DrttviOy/nj8SJgX+djb6eyKb7xAN17NJHj5yaLwCD+26EwugpSfteCjl+UwKCjXsO
 RWMhNmMoAS3h8zlQRGT+wV8/5vMnqPEQSapDrHhPzsmXf3Mr5Z3rXkyblSAQjnwmbiVj
 mPfO3TjqctwYgMoTCgnnI19MmSVfMuaPgYvF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qshvxd0W7R29VobaBRXTtoIizOn6NJU3q2wi1l4Tf+E=;
 b=LZKd8mqcjwIiYlz9TyIMFnHlvjwaeZAUX4hv45P/kiUYJnxu1OahxtWYEc8vZOpSRq
 WhzoF6PzJkaWyWV5rkfBofGyop4X5PmDRD/Qt8UOWeO4nOozJmvNANmxExAkk0DsA0Sw
 a918693kHK1XGiswBQteR5g4D/gfSupdLfYgt1e+Z0IymYDthywnLMDM0iWeaDN2bXK/
 M33l1IA9SOv6+BMw2ASQEsSN7VXPHUD8fbNDsoV4SRhbIsY2nDHUC041vrKZWsAd2o/S
 55J9nfc4WMM/ARA3pp1k/NTFvtH4Evbr5q4ROVg+1zX98m/H9KCJqq0wx74JbrrwNV6T
 v1+g==
X-Gm-Message-State: APjAAAXW/OWzMHqEBmAy2lbqSysrxmy4MgKXiIbU0bazvWe/V6YEdOy1
 ERphSQe4obfXa4xN1KYn4zANkYFoLRCEdA==
X-Google-Smtp-Source: APXvYqwMXDjTcHNeRp0oQv027JI890ov4s/GoGWDA449LVh5kI7hHn5hATqLMMI3QxjdHT6bJtPNmA==
X-Received: by 2002:ac2:514b:: with SMTP id q11mr16681499lfd.33.1559647263741; 
 Tue, 04 Jun 2019 04:21:03 -0700 (PDT)
Received: from localhost.localdomain ([176.221.114.230])
 by smtp.gmail.com with ESMTPSA id k12sm3705852lfm.90.2019.06.04.04.21.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 04:21:02 -0700 (PDT)
From: Marek Majkowski <marek@cloudflare.com>
To: linux-um@lists.infradead.org
Subject: [PATCH] uml: fix kcov crash during startup
Date: Tue,  4 Jun 2019 13:20:50 +0200
Message-Id: <20190604112050.4787-1-marek@cloudflare.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_042107_550168_47230603 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: marek@cloudflare.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Kcov fails to start when compiled with kcov. Disable KCOV on
arch/uml/kernel/skas.

  $ gdb -q -ex r ./vmlinux
  Program received signal SIGSEGV, Segmentation fault.
  check_kcov_mode (t=<>, needed_mode=<>) at kernel/kcov.c:70
  70		mode = READ_ONCE(t->kcov_mode);

Signed-off-by: Marek Majkowski <marek@cloudflare.com>
---
 arch/um/kernel/skas/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/um/kernel/skas/Makefile b/arch/um/kernel/skas/Makefile
index 0b76d8869c94..5bd3edfcfedf 100644
--- a/arch/um/kernel/skas/Makefile
+++ b/arch/um/kernel/skas/Makefile
@@ -12,4 +12,6 @@ obj-y := clone.o mmu.o process.o syscall.o uaccess.o
 CFLAGS_clone.o := $(CFLAGS_NO_HARDENING)
 UNPROFILE_OBJS := clone.o
 
+KCOV_INSTRUMENT := n
+
 include arch/um/scripts/Makefile.rules
-- 
2.17.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
