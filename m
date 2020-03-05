Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7143817AE50
	for <lists+linux-um@lfdr.de>; Thu,  5 Mar 2020 19:39:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mpTp4KspiCqshr3S4Nhb8s5CT+UashZclO8dkJ4mgEs=; b=lRKFPQiKET8h6t
	FfYn+IxzK33Sp7AEytSlObgJFFoQS//tMviDdkYW2BpwXGRABhRSPKUuVidNRoWIAbTXvRz+mqmsD
	w+zLOiqDOFrnNnQDBsbHvPF4w5keaTpHO9eQPpj1P3DgpUMtU/OqGgibPSsTf6isWLXa2elbGLJ/I
	6A87miBMYWWP+ImfZ1wF6HJElw8ek7bdl18lsxHoNuhpVqnQ6n9eK/yG+dBJzBNbxIOLkETlJpL5K
	mm2ou/KcrB2pjpMmjKrytbJi6+1xiJRCm+KgRoJ3f3XiGRO2g7msN9i72VWYg8jCuHbXx1zFi0lFu
	boMC99MkFmIuC1F5sPFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9vPW-0000Rl-9m; Thu, 05 Mar 2020 18:39:54 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9vPT-0000QJ-0J
 for linux-um@lists.infradead.org; Thu, 05 Mar 2020 18:39:52 +0000
Received: by mail-pf1-x44a.google.com with SMTP id f193so4202183pfa.22
 for <linux-um@lists.infradead.org>; Thu, 05 Mar 2020 10:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=bSM9inO0XUL/aHKZ8mCFI+boS4Y8DDilOWOqau7zZY8=;
 b=ZinfgwHbZuJEjlZdJ5XfivpxaMQunf4Z2GS/REK7ruL5Ow6SQc1WS12g1Oq5tjGbxy
 ghayY9XcSjRpnw/KdgHy+mGTaS8fBm/wQrrF7036yv+jHAuw4ondSOGHaWQ9Lb3MXoOZ
 WHssGk0Qqo4NrvpcwNflQsMcs2sKv4DgWWhTyTKsuDTOGl4/2JwxngqnlAsWzZtIq4Ti
 sFi4J7wH+8fAGcfs5mSH4rKl/UFXXK17tDmvc79NKlqfp1fGbMkJ6KX3gyXFYKqmjkwV
 cNWYyjOyPNI44f+7X8zfUgCGruQQG6qu1AnoCFu/BPM2llVJyntNLdf84JoeS5GvLc7m
 N+FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=bSM9inO0XUL/aHKZ8mCFI+boS4Y8DDilOWOqau7zZY8=;
 b=sQe1ZpGP7EDrmI5IwoUHmMyHydiJrcJ5w3YUQRUMHnSIyrJr8Ed23XxkAWlpK4cFMk
 Lw6oYD8cBOkGBQIuX/mZetAkMuTYgc1sqjyHuyNRQfCIbsI7H6/l9+vUmDEGNzDxnUlK
 D7hA2+d2bLcjZgSxD2W/em/0ODewcHssw55ZfQCasCE9Wicv7p0QOJyuZO+bFDMcHfuQ
 w4sAA7tf0fy3HMVMKqDx5kVFbq3hyL17wCcl2vp4HrSuHFCPYS9dpwK9sgrGIz3o/4ue
 twjYHHCDuKvss12xfoBdPeVPztcSj6hDbpqhbrMQLHc5FAq7o1Ax/AEUHSMryGBs/QZM
 zMfA==
X-Gm-Message-State: ANhLgQ0NDTXmMN2Bs4+rmCxoTRzgHky0vXZF3oMsw0y1vhyby14sOLa2
 L4wgVB6zTqzlD7QH4GAt9Fqbf9YzyoLeqA==
X-Google-Smtp-Source: ADFU+vsH7E1MakHjDstA3ac6tbwpzfPrFpw4zUvLo5VvbNd2KgofyisUnI6Yo+XyCsEwJCdKcrKamuE6XghvTQ==
X-Received: by 2002:a17:90a:33c2:: with SMTP id
 n60mr9530807pjb.177.1583433586226; 
 Thu, 05 Mar 2020 10:39:46 -0800 (PST)
Date: Thu,  5 Mar 2020 10:39:39 -0800
Message-Id: <20200305183939.256241-1-davidgow@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH] um: Fix overlapping ELF segments when statically linked
From: David Gow <davidgow@google.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>, 
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_103951_056889_664944F9 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-um@lists.infradead.org, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>,
 trishalfonso@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

When statically linked, the .text section in UML kernels is not page
aligned, causing it to share a page with the executable headers. As
.text and the executable headers have different permissions, this causes
the kernel to wish to map the same page twice (once as headers with r--
permissions, once as .text with r-x permissions), causing a segfault,
and a nasty message printed to the host kernel's dmesg:

"Uhuuh, elf segment at 0000000060000000 requested but the memory is
mapped already"

By aligning the .text to a page boundary (as in the dynamically linked
version in dyn.lds.S), there is no such overlap, and the kernel runs
correctly.

Signed-off-by: David Gow <davidgow@google.com>
---
I'm not 100% sure what triggered this -- possibly a change to the host
kernel on my machine -- as I'm able to reproduce the issue as far back
as in 4.4, but it seems to be reproducible easily on my machine with
defconfig + CONFIG_STATIC_LINK=y.


 arch/um/kernel/uml.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/kernel/uml.lds.S b/arch/um/kernel/uml.lds.S
index 9f21443be2c9..3b6dab3d4501 100644
--- a/arch/um/kernel/uml.lds.S
+++ b/arch/um/kernel/uml.lds.S
@@ -19,10 +19,10 @@ SECTIONS
   __binary_start = START;
 
   . = START + SIZEOF_HEADERS;
+  . = ALIGN(PAGE_SIZE);
 
   _text = .;
   INIT_TEXT_SECTION(0)
-  . = ALIGN(PAGE_SIZE);
 
   .text      :
   {
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
