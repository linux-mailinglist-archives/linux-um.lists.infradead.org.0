Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E231D1A11
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 18:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRLnVv/VOdQBnZ3Ig383g8aunF54Z3kbnz4OV4FtQgE=; b=DefE1K7UJ/BUOE
	7sXxSldjEVVLeHn7jfEy882Wu2YzXIF0m7Sxyv3PxtF2m22QkayIKXmqfbspeJd95Ni/hnGpccqGq
	tMbKnHfwnG5zEC+HkpXK7pkGVSFjwfhyUZhphuZJuf20plhvp6DY/WGNnkvTSiwoa3mi6AVkYX1Ep
	GD0gXVWqCbYu9JoWCl2kgs2Y85MhxYfDcjHaL+9eLtemkcuRWYkJ7m7M5JeluZk3oCHpbQs6dU8hw
	0C0JR+oItD84HEWMxFniBZnT8DA6i6Ty2clz7jxGaMTWJE8vP/oTG1hM4sCufbRab38wfa0eJbUyb
	SqfsAhUlj6k57aD2vdmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtoL-0004h0-L7; Wed, 13 May 2020 16:00:45 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtoJ-0004g7-7D; Wed, 13 May 2020 16:00:43 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 01/18] maccess: unexport probe_kernel_write and
 probe_user_write
Date: Wed, 13 May 2020 18:00:21 +0200
Message-Id: <20200513160038.2482415-2-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513160038.2482415-1-hch@lst.de>
References: <20200513160038.2482415-1-hch@lst.de>
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
