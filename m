Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F3C1A9DB1
	for <lists+linux-um@lfdr.de>; Wed, 15 Apr 2020 13:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iIyic/QsbOXKhvKfdJD6oXWw8oic6ZFKk363zIyusw=; b=ps7xNUSMkQTQ/U
	bZ32y0c3N0gHu7PYX6E/57WkES9hZyCXGrRuqYm2AUugFMruIwMtmWnHpbDBq+SF8d3Kd3f4UZMsR
	+gVh/JBvNHpyq/NXYmdC7Ye28CUAcbgW/TlqqQrA0RVUVKWicULIxiRNxGGPRLmnvBdnXc1S2W0Ag
	gXPQXL7K+z16Mi2nMW+B70KP6Hm2kXfSVTHY6sG0thUx9papVICMpNWy9OJuBtHft6UcQHxISNEje
	pvJrJ0iDQX/Cyskjqku86TgrXSkDLd6ucNGRys1jb0F+wJBa3T0HkK8sN1/5h2qncc9KGrFQzC53G
	rlVCSMfEnTda2EKVaLwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgVk-0005vV-Am; Wed, 15 Apr 2020 11:47:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgSi-0000nP-Jw
 for linux-um@lists.infradead.org; Wed, 15 Apr 2020 11:44:14 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 461AA214AF;
 Wed, 15 Apr 2020 11:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586951052;
 bh=/irDkQP3S01BEZbw9nCn3Y6bK2sKx+ShTIuFgYre9FA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VqftkIhNL8i79/4Dwad+1yjvM63LLMvw25gLlTTKZQ7u8gioypnq/2+uCFI1wTZGD
 zRS6qliz316dvK8k4TV2Y5D9PvyHl0o3pmrByiwKqeTBbHKI0zKsqTCkggcQJdpV25
 rFTLITUNwSxODdEbiMgP+Vqp0uq12665oJWnfFVQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 086/106] um: falloc.h needs to be directly
 included for older libc
Date: Wed, 15 Apr 2020 07:42:06 -0400
Message-Id: <20200415114226.13103-86-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114226.13103-1-sashal@kernel.org>
References: <20200415114226.13103-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044412_687434_FD0A012B 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-um@lists.infradead.org,
 Brendan Higgins <brendanhiggins@google.com>,
 Richard Weinberger <richard@nod.at>, Alan Maguire <alan.maguire@oracle.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Alan Maguire <alan.maguire@oracle.com>

[ Upstream commit 35f3401317a3b26aa01fde8facfd320f2628fdcc ]

When building UML with glibc 2.17 installed, compilation
of arch/um/os-Linux/file.c fails due to failure to find
FALLOC_FL_PUNCH_HOLE and FALLOC_FL_KEEP_SIZE definitions.

It appears that /usr/include/bits/fcntl-linux.h (indirectly
included by /usr/include/fcntl.h) does not include falloc.h
with an older glibc, whereas a more up-to-date version
does.

Adding the direct include to file.c resolves the issue
and does not cause problems for more recent glibc.

Fixes: 50109b5a03b4 ("um: Add support for DISCARD in the UBD Driver")
Cc: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
Reviewed-by: Brendan Higgins <brendanhiggins@google.com>
Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/um/os-Linux/file.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
index 5133e3afb96f7..3996937e2c0dd 100644
--- a/arch/um/os-Linux/file.c
+++ b/arch/um/os-Linux/file.c
@@ -8,6 +8,7 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <signal.h>
+#include <linux/falloc.h>
 #include <sys/ioctl.h>
 #include <sys/mount.h>
 #include <sys/socket.h>
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
