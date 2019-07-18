Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51E56C414
	for <lists+linux-um@lfdr.de>; Thu, 18 Jul 2019 03:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NfCVkRyUdrkd76uo397zCJ8GhYRROPWooEA2uTIHVe0=; b=ECMh1xyxuLIvYX
	wt9YTsiAcRsy3KF8rzZlddE15jZ0AD1iM5Af5fJ6sRsAKEFFdm2u0xGHJ2+Hb58QphihRJFaK8wzd
	/O6XZ1/5jjAiQt1aRyEgkEEbNlnZsYqeWvaERqVzhVyobP9x+CZa+94AKErZ7cJmhhIrm5tI1BDDb
	YC6addWTxs8c5kntrQ4uaZp9RVcSxzv2id3eVnXHY7oaLdIyBrjg/Cpe/y8fkwoUYzK5kRN5wxr2V
	4DMyqvUVj1s//DcE2UJQ9CST/aq4EMUsLUSjH09mIXmaYEFXfSUNpt4JU0amF2I13w7V6U41SYXyJ
	wiVLYE2qqOix8fA0Eyjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnv7F-0000Pa-3c; Thu, 18 Jul 2019 01:21:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnv7B-0000PA-Tu
 for linux-um@lists.infradead.org; Thu, 18 Jul 2019 01:21:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id s1so5725344pgr.2
 for <linux-um@lists.infradead.org>; Wed, 17 Jul 2019 18:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=UpZmj+TfLqIG1/P5vIqhgz5qoj21XZgNJ95JeFC7I20=;
 b=OWQ4lEQMxWEQoPaOZDI5n5MVo2Goh3TKkXVtl1o+AkKxzTfJRxY0n62n9/b22TIASs
 Ih7VAedJk/z+o1yDpo8z9plzPKZcuYWnU6DeR1aEJ3kCZQNTr2M1absxJB2yAVTU006O
 wDYWz2hUUMKhkwPLXgNH6+ExV0Dhw8lZmDhs5wQCW40SCK/P/CkvqXZP90rW8MHcIOMB
 hZr9Sa8GTWo+I6MmOhUk4jjuZPrKZEsixkG3CH5yUTeAKBafyVTpN8yQgMHYJyEJfnjw
 opbKXCGVqLpeQccwZVvuKepCYZmXpLujqhZR1052N14Y5kINSEJvywFUcfnef/2rgkoY
 /MEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=UpZmj+TfLqIG1/P5vIqhgz5qoj21XZgNJ95JeFC7I20=;
 b=cn+rFX3NxhZOcpNX3RklrfFvrXIyTDa03gVoTJnFaX20D39QuaCTC45WkDSf64ovjs
 AXX9NoHyLab9vuAbzbZxu9JS01Cx/bHh2fZ8ZSabZE2ejznhaOWNgI8V9+7TJRYRbBQs
 4N7KF30q4Us2oxfU7H4agIadEKQSjxbQ8lGnfI20r4K2m7rxNiDij1AB+W9QBv/nkZYi
 IyhmmglPKXNuTjeSDDjbbh5HDrExiv80JbGITtm4dSfJt3BdlBl2WQos7NQzh83x2kCT
 Tcz9aqAOo/yePaOCj8r93u7kqfcAasPFwRgxgdbrClpYaVVgnkATo42ozNyc7rncfTu8
 pxdQ==
X-Gm-Message-State: APjAAAUhHJrxUWDherpjCgjHpkHPSzKEVi1BOX/1OKR/UvBUoOW2onVD
 Yv+IUx6z3TSYOOtmYTYIfEhTq4AfKQr3yA==
X-Google-Smtp-Source: APXvYqzStLKqM14uM395j5rLznK/7Fsim1jCe+jRsqxUhAxj9i1mb9uZCVELm6fCBrkGxvZ5unMrYQ==
X-Received: by 2002:a17:90a:898e:: with SMTP id
 v14mr47831835pjn.119.1563412901782; 
 Wed, 17 Jul 2019 18:21:41 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id m6sm25058668pfb.151.2019.07.17.18.21.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 18:21:41 -0700 (PDT)
Date: Wed, 17 Jul 2019 18:21:36 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: UML GCOV fails to produce *.gcda files
Message-ID: <20190718012136.GA135592@google.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_182145_993755_53DBAF8A 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -11.9 (-----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-11.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 3.8 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Darya Verzhbinsky <daryaver@google.com>,
 Daniel Latypov <dlatypov@google.com>, Maria Ignacio <mariaignacio@google.com>,
 linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Following the instructions here[1], we have been trying to get gcov
support working under UML. However, despite the fact that it seems to be
configured correctly (I see it producing *.gcno files), it does not
appear to be producing *.gcda files (or *.da) files when we run the UML
kernel.

Sor far we have mostly been working with v5.2.

Running make with KBUILD_VERBOSE=1 we see that gcc is being called with
the appropriate gcov flags: -fprofile-arcs -ftest-coverage

As I mentioned above, we see that *.gcno files are being produced.

We also see that libgcov is being linked into the linux binary:

readelf -s linux | grep __gcov_init
 29312: 000000006041d070   200 FUNC    GLOBAL HIDDEN    13 __gcov_init

To ensure that __gcov_flush() is actually being called, we manually
inserted it in the kernel's init (just to see if we get some coverage
information). I copied the patch at the end of this email.

And yet we still see no *.gcda files being generated.

It looks like it has been a very long time since anyone has touched the
UML gcov code, so I have started looking into building an older version
of the kernel where it might have worked, but have not gotten any useful
results back from that yet.

We are aware that gcov has also been implemented for other architectures
under separate Kconfigs (CONFIG_GCOV_KERNEL and friends); however, we
are very keen to get gcov working with UML (where we don't have to
scrape sysfs for the *.gcda files) as we are running tests in UML and it
would be much easier to get coverage for these tests on UML as well.

Hope someone can help!

Thanks!

[1]http://user-mode-linux.sourceforge.net/old/gprof.html

Our .config can be generated by running `make ARCH=um olddefconfig` on
the following defconfig:

CONFIG_DEBUG_INFO=y
CONFIG_DEBUG_KERNEL=y
CONFIG_GCOV=y

The __gcov_flush() patch mentioned above is here:

From e021b659b51670bc0a063b6817c31d30ab809be6 Mon Sep 17 00:00:00 2001
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 17 Jul 2019 18:11:29 -0700
Subject: [PATCH v1] DO NOT MERGE: added __gcov_flush() to init to ensure it is
 called

---
 init/main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/init/main.c b/init/main.c
index 66a196c5e4c3c..70d7a6cb9ea0f 100644
--- a/init/main.c
+++ b/init/main.c
@@ -1080,10 +1080,14 @@ void __weak free_initmem(void)
 	free_initmem_default(POISON_FREE_INITMEM);
 }
 
+extern void __gcov_flush(void);
+
 static int __ref kernel_init(void *unused)
 {
 	int ret;
 
+	__gcov_flush();
+	printk("__gcov_flush\n");
 	kernel_init_freeable();
 	/* need to finish all async __init code before freeing the memory */
 	async_synchronize_full();
-- 
2.22.0.510.g264f2c817a-goog

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
