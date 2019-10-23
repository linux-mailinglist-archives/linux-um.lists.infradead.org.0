Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44ADE1118
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IF5EwOh5AZnpi11aN0W1tpNS908POB1AcZUTPE/Ajq0=; b=IF5+slkpHb6+sR
	fwEc7jFPHEbYm8ytUJPLep2BnBFm2VbcJ/F7rAFxqLhdo6s6td7JjWg1qqhYUXQ98EGOsvoVZ0GHJ
	Ccq2qlDu4oDjvdZHw7d5rmiVtbC/GniXLL8qKITsKGWFtKjHA8uhIc0haIY8mqno3biCFeogvRoIF
	0MPJfDp9soOVlwDDgYtJVLruCAkxZJbg/ZhVuI9Lng1h0bNVUe5VjwH/wM/Vtq6XLq6xHi0mxTrqj
	YUbEVXrfDRNoGJRTgVuanBPUfhfbpTTWbjDNw/8HD4NYUPMXAoT+BLdYOCkiJwx5QvLpZSwgk/h+I
	OvvydttgQp9vU4lgwb2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8Qb-000246-EB; Wed, 23 Oct 2019 04:39:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QP-0001u6-75
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so877847pfp.5
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/gwmd51OhZsXLQpgDyoRJUsY2T11F9MNchWrd71a3sE=;
 b=hSv3zvmq3s5OYLRRSMbbz4ApkPRTDu0CjS9BPTGPrphpyI5yvaUdjOqBh6PuNpzlU+
 g3LLBNjOgIznrRyMhLBnP8zvQ72X9YKLupVGA2wPWySmVuA49SFolaExT2xc3oTIo8e8
 dgCKrB9hVbDpJ2O5oesp8Ty9p7JBCagpI5XxC1JkzpydJ1cdVGMxuBRItLQLS+75kzKk
 jgZk/U5KpQcOMqGoKu2jzbahjVAwdv+i1BOdwEedOAiaeC96VMOgJRQUfktzg2PP70YR
 zSuS5Nr9yOkR9yQpAPkoS24tuvllthdAbnpodmJja+gZiAo6nDKvoCrsj0c6wED9F9Ae
 oYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/gwmd51OhZsXLQpgDyoRJUsY2T11F9MNchWrd71a3sE=;
 b=WKTxWLTHDZ2US9AtyewNByASSk0WMlCnYlc8cPpwtV0FK2fagCppp31OXAtFasbjiR
 UItUnAI1611RCpXoNdKyCEYVVPqBpNZh9QGlIn4l7cVRUnJqbNvle0Oh+G6SHVkVsrc5
 AemwwG3eAdMZhccXunI7tyEq+oGnJlp0UbjMphLOG2XhMTKU7WjS87cnpwBXr++yxYPX
 2+dt1aiM+g/ZEH8GaSmIQ6IuPtAo8JPg7xx0OepzN5mM7VdVqoLfSHmVW8KU4QFPZFaU
 T7fup+xM1AEsbMr2rw30DTipyqXFbtvvFeba6AMn40L5vbw7kwDReiUXkcFUtl63nF8a
 lQjA==
X-Gm-Message-State: APjAAAUA3ZjpHikHAnFwzOT0Sxn05Q58ZtpdhkylNyLldk8tUD/7WMpf
 8R5VtgiY/hLI/ChFeEJZTMhUbKA8rZIL3Q==
X-Google-Smtp-Source: APXvYqyUzO3wVfjABCcgPWebho9hPpGkJWRZpSEwyMkcapEs7NFYwmQK90BziQ2Lf/S1CAfb4dSE4A==
X-Received: by 2002:a62:386:: with SMTP id 128mr8651366pfd.110.1571805548364; 
 Tue, 22 Oct 2019 21:39:08 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id o64sm46223950pjb.24.2019.10.22.21.39.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:39:07 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 4E03F201995838; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 35/47] xfs: support for non-mmu architectures
Date: Wed, 23 Oct 2019 13:38:09 +0900
Message-Id: <e52ac5600f91082a2b3e1acc263280e1b7379bed.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213909_302094_EEDF60E0 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Naive implementation for non-mmu architectures: allocate physically
contiguous xfs buffers with alloc_pages. Terribly inefficient with
memory and fragmentation on high I/O loads but it may be good enough
for basic usage (which most non-mmu architectures will need).

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 fs/xfs/xfs_buf.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/fs/xfs/xfs_buf.c b/fs/xfs/xfs_buf.c
index ca0849043f54..c4bb390cc9b0 100644
--- a/fs/xfs/xfs_buf.c
+++ b/fs/xfs/xfs_buf.c
@@ -313,6 +313,7 @@ xfs_buf_free(
 	ASSERT(list_empty(&bp->b_lru));
 
 	if (bp->b_flags & _XBF_PAGES) {
+#ifdef CONFIG_MMU
 		uint		i;
 
 		if (xfs_buf_is_vmapped(bp))
@@ -324,6 +325,10 @@ xfs_buf_free(
 
 			__free_page(page);
 		}
+#else
+		free_pages((unsigned long)page_to_virt(bp->b_pages[0]),
+			   order_base_2(bp->b_page_count));
+#endif
 	} else if (bp->b_flags & _XBF_KMEM)
 		kmem_free(bp->b_addr);
 	_xfs_buf_free_pages(bp);
@@ -390,7 +395,14 @@ xfs_buf_allocate_memory(
 		struct page	*page;
 		uint		retries = 0;
 retry:
+#ifdef CONFIG_MMU
 		page = alloc_page(gfp_mask);
+#else
+		if (i == 0)
+			page = alloc_pages(gfp_mask, order_base_2(page_count));
+		else
+			page = bp->b_pages[0] + i;
+#endif
 		if (unlikely(page == NULL)) {
 			if (flags & XBF_READ_AHEAD) {
 				bp->b_page_count = i;
@@ -425,8 +437,10 @@ xfs_buf_allocate_memory(
 	return 0;
 
 out_free_pages:
+#ifdef CONFIG_MMU
 	for (i = 0; i < bp->b_page_count; i++)
 		__free_page(bp->b_pages[i]);
+#endif
 	bp->b_flags &= ~_XBF_PAGES;
 	return error;
 }
@@ -446,6 +460,7 @@ _xfs_buf_map_pages(
 	} else if (flags & XBF_UNMAPPED) {
 		bp->b_addr = NULL;
 	} else {
+#ifdef CONFIG_MMU
 		int retried = 0;
 		unsigned nofs_flag;
 
@@ -466,6 +481,9 @@ _xfs_buf_map_pages(
 			vm_unmap_aliases();
 		} while (retried++ <= 1);
 		memalloc_nofs_restore(nofs_flag);
+#else
+		bp->b_addr = page_to_virt(bp->b_pages[0]);
+#endif
 
 		if (!bp->b_addr)
 			return -ENOMEM;
@@ -915,11 +933,19 @@ xfs_buf_get_uncached(
 	if (error)
 		goto fail_free_buf;
 
+#ifdef CONFIG_MMU
 	for (i = 0; i < page_count; i++) {
 		bp->b_pages[i] = alloc_page(xb_to_gfp(flags));
 		if (!bp->b_pages[i])
 			goto fail_free_mem;
 	}
+#else
+	bp->b_pages[0] = alloc_pages(flags, order_base_2(page_count));
+	if (!bp->b_pages[0])
+		goto fail_free_buf;
+	for (i = 1; i < page_count; i++)
+		bp->b_pages[i] = bp->b_pages[i-1] + 1;
+#endif
 	bp->b_flags |= _XBF_PAGES;
 
 	error = _xfs_buf_map_pages(bp, 0);
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
