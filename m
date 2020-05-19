Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C051D9848
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 15:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geNV7qBDZMX1cUA/+1MQZGikbCSYAyNLtQuY5a2lf9A=; b=UepNQn+GfXGsqa
	W8oJ5LjhKXc5nOABYXkP5iLBlURFn7HjB4X+8fG8AZr4zQVU7BKYsdiqdZdI9MGmwWFuJzTcqCL4+
	CG4zieqkn2g3l7QcVc3V/eWFN8riC70M9MkBrPYw1No0WSaf13/eypFfAyb2mY+ndaJGR7F0K+QJR
	soIJad9loiUF4j4R8FX+sSMYQTkMHV01P5IEDUcU0KHr6l2GXOS+tHC+hzCCu8ynKBJPtJvpQyj8z
	ce1uOUr5b3Uaa/om3KOgCiCkhX576IcvQPJN+5+bd4TgTW1zjI45UrK2v98pxgb3Txc47po9s6J2N
	GjlhBTMEG0eCvl+WdyuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2ZB-0003yk-L8; Tue, 19 May 2020 13:45:57 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2ZA-0003wy-0R; Tue, 19 May 2020 13:45:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 20/20] maccess: return -ERANGE when
 copy_from_kernel_nofault_allowed fails
Date: Tue, 19 May 2020 15:44:49 +0200
Message-Id: <20200519134449.1466624-21-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519134449.1466624-1-hch@lst.de>
References: <20200519134449.1466624-1-hch@lst.de>
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

Allow the callers to distinguish a real unmapped address vs a range
that can't be probed.

Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/maccess.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/mm/maccess.c b/mm/maccess.c
index 1e7d77656c596..4010d64189d21 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -25,7 +25,7 @@ bool __weak copy_from_kernel_nofault_allowed(void *dst, const void *unsafe_src,
 long copy_from_kernel_nofault(void *dst, const void *src, size_t size)
 {
 	if (!copy_from_kernel_nofault_allowed(dst, src, size))
-		return -EFAULT;
+		return -ERANGE;
 
 	pagefault_disable();
 	copy_from_kernel_nofault_loop(dst, src, size, u64, Efault);
@@ -69,7 +69,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
 	if (unlikely(count <= 0))
 		return 0;
 	if (!copy_from_kernel_nofault_allowed(dst, unsafe_addr, count))
-		return -EFAULT;
+		return -ERANGE;
 
 	pagefault_disable();
 	do {
@@ -107,7 +107,7 @@ long copy_from_kernel_nofault(void *dst, const void *src, size_t size)
 	mm_segment_t old_fs = get_fs();
 
 	if (!copy_from_kernel_nofault_allowed(dst, src, size))
-		return -EFAULT;
+		return -ERANGE;
 
 	set_fs(KERNEL_DS);
 	pagefault_disable();
@@ -174,7 +174,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
 	if (unlikely(count <= 0))
 		return 0;
 	if (!copy_from_kernel_nofault_allowed(dst, unsafe_addr, count))
-		return -EFAULT;
+		return -ERANGE;
 
 	set_fs(KERNEL_DS);
 	pagefault_disable();
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
