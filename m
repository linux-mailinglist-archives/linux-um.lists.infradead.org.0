Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905C9F3F5C
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNtfP2HWdcasvAB63+U9DseLUOuInbfo/y2dkkywVUA=; b=iXYkeBWJ435QWt
	fHdwApBO5Ub2oMjv9D245m+RnsEiFZps/sVBtZiuI5uNW38Gd7nJxRXnL61TD4TCH/KeLhWGdrS75
	kVxJomotCPDIKo4JoYMwsR4Rj73RWipikob+9GX+rmGhWTnkIrsz1QR13o7aafzq3SDktt3bbmvLR
	k0auAKVxkzXGBnSZJxmkjv4BgCIzGtbq/4vzEknVTbdKB0ZOnSHV+LvATWJHRqA5ifRK/VsaG5qcC
	00rETP3JQ2B+xI6Z/0l9ieWD2x4sXoMHAr3VGxVezfJOLQ3TaRcYAWOK8dg+OujL6Lj+iLhGFQ+R7
	XSGFcXPqlc3TamWknUFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRj-0004At-DJ; Fri, 08 Nov 2019 05:04:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwRf-00048C-5s
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:04:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so3273220pgh.10
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fks9wSbUJ+kC5hvrb/d3gYtZgeZ3GOt0V9E8ftVXrv0=;
 b=jif0I7BBFZV/PvH3i2IiQVMhDzZvf9rW67+2kDSO87msB0VWxjSpUyneqxmNh1uZCg
 PcOPu34wK0Ld/MpSs5anDqUMLXsTGBzZJU3rCdCCmq4KF7bjLOGCpmbwsjqJafVzjWQr
 QYBF3Tb1gBPuz8rEZ/HCnpi55qyP1oQiaeFC5rNUyiE+NQknyo2XAtx9LoEaflYzdqyL
 9yFjZyzYoP4ds/3tlROvHb62wJEG3YXAJJzzm/tlLUTnPPo9VQ2N8wDO++vkIxN5w3Zk
 YRMriLr/K88cQxJ202zFrJKXXuQYQ+pRmb3gurRJK4zdgp+b4CMzs5ifx3O9usZy8cRK
 7TJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fks9wSbUJ+kC5hvrb/d3gYtZgeZ3GOt0V9E8ftVXrv0=;
 b=UQfkPp7gIKU1pQSJdSoBcd9yb3+51zpqj0APs0QGN822+RXHKYn4l2v6He84L0xZD6
 3rExLrBdTGnVn8d5NIz9s0bnX7nm5iLZ26s+P56QsdVdezod8iOt/3p95MRk79kW69mR
 yY78W9lrGr1WKSOF4anjfV/OgZX02HpcDC9rteJzU4AkeD8Wh+icbL5sDPXY0elsJE22
 MSSPVIzQSG9sgzSP6MYXSUrUaGQ834105Tlm8gSzrkmk6UrkwbglzlHF/4IOUCts3whh
 kWY1PPUiLX3iC2R+WkVTVgZ5Y4BgDGVhN9qumcwn6e8m08T8/AxmO0+BGaBCixnyeE2u
 Vq5A==
X-Gm-Message-State: APjAAAXo8sqLSzwwPt+yGVL06IdO9XtX58Ub+C/ocG5va+wpU5f1nAxv
 i6zIoYsRIIky8DQKlrRiQUY6z/V0yyHlNA==
X-Google-Smtp-Source: APXvYqzighXCDmZ62e/x8lyMtbNIM5EN72p6qguyakenljWjbCFfBBdjlipHJYybk0yfCfDGnnXK+A==
X-Received: by 2002:a63:4206:: with SMTP id p6mr9277702pga.270.1573189466275; 
 Thu, 07 Nov 2019 21:04:26 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id fz12sm3627791pjb.15.2019.11.07.21.04.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:04:24 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id D939C201ACFEB8; Fri,  8 Nov 2019 14:04:22 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 34/37] lkl: Android ARM (arm/arm64) support
Date: Fri,  8 Nov 2019 14:02:49 +0900
Message-Id: <ec1915b36d1e4de138bfad60862beaaef0b47274.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210427_235591_F6E72080 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Initial attempt to run an application with hijack library on Android
platform.  Tested mostly on Android 6.x and 7.x.

The build process assumes that the android ndk toolchain is installed in
a host system. arm32 build is required to use alternate linker in order
to avoid a link issue during the build (described in *1).

*1
https://github.com/lkl/linux/issues/59#issuecomment-308961122

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 arch/um/lkl/Kconfig            |  1 +
 tools/lkl/Makefile.autoconf    |  7 +++-
 tools/lkl/lib/hijack/hijack.c  | 13 ++++++++
 tools/lkl/lib/hijack/init.c    | 11 ++++++
 tools/lkl/tests/disk.sh        | 11 +++++-
 tools/lkl/tests/hijack-test.sh | 43 ++++++++++++++++++------
 tools/lkl/tests/test.sh        | 61 +++++++++++++++++++++++++++++++++-
 7 files changed, 134 insertions(+), 13 deletions(-)

diff --git a/arch/um/lkl/Kconfig b/arch/um/lkl/Kconfig
index 1629e2679b75..fc501b64a2af 100644
--- a/arch/um/lkl/Kconfig
+++ b/arch/um/lkl/Kconfig
@@ -23,6 +23,7 @@ config LKL
        select 64BIT if "$(OUTPUT_FORMAT)" = "pe-x86-64"
        select HAVE_UNDERSCORE_SYMBOL_PREFIX if "$(OUTPUT_FORMAT)" = "pe-i386"
        select 64BIT if "$(OUTPUT_FORMAT)" = "elf64-x86-64-freebsd"
+       select 64BIT if "$(OUTPUT_FORMAT)" = "elf64-littleaarch64"
        select NET
        select MULTIUSER
        select INET
diff --git a/tools/lkl/Makefile.autoconf b/tools/lkl/Makefile.autoconf
index 1631f5cc25ac..7222a95c314f 100644
--- a/tools/lkl/Makefile.autoconf
+++ b/tools/lkl/Makefile.autoconf
@@ -1,4 +1,4 @@
-POSIX_HOSTS=elf64-x86-64 elf32-i386 elf64-x86-64-freebsd
+POSIX_HOSTS=elf64-x86-64 elf32-i386 elf64-x86-64-freebsd elf32-littlearm elf64-littleaarch64
 NT_HOSTS=pe-i386 pe-x86-64
 
 define set_autoconf_var
@@ -17,6 +17,10 @@ define is_defined
 $(shell $(CC) -dM -E - </dev/null | grep $(1))
 endef
 
+define android_host
+  $(call set_autoconf_var,ANDROID,y)
+endef
+
 define bsd_host
   $(call set_autoconf_var,BSD,y)
 endef
@@ -54,6 +58,7 @@ define posix_host
   LDFLAGS += -pie
   CFLAGS += -fPIC -pthread
   SOSUF := .so
+  $(if $(call is_defined,__ANDROID__),$(call android_host),LDLIBS += -lrt -lpthread)
   $(if $(filter $(1),elf64-x86-64-freebsd),$(call bsd_host))
   $(if $(filter $(1),elf32-littlearm),$(call arm_host))
   $(if $(filter $(1),elf64-littleaarch64),$(call aarch64_host))
diff --git a/tools/lkl/lib/hijack/hijack.c b/tools/lkl/lib/hijack/hijack.c
index 485c15d7c279..3a95b9dbe88b 100644
--- a/tools/lkl/lib/hijack/hijack.c
+++ b/tools/lkl/lib/hijack/hijack.c
@@ -204,7 +204,11 @@ int socket(int domain, int type, int protocol)
 }
 
 HOST_CALL(ioctl);
+#ifdef __ANDROID__
+int ioctl(int fd, int req, ...)
+#else
 int ioctl(int fd, unsigned long req, ...)
+#endif
 {
 	va_list vl;
 	long arg;
@@ -586,6 +590,15 @@ void *mmap(void *addr, size_t length, int prot, int flags, int fd, off_t offset)
 	return lkl_sys_mmap(addr, length, prot, flags, fd, offset);
 }
 
+#ifndef __ANDROID__
+HOST_CALL(__xstat64)
+int stat(const char *pathname, struct stat *buf)
+{
+	CHECK_HOST_CALL(__xstat64);
+	return host___xstat64(0, pathname, buf);
+}
+#endif
+
 ssize_t send(int fd, const void *buf, size_t len, int flags)
 {
 	return sendto(fd, buf, len, flags, 0, 0);
diff --git a/tools/lkl/lib/hijack/init.c b/tools/lkl/lib/hijack/init.c
index 2145fb7ec2cb..de00f2018e59 100644
--- a/tools/lkl/lib/hijack/init.c
+++ b/tools/lkl/lib/hijack/init.c
@@ -170,6 +170,17 @@ hijack_init(void)
 	if (single_cpu_mode == 1)
 		PinToFirstCpu(&ori_cpu);
 
+#ifdef __ANDROID__
+	struct sigaction sa;
+
+	sa.sa_handler = SIG_IGN;
+	sa.sa_flags = 0;
+	if (sigaction(32, &sa, 0) == -1) {
+		perror("sigaction");
+		exit(1);
+	}
+#endif
+
 	ret = lkl_start_kernel(&lkl_host_ops, cfg->boot_cmdline);
 	if (ret) {
 		fprintf(stderr, "can't start kernel: %s\n", lkl_strerror(ret));
diff --git a/tools/lkl/tests/disk.sh b/tools/lkl/tests/disk.sh
index 9bdcb16f2d5c..e2ec6cf69d4b 100755
--- a/tools/lkl/tests/disk.sh
+++ b/tools/lkl/tests/disk.sh
@@ -15,6 +15,12 @@ function prepfs()
 
     yes | mkfs.$1 $file
 
+    if ! [ -z $ANDROID_WDIR ]; then
+        adb shell mkdir -p $ANDROID_WDIR
+        adb push $file $ANDROID_WDIR
+        rm $file
+        file=$ANDROID_WDIR/$(basename $file)
+    fi
     if ! [ -z $BSD_WDIR ]; then
         $MYSSH mkdir -p $BSD_WDIR
         ssh_copy $file $BSD_WDIR
@@ -29,7 +35,10 @@ function cleanfs()
 {
     set -e
 
-    if ! [ -z $BSD_WDIR ]; then
+    if ! [ -z $ANDROID_WDIR ]; then
+        adb shell rm $1
+        adb shell rm $ANDROID_WDIR/disk
+    elif ! [ -z $BSD_WDIR ]; then
         $MYSSH rm $1
         $MYSSH rm $BSD_WDIR/disk
     else
diff --git a/tools/lkl/tests/hijack-test.sh b/tools/lkl/tests/hijack-test.sh
index 097af6cff3ba..a62aa5b251e0 100755
--- a/tools/lkl/tests/hijack-test.sh
+++ b/tools/lkl/tests/hijack-test.sh
@@ -15,7 +15,11 @@ set_cfgjson()
 {
     cfgjson=${wdir}/hijack-test$1.conf
 
-    cat > ${cfgjson}
+    if [ -n "$LKL_HOST_CONFIG_ANDROID" ]; then
+        adb shell cat \> ${cfgjson}
+    else
+        cat > ${cfgjson}
+    fi
 
     export_vars cfgjson
 }
@@ -54,6 +58,11 @@ test_mount_and_dump()
 {
     set -e
 
+    if [ -n "$LKL_HOST_CONFIG_ANDROID" ]; then
+        echo "TODO: android-23 doesn't call destructor..."
+        return $TEST_SKIP
+    fi
+
     set_cfgjson << EOF
     {
         "mount":"proc,sysfs",
@@ -377,6 +386,10 @@ test_tap_qdisc()
 {
     set -e
 
+    if [ -n "$LKL_HOST_CONFIG_ANDROID" ]; then
+        return $TEST_SKIP
+    fi
+
     set_cfgjson << EOF
     {
         "gateway":"$(ip_host)",
@@ -655,15 +668,25 @@ if [[ ! -e ${basedir}/lib/hijack/liblkl-hijack.so ]]; then
     exit 0
 fi
 
-# Make a temporary directory to run tests in, since we'll be copying
-# things there.
-wdir=$(mktemp -d)
-cp `which ping` ${wdir}
-cp `which ping6` ${wdir}
-ping=${wdir}/ping
-ping6=${wdir}/ping6
-hijack=$basedir/bin/lkl-hijack.sh
-netperf=$basedir/tests/run_netperf.sh
+if [ -n "$LKL_HOST_CONFIG_ANDROID" ]; then
+    wdir=$ANDROID_WDIR
+    adb_push lib/hijack/liblkl-hijack.so bin/lkl-hijack.sh tests/net-setup.sh \
+             tests/run_netperf.sh tests/hijack-test.sh
+    ping="ping"
+    ping6="ping6"
+    hijack="$wdir/bin/lkl-hijack.sh"
+    netperf="$wdir/tests/run_netperf.sh"
+else
+    # Make a temporary directory to run tests in, since we'll be copying
+    # things there.
+    wdir=$(mktemp -d)
+    cp `which ping` ${wdir}
+    cp `which ping6` ${wdir}
+    ping=${wdir}/ping
+    ping6=${wdir}/ping6
+    hijack=$basedir/bin/lkl-hijack.sh
+    netperf=$basedir/tests/run_netperf.sh
+fi
 
 fifo1=${wdir}/fifo1
 fifo2=${wdir}/fifo2
diff --git a/tools/lkl/tests/test.sh b/tools/lkl/tests/test.sh
index cda932b98058..a40d08fd6185 100644
--- a/tools/lkl/tests/test.sh
+++ b/tools/lkl/tests/test.sh
@@ -100,6 +100,19 @@ lkl_test_exec()
 
     if file $file | grep PE32; then
         WRAPPER="wine"
+    elif file $file | grep "interpreter /system/bin/linker" ; then
+        adb push "$file" $ANDROID_WDIR
+        if [ -n "$SUDO" ]; then
+            ANDROID_USER=root
+            SUDO=""
+        fi
+        if [ -n "$ANDROID_USER" ]; then
+            SU="su $ANDROID_USER"
+        else
+            SU=""
+        fi
+        WRAPPER="adb shell $SU"
+        file=$ANDROID_WDIR/$(basename $file)
     elif file $file | grep ARM; then
         WRAPPER="qemu-arm-static"
     elif file $file | grep "FreeBSD" ; then
@@ -134,13 +147,48 @@ lkl_test_cmd()
         SHOPTS="-x"
     fi
 
-    if [ -n "$LKL_HOST_CONFIG_BSD" ]; then
+    if [ -n "$LKL_HOST_CONFIG_ANDROID" ]; then
+        if [ "$1" = "sudo" ]; then
+            ANDROID_USER=root
+            shift
+        fi
+        if [ -n "$ANDROID_USER" ]; then
+            SU="su $ANDROID_USER"
+        else
+            SU=""
+        fi
+        WRAPPER="adb shell $SU"
+    elif [ -n "$LKL_HOST_CONFIG_BSD" ]; then
         WRAPPER="$MYSSH $SU"
     fi
 
     echo "$@" | $WRAPPER sh $SHOPTS
 }
 
+adb_push()
+{
+    while [ -n "$1" ]; do
+        if [[ "$1" = *.sh ]]; then
+            type="script"
+        else
+            type="file"
+        fi
+
+        dir=$(dirname $1)
+        adb shell mkdir -p $ANDROID_WDIR/$dir
+
+        if [ "$type" = "script" ]; then
+            sed "s/\/usr\/bin\/env bash/\/system\/bin\/sh/" $basedir/$1 | \
+                adb shell cat \> $ANDROID_WDIR/$1
+            adb shell chmod a+x $ANDROID_WDIR/$1
+        else
+            adb push $basedir/$1 $ANDROID_WDIR/$dir
+        fi
+
+        shift
+    done
+}
+
 # XXX: $MYSSH and $MYSCP are defined in a circleci docker image.
 # see the definitions in lkl/lkl-docker:circleci/freebsd11/Dockerfile
 ssh_push()
@@ -169,11 +217,22 @@ ssh_copy()
     $MYSCP -P 7722 -r $1 root@localhost:$2
 }
 
+lkl_test_android_cleanup()
+{
+    adb shell rm -rf $ANDROID_WDIR
+}
+
 lkl_test_bsd_cleanup()
 {
     $MYSSH rm -rf $BSD_WDIR
 }
 
+if [ -n "$LKL_HOST_CONFIG_ANDROID" ]; then
+    trap lkl_test_android_cleanup EXIT
+    export ANDROID_WDIR=/data/local/tmp/lkl
+    adb shell mkdir -p $ANDROID_WDIR
+fi
+
 if [ -n "$LKL_HOST_CONFIG_BSD" ]; then
     trap lkl_test_bsd_cleanup EXIT
     export BSD_WDIR=/root/lkl
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
