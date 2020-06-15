Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDE21FA346
	for <lists+linux-um@lfdr.de>; Tue, 16 Jun 2020 00:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoOtAXqy38hirjKOlrMzPsBNQWTpmn5Pgrl0VPRgQeI=; b=YXS7dJxuS5K4Dj
	3DdAgjGOUl+5viS/QpbFQ2RYd/B2gbaY8D4OB+EIt8hEyVMm/Zr/UuEjeL8ytdJyznTtM/b0OI6y7
	ThxZCxgeb8ETmwWQAUf72/Q0gytwAVMxJOt4sALFs+KW169XTLGs9wQ79kOlXfPizQAIkuBV/b8Y8
	ucF8HtsaoEnkIg08cgTIfVTkd0Bf7+NgTUVRrSRxBvDLRWp7nwpLSVtOEcpiiToUgCEwq6dbBTEtS
	iFPSZDhggVUXl7nazu9ToYi2o9D20iWPaOcsez6mOYlvLKBasQDFU3dxbGxusmuBIieyitqyEuFlU
	CCodVVjvu0Gci/JZ/6Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkxOu-0008FJ-A4; Mon, 15 Jun 2020 22:16:20 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkxOr-0008El-Gq
 for linux-um@lists.infradead.org; Mon, 15 Jun 2020 22:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592259375;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JzPNsEqfmCz68HTb30cqD8DxFLmMqEZzWOV3nPixDso=;
 b=ULgXUJpXcsgoXLV9Ny1iSE2QKHxNXlNrrFfN8wzUeY4kh0DJOgdgYh/ckYeS8KJKiiDZc9
 ECawuMMtS72JPWOZTTo1kJ2GbiPduCIcpXaKrCTZA+oSUvbV+HWW2/GGhgKbSHlZRwH76x
 UPdHYC+0cm4aI1n722DMwsL8OuuW17Q=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-HdGuo7GfMeiCFO567V7yUA-1; Mon, 15 Jun 2020 18:16:11 -0400
X-MC-Unique: HdGuo7GfMeiCFO567V7yUA-1
Received: by mail-qk1-f197.google.com with SMTP id d187so15408361qke.4
 for <linux-um@lists.infradead.org>; Mon, 15 Jun 2020 15:16:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JzPNsEqfmCz68HTb30cqD8DxFLmMqEZzWOV3nPixDso=;
 b=mNaXTIpxc+1uW5lINNAEb+VDzkStF4MEeh9/h1rjXlVNpsJO3usu0VIkzDjj0sXAu7
 xx7HmbMLrTlqwR4PsW4oE6tUv+TsOrIK9JWb9LwSGPmlgTggdkmgbhSroK6DACsBQrjw
 m/teCsZ/Ywngf4JCnqwM/Maf1X4+2zoGBSBFz4vDA+zBH0FZxvbB58hE8HGTte6Dsa4N
 sT7tBWJEk0D4MwyG0p1Z4cgEGVHEWuRtKtcuXF7gYBGkYXDuwhWUm6XSkl+AdcmUvOoO
 s5hGJI4+9BDe1sOhL/bg4zurUulohjJQM9V1UY1XUOeLycFfcTRZ+JljCKi3/tBNwZ8y
 c5Sg==
X-Gm-Message-State: AOAM533C8pl55JhIvIUoNHMahNEWuOFnyi6Ib4cHTs9+WGV1nEc6STQh
 RL3NsW6099wcFpgxlOqkrPU7ye9xgz6g/gaCEWH6d0JgnkK8i5sboLDKwEKFj+ThT6wsevkrV7W
 R8PkmXi9YhYdkDXDXCBwykNu+
X-Received: by 2002:ac8:2b98:: with SMTP id m24mr18158630qtm.7.1592259371455; 
 Mon, 15 Jun 2020 15:16:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjWHjA14T4Y4WZBmEAu49NUsGG1HATDJAyvaPb65GPWGK47SLWF39nWaQ5Lrof2QgDYc778A==
X-Received: by 2002:ac8:2b98:: with SMTP id m24mr18158603qtm.7.1592259371221; 
 Mon, 15 Jun 2020 15:16:11 -0700 (PDT)
Received: from xz-x1.hitronhub.home ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id w13sm12351509qkb.91.2020.06.15.15.16.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 15:16:10 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 01/25] mm/um: Fix extra accounting for page fault retries
Date: Mon, 15 Jun 2020 18:15:43 -0400
Message-Id: <20200615221607.7764-2-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200615221607.7764-1-peterx@redhat.com>
References: <20200615221607.7764-1-peterx@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_151617_700791_ED4A1BA6 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrea Arcangeli <aarcange@redhat.com>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org, peterx@redhat.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

When page fault retried, we should only do the accounting once rather than once
for each page fault retry.

CC: Jeff Dike <jdike@addtoit.com>
CC: Richard Weinberger <richard@nod.at>
CC: Anton Ivanov <anton.ivanov@cambridgegreys.com>
CC: linux-um@lists.infradead.org
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 arch/um/kernel/trap.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/um/kernel/trap.c b/arch/um/kernel/trap.c
index 8f18cf56b3dd..d162168490d1 100644
--- a/arch/um/kernel/trap.c
+++ b/arch/um/kernel/trap.c
@@ -34,6 +34,7 @@ int handle_page_fault(unsigned long address, unsigned long ip,
 	pte_t *pte;
 	int err = -EFAULT;
 	unsigned int flags = FAULT_FLAG_DEFAULT;
+	vm_fault_t fault, major = 0;
 
 	*code_out = SEGV_MAPERR;
 
@@ -73,9 +74,8 @@ int handle_page_fault(unsigned long address, unsigned long ip,
 	}
 
 	do {
-		vm_fault_t fault;
-
 		fault = handle_mm_fault(vma, address, flags);
+		major |= fault & VM_FAULT_MAJOR;
 
 		if ((fault & VM_FAULT_RETRY) && fatal_signal_pending(current))
 			goto out_nosemaphore;
@@ -92,10 +92,6 @@ int handle_page_fault(unsigned long address, unsigned long ip,
 			BUG();
 		}
 		if (flags & FAULT_FLAG_ALLOW_RETRY) {
-			if (fault & VM_FAULT_MAJOR)
-				current->maj_flt++;
-			else
-				current->min_flt++;
 			if (fault & VM_FAULT_RETRY) {
 				flags |= FAULT_FLAG_TRIED;
 
@@ -103,6 +99,11 @@ int handle_page_fault(unsigned long address, unsigned long ip,
 			}
 		}
 
+		if (major)
+			current->maj_flt++;
+		else
+			current->min_flt++;
+
 		pgd = pgd_offset(mm, address);
 		p4d = p4d_offset(pgd, address);
 		pud = pud_offset(p4d, address);
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
