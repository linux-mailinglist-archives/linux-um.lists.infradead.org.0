Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA75E1F4BDC
	for <lists+linux-um@lfdr.de>; Wed, 10 Jun 2020 05:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2k9zKC7DSgSv9LqEftk+vTucsP0FHzNpP0HLW48HoZc=; b=gZ/yC+3MuQoHO5
	D53lFysqF1pWRGUCwyo7nMZxp4sah6sSdu6wMnULvZilmWAJmyAiU2fE4AEc6oJk2xkORxdxnw1q/
	0FX9yDAmAYylCIpTkLRTSYMDYrZfbwkiaYETbyh93d5bi/Ea+6sbiaMxIhQpRAvOC/S4P55J03MVf
	P3tyL5D86pRLaXEPvqmDZu7V29p5HzI51aaFY19gCrGZiPnF2ee0Coq5n5F7y0NtyQZiaF+Y36jU8
	w03ucNJwO3T+WV/EWFqG/HEJ/hv4eWKIdy1WtPcbLCqOnCK6IkZeN3mKKapVnibQR991KjG10cqk0
	jo0VJCNAVKEMtZN7oOUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jireH-0006Hp-Bf; Wed, 10 Jun 2020 03:43:33 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jireE-0006HR-C7
 for linux-um@lists.infradead.org; Wed, 10 Jun 2020 03:43:31 +0000
Received: by mail-qv1-xf42.google.com with SMTP id p15so426331qvr.9
 for <linux-um@lists.infradead.org>; Tue, 09 Jun 2020 20:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=qm+oX+JQzV56QUtwpMbMoKGf+j/HM4yHTB8cqsstqTg=;
 b=bpUMlBXZEXALee+IT7Ke3lzVjM9eFpSHKJPQ7jWtW1ZCSh9fYvzftShwYgAZMP4+gm
 72QVGyOnorRDtEdS2pC6xNakGk4m/D1H73P8jO8cJKQslHxveHNTxoqEdaY2E81TTbNF
 MdB2DWbL/Xctu4oLqLLHa4gjPJT/01rh3q24cPTZuzh5mRamlh9Mmkvn/QewFY1MYRjS
 PgA2Yk31L5u6bW6HniD3sLa+UE1FnkYNrnLJVFYZ2gq+mOaAXsjbnwvDF71CwSY70hzl
 Bx0o9ZGqFMVqpNrM6PskLgIh5uDZ5I6UJW2+ZF4DEP8uXqUMK3P7mqz/efZEufNPteWJ
 Rsdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=qm+oX+JQzV56QUtwpMbMoKGf+j/HM4yHTB8cqsstqTg=;
 b=XUhbW3oKHbrYV22xAgA67LnvaMV1Xui/6tj/xu7ITSleS4gh+YkAi4RQ6X3cui6Ed7
 BqMLvgUaCPzWBR15JNUp8SLco+U9OXHoHGMSb7/wUjPO8tul13flKyW1aR91BMAaeSzG
 2skKs6/FyYVD3VVQOHoGizF1i4nsc/pNXG2QC/IDoSAaX50dSIMpZsWtAMyjJTfpVLbf
 O++KUmnUHjtXpivukmgYS80KoV5q2dueTwJx7DDsm0w0wUze624jnwvkC4jw0sv1leCF
 Bx7RfgWue7UDmGanAK9fJKKQRTAqNMlBC6SgBd4/33+OzT48MVd/txb3WA9dsgN+C4Gu
 w4DA==
X-Gm-Message-State: AOAM530GjBgyXAnLQkHiIwKvx6zvlSm+KW2NS0Wh+oQDniNmI0P5gcvD
 URU8RnaK/CM+xMFWlDD96zJC5Hxto3/lzA==
X-Google-Smtp-Source: ABdhPJxTJl/mAPYn1Zj+USIzItK0bT9+uv/88xJzEVVK2p+GeSYUecA0nOyh7z47J+f44eSXz1U2GA==
X-Received: by 2002:ad4:4725:: with SMTP id l5mr1394050qvz.120.1591760605788; 
 Tue, 09 Jun 2020 20:43:25 -0700 (PDT)
Received: from linux.home ([2604:2000:1344:41d:29ac:7979:1e2e:c67b])
 by smtp.googlemail.com with ESMTPSA id
 p13sm11195403qke.135.2020.06.09.20.43.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 20:43:25 -0700 (PDT)
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
Date: Tue,  9 Jun 2020 23:43:00 -0400
Message-Id: <20200610034314.9290-1-gaurav1086@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_204330_414280_2E2CB853 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gaurav1086[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gaurav1086[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
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

Signed-off-by: Gaurav Singh <gaurav1086@gmail.com>

The bpf_prog is being checked for !NULL after uml_kmalloc but
later its used directly for example: 
bpf_prog->filter = bpf and is also later returned upon success.
Fix this, do a NULL check and return right away.

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
