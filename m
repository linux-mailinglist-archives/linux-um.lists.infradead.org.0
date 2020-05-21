Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683BD1DD13B
	for <lists+linux-um@lfdr.de>; Thu, 21 May 2020 17:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6i4P9DtKdZLRo+h7smOhDmsB9/RwaamIdoZQsgSsVfQ=; b=T1llc+4ztEn+jl
	+1pc7KG0XOt/O5k4KwIdQULwh/dPtUlcUNb+egvOo13eV9kn08pHb48RWqfkBad+xhuV0o78BHyGQ
	+MCOHaYkF8nrrI6p/4sAdGb9t17m359lBZqSnv4Ge5ql0wRwsCn742HqGHtK5F/29AEvFFxqE9RzS
	W4D98yPN4m6Uc+3K+yKDLnN5ydAGqYBhYeK/DIq+LutbGvLZ46fc8+OVBeMWv79C0P6wteFiW7DML
	at/o/DIIwVtq++GB/6zZDGL+VAFgZ0y/DU+gwF3Sq3XM87pzaAa7jCwJIqksDIvNk/CDasykxAwB5
	0nZqBFTUDdVUmKKMEz8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn38-0004fo-MQ; Thu, 21 May 2020 15:23:58 +0000
Received: from [2001:4bb8:18c:5da7:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn37-0004dA-3G; Thu, 21 May 2020 15:23:57 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 18/23] maccess: allow architectures to provide kernel probing
 directly
Date: Thu, 21 May 2020 17:22:56 +0200
Message-Id: <20200521152301.2587579-19-hch@lst.de>
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

Provide alternative versions of probe_kernel_read, probe_kernel_write
and strncpy_from_kernel_unsafe that don't need set_fs magic, but instead
use arch hooks that are modelled after unsafe_{get,put}_user to access
kernel memory in an exception safe way.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/maccess.c | 76 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/mm/maccess.c b/mm/maccess.c
index ffde1ae86ec51..e19d19cd5382c 100644
--- a/mm/maccess.c
+++ b/mm/maccess.c
@@ -11,6 +11,81 @@ bool __weak probe_kernel_read_allowed(const void *unsafe_src, size_t size)
 	return true;
 }
 
+#ifdef HAVE_GET_KERNEL_NOFAULT
+
+#define probe_kernel_read_loop(dst, src, len, type, err_label)		\
+	while (len >= sizeof(type)) {					\
+		__get_kernel_nofault(dst, src, type, err_label);		\
+		dst += sizeof(type);					\
+		src += sizeof(type);					\
+		len -= sizeof(type);					\
+	}
+
+long probe_kernel_read(void *dst, const void *src, size_t size)
+{
+	if (!probe_kernel_read_allowed(src, size))
+		return -EFAULT;
+
+	pagefault_disable();
+	probe_kernel_read_loop(dst, src, size, u64, Efault);
+	probe_kernel_read_loop(dst, src, size, u32, Efault);
+	probe_kernel_read_loop(dst, src, size, u16, Efault);
+	probe_kernel_read_loop(dst, src, size, u8, Efault);
+	pagefault_enable();
+	return 0;
+Efault:
+	pagefault_enable();
+	return -EFAULT;
+}
+EXPORT_SYMBOL_GPL(probe_kernel_read);
+
+#define probe_kernel_write_loop(dst, src, len, type, err_label)		\
+	while (len >= sizeof(type)) {					\
+		__put_kernel_nofault(dst, src, type, err_label);		\
+		dst += sizeof(type);					\
+		src += sizeof(type);					\
+		len -= sizeof(type);					\
+	}
+
+long probe_kernel_write(void *dst, const void *src, size_t size)
+{
+	pagefault_disable();
+	probe_kernel_write_loop(dst, src, size, u64, Efault);
+	probe_kernel_write_loop(dst, src, size, u32, Efault);
+	probe_kernel_write_loop(dst, src, size, u16, Efault);
+	probe_kernel_write_loop(dst, src, size, u8, Efault);
+	pagefault_enable();
+	return 0;
+Efault:
+	pagefault_enable();
+	return -EFAULT;
+}
+
+long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
+{
+	const void *src = unsafe_addr;
+
+	if (unlikely(count <= 0))
+		return 0;
+	if (!probe_kernel_read_allowed(unsafe_addr, count))
+		return -EFAULT;
+
+	pagefault_disable();
+	do {
+		__get_kernel_nofault(dst, src, u8, Efault);
+		dst++;
+		src++;
+	} while (dst[-1] && src - unsafe_addr < count);
+	pagefault_enable();
+
+	dst[-1] = '\0';
+	return src - unsafe_addr;
+Efault:
+	pagefault_enable();
+	dst[-1] = '\0';
+	return -EFAULT;
+}
+#else /* HAVE_GET_KERNEL_NOFAULT */
 /**
  * probe_kernel_read(): safely attempt to read from kernel-space
  * @dst: pointer to the buffer that shall take the data
@@ -113,6 +188,7 @@ long strncpy_from_kernel_nofault(char *dst, const void *unsafe_addr, long count)
 
 	return ret ? -EFAULT : src - unsafe_addr;
 }
+#endif /* HAVE_GET_KERNEL_NOFAULT */
 
 /**
  * probe_user_read(): safely attempt to read from a user-space location
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
