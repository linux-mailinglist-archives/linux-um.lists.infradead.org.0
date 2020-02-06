Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F6B15467D
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 15:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjUSmXaP81PgRnUxcVqO18aO1oF8s/lrPt4DSCTG1J4=; b=mi4hcW6AvKmvAA
	k+1BP3KrQ/aOnjga8+gjw1eH6iuggtyAMvY3qITZ3zn71+q6SckQW+rkQTY7CCYKYa/0hdPXDh5ko
	f3iSwOl7HyUCQMd2oNoT9IJYlHpMyd1nH9GwAKk8zEJTnINj+BcsVz6HOOH/DMlmyzZfXCwEjlc7R
	kd6Xu6yad9rB9vkfHM6qcitXsKV32HbaeCWRILoV3C18xC4FrX0Smdd4o8OkaKb3scd+Bk0rbqf89
	NMM/yClaf0LusTJ4IjBsPEX3ctOdNKNIPmUr59Yjij0tHJEmkyJwdemu2MEMFsDcwFJVgJzr3Pm+g
	idOX4cjq7dr8NUQx9sQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iziUG-0004L9-LG; Thu, 06 Feb 2020 14:50:36 +0000
Received: from [179.95.15.160] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iziUE-0004IT-Rf; Thu, 06 Feb 2020 14:50:34 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92.3)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1iziU6-002nKT-AN; Thu, 06 Feb 2020 15:50:26 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH v2 03/27] docs: virt: user_mode_linux.rst: update compiling
 instructions
Date: Thu,  6 Feb 2020 15:50:00 +0100
Message-Id: <b678c16fb34280d844c278b8acfb2f53124f50ab.1581000481.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1581000481.git.mchehab+huawei@kernel.org>
References: <cover.1581000481.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-doc@vger.kernel.org, linux-um@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Instead of pointing for a pre-2.4 and a seaparate patch,
update it to match current upstream, as UML was merged
a long time ago.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/virt/uml/user_mode_linux.rst | 62 ++++------------------
 1 file changed, 9 insertions(+), 53 deletions(-)

diff --git a/Documentation/virt/uml/user_mode_linux.rst b/Documentation/virt/uml/user_mode_linux.rst
index 6085d2c0f8a8..e0632d80753e 100644
--- a/Documentation/virt/uml/user_mode_linux.rst
+++ b/Documentation/virt/uml/user_mode_linux.rst
@@ -5,7 +5,7 @@ User Mode Linux HOWTO
 =====================
 
 :Author:  User Mode Linux Core Team
-:Last-updated: Mon Nov 18 14:16:16 EST 2002
+:Last-updated: Sat Jan 25 16:07:55 CET 2020
 
 This document describes the use and abuse of Jeff Dike's User Mode
 Linux: a port of the Linux kernel as a normal Intel Linux process.
@@ -223,23 +223,15 @@ Linux: a port of the Linux kernel as a normal Intel Linux process.
 
 
   Compiling the user mode kernel is just like compiling any other
-  kernel.  Let's go through the steps, using 2.4.0-prerelease (current
-  as of this writing) as an example:
+  kernel.
 
 
-  1. Download the latest UML patch from
-     the download page <http://user-mode-linux.sourceforge.net/
-
-     In this example, the file is uml-patch-2.4.0-prerelease.bz2.
-
-
-  2. Download the matching kernel from your favourite kernel mirror,
+  1. Download the latest kernel from your favourite kernel mirror,
      such as:
 
-     ftp://ftp.ca.kernel.org/pub/kernel/v2.4/linux-2.4.0-prerelease.tar.bz2
+     https://mirrors.edge.kernel.org/pub/linux/kernel/v5.x/linux-5.4.14.tar.xz
 
-
-  3. Make a directory and unpack the kernel into it::
+  2. Make a directory and unpack the kernel into it::
 
        host%
        mkdir ~/uml
@@ -248,21 +240,10 @@ Linux: a port of the Linux kernel as a normal Intel Linux process.
        cd ~/uml
 
        host%
-       tar -xzvf linux-2.4.0-prerelease.tar.bz2
+       tar xvf linux-5.4.14.tar.xz
 
 
-
-  4. Apply the patch using::
-
-       host%
-       cd ~/uml/linux
-
-       host%
-       bzcat uml-patch-2.4.0-prerelease.bz2 | patch -p1
-
-
-
-  5. Run your favorite config; ``make xconfig ARCH=um`` is the most
+  3. Run your favorite config; ``make xconfig ARCH=um`` is the most
      convenient.  ``make config ARCH=um`` and ``make menuconfig ARCH=um``
      will work as well.  The defaults will give you a useful kernel.  If
      you want to change something, go ahead, it probably won't hurt
@@ -276,34 +257,9 @@ Linux: a port of the Linux kernel as a normal Intel Linux process.
 
 
 
-  6. Finish with ``make linux ARCH=um``: the result is a file called
+  4. Finish with ``make linux ARCH=um``: the result is a file called
      ``linux`` in the top directory of your source tree.
 
-  Make sure that you don't build this kernel in /usr/src/linux.  On some
-  distributions, /usr/include/asm is a link into this pool.  The user-
-  mode build changes the other end of that link, and things that include
-  <asm/anything.h> stop compiling.
-
-  The sources are also available from cvs at the project's cvs page,
-  which has directions on getting the sources. You can also browse the
-  CVS pool from there.
-
-  If you get the CVS sources, you will have to check them out into an
-  empty directory. You will then have to copy each file into the
-  corresponding directory in the appropriate kernel pool.
-
-  If you don't have the latest kernel pool, you can get the
-  corresponding user-mode sources with::
-
-
-       host% cvs co -r v_2_3_x linux
-
-
-
-
-  where 'x' is the version in your pool. Note that you will not get the
-  bug fixes and enhancements that have gone into subsequent releases.
-
 
 2.2.  Compiling and installing kernel modules
 ---------------------------------------------
@@ -416,7 +372,7 @@ Linux: a port of the Linux kernel as a normal Intel Linux process.
 3.1.  Running UML
 -----------------
 
-  It runs on 2.2.15 or later, and all 2.4 kernels.
+  It runs on 2.2.15 or later, and all kernel versions since 2.4.
 
 
   Booting UML is straightforward.  Simply run 'linux': it will try to
-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
