Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FFEF3F53
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOu0xjaxLjVaRLfDYyawxYswUTWxuurUrKOR1gka/qU=; b=dt7gzNZ0JIzt6R
	qAEMUdA5skOAKbB50MjarJ7KrhzBmq8TOH/WIOLEilt0NaAYnV+dbUyMU+AAFuv0bAv9C/XOw0YS5
	07QKsKSlXqVsxszOconENAG4CWqLTQAqLOTJe3N9aODFx4zZRudO45doa7nFl8SvQZ9qcUqG8L1f6
	5owfOo3DPlYpnqkgFDG2Z41IW8jgVBVUzc6lDCwVqv6nAGUXnRGL69vL4WEoecEsk/WyGpZFlGOO/
	B9JHKDEf8CEtIicfhs2I5GYEFwPxwMEytiTd/2AgqDTSELev2uAUQ4lFEPKgchc+Iyg9ruOtTXUYx
	SovPbSUDtVLQvSwU79sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRZ-00044e-0Z; Fri, 08 Nov 2019 05:04:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwRU-00042a-6v
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:04:18 +0000
Received: by mail-pl1-x641.google.com with SMTP id d7so1354989pls.3
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RbUBT3xfZrIXGoFBBCGxmNcQdirhvysRMETZc4qpbmA=;
 b=ddsbjKc7xWuNdAqUqsG6S0wfScYntbSE7+SC+4OQ/B+DOY4kMUAv+8IUsUwb0fbVJU
 FxxDfYz0eObmt9ssdGv14k98WuInVAJ5Q+UwnA22RQFKJSXNjRFHefSWpkI4f8qeIzXT
 3V6mWTPhxweRYa2erPOFIuy8yoYrcstfZwXEsgLsAiX1Y0BC30NA27TdmjufNgj7wmJg
 Q7R7fdL4YUos0g8CHjjMXjQuLSpZveEZI49SvlX4XyH4N+25Hwp9OSqo011IDncCXuMc
 k8eOfNntGDvQfTt8tifNZ3kJ33n3yePvShyQkSfb8D+33gcl07e54wqPxCtlQQ9rYAJF
 pYng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RbUBT3xfZrIXGoFBBCGxmNcQdirhvysRMETZc4qpbmA=;
 b=qvu02KGodXTIMbd6kortD/kEvMl4O75GWvBmZFklTU+rASpf1n79oHkJvG9BqEo+8C
 ZG6GwxCc9QCkbp6VWQKW2Luv3R0GIHf2UDdytPFsUKS5fap3D9HvVzJIdKaiX6Nsek7J
 O1cg36xrPAg4g8jHUfpbCr7h0A9rrvWPY3mk7Su5MWgX2i/p5Qil7PSgx/zlVvG3Ex/N
 VgpykoWRzhFzT8QNUNJzm27osEfspV7IswWtYbHntJZPLxNHYMmkGG0VosEjE2Rh3b1a
 L4t8l/DM9+YsYVlyRp8hLt3tbIEwVfNF6j8ZwaQfCfz0QU8/0VS+JJ0zXgE/fkMOp04v
 /HPA==
X-Gm-Message-State: APjAAAW0eVRQf/TRDjzQsJ5q7LfIJvwe5aG9KvCS1uP7Lbkyo2Dw2iAM
 30wCUBlA+skYn0cZip2Ak6k=
X-Google-Smtp-Source: APXvYqymOj1IbvfHJNXAISqNEVApggDZ/qHVVaWKyywKheNgZ68ExZWrBYK5ApZCxuBsTux6l+DILA==
X-Received: by 2002:a17:902:7207:: with SMTP id
 ba7mr8327448plb.172.1573189455225; 
 Thu, 07 Nov 2019 21:04:15 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id z23sm4036818pgj.43.2019.11.07.21.04.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:04:14 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id A1D7B201ACFE7F; Fri,  8 Nov 2019 14:04:12 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 29/37] lkl: add documentation
Date: Fri,  8 Nov 2019 14:02:44 +0900
Message-Id: <8f62855215a9456512fff52129eebd8f1bb02d63.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210416_261476_CADCE19E 
X-CRM114-Status: GOOD (  26.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
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
 Documentation/virt/uml/lkl.txt | 453 +++++++++++++++++++++++++++++++++
 1 file changed, 453 insertions(+)
 create mode 100644 Documentation/virt/uml/lkl.txt

diff --git a/Documentation/virt/uml/lkl.txt b/Documentation/virt/uml/lkl.txt
new file mode 100644
index 000000000000..01c7b8bf7edc
--- /dev/null
+++ b/Documentation/virt/uml/lkl.txt
@@ -0,0 +1,453 @@
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
+The supported hosts for now are POSIX and Windows userspace applications.
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
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
