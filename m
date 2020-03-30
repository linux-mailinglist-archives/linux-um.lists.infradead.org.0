Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83191197EEC
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 16:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FR/Qf1r/YXWm6VR0wq+hRwUoGTSEnwXeVszHxf8xyPQ=; b=AU+bglRYrQ6IXu
	bgPxpfnO/c/Z7VQqECM0U6HaMhklvxn4/j83509FpuXC1S6QARwDjew0qagN3R9c+aOPW0Nr2Zd6I
	O22dHI72PCy2FpSqelFBwijZx/zhMwOSW7kJMlwJMG4lcO2nGs987NQmfT6a8iHq0zSo95VWV3l1a
	uK75wV0PLkftHKO0Gm6eAEPZqu4azl5IaN9gdTbRkZBkjAlpOpJG8bvb86k6HpJLGAR2681+czeMB
	VYY6q/egEhXKkcNuHfVyHfOuFjaJSqgVKknAVNkmZ/dk3SUN2+eHbLfNdRimyenNqFA8GI2co1qfs
	muIDaYFUm8/mVMGXiw8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvj3-00056p-V7; Mon, 30 Mar 2020 14:49:17 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvj1-00056R-CK
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 14:49:16 +0000
Received: by mail-pj1-x1043.google.com with SMTP id jz1so6431062pjb.0
 for <linux-um@lists.infradead.org>; Mon, 30 Mar 2020 07:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WSuzOG+ewbWDKhDgxww0G95iKdrDh8WJzQDaiNNuPD0=;
 b=bf/0Y3ov/x7KJtJrtZkDbiz3v4S4/t1avT2BTMvBhVcGw2FuNnWOZF7yiVZBgOz4Kq
 qcdIfGwZjitOAJZhaSOEsudSnEf3kwVAaqE/ej+D1akVXyaulQ7wKOkd+OkfFsOWvMWV
 WkSrUFtejSIq8kASoA+Cz4/26ZHtDQM9DcgaDYf1SSHUKjWqshKLPQTxJN8wdD84mCR1
 KdW/RF84TK0f5pArwhw4J1UkKZZ+6qKDtWe5Oj6YRQsU6CHRzihvcQsB1heuuQmqqF9K
 rRrZDlcSJFPDwMkeuIZhpoi2wz7XXVYhfWMlDguD/OJBpFCST2xESxZAX4ulxKNkDnRl
 H03g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WSuzOG+ewbWDKhDgxww0G95iKdrDh8WJzQDaiNNuPD0=;
 b=U44Ex6BgXPMxm9mbEDeON+ucCSmBmFSxiUzAnijucyKi70bVEMNQ434F19XIEiPVlI
 8bDre/UrdD7C/4zWbHKMn2K5QRL2NNh3tbhhz9bOYQu8bD0CM2mvh5J8aOxkyEzwUAdw
 7rJwdA7EhivKkGNuTHA4G7yCy/9o6uskw4fwfhZTX4MqfQA+D+pjJVguj+qpSGre1R9K
 ouOIh7EJAOhidA2Q4DNITfnkeGb0vBlousOO0L//lLjZkLXZOnL1oVR0J9IwlavSYTCC
 boILT0BZxdy/Tp8dBiI1lSS1J0DTOETxrlIanYSzzKus/0pf+42o88f3pW9r1iH3CkA8
 bZCw==
X-Gm-Message-State: ANhLgQ2XX7spAQFn7w+Wl7v8osfvqUB6tMvKZU+2DzyqX056yp0gjlul
 SQ/bmjBdd74qv2k1mBLU2QI=
X-Google-Smtp-Source: ADFU+vuSEPEP0URWHtgXEE0QX/kINogxQ4v2oPFoZEEXoG5aMvy+w0kPvgvOdLPWZYy4ioFrYEaNqA==
X-Received: by 2002:a17:902:598e:: with SMTP id
 p14mr12051668pli.276.1585579754735; 
 Mon, 30 Mar 2020 07:49:14 -0700 (PDT)
Received: from earth-mac.local (219x123x138x129.ap219.ftth.ucom.ne.jp.
 [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id a127sm10401300pfa.111.2020.03.30.07.49.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:49:14 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 4E8F1202804EDF; Mon, 30 Mar 2020 23:49:12 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v4 21/25] um lkl: add documentation
Date: Mon, 30 Mar 2020 23:45:53 +0900
Message-Id: <b5752382991a21a338d098276eb1d3e764fdf937.1585579244.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074915_431982_6C70A084 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: linux-arch@vger.kernel.org, Conrad Meyer <cem@FreeBSD.org>,
 Octavian Purdila <tavi.purdila@gmail.com>, Motomu Utsumi <motomuman@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Thomas Liebetraut <thomas@tommie-lie.de>,
 Patrick Collins <pscollins@google.com>, linux-kernel-library@freelists.org,
 Chenyang Zhong <zhongcy95@gmail.com>, Yuan Liu <liuyuan@google.com>,
 Gustavo Bittencourt <gbitten@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

A document describing brief introduction of LKL, why it is needed, and
how it is used is added.  The document is located under uml/ directory.

Cc: Chenyang Zhong <zhongcy95@gmail.com>
Cc: Conrad Meyer <cem@FreeBSD.org>
Cc: Gustavo Bittencourt <gbitten@gmail.com>
Cc: H.K. Jerry Chu <hkchu@google.com>
Cc: Motomu Utsumi <motomuman@gmail.com>
Cc: Patrick Collins <pscollins@google.com>
Cc: Thomas Liebetraut <thomas@tommie-lie.de>
Cc: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 Documentation/virt/uml/lkl.txt | 64 ++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/virt/uml/lkl.txt

diff --git a/Documentation/virt/uml/lkl.txt b/Documentation/virt/uml/lkl.txt
new file mode 100644
index 000000000000..f6d581092331
--- /dev/null
+++ b/Documentation/virt/uml/lkl.txt
@@ -0,0 +1,64 @@
+
+Introduction
+============
+
+LKL (Linux Kernel Library) is aiming to allow reusing the Linux kernel code as
+extensively as possible with minimal effort and reduced maintenance overhead.
+
+Examples of how LKL can be used are: creating userspace applications (running on
+Linux and other operating systems) that can read or write Linux filesystems or
+can use the Linux networking stack, creating kernel drivers for other operating
+systems that can read Linux filesystems, bootloaders support for reading/writing
+Linux filesystems, etc.
+
+With LKL, the kernel code is compiled into an object file that can be directly
+linked by applications. The API offered by LKL is based on the Linux system call
+interface.
+
+LKL is implemented as one of the mode of UML (arch/um). It uses host operations
+defined by the application or a host library (tools/lkl/lib).
+
+
+Supported hosts
+===============
+
+The supported host for now is Linux (x86 architecture) userspace applications.
+
+
+Building LKL the host library and LKL applications
+==================================================
+
+    $ make -C tools/lkl
+
+will build LKL as a object file, it will install it in tools/lkl/lib together
+with the headers files in tools/lkl/include then will build the host library,
+tests and a few of application examples:
+
+* tests/boot - a simple applications that uses LKL and exercises the basic LKL
+  APIs
+
+* tests/net-test - a simple applications that uses network feature of LKL and
+  exercises the basic network-related APIs
+
+* fs2tar - a tool that converts a filesystem image to a tar archive
+
+* cptofs/cpfromfs - a tool that copies files to/from a filesystem image
+
+* lklfuse - a tool that can mount a filesystem image in userspace,
+  without root privileges, using FUSE
+
+
+Building LKL on Ubuntu
+-----------------------
+
+    $ sudo apt-get install libfuse-dev libarchive-dev xfsprogs
+
+    # Optional, if you would like to be able to run tests
+    $ sudo apt-get install btrfs-tools
+    $ pip install yamlish junit_xml
+
+    $ make -C tools/lkl
+
+    # To check that everything works:
+    $ cd tools/lkl
+    $ make run-tests
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
