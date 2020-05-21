Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3881DD129
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRLnVv/VOdQBnZ3Ig383g8aunF54Z3kbnz4OV4FtQgE=; b=iY5QOimkvvnKn4
	oliQWHaqzItPdCCSpAEvZZnQCcthpfgpE673pNOdCrrHCEsQ4ti7tW2lw2u/61Po3dDg+6+Nl8WT8
	oT7lAmaaUkqHTGOUPh5z4WJy+NEmKQzmg8f/vokNqzUnUgMro9sNI35Yr3w0fjBpyDq30JYwIrI3H
	OV7+pMUgnMwXj5aCsbPlPw6Ikt+N/8gyjuoBYgiHYBkgeH+K2CAmDl8DTCRYafzF1vCgWhgTYPeAS
	Xpp0m//2OYatVx8+Zgc6GyqMjQ2PcBdHzEpuSSRyphE3J2QK2c+Vy7NeYmZ9vmt2ssYZr7LGAba5L
	nd0PyPrjHwbVnA37/CtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn2U-0004AN-3W; Thu, 21 May 2020 15:23:18 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn2H-000403-Jc; Thu, 21 May 2020 15:23:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 01/23] maccess: unexport probe_kernel_write and
 probe_user_write
Date: Thu, 21 May 2020 17:22:39 +0200
Message-Id: <20200521152301.2587579-2-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521152301.2587579-1-hch@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

These two functions are not used by any modular code.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/maccess.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/mm/maccess.c b/mm/maccess.c
index 3ca8d97e50106..cf21e604f78cb 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -121,7 +121,6 @@ long __probe_kernel_write(void *dst, const void *src, size_t size)
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(probe_kernel_write);
 
 /**
  * probe_user_write(): safely attempt to write to a user-space location
@@ -148,7 +147,6 @@ long __probe_user_write(void __user *dst, const void *src, size_t size)
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(probe_user_write);
 
 /**
  * strncpy_from_unsafe: - Copy a NUL terminated string from unsafe address.
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
