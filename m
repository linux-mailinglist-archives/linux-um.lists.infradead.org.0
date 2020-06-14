Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E51D1F8621
	for <lists+linux-um@lfdr.de>; Sun, 14 Jun 2020 03:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XQo62QbLNu2B+HW5PFSPeCcgeNccNCNDLGXA5rSCOFc=; b=YJvOlczlP6PQi+
	XtuPQr3ES728z62wNcmSPpjN6vvrTr1+hWy8YiCbIFGRGYrwOsUhdRvYeWNETx1kB1CBEZx5Puhfr
	/nSHinrrZlqoW/+mbmeWf+qtQ3OP/18d7qhnerJtH5Vy9uchSqfMf4atU9RZcWsGDonl+vhwAJ0vV
	AzqX9uxkxoS6V4kqI90AeE6Po3lSWT6w0fAnai/pfMGUxpmBai7KerVHyli7HywLSVF/a7lZeQCxX
	p37iapm2U7E7AQn7AKGQxqZHj+q4PaAOtht8jqeK0kLsl3j7mAPpmOBBkN39DsfjlDlMS9DrWWLMP
	1O4rVWVKBs1cVn7fmYsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkHJx-0006la-GP; Sun, 14 Jun 2020 01:20:25 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkHJu-0006l7-5P
 for linux-um@lists.infradead.org; Sun, 14 Jun 2020 01:20:23 +0000
Received: by mail-qk1-x742.google.com with SMTP id n11so12605871qkn.8
 for <linux-um@lists.infradead.org>; Sat, 13 Jun 2020 18:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=weNT1L1XKUjhZ/GyqfyR6sCkF+DRrUdSjJ2ej+SbbZw=;
 b=UUWwANTZUf9s6b09wIICLD5DT1wu6LnvZEZitokYHV2htO/B/xWJQS+FtpInW69ekG
 JVqvmJUXWH8Bw9o2+7Q4+FeK5o7+KsIHbkds4v2MsUTHpBkrE9fngOW2kMXrF18tOn8p
 NABJO8ZhMiWs2GCwhpu7If3MOXEYxXGJzQw6NvfhXMSlX5x0UUnOwzhy8IM+IwZDX4M1
 3bY6aN3kwRnoDcQJq3gf5IeJws3uqAoa589vSlDcWcREZIhScvHocIKwKh0qcg2WtccV
 ILJHtHVRoCuqsthHNkSaU1YBcyAhkmqq1K/1Ru8AKyXKYh8B2xIFl3T2fMXj0872XHVe
 +vpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=weNT1L1XKUjhZ/GyqfyR6sCkF+DRrUdSjJ2ej+SbbZw=;
 b=egJvo193chvE4avh8/JWRe8sLlbqhNMYoHWk8kC6U/4ydlsiCYDvCbNw7kpu2OF0AY
 rsuDx4H65ugwm8vY+pTG+Woss5DX35q9izH3AC/uvJUud2cIiaZ87H1AT7bsroIUYF58
 zbWheS5AbqMh9tynu2br9yCLfK94k7uzIO/D3h5mlZVFeHb/mSBgU1Jvc2eQ42BonGJ9
 +TVhXiYcuL90sA6t5fkg6kpGF3/AojxHcnoP941+pLQdEKlTnoK7jpf2nmseuMZphPwd
 1E3xwhjZNu5foQ4GbOF0LLHzrnvgbL3ZGapIn8BKaRjryGlsS0YqxbsgCm0SUEEcBhbI
 gqqg==
X-Gm-Message-State: AOAM530ogIZFoY71uAwbKST9pn48vcfqnAcYLNdhwOnQjA2/dkKXN9np
 rHx6a/QPOthlE2vOF+ZPVrjXwoHt2tAZOw==
X-Google-Smtp-Source: ABdhPJxWbSwqsoRLmmhzpK3JmfQ7atmha/MGg4W9VIU4e/whsX6MJrO4pV4tEXhRaKT96K+BSIQMgQ==
X-Received: by 2002:ae9:e8cc:: with SMTP id a195mr9819577qkg.408.1592097617772; 
 Sat, 13 Jun 2020 18:20:17 -0700 (PDT)
Received: from linux.home ([2604:2000:1344:41d:8024:443:2d4f:1b98])
 by smtp.googlemail.com with ESMTPSA id 124sm7966356qkm.115.2020.06.13.18.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 18:20:16 -0700 (PDT)
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
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 linux-um@lists.infradead.org (open list:USER-MODE LINUX (UML)),
 linux-kernel@vger.kernel.org (open list),
 netdev@vger.kernel.org (open list:BPF (Safe dynamic programs and tools)),
 bpf@vger.kernel.org (open list:BPF (Safe dynamic programs and tools))
Subject: [PATCH] Fix null pointer dereference in vector_user_bpf
Date: Sat, 13 Jun 2020 21:19:40 -0400
Message-Id: <20200614012001.18468-1-gaurav1086@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_182022_228765_6EE3E797 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gaurav1086[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gaurav1086[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The bpf_prog is being checked for !NULL after uml_kmalloc
but later its used directly for example: 
bpf_prog->filter = bpf and is also later returned upon
success. Fix this, do a NULL check and return right away.

Signed-off-by: Gaurav Singh <gaurav1086@gmail.com>
---
 arch/um/drivers/vector_user.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index c4a0f26b2824..0e6d6717bf73 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -789,10 +789,12 @@ void *uml_vector_user_bpf(char *filename)
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
