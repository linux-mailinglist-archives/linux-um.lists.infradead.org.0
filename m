Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A201F6017
	for <lists+linux-um@lfdr.de>; Thu, 11 Jun 2020 04:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tzgAQJwyY9i0RmbWPjRHvoBX/Cz+mp1CDj2ucGUigV8=; b=MWj3J3JtqNmi9q
	XMHljE3JIYamctCDQi8Yi8CVHzONA70Jkw4v5pBjhro19cmnAN2KYPobK5YqswyUQMs7Omoh1JEwb
	HOM/ivdwbgb5ZVMOZdq/YHhIERv4mOxkdh7jEHd02+9IeJXV5IeXilxc24a8AAfhIDQFuZYkXTy6l
	mm3znJqs+Og75QhsJdxSAOs7hBDzAT170XAjGLLCinw9lzF23bk8m+tv+YKhVdqnPAV52WkCFBi5w
	6gF3hG8OctDEYqX4jF31sW8o3kr8lnzCWY8at5Dgctbvf5ET9N6qqkCWnVaqVhD8Xk43k0YsJzSJN
	8zFJXq5mBc0he1PtCQNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjD9P-0008FR-Vc; Thu, 11 Jun 2020 02:41:07 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjD9N-0008Dw-P1
 for linux-um@lists.infradead.org; Thu, 11 Jun 2020 02:41:07 +0000
Received: by mail-qt1-x844.google.com with SMTP id i16so3540289qtr.7
 for <linux-um@lists.infradead.org>; Wed, 10 Jun 2020 19:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=wTiC49GnZ5ZEBNWsG/S2XbISpIYn0F/SWZwBLcW/d2A=;
 b=mLJu4gXzzMsz/IBbFLkr4QLmm3M3YXOfBvk576ubygCcnlm8I9VMZUgkm2nTfQ9ZSD
 ONnGYD4+rO7gGeX7gzYNjf9AJlKUREeRHxupmKvL6xy8G2MJo5+MSg2AJJvHm7PBeNzz
 IeQeL7DREZbwLWShJNRz7GZPUGTpCxrGwKej+sZXZXbZzUOIMtY6mPW47SP4TqXFc+4C
 L6YgVDRl4nKgQw+VztXXtmdyrCv/RRaLDrzANJNs4rx5/Pj2skxlQfTUAX+QTCXmC2IT
 YOf1XhQG2bPB6GmnYDQ6WwVJ/hLFCD2lVJykV0mYtGmjUNfZY24OwGBVQ2l1DwmoeUr5
 bdCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=wTiC49GnZ5ZEBNWsG/S2XbISpIYn0F/SWZwBLcW/d2A=;
 b=kQlCITTQfuzPRecHF2lNEKJhLsyfhcqbmqi+BfY6FoH+yrlM4sHQVFuX/KcVG+zijJ
 3l6LEPrZ0cncaEd07VVPrOL+PaC4MQ5lFOvvnQ+iJ//jlxzp5G9xY6NyFVEgKszZQTNK
 mx1UcviE/j09NrckFx9ObRMZa++tftYQqua+ITGa1TC6DTn0cRMMLv5fJqxlVrJDa52E
 /0uEC5AjAw06K96JV0GI2ts4bXIEAIm4QT2C5b8KwwkvNjUjemCanq+lw9yJm981vCFq
 9ZDakAVlK2feubDxJNQx2SlOG3PcD+vPqfslcYgS9wliA7+tstwyTqja2Ws1sYYUW98D
 YOBA==
X-Gm-Message-State: AOAM533ez8q7GpwHo9AEAOmX/4LIu/TY8XGRUZdQ+sYaAlJFmZmzmc/1
 iibtKDkfLDd4DBrml4yF0ys=
X-Google-Smtp-Source: ABdhPJwkRdDdS5KBsTGSggDXQTHMfO9ECWm+ZUkwd4fu9vppbYNA0a5kdhFJ44GPc6tARd98iiOkiw==
X-Received: by 2002:ac8:6bc6:: with SMTP id b6mr6537003qtt.101.1591843264037; 
 Wed, 10 Jun 2020 19:41:04 -0700 (PDT)
Received: from linux.home ([2604:2000:1344:41d:61ac:316c:1207:3fa6])
 by smtp.googlemail.com with ESMTPSA id z194sm1265023qkb.73.2020.06.10.19.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 19:41:03 -0700 (PDT)
From: Gaurav Singh <gaurav1086@gmail.com>
To: gaurav1086@gmail.com, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>,
 Alex Dewar <alex.dewar@gmx.co.uk>,
 linux-um@lists.infradead.org (open list:USER-MODE LINUX (UML)),
 linux-kernel@vger.kernel.org (open list),
 netdev@vger.kernel.org (open list:BPF (Safe dynamic programs and tools)),
 bpf@vger.kernel.org (open list:BPF (Safe dynamic programs and tools))
Subject: [PATCH] Fix null pointer dereference in vector_user_bpf
Date: Wed, 10 Jun 2020 22:40:36 -0400
Message-Id: <20200611024053.10429-1-gaurav1086@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_194105_832277_B8507B7C 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gaurav1086[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gaurav1086[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The bpf_prog is being checked for !NULL after uml_kmalloc but
later its used directly for example:
bpf_prog->filter = bpf and is also later returned upon success.
Fix this, do a NULL check and return right away.

Signed-off-by: Gaurav Singh <gaurav1086@gmail.com>
---
 arch/um/drivers/vector_user.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index aa28e9eecb7b..71d043ae306f 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -730,10 +730,12 @@ void *uml_vector_user_bpf(char *filename)
 		return false;
 	}
 	bpf_prog = uml_kmalloc(sizeof(struct sock_fprog), UM_GFP_KERNEL);
-	if (bpf_prog != NULL) {
-		bpf_prog->len = statbuf.st_size / sizeof(struct sock_filter);
-		bpf_prog->filter = NULL;
+	if (bpf_prog == NULL) {
+		printk(KERN_ERR "Failed to allocate bpf prog buffer");
+		return NULL;
 	}
+	bpf_prog->len = statbuf.st_size / sizeof(struct sock_filter);
+	bpf_prog->filter = NULL;
 	ffd = os_open_file(filename, of_read(OPENFLAGS()), 0);
 	if (ffd < 0) {
 		printk(KERN_ERR "Error %d opening bpf file", -errno);
-- 
2.17.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
