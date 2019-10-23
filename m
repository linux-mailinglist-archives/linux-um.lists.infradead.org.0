Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687D5E1171
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOYJ6NXCTcDzErW2UT2LgVpvtX4VcJ5rFwUptHi68Gs=; b=hglunyryhGVvl9
	rhkwLQtmcc29Fj4HsGa+My4chJ49oEi8CuqheFDCatkMvUFP90FOafeurpASsDRXzScpZny1U3YnL
	RblaFCzo4DrChVg/qKVDojufg1QgyPAtI/d+98iusp2TP3g8fJLUSGGBo/tMw31z29ECng1WU3jGj
	0m4iDVKTMagHsXN5ZHcGzhyLWC6ZHE1tdyj9vCJ2cR2YmtjIqKvduWx2bc7DCs0wo7h+pcdmVmGfT
	ErFIUOY92u/MFSpUsqPMlAbWHCVKYwctskpZNQsQi2SH+KEXWWMfD3Qob4ixCAC2Bvjvj/EvcfXfL
	ovGYfCaLA+9PpTc+sGRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8l1-0002MM-NB; Wed, 23 Oct 2019 05:00:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8ko-0002BM-II
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:23 +0000
Received: by mail-pl1-x642.google.com with SMTP id q15so9467860pll.11
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+KoSdD3tde44FdZ+KQzeAqnh6tKU6C1nj3YI1fQcaZU=;
 b=OgZ7kvPKGFTo3R8HHhBpC84v6Cw75zQQJxxmfahR7JiUv/NL1HNW3aQFvDLKk8IRaP
 N9y8lvWiaMqhmXjBi8gDa1nlr9C4cggQxpPtplbavTNRO7D0KiWjtHClxNe+RwWCjKxB
 OVSnw7axAlOao8GrCPl+70hlSFu71kC5vQBc6C6c3F5Amq7Lvzu+/wW8IWR58MtpBC2Y
 /rD1DmHgGiZ/dn4nv0pw4u0n3yeOLbWSwYPvwopk8p3NDKShH58mflYfBlN+MmLxg/G3
 vq4p+7MejWFWR2Cpg/DLy26q1bnFDtS54c6dCtmgodlQPGsGBjGSlpntXkzgBC7/uQqY
 Nyiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+KoSdD3tde44FdZ+KQzeAqnh6tKU6C1nj3YI1fQcaZU=;
 b=Pbo1VsKOTGKgRIHybGFfzTmH5LgiJ+7AoIH6IEhrY4z7tmOLu5ecbZo9eBrM0vdkcW
 Aau0LeFYWrO2t6y0riA5bCDSlgcp0lIyzzycilRRfhkKABeyv5SkPef9CkzBXivPn3HC
 UpEIYbvFe6sFTNwXc3DNpJy+i01EuT4PZLauti31TxyHnz4qeWPLDMUQlPVJvy9AT9+R
 tDbo45ze6qf2xfEpwrl29YMsKvulclxSU6NvVcyVU6bHUlVi3ugYdCuvMeAFBHFwE/h/
 ohZTyoFFoVu9jz4rgKH8XHlcickv5e8dIaHUmVOQBBhxVqcGhZ9KTWqy6N0W7rlVzR3k
 ohuQ==
X-Gm-Message-State: APjAAAVvrBfIV57U72zpPQbNLQwBez9Vk9QPJaRXlD06MWz9hobNunbw
 0zfKs+9jmhW/LK2TBBDxjJc=
X-Google-Smtp-Source: APXvYqymN9jx8sPymIiJexJgLhp89ybYP+uQqJWbPTz2hvd6IcXAkHFZl7+DzE3ABQL4B9QYlDC6Dw==
X-Received: by 2002:a17:902:fe95:: with SMTP id
 x21mr7227830plm.53.1571806813336; 
 Tue, 22 Oct 2019 22:00:13 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id z12sm23091671pfj.41.2019.10.22.22.00.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:11 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 27AA920199582E; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 30/47] lkl: add documentation
Date: Wed, 23 Oct 2019 13:38:04 +0900
Message-Id: <fc572809de9f3127de73bbc96df993f3daa4fba7.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220014_672490_11E8DEF0 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "H . K . Jerry Chu" <hkchu@google.com>, Conrad Meyer <cem@FreeBSD.org>,
 Octavian Purdila <tavi.purdila@gmail.com>, Motomu Utsumi <motomuman@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Thomas Liebetraut <thomas@tommie-lie.de>,
 Patrick Collins <pscollins@google.com>, Chenyang Zhong <zhongcy95@gmail.com>,
 Yuan Liu <liuyuan@google.com>, Gustavo Bittencourt <gbitten@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

We also added a symlink to README.md to display at github.

Signed-off-by: Chenyang Zhong <zhongcy95@gmail.com>
Signed-off-by: Conrad Meyer <cem@FreeBSD.org>
Signed-off-by: Gustavo Bittencourt <gbitten@gmail.com>
Signed-off-by: H.K. Jerry Chu <hkchu@google.com>
Signed-off-by: Motomu Utsumi <motomuman@gmail.com>
Signed-off-by: Patrick Collins <pscollins@google.com>
Signed-off-by: Thomas Liebetraut <thomas@tommie-lie.de>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 Documentation/lkl.txt | 470 ++++++++++++++++++++++++++++++++++++++++++
 README.md             |   1 +
 2 files changed, 471 insertions(+)
 create mode 100644 Documentation/lkl.txt
 create mode 120000 README.md

diff --git a/Documentation/lkl.txt b/Documentation/lkl.txt
new file mode 100644
index 000000000000..97fe407b0bc6
--- /dev/null
+++ b/Documentation/lkl.txt
@@ -0,0 +1,470 @@
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
+LKL is implemented as an architecture port in arch/lkl. It uses host operations
+defined by the application or a host library (tools/lkl/lib).
+
+
+Supported hosts
+===============
+
+The supported hosts for now are POSIX and Windows userspace applications.
+
+
+Building LKL, the host library and LKL based tools
+==================================================
+
+    $ make -C tools/lkl
+
+will build LKL as a object file, it will install it in tools/lkl/lib together
+with the headers files in tools/lkl/include then will build the host library,
+tests and a few of application examples:
+
+* tests/boot - a simple applications that uses LKL and exercises the basic LKL
+APIs
+
+* fs2tar - a tool that converts a filesystem image to a tar archive
+
+* cptofs/cpfromfs - a tool that copies files to/from a filesystem image
+
+* lklfuse - a tool that can mount a filesystem image in userspace,
+  without root privileges, using FUSE
+
+
+Building LKL on FreeBSD
+-----------------------
+
+    $ pkg install binutils gcc gnubc gmake gsed coreutils bison flex python argp-standalone
+
+    #Prefer ports binutils and GNU bc(1):
+    $ export PATH=/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib64/ccache
+
+    $ gmake -C tools/lkl
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
+
+
+Building LKL for Windows
+------------------------
+
+In order to build LKL for Win32 the mingw cross compiler needs to be installed
+on the host (e.g. on Ubuntu the following packages are required:
+binutils-mingw-w64-i686, gcc-mingw-w64-base, gcc-mingw-w64-i686
+mingw-w64-common, mingw-w64-i686-dev).
+
+Due to a bug in mingw regarding weak symbols the following patches needs to be
+applied to mingw-binutils:
+
+https://sourceware.org/ml/binutils/2015-10/msg00234.html
+
+and i686-w64-mingw32-gas, i686-w64-mingw32-ld and i686-w64-mingw32-objcopy need
+to be recompiled.
+
+With that pre-requisites fullfilled you can now build LKL for Win32 with the
+following command:
+
+    $ make CROSS_COMPILE=i686-w64-mingw32- -C tools/lkl
+
+
+
+Building LKL on Windows
+------------------------
+
+To build on Windows, certain GNU tools need to be installed. These tools can come
+from several different projects, such as cygwin, unxutils, gnu-win32 or busybox-w32.
+Below is one minimal/modular set-up based on msys2.
+
+### Common build dependencies:
+* [MSYS2](https://sourceforge.net/projects/msys2/) (provides GNU bash and many other utilities)
+* Extra utilities from MSYS2/pacman: bc, base-devel
+
+### General considerations:
+* No spaces in pathnames (source, prefix, destination,...)!
+* Make sure that all utilities are in the PATH.
+* Win64 (and MinGW 64-bit crt) is LLP64, which causes conflicts in size of "long" in the
+Linux source. Linux (and lkl) can (currently) not
+be built on LLP64.
+* Cygwin (and msys2) are LP64, like linux.
+
+### For MSYS2 (and Cygwin):
+Msys2 will install a gcc tool chain as part of the base-devel bundle. Binutils (2.26) is already
+patched for NT weak externals. Using the msys2 shell, cd to the lkl sources and run:
+
+    $ make -C tools/lkl
+
+### For MinGW:
+Install mingw-w64-i686-toolchain via pacman, mingw-w64-i686-binutils (2.26) is already patched
+for NT weak externals. Start a MinGW Win32 shell (64-bit will not work, see above)
+and run:
+
+    $ make -C tools/lkl
+
+
+LKL hijack library
+==================
+
+LKL hijack library (liblkl-hijack.so) is used to replace system calls used by an
+application on the fly so that the application can use LKL instead of the kernel
+of host operating system. LD_PRELOAD is used to dynamically override system
+calls with this library when you execute a program.
+
+You can usually use this library via a wrapper script.
+
+    $ cd tools/lkl
+    $ ./bin/lkl-hijack.sh ip address show
+
+In order to configure the behavior of LKL, a json file can be used. You can
+specify json file with environmental variables (LKL_HIJACK_CONFIG_FILE). If
+there is nothing specified, LKL tries to find with the name 'lkl-hijack.json'
+for the configuration file.  You can also use the old-style configuration with
+environmental variables (e.g., LKL_HIJACK_NET_IFTYPE) but those are overridden
+if a json file is specified.
+
+```
+     $ cat conf.json
+     {
+       "gateway":"192.168.0.1",
+       "gateway6":"2001:db8:0:f101::1",
+       "debug":"1",
+       "singlecpu":"1",
+       "sysctl":"net.ipv4.tcp_wmem=4096 87380 2147483647",
+       "boot_cmdline":"ip=dhcp",
+       "interfaces":[
+               {
+                       "mac":"12:34:56:78:9a:bc",
+                       "type":"tap",
+                       "param":"tap7",
+                       "ip":"192.168.0.2",
+                       "masklen":"24",
+                       "ifgateway":"192.168.0.1",
+                       "ipv6":"2001:db8:0:f101::2",
+                       "masklen6":"64",
+                       "ifgateway6":"2001:db8:0:f101::1",
+                       "offload":"0xc803"
+               },
+               {
+                       "mac":"12:34:56:78:9a:bd",
+                       "type":"tap",
+                       "param":"tap77",
+                       "ip":"192.168.1.2",
+                       "masklen":"24",
+                       "ifgateway":"192.168.1.1",
+                       "ipv6":"2001:db8:0:f102::2",
+                       "masklen6":"64",
+                       "ifgateway6":"2001:db8:0:f102::1",
+                       "offload":"0xc803"
+               }
+       ]
+     }
+     $ LKL_HIJACK_CONFIG_FILE="conf.json" lkl-hijack.sh ip addr s
+```
+
+The following are the list of keys to describe a JSON file.
+
+* IPv4 gateway address
+
+  key: "gateway"
+  value type: string
+
+  the gateway IPv4 address of LKL network stack.
+```
+     "gateway":"192.168.0.1"
+```
+
+* IPv6 gateway address
+
+  key: "gateway6"
+  value type: string
+
+  the gateway IPv6 address of LKL network stack.
+```
+     "gateway6":"2001:db8:0:f101::1"
+```
+
+* Debug
+
+  key: "debug"
+  value type: string
+
+  Setting it causes some debug information (both from the kernel and the
+  LKL library) to be enabled.  If zero' is specified it is disabled.
+  It is also used as a bit mask to turn on specific debugging facilities.
+  E.g., setting it to "0x100" will cause the LKL kernel to pause after
+  the hijack'ed app exits. This allows one to debug or collect info from
+  the LKL kernel before it quits.
+```
+     "debug":"1"
+```
+
+* Single CPU pinning
+
+  key: "singlecpu"
+  value type: string
+
+  Pin LKL kernel threads on to a single host cpu. value "1" pins
+  only LKL kernel threads while value "2" also pins polling
+  threads.
+```
+     "singlecpu":"1"
+```
+
+* SYSCTL
+
+  key: "sysctl"
+  value type: string
+
+  Configure sysctl values of the booted kernel via the hijack library. Multiple
+  entries can be specified.
+```
+     "sysctl":"net.ipv4.tcp_wmem=4096 87380 2147483647"
+```
+
+* Boot command line
+
+  key: "boot_cmdline"
+  value type: string
+
+  Specify the command line to the kernel boot so that change the configuration
+  on a kernel instance.  For instance, you can change the memory size with
+  below.
+```
+     "boot_cmdline": "mem=1G"
+```
+
+* Mount
+
+  key: "mount"
+  value type: string
+
+```
+     "mount": "proc,sysfs"
+```
+
+* Network Interface Configuration
+
+  key: "interfaces"
+  value type: array of objects
+
+  This key takes a set of sub-keys to configure a single interface. Each key is defined as follows.
+  ```
+       "interfaces":[{....},{....}]
+  ```
+
+
+	* Interface type
+
+	  key: "type"
+	  value type: string
+
+	  The interface type in host operating system to connect to LKL.
+	  The following example specifies a tap interface.
+	```
+	     "type":"tap"
+	```
+
+	* Interface parameter
+
+	  key: "param"
+	  value type: string
+
+	  Additional configuration parameters for the interface specified by Interface type (type).
+	  The parameters depend on the interface type.
+	```
+	     "type":"tap",
+	     "param":"tap0"
+	```
+
+	* Interface MTU size
+
+	  key: "mtu"
+	  value type: string
+
+	  the MTU size of the interface.
+	```
+	     "mtu":"1280"
+	```
+
+	* Interface IPv4 address
+
+	  key: "ip"
+	  value type: string
+
+	  the IPv4 address of the interface.
+	  If you want to use DHCP for the IP address assignment,
+	  use "boot_cmdline" with "ip=dhcp" option.
+	```
+	     "ip":"192.168.0.2"
+	```
+	```
+	     "boot_cmdline":"ip=dhcp"
+	```
+
+	* Interface IPv4 netmask length
+
+	  key: "masklen"
+	  value type: string
+
+	  the network mask length of the interface.
+	```
+	     "ip":"192.168.0.2",
+	     "masklen":"24"
+	```
+
+	* Interface IPv4 gateway on routing policy table
+
+	  key: "ifgateway"
+	  value type: string
+
+	  If you specify this parameter, LKL adds routing policy table.
+	  And then LKL creates link local and gateway route on this table.
+	  Table SELECTOR is "from" and PREFIX is address you assigned to this interface.
+	  Table id is 2 * (interface index).
+	  This parameter could be used to configure LKL for mptcp, for example.
+
+	```
+	     "ip":"192.168.0.2",
+	     "masklen":"24",
+	     "ifgateway":"192.168.0.1"
+	```
+
+	* Interface IPv6 address
+
+	  key: "ipv6"
+	  value type: string
+
+	  the IPv6 address of the interface.
+	```
+	     "ipv6":"2001:db8:0:f101::2"
+	```
+
+	* Interface IPv6 netmask length
+
+	  key: "masklen6"
+	  value type: string
+
+	  the network mask length of the interface.
+	```
+	     "ipv6":"2001:db8:0:f101::2",
+	     "masklen":"64"
+	```
+
+	* Interface IPv6 gateway on routing policy table
+
+	  key: "ifgateway6"
+	  value type: string
+
+	  If you specify this parameter, LKL adds routing policy table.
+	  And then LKL creates link local and gateway route on this table.
+	  Table SELECTOR is "from" and PREFIX is address you assigned to this interface.
+	  Table id is 2 * (interface index) + 1.
+	  This parameter could be used to configure LKL for mptcp, for example.
+	```
+	     "ipv6":"2001:db8:0:f101::2",
+	     "masklen":"64"
+	     "ifgateway6":"2001:db8:0:f101::1",
+	```
+
+	* Interface MAC address
+
+	  key: "mac"
+	  value type: string
+
+	  the MAC address of the interface.
+	```
+	     "mac":"12:34:56:78:9a:bc"
+	```
+
+	* Interfac neighbor entries
+
+	  key: "neigh"
+	  value type: string
+
+	  Add a list of permanent neighbor entries in the form of "ip|mac;ip|mac;...". ipv6 are supported
+	```
+	     "neigh":"192.168.0.1|12:34:56:78:9a:bc;2001:db8:0:f101::1|12:34:56:78:9a:be"
+	```
+
+	* Interface qdisc entries
+
+	  key: "qdisc"
+	  value type: string
+
+	  Add a qdisc entry in the form of "root|type;root|type;...".
+	```
+	     "qdisc":"root|fq"
+	```
+
+	* Interface offload
+
+	  key: "offload"
+	  value type: string
+
+	  Work as a bit mask to enable selective device offload features. E.g.,
+	  to enable "mergeable RX buffer" (LKL_VIRTIO_NET_F_MRG_RXBUF) +
+	  "guest csum" (LKL_VIRTIO_NET_F_GUEST_CSUM) device features, simply set
+	  it to 0x8002.
+	  See virtio_net.h for a list of offload features and their bit masks.
+	```
+	     "offload":"0x8002"
+	```
+
+* Delay
+
+  key: "delay_main"
+  value type: string
+
+  The delay before calling main() function of the application after the
+  initialization of LKL.  Some subsystems in Linux tree require a certain
+  amount of time before accepting a request from application, such as
+  delivery of address assignment to an network interface.  This parameter
+  is used in such case.  The value is described as a microsecond value.
+```
+     "delay_main":"500000"
+```
+
+FAQ
+===
+
+Q: How is LKL different from UML?
+
+A: UML prodivides a full OS environment (e.g. user/kernel separation, user
+processes) and also has requirements (a filesystem, processes, etc.) that makes
+it hard to use it for standalone applications. UML also relies heavily on Linux
+hosts. On the other hand LKL is designed to be linked directly with the
+application and hence does not have user/kernel separation which makes it easier
+to use it in standalone applications.
+
+
+Q: How is LKL different from LibOS?
+
+A: LibOS re-implements high-level kernel APIs for timers, softirqs, scheduling,
+sysctl, SLAB/SLUB, etc. LKL behaves like any arch port, implementing the arch
+level operations requested by the Linux kernel. LKL also offers a host interface
+so that support for multiple hosts can be implemented.
diff --git a/README.md b/README.md
new file mode 120000
index 000000000000..35c47a921f67
--- /dev/null
+++ b/README.md
@@ -0,0 +1 @@
+Documentation/lkl.txt
\ No newline at end of file
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
