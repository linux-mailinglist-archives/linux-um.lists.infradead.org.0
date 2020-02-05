Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B001526FE
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:31:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FR/Qf1r/YXWm6VR0wq+hRwUoGTSEnwXeVszHxf8xyPQ=; b=BmSVqursXKUazz
	dkUFUmolpGyRJaKogjuxc4SYiuVjalqPi/btSnbXzfTkgedIx+nd5aEUbrENyEvV20KQjmQtw48Ip
	ggISgaryXVbnUttaof+W1+m/tClpm0BABMkXZ7CWIX5GRcFDO7gUDVOdczAX13jMMHpQOB9fn+YhR
	+wHQBE2vFhVCLwGxqNSIvj1H5XrHXurCFyVY3gOgeN5gJBxvG9WpdoaJ84U8HezBkaeanqqHll2qk
	nuZ/Ex5dvcLgTvNdx9sf789QXUSNDsKWnHpAMD5e5IfpH5iSqJCdv+cBmpIBnOOamumjlQJB/hCsf
	wQNbil6JMPK1aC/sHwcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izF9w-0008NO-4q; Wed, 05 Feb 2020 07:31:40 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izF9s-0008Lm-H6
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:31:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id 185so749987pfv.3
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WSuzOG+ewbWDKhDgxww0G95iKdrDh8WJzQDaiNNuPD0=;
 b=jVhAH0EOT3haPjvbOrvnO3vqz7Xl8nZLxZpIT6NkpVuqDJ5uwy8wwRhcWbIQsI0NTl
 noQy12VHmjVaqA5GI618gjgMATT+JPWkUUkuxv3baSUj1HNdZKqKPF9/mJOrVqLt+xL1
 sZSE5A0wkPGi9KTwfkecF9g0ycIJrmFE8Rl39sqlJ0A/28/rxYi15vq5gj33+ul6dfan
 yjCPFey7t0z0IFP0Kc9oLb7SX0JJEhAhM+Y7ntTQSX5TY6/CMx4Y7n/QTmbmbDHEL15P
 74eSYPsopGYbghk5iEhMN8A3R6z96XMT6I/lxJew0Ja4fouRzfL8QNWtZt5BM4oMdhT5
 dlcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WSuzOG+ewbWDKhDgxww0G95iKdrDh8WJzQDaiNNuPD0=;
 b=LOsBw0U8OD+lulVZtmnhAXlOv6wXQiZBIcH2VnnFXZe+kdKqzbbr7eEIvtttA+rxMC
 oD4LcgStOZ6ZAA+dPQGNQhBE7EoH+7lpa+wTdeEgWTJ//M7Hgkug75QqeycjM03NLtFL
 IfvR09r1o4YX7nE8Sqfjsu7pIbzmsBQcE77OBz4FHol+ciO67IIKHlmqWeDxOMkTm5fO
 Skz3fX7t695nMIGFw6S1QD4HTzbpmLYN10ziPXC20iW4G+GkDJ9CmNVRsi6b2AZ/F+iI
 iy0n63VJWlP2x8vabhSYiy5B9TBzge6L132McLTb/OeTUYw965YekcW4wu1WODcJxeW4
 igEg==
X-Gm-Message-State: APjAAAX4QFT19FsLdm1GJR3O/92+mpXdHmEZ4BOl4gsfdETOJ1LfnhE3
 91m60/o0Gudh1AsaqWHT3gjYTrWQEKw=
X-Google-Smtp-Source: APXvYqx4LXpQw7BBmM/4EDeszz7Kutie9ln+hCMIkmOXdl3wN7aomvNY8npNyIUm3nzeaAv4CVf++w==
X-Received: by 2002:a63:4850:: with SMTP id x16mr36995148pgk.334.1580887895786; 
 Tue, 04 Feb 2020 23:31:35 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id d4sm6164238pjg.19.2020.02.04.23.31.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:31:35 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id E29992025730A9; Wed,  5 Feb 2020 16:31:33 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v3 22/26] um lkl: add documentation
Date: Wed,  5 Feb 2020 16:30:31 +0900
Message-Id: <0ea656300b51827b11416b4c2fd7f6ba320c8e37.1580882335.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1580882335.git.thehajime@gmail.com>
References: <cover.1580882335.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233136_568373_06688781 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
