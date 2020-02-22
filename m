Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EE61690B0
	for <lists+linux-um@lfdr.de>; Sat, 22 Feb 2020 18:20:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NGcr/5m0tANZgm+mU8HBhlAjmqJsJdg5abOSWW3U1GQ=; b=hcX
	aCZ+7nolHEHWMrmXs7J35erUa4NVkY5r+BUDBiWQK8Lrnq5hfHhICwemLl3gNw/z41Wk5Jg6COhfw
	sxGt4YVgWxQlUrMhVqqjcXlvovRuPJGXyw/9nxZKlC+Vom8g+p23UZRGjEsSkJvJBshffJLZertAb
	pL+s/q08PLOP++pFV1Pxl0i8eRwT4BR9GB88J8GpX26WG+8EIr2ZGEEKqsH11VGErb/vlvCQQrYSr
	zfDWjcY7ExIbX7NnqJpw5sBz1J/J/E7Nq9H+4b33hyNCRizb3ECZz887iCH+V7qyhPSMJOKhQJ+Jp
	8lOc6TKSwY9gLPjviW13JRo+7XSXktw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5YRh-0005aw-G2; Sat, 22 Feb 2020 17:20:05 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5YRd-0004uA-TG
 for linux-um@lists.infradead.org; Sat, 22 Feb 2020 17:20:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id 70so2675783pgf.8
 for <linux-um@lists.infradead.org>; Sat, 22 Feb 2020 09:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pBlnEnGsMstGVyIAKqUSLHLBYoQgpr7wBNrwAms26Yo=;
 b=N1umw+dflj+4ygktxCh4x4Xar6LUvIUmf87d4s89h/nqrxANA7zQDFBY8qnXkOrEyx
 CQXxj4ALPcj9n2jU4lqCLhSdIaabPtBMeOrc4ROQKyQz45q+eoMd6ZGd86Jc1Y3bKEbM
 ofQ6l0SsWVo8pvRkgKXPKjEA2O5VFuCojotM/dlJkIoLJtkN2EEyR/qFVoizEXpolbpP
 crUwRoOWuqASC2bDRyLUELkObvduTrGL36P8kvwhyVR17d9N2fW+hTJRk/g4SX1xGN0/
 oVz2HIGXviL3O0M1Bvn3V8j4wkaftP7mhIXa1xUKMKqlA9gJ2S9gpIbQBpNGAac/I6k7
 3bMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pBlnEnGsMstGVyIAKqUSLHLBYoQgpr7wBNrwAms26Yo=;
 b=ACXcMcAzVYkO66IZpSORXxAT7NTDzaZ9ktOQbWXhXyYdgfQGL6Ug3aN66d9OS88XZ1
 IZlxx/uHU9r0azK6ogWeJQqJkdBwcrnHZswnFudww3/MqagXiA1F0cB/NPswRUEugG7P
 SzkiRQHvR9CCuzko+fHA9WfbOOilq2qmLhWhX4y7WXVRFk7pHMRiFr4s2xzPBVJr/Yg6
 C/IyCbz7/Eu1pdPDukG45aIDshdh7EQvqqyQIwHSr3N4tILiSdLETVF43G/p0NEVWjkZ
 3md50ArWqtjOXLqka0/IOZsF1mDgEfTBvCVA6yc7D85FbdnsrTVKk4hlNp0p89AT10Rp
 JVhg==
X-Gm-Message-State: APjAAAWZXbFhg2aDB5ne5W2vXIxsu9J/gUeItt9TCzdTYGFZVsrLzvpI
 sGf3Ea5AUr2GJ/TXdI95mKI=
X-Google-Smtp-Source: APXvYqyMMrZF1/Re4YpunwWENhyrHlPdkj4bvOMtyz7rrMFPvXnZsgu1uZHAceyS/8F+rJM/rTosGw==
X-Received: by 2002:a63:da49:: with SMTP id l9mr44453319pgj.125.1582392000256; 
 Sat, 22 Feb 2020 09:20:00 -0800 (PST)
Received: from localhost.localdomain (180-177-0-29.dynamic.kbronet.com.tw.
 [180.177.0.29])
 by smtp.googlemail.com with ESMTPSA id i27sm6501077pgn.76.2020.02.22.09.19.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 22 Feb 2020 09:19:59 -0800 (PST)
From: Manbing <manbing3@gmail.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH] Documentation: update UserModeLinux-HOWTO.txt
Date: Sun, 23 Feb 2020 01:19:27 +0800
Message-Id: <1582391968-3960-1-git-send-email-manbing3@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_092001_993007_F8A865F1 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [manbing3[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [manbing3[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-um@lists.infradead.org, Manbing <manbing3@gmail.com>,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Original content is obsolete. Which is based on kernel 2.4.0-prerelease.
Updating content according to kernel 5.5.1.

Signed-off-by: Manbing <manbing3@gmail.com>
---
 Documentation/virt/uml/UserModeLinux-HOWTO.txt | 42 +++++---------------------
 1 file changed, 8 insertions(+), 34 deletions(-)

diff --git a/Documentation/virt/uml/UserModeLinux-HOWTO.txt b/Documentation/virt/uml/UserModeLinux-HOWTO.txt
index 87b80f5..08ee28d 100644
--- a/Documentation/virt/uml/UserModeLinux-HOWTO.txt
+++ b/Documentation/virt/uml/UserModeLinux-HOWTO.txt
@@ -1,6 +1,6 @@
   User Mode Linux HOWTO
   User Mode Linux Core Team
-  Mon Nov 18 14:16:16 EST 2002
+  Mon Feb 10 08:27:24 EST 2020
 
   This document describes the use and abuse of Jeff Dike's User Mode
   Linux: a port of the Linux kernel as a normal Intel Linux process.
@@ -215,26 +215,17 @@
 
 
   Compiling the user mode kernel is just like compiling any other
-  kernel.  Let's go through the steps, using 2.4.0-prerelease (current
+  kernel.  Let's go through the steps, using 5.5.1 (current
   as of this writing) as an example:
 
 
-  1. Download the latest UML patch from
-
-     the download page <http://user-mode-linux.sourceforge.net/
-
-     In this example, the file is uml-patch-2.4.0-prerelease.bz2.
-
-
-  2. Download the matching kernel from your favourite kernel mirror,
+  1. Download the matching kernel from your favourite kernel mirror,
      such as:
 
-     ftp://ftp.ca.kernel.org/pub/kernel/v2.4/linux-2.4.0-prerelease.tar.bz2
-     <ftp://ftp.ca.kernel.org/pub/kernel/v2.4/linux-2.4.0-prerelease.tar.bz2>
-     .
+     wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.5.1.tar.xz
 
 
-  3. Make a directory and unpack the kernel into it.
+  2. Make a directory and unpack the kernel into it.
 
 
 
@@ -255,31 +246,14 @@
 
 
        host%
-       tar -xzvf linux-2.4.0-prerelease.tar.bz2
-
-
-
-
-
-
-  4. Apply the patch using
-
-
-
-       host%
-       cd ~/uml/linux
-
-
-
-       host%
-       bzcat uml-patch-2.4.0-prerelease.bz2 | patch -p1
+       tar xvf linux-5.5.1.tar.xz
 
 
 
 
 
 
-  5. Run your favorite config; `make xconfig ARCH=um' is the most
+  3. Run your favorite config; `make xconfig ARCH=um' is the most
      convenient.  `make config ARCH=um' and 'make menuconfig ARCH=um'
      will work as well.  The defaults will give you a useful kernel.  If
      you want to change something, go ahead, it probably won't hurt
@@ -293,7 +267,7 @@
 
 
 
-  6. Finish with `make linux ARCH=um': the result is a file called
+  4. Finish with `make linux ARCH=um': the result is a file called
      `linux' in the top directory of your source tree.
 
   Make sure that you don't build this kernel in /usr/src/linux.  On some
-- 
2.7.4


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
