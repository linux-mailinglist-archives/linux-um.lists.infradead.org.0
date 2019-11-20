Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423E1103BBA
	for <lists+linux-um@lfdr.de>; Wed, 20 Nov 2019 14:37:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dnyFT55Umag4tQxL6RO+j3VUby3BoakigOnbJVCin7U=; b=W7o
	ZyM3DE8OTV31+9UPpqtHvyPJ1aW2jW70QeF7zuK5JooAVn2gp5hDvt88YjJdUUW08gNm+gMTC9lu5
	7OrKUSWH1djwRo/8dfQsQGw1CU4s3QwJVzsUlGpZz2s5e05VRApbcPUcLjjHkCZW19Y8J531JVKqK
	UBspRcJba9bc0Uh2LUzW7DGZdsNApkD4cCD6Emri9IenykTALgd4RUOW5Rurj1jIZO79fpZKMS7hv
	gF8yPXvbUwl9MWG2erhLAbVMMiMNj88dPsxHTwoVSErkeCYbI9vnQwvOyrm5cV7ijY9GL1X1TxGje
	KuD034Ur9pCczitzPObMksehPAAlj6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQAN-0002Ai-Mk; Wed, 20 Nov 2019 13:37:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQAF-0001z1-09
 for linux-um@lists.infradead.org; Wed, 20 Nov 2019 13:37:00 +0000
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35E1922475;
 Wed, 20 Nov 2019 13:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574257018;
 bh=AZ0W4jvxY51C1IAsZYJ9MmE95bZLpEukhm4Wi0wn59w=;
 h=From:To:Cc:Subject:Date:From;
 b=Y1ibQEvoQifCggJUk0lW5UEqiDJj0GzLBW9H4/deRSj4+DrmV/0Kz4LexIn32EZZL
 gKYNtfQAK0UIC7Pr8tOBMKfXiCuG8eQkxmHCw4hE0DJrPNdFHrSlyBoEFz//ultmuV
 252hAP/he6FE5HTFR86+ubpTuczJ15eeJ7JmjBy0=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] um: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:36:54 +0800
Message-Id: <20191120133654.11838-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_053659_066140_3730A0A2 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.189.143.39 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/um/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index fec6b4ca2b6e..2a6d04fcb3e9 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -153,7 +153,7 @@ config KERNEL_STACK_ORDER
 	  It is possible to reduce the stack to 1 for 64BIT and 0 for 32BIT on
 	  older (pre-2017) CPUs. It is not recommended on newer CPUs due to the
 	  increase in the size of the state which needs to be saved when handling
-          signals.
+	  signals.
 
 config MMAPPER
 	tristate "iomem emulation driver"
-- 
2.17.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
