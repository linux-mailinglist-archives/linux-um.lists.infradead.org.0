Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C365A1A9521
	for <lists+linux-um@lfdr.de>; Wed, 15 Apr 2020 09:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KIIBsCJe6ysxa2PxkYtSAe7PR+WhdFzx0CoIJsx4r/I=; b=Cle0ul5KnspyTx
	r9UcOf1WHP1LAWmN4pSlRQNekBHeNf66+5ISn1ULSmmp+3RLox5Z9ub/6qaRx4KoNI8OTcGM18f1v
	Hb6kOCjOJ8rjaEC5DiiTU66KPofGmiBM5UvDFb3Qa30n6sjsnrMPamua4Ai/MrRhYQQvIyGy0N37Q
	cEXlLvhryuVVREaqMlhfNtOnnk51ffIAqWHkuUZ7ufu0uFbDO0nUXUaAQQEOwACqKXhTG1Qdlnegl
	TLaja5zS24V5HS8Gy972IHIsWZykUUufd1wevT+9tjlsDAeNwywr8lMM1duk2DQwzqvHWo35u8+te
	6k2ubyDlClfk/vKAnVhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOcq4-0007QS-TF; Wed, 15 Apr 2020 07:52:04 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcq2-0007Pe-2e
 for linux-um@lists.infradead.org; Wed, 15 Apr 2020 07:52:03 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jOcpx-001Z1S-Po; Wed, 15 Apr 2020 09:51:57 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: syscall.c: include <asm/unistd.h>
Date: Wed, 15 Apr 2020 09:51:52 +0200
Message-Id: <20200415095152.85794f817f97.I289cb72f130c19e850d70eacca9e68eb84832600@changeid>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_005202_340378_C429E8AF 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Johannes Berg <johannes.berg@intel.com>

Without CONFIG_SECCOMP, we don't get this include recursively
through the existing includes, thus failing the build on not
having __NR_syscall_max defined. Add the necessary include to
fix this.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 arch/um/kernel/skas/syscall.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/um/kernel/skas/syscall.c b/arch/um/kernel/skas/syscall.c
index 0a12d5a09217..3d91f89fd852 100644
--- a/arch/um/kernel/skas/syscall.c
+++ b/arch/um/kernel/skas/syscall.c
@@ -11,6 +11,7 @@
 #include <sysdep/ptrace_user.h>
 #include <sysdep/syscalls.h>
 #include <linux/time-internal.h>
+#include <asm/unistd.h>
 
 void handle_syscall(struct uml_pt_regs *r)
 {
-- 
2.25.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
