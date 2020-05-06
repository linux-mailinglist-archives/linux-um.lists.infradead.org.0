Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450CC1C6883
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 08:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVhKdDpq4L5T6oyl7FyAEYNqorGIwgAvo4qSmMZqiSc=; b=IDNCDJ5+Xk8TGa
	buPkv0uUpV+hHcIrANIKZBkr5Al33YfMrj2GY/8ZxhM3QfDAeNfRgDwwnm5ThW2TnNWgtIEMIhtIf
	05wmIsWMRyy/cnfV8Bt/ocTx5JMvZLu+Gmgv0X4aKceLOm1zdUOK9w3sz7Of5R/ICvKWRUKa8RX7K
	frF3Htw4LkO2XubXc6TptugLclsyoZlvq4X39LUU4Yor7meEouO7kzds+sLAE5cbQSVqWXRdgfKfJ
	fAfu/A/UFGNsp9F+BjJli36OCIMYYwQMtuKcROsDG3SFWy5mG7EnzNioL8+PWGc5C53I+5IW+9m9z
	JJvv/AScsM+loHlXMxhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDS0-0006Z4-Mo; Wed, 06 May 2020 06:22:36 +0000
Received: from [2001:4bb8:191:66b6:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDRy-0006Vj-MY; Wed, 06 May 2020 06:22:35 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 03/15] maccess: remove duplicate kerneldoc commens
Date: Wed,  6 May 2020 08:22:11 +0200
Message-Id: <20200506062223.30032-4-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200506062223.30032-1-hch@lst.de>
References: <20200506062223.30032-1-hch@lst.de>
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

Many of the maccess routines have a copy of the kerneldoc comment
in the header.  Remove it as it is not useful and will get out of
sync sooner or later.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/uaccess.h | 38 --------------------------------------
 1 file changed, 38 deletions(-)

diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index a2c606a403745..5a36a298a85f8 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -301,50 +301,12 @@ copy_struct_from_user(void *dst, size_t ksize, const void __user *src,
 	return 0;
 }
 
-/*
- * probe_kernel_read(): safely attempt to read from a location
- * @dst: pointer to the buffer that shall take the data
- * @src: address to read from
- * @size: size of the data chunk
- *
- * Safely read from address @src to the buffer at @dst.  If a kernel fault
- * happens, handle that and return -EFAULT.
- */
 extern long probe_kernel_read(void *dst, const void *src, size_t size);
 extern long probe_kernel_read_strict(void *dst, const void *src, size_t size);
 extern long __probe_kernel_read(void *dst, const void *src, size_t size);
-
-/*
- * probe_user_read(): safely attempt to read from a location in user space
- * @dst: pointer to the buffer that shall take the data
- * @src: address to read from
- * @size: size of the data chunk
- *
- * Safely read from address @src to the buffer at @dst.  If a kernel fault
- * happens, handle that and return -EFAULT.
- */
 extern long probe_user_read(void *dst, const void __user *src, size_t size);
 
-/*
- * probe_kernel_write(): safely attempt to write to a location
- * @dst: address to write to
- * @src: pointer to the data that shall be written
- * @size: size of the data chunk
- *
- * Safely write to address @dst from the buffer at @src.  If a kernel fault
- * happens, handle that and return -EFAULT.
- */
 extern long notrace probe_kernel_write(void *dst, const void *src, size_t size);
-
-/*
- * probe_user_write(): safely attempt to write to a location in user space
- * @dst: address to write to
- * @src: pointer to the data that shall be written
- * @size: size of the data chunk
- *
- * Safely write to address @dst from the buffer at @src.  If a kernel fault
- * happens, handle that and return -EFAULT.
- */
 extern long notrace probe_user_write(void __user *dst, const void *src, size_t size);
 
 extern long strncpy_from_unsafe(char *dst, const void *unsafe_addr, long count);
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
