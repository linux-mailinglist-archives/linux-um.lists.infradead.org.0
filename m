Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1316152705
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:31:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1UXK2AUhcuC+ta1ltwfLubRtRnJ5z0HLkeWYXoa6Jw=; b=JWKzdh/WniyZO7
	xyJ51LD70m9vAEZJjjbeUhOvYmd5K2NZ5mTmVjO3Cv6CSMHtcu/V9Skpce0Kiqc/4FJZnYIHgc5sL
	Gv6smbrJYCm3HLYS7A3SLUBO9OCPg1VFhPhXzF6jZVLW6rS8SVEzbrOAP0A9pXFTI0LZwa/rjRT53
	Ax8ucxzfRws8WYTHcKdCf65fuBsKYRuJW8YzbnpNysAnKC0ALQLx/lpW1O2VNCaHGWkf3G0qIkiS3
	fWgtBvqLcdny3uUuqlb4hXagV/4SJzHo5rVrndjUmm+n3DNt6My0Yi5iZQo74pHcmFdmOkH1ZCYRo
	+wPUDqP85xI7Qih/fpkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izFA6-0008SG-2A; Wed, 05 Feb 2020 07:31:50 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izFA3-0008Qg-39
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:31:48 +0000
Received: by mail-pj1-x1041.google.com with SMTP id j17so612072pjz.3
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BE2CIeYLuvmQLbPTA0A8Oy0mfYI7Ki1Lsyf1Q2IfEvE=;
 b=ubp814OfjkbHQekMjusCjybyT6oQ3b5B8GE+oeKe9m0GUEAYdTkYRH8XzT5y9B5VFI
 va1Jn7omm85JvyiG1Qf9CzDaBYynkPG378bKlGdRH9pJ5CMoNGiOiBq1ivNyn/jZ2YHT
 ia9Gr+G5+Z8HN6xEXTv+xXze7BU9irusGpjVfSZhQZvTDKdfCeqHCkTJEmsC3w7OV+Xl
 4x2sB5RSWHIDHSMFaqhhsDaHuENTXjgPd4EPQOaTSjtAUJC/cwAohrf5KvUloeu0Ft8/
 csa4DmthkRJ9v5UHPAJB1kwnHyRYnIJwyN8sM/YN9gvCdUYr5PPce5pyLCKCHJzKmMnp
 PuCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BE2CIeYLuvmQLbPTA0A8Oy0mfYI7Ki1Lsyf1Q2IfEvE=;
 b=ZcEbXKQLbwkQsuwCydEzwQ7Msbp278j91RXori530UXhVKgq2xxSaPZKEa9cQXpa/v
 Hc2R8Ag0SesaRw0RGi3jGmwCZWu7c+fPXMEn/AKl2CqSonv1jatBu7EBOCVbkjihidkS
 VhdBmoo7cXlZXKyYrW32PJIuLbpoxCSZZclXOAISl+CciXmY86aKo9P3FXTa5xv8228+
 w22irTIFmbKz7444BsDECJLBGVxSJVNg6fVrFAtrPh8qd42e1AEKGgF31VyiNPTodd2l
 R+oVK6NZeV/8i3QAicsjLf7pVhZwzXe6qHENJ46B2faAawgrSmwMz6CdV9loxRcR+DW6
 vqWw==
X-Gm-Message-State: APjAAAWcF/evBP8yaK5Auls1Yrx8dYld1fElkAy0HC5ChLoXNCeSH6Dg
 PzAPCJ3czgqEkVZM9C56mCA15DE1wZs=
X-Google-Smtp-Source: APXvYqx2oFlzChk85ktwakhh00kEaZrWwtlbaBRMO8xNrjpjlFzclT0TOyAeqLqJbf4zR46X4Z5jow==
X-Received: by 2002:a17:902:467:: with SMTP id
 94mr34780209ple.267.1580887906493; 
 Tue, 04 Feb 2020 23:31:46 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id d24sm28851044pfq.75.2020.02.04.23.31.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:31:45 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 128392025730CB; Wed,  5 Feb 2020 16:31:44 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v3 26/26] um: fix clone flags to be familar with valgrind
Date: Wed,  5 Feb 2020 16:30:35 +0900
Message-Id: <b3072caaef01f2cef5f34bc012e066826798500c.1580882335.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1580882335.git.thehajime@gmail.com>
References: <cover.1580882335.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233147_130823_455E70BB 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Valgrind reports the following error with UML when ubd driver is
compiled in.

==29588== Unsupported clone() flags: 0x500
==29588==
==29588== The only supported clone() uses are:
==29588==  - via a threads library (LinuxThreads or NPTL)
==29588==  - via the implementation of fork or vfork

Adding CLONE_FS flags silences this issue.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 arch/um/drivers/ubd_user.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/um/drivers/ubd_user.c b/arch/um/drivers/ubd_user.c
index a1afe414ce48..fabb50e91c37 100644
--- a/arch/um/drivers/ubd_user.c
+++ b/arch/um/drivers/ubd_user.c
@@ -47,7 +47,8 @@ int start_io_thread(unsigned long sp, int *fd_out)
 		goto out_close;
 	}
 
-	pid = clone(io_thread, (void *) sp, CLONE_FILES | CLONE_VM, NULL);
+	pid = clone(io_thread, (void *) sp,
+		    CLONE_FILES | CLONE_VM | CLONE_FS, NULL);
 	if(pid < 0){
 		err = -errno;
 		printk("start_io_thread - clone failed : errno = %d\n", errno);
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
