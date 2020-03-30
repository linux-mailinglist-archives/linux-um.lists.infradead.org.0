Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D16E197EF3
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1UXK2AUhcuC+ta1ltwfLubRtRnJ5z0HLkeWYXoa6Jw=; b=Gxn0dmV4qCA0TF
	gJfMDBg/rQ2LjoNXo51RyEqOZFYj5azbAAUqAn2XUWYY/EeSgug2WNMl1nNe3KxdwbhaOuWeBDBNV
	/aL8ZfbO16hMQMykQCCFO7s747A30D9TG4AyHPmNge5kauKvtYZU0ragSw/esnODxe2VJ+/zwjtDA
	wpKMDUEBm0qIiIinDQlGNpm7b7oMt8223chJNItGR+hDtUfeybw3LAtda9k7bra5tii4ji1FwpwL+
	aRtBR4bmYJWntMQvu0eJpcodXQ0TW5i/wRJe8PrA5dFlsvGOtvQFUQiVpYdB7RMnBF2mdOpYCRKO/
	l6MQ4oR1w2QxhQTLcFqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvjY-0005Bm-4c; Mon, 30 Mar 2020 14:49:48 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvjV-0005B2-Sw
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:49:47 +0000
Received: by mail-pj1-x1044.google.com with SMTP id fh8so2570152pjb.5
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BE2CIeYLuvmQLbPTA0A8Oy0mfYI7Ki1Lsyf1Q2IfEvE=;
 b=fM5YmBSUpVhk2D3kZFLo43ShLvBtqFZuD9H6HiI7nyNSnDfqHq24n18WHy7NSezkAK
 mYdmPYDizB1X85i83HT5JqBOZFJNSa/I6tdyGvzXgqescPXlj4qNZHLORdpg9x6rGy/V
 P9XyFO0hv5gCGVxeeFe/YslE0TNYh92panQ2II13Q+atUdCZ3K8ppsh0F3dCFxgCKtHn
 Tmc5BdmaPeizdvg3UScNGCFspqY+9uMJ+jmhc8GQQN2rHo306MAdlbHjMgVjIPU4Zg24
 k/qjYfBNGjyyYKrC/fMf0HStp2k+6T3gpkeInrsRzclCfvsN5XuGpmtKBH/p2rBvrVGS
 KdKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BE2CIeYLuvmQLbPTA0A8Oy0mfYI7Ki1Lsyf1Q2IfEvE=;
 b=iDe2MNxjvieCOQVzKdw2iJqeOpC1E7SB58Z8xuxLlxGEkPn+QFm4L/8JaYE0o2G7Ld
 divEFSZ1AEHLDAZXTfvU+5KTeTRpfKa4M4223lemD6kiAHCmuoOf0cLqsQjgu8bRYLzo
 MNV3zDsqEc7daEHF50wYQZ4WCsieQeEGPa/eEHLXiGundBIq7u/oD56bgNdxAYiaImxj
 2PM7Dw21xThZb6mdtTtl65YQgZf1xNznCqv80qmpGc7HFlXXJK+cw5X4usg1MiIi3MXe
 nU7sNcsSvGgA8DAgq3VbKeteULUiVNFLYRz+GjNcCATxAe1ok1UsMjzW3TvTkI5GNyV3
 6pdA==
X-Gm-Message-State: ANhLgQ188BNKqNTWoUaFOuPu/Yk0v0lygCX1353DzfqNR9v4fbNNZwgN
 YVfuJEiyAUwsUDlt+3p4VlI=
X-Google-Smtp-Source: ADFU+vtByNg2KagPD0ozfZL5ly8dh5icC2xyEJ7dF1U47aZpMsjWzNupjMsttHEKhTzqbd3vMkVfAQ==
X-Received: by 2002:a17:90b:1b05:: with SMTP id
 nu5mr16258384pjb.110.1585579785301; 
 Mon, 30 Mar 2020 07:49:45 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id k189sm9755377pgc.24.2020.03.30.07.49.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:49:44 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 3141B202804F59; Mon, 30 Mar 2020 23:49:43 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 25/25] um: fix clone flags to be familiar with valgrind
Date: Mon, 30 Mar 2020 23:45:57 +0900
Message-Id: <59ed4e23efa7abc9c7d52e6b5fb31fb8ce795c5c.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074945_933888_FE41778C 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
