Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF50FF3F5D
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIjVx7eSeySxw8Br/ZUEVTqhLOianus6wa7EYfoqWPw=; b=Jmq7ypZWq2G+xL
	hk2IMYtQg0DfAVHDmDgACmy8d5wllN5Wg7LnMrChdsEhhFVgF1928fZF3M2+ZsJCVQVEEvTDe7tRY
	rJqAwNc9AUm23YDgTBOXiijHhkkck0uUUQJlmu2ON2ujBPWu519m2qzg4hxgrT9cSsV0E+KNx8TQ+
	GftEjP10S8VhRtdoOsBvpP6MQX44BRuAhHINGxXLmxg0Zh35ffeC3NyOnitCZjJL/u9mdFLUQ0Xtf
	jj/apA/zoL3qmTqMpFP+xOuucTzwta4YinQ3R+TgF1Ie5P5ekQd/FSpvgItXg8vXJkQkEcLy7yA7X
	lb4J1uXuppOqT0zrUAhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRj-0004BD-V0; Fri, 08 Nov 2019 05:04:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwRf-00048Z-Jm
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:04:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id a18so3225475plm.10
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EAMcWojeZjosbPdsBURQeYP5+yJLNkhHO06NsV6qOiA=;
 b=i5b7/jUUNM14hr21v5qknEUbABSONQ8j2SvaaNXKXYpqVBA4k+1kHfUMlb5EqsAJa0
 wD62YpsM7zNck93QscenFHmiIWHwioxAaccQdQEQPdL0MRoCLC++a/XVcxryz0SJrcXi
 gqYQoU9aTG4nJz1G8EgXxjlVY+fPTe6KVNgWWNskh6/D73/iUSkD0ZyiKFOQS6OO0rgz
 jpqxZc/tB5zAVHCeWE342sxnykRUGa/q+NSlURBDJpDuSR/KUuSnSbBF4Pa/YYq81hb9
 RqaJBabk8iD3tMSm3pBZ0JNL3y+TW+jKa44tUdtfS1ND9CHQEM0p3OppmFzFk5zyHlbh
 VJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EAMcWojeZjosbPdsBURQeYP5+yJLNkhHO06NsV6qOiA=;
 b=c3Eig2cyF6l+SwA6V9omkm8ewtslUIfSEIcmrSHnhCek7jbDgQz5IOZQX6LmOisHFG
 fxDRUhP5G9lLma4jE/ySBcrFpB4daUx16LpdbWYqhBvJGhUHbVYudr4ytDtvSLj7UEY+
 O9M7yPE7ILOgSDEOwSvUd17nCXO6VKDd0/oJ8CBbAO3BXGnMiY041jsgm5K2FSgDvhA/
 KQcTTcUmqxc4DAnYvkIIbrt3gvmPs3KN+EEnz99XDI6qcj7N38DFotZxTl+vXZLt+9Pj
 ULSbuSOCIGerwMA3/wnl7JsRL40VjH0AQe5ZHSO8XqFtnSRBmzzmTzLFEGIta2/9IcNT
 Dl/Q==
X-Gm-Message-State: APjAAAXgd865TFVwyOeXkx+ASYOU/1tv0XLg0rU98J6HfRK5BltFN/DN
 f+L7/f9p7LV2VSjdkhf2z04=
X-Google-Smtp-Source: APXvYqzOD91O64ZCTTI7HwcJOxJzEJNSUtb32Iv485BCJAuFbHZkQYurVT94BiEkoAJ1gWGwj69qew==
X-Received: by 2002:a17:90a:2385:: with SMTP id
 g5mr10701960pje.117.1573189466825; 
 Thu, 07 Nov 2019 21:04:26 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id f8sm4837075pgd.64.2019.11.07.21.04.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:04:24 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id E3EE3201ACFEBA; Fri,  8 Nov 2019 14:04:22 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 35/37] um lkl: add CI tests
Date: Fri,  8 Nov 2019 14:02:50 +0900
Message-Id: <daca6ae93eb213e8827411f514ca24fcd11a1a8f.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210427_656897_B2C88D4D 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

We use CircleCI for the tests, which should check regressions before
merging.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 .circleci/config.yml             | 274 +++++++++++++++++++++++++++++++
 tools/lkl/scripts/checkpatch.sh  |  60 +++++++
 tools/lkl/scripts/lkl-jenkins.sh |  21 +++
 3 files changed, 355 insertions(+)
 create mode 100644 .circleci/config.yml
 create mode 100755 tools/lkl/scripts/checkpatch.sh
 create mode 100755 tools/lkl/scripts/lkl-jenkins.sh

diff --git a/.circleci/config.yml b/.circleci/config.yml
new file mode 100644
index 000000000000..5c7b2fbad703
--- /dev/null
+++ b/.circleci/config.yml
@@ -0,0 +1,274 @@
+version: 2
+general:
+  artifacts:
+
+do_steps: &do_steps
+ steps:
+  - run: echo "$CROSS_COMPILE" > ~/_cross_compile
+  - restore_cache:
+      key: code-tree-shallow-{{ .Environment.CACHE_VERSION }}
+  - run:
+      name: checkout build tree
+      command: |
+        mkdir -p ~/.ssh/
+        ssh-keyscan -H github.com >> ~/.ssh/known_hosts
+        if ! [ -d .git ]; then
+          git clone --depth=1 $CIRCLE_REPOSITORY_URL .;
+        fi
+        if [[ $CIRCLE_BRANCH == pull/* ]]; then
+           git fetch --depth=1 origin $CIRCLE_BRANCH/head;
+        else
+           git fetch --depth=1 origin $CIRCLE_BRANCH;
+        fi
+        git reset --hard $CIRCLE_SHA1
+  - save_cache:
+      key: code-tree-shallow-{{ .Environment.CACHE_VERSION }}-{{ epoch }}
+      paths:
+        - /home/ubuntu/project/.git
+  - run:
+      name: clean
+      command: |
+        make mrproper
+        cd tools/lkl && make clean-conf
+        rm -rf ~/junit
+  - run: mkdir -p /home/ubuntu/.ccache
+  - restore_cache:
+      key: compiler-cache-{{ checksum "~/_cross_compile" }}-{{ .Environment.CACHE_VERSION }}
+  - run:
+      name: build DPDK
+      command: |
+        if [ "$MKARG" = "dpdk=yes" ]; then
+          sudo apt-get update
+          if ! sudo apt-get install -y linux-headers-$(uname -r) ; then
+             cd /lib/modules && sudo ln -sf 4.4.0-97-generic `uname -r` && \
+               cd /home/ubuntu/project
+          fi
+          cd tools/lkl && ./scripts/dpdk-sdk-build.sh;
+        fi
+  - run:
+      name: copy mingw binutils
+      command: |
+        if [ "$CROSS_COMPILE" = "i686-w64-mingw32-" ]; then
+          wget https://github.com/lkl/linux/raw/master/tools/lkl/bin/i686-w64-mingw32-as
+          wget https://github.com/lkl/linux/raw/master/tools/lkl/bin/i686-w64-mingw32-ld
+          wget https://github.com/lkl/linux/raw/master/tools/lkl/bin/i686-w64-mingw32-objcopy
+          sudo cp i686-w64-mingw32-* /usr/bin;
+        elif [ "$CROSS_COMPILE" = "arm-linux-androideabi-" ]; then
+          wget https://github.com/lkl/linux/raw/master/tools/lkl/bin/arm-linux-androideabi-ld.gold
+          sudo cp arm-linux-androideabi-ld.gold /usr/bin/arm-linux-androideabi-ld;
+        fi
+  - run:
+      name: start emulator
+      command: |
+        if [[ $CROSS_COMPILE == *android* ]]; then
+          emulator -avd Nexus5_API24 -no-window -no-audio -no-boot-anim;
+        elif [[ $CROSS_COMPILE == *freebsd* ]]; then
+          cd /home/ubuntu && $QEMU
+        fi
+      background: true
+  - run: cd tools/lkl && make -j8 ${MKARG}
+  - run: mkdir -p ~/destdir && cd tools/lkl && make DESTDIR=~/destdir
+  - save_cache:
+     paths:
+       - /home/ubuntu/.ccache
+     key: compiler-cache-{{ checksum "~/_cross_compile" }}-{{ .Environment.CACHE_VERSION }}-{{ epoch }}
+  - run:
+      name: wait emulator to boot
+      command: |
+        if [[ $CROSS_COMPILE == *android* ]]; then
+          /home/ubuntu/circle-android.sh wait-for-boot;
+        elif [[ $CROSS_COMPILE == *freebsd* ]]; then
+          while ! $MYSSH -o ConnectTimeout=1 exit 2> /dev/null
+          do
+             sleep 5
+          done
+        fi
+  - run:
+      name: run tests
+      command: |
+        mkdir -p ~/junit
+        make -C tools/lkl run-tests tests="--junit-dir ~/junit"
+        find ./tools/lkl/ -type f -name "*.xml" -exec mv {} ~/junit/ \;
+      no_output_timeout: "90m"
+  - store_test_results:
+      path: ~/junit
+  - store_artifacts:
+      path: ~/junit
+
+
+do_uml_steps: &do_uml_steps
+ steps:
+  - run: echo "$CROSS_COMPILE" > ~/_cross_compile
+  - restore_cache:
+      key: code-tree-shallow-{{ .Environment.CACHE_VERSION }}
+  - run:
+      name: checkout build tree
+      command: |
+        mkdir -p ~/.ssh/
+        ssh-keyscan -H github.com >> ~/.ssh/known_hosts
+        if ! [ -d .git ]; then
+          git clone --depth=1 $CIRCLE_REPOSITORY_URL .;
+        fi
+        if [[ $CIRCLE_BRANCH == pull/* ]]; then
+           git fetch --depth=1 origin $CIRCLE_BRANCH/head;
+        else
+           git fetch --depth=1 origin $CIRCLE_BRANCH;
+        fi
+        git reset --hard $CIRCLE_SHA1
+  - save_cache:
+      key: code-tree-shallow-{{ .Environment.CACHE_VERSION }}-{{ epoch }}
+      paths:
+        - /home/ubuntu/project/.git
+  - run: mkdir -p /home/ubuntu/.ccache
+  - restore_cache:
+      key: compiler-cache-{{ checksum "~/_cross_compile" }}-{{ .Environment.CACHE_VERSION }}
+  - run:
+      name: build
+      command: |
+        sudo apt-get update
+        sudo apt-get install -y gcc-multilib g++-multilib
+        make -C tools/lkl/
+        make defconfig ARCH=um SUBARCH=$SUBARCH
+        make ARCH=um SUBARCH=$SUBARCH
+  - save_cache:
+     paths:
+       - /home/ubuntu/.ccache
+     key: compiler-cache-{{ checksum "~/_cross_compile" }}-{{ .Environment.CACHE_VERSION }}-{{ epoch }}
+  - run:
+      name: test
+      command: |
+        # XXX: i386 build doesn't work with the test
+        if [ $CIRCLE_STAGE = "i386_uml" ] || [ $CIRCLE_STAGE = "i386_uml_on_x86_64" ]; then
+          exit 0
+        fi
+        ./linux rootfstype=hostfs ro mem=1g loglevel=10 init="/bin/bash -c exit" || export RETVAL=$?
+        # SIGABRT=6 => 128+6
+        if [ $RETVAL != "134" ]; then
+          exit 1
+        fi
+
+## Customize the test machine
+jobs:
+  x86_64:
+   docker:
+     - image: lkldocker/circleci-x86_64:0.7
+   environment:
+     CROSS_COMPILE: ""
+     MKARG: "dpdk=no"
+   <<: *do_steps
+
+  i386:
+   docker:
+     - image: lkldocker/circleci-i386:0.1
+   environment:
+     CROSS_COMPILE: ""
+   <<: *do_steps
+
+  mingw32:
+   docker:
+     - image: lkldocker/circleci-mingw:0.6
+   environment:
+     CROSS_COMPILE: "i686-w64-mingw32-"
+   <<: *do_steps
+
+  android-arm32:
+   docker:
+     - image: lkldocker/circleci-android-arm32:0.6
+   environment:
+     CROSS_COMPILE: "arm-linux-androideabi-"
+     LKL_ANDROID_TEST: 1
+     ANDROID_SDK_ROOT: /home/ubuntu/android-sdk
+   <<: *do_steps
+
+  android-aarch64:
+   docker:
+     - image: lkldocker/circleci-android-arm64:0.6
+   environment:
+     CROSS_COMPILE: "aarch64-linux-android-"
+     LKL_ANDROID_TEST: 1
+     ANDROID_SDK_ROOT: /home/ubuntu/android-sdk
+   <<: *do_steps
+
+  freebsd11_x86_64:
+   docker:
+     - image: lkldocker/circleci-freebsd11-x86_64:0.4
+   environment:
+     CROSS_COMPILE: "x86_64-pc-freebsd11-"
+   <<: *do_steps
+
+  x86_64_valgrind:
+   docker:
+     - image: lkldocker/circleci-x86_64:0.7
+   environment:
+     CROSS_COMPILE: ""
+     MKARG: "dpdk=no"
+     VALGRIND: 1
+   <<: *do_steps
+
+  x86_64_uml:
+   docker:
+     - image: lkldocker/circleci-x86_64:0.7
+   environment:
+     CROSS_COMPILE: ""
+     TMPDIR: "/tmp" # required for not using /dev/shm
+     SUBARCH: "x86_64"
+   <<: *do_uml_steps
+
+  i386_uml:
+   docker:
+     - image: lkldocker/circleci-i386:0.1
+   environment:
+     CROSS_COMPILE: ""
+     SUBARCH: "i386"
+     TMPDIR: "/tmp" # required for not using /dev/shm
+   <<: *do_uml_steps
+
+  i386_uml_on_x86_64:
+   docker:
+     - image: lkldocker/circleci-x86_64:0.7
+   environment:
+     CROSS_COMPILE: ""
+     TMPDIR: "/tmp" # required for not using /dev/shm
+     SUBARCH: "i386"
+   <<: *do_uml_steps
+
+  checkpatch:
+   docker:
+     - image: lkldocker/circleci:0.5
+   environment:
+   steps:
+     - restore_cache:
+        key: code-tree-full-history-{{ .Environment.CACHE_VERSION }}
+     - checkout
+     - run: sudo pip install ply
+     - run: tools/lkl/scripts/checkpatch.sh
+     - save_cache:
+        key: code-tree-full-history-{{ .Environment.CACHE_VERSION }}-{{ epoch }}
+        paths:
+          - /home/ubuntu/project/.git
+        when: always
+
+workflows:
+  version: 2
+  build:
+    jobs:
+     - x86_64
+     - mingw32
+     - android-arm32
+     - android-aarch64
+     - freebsd11_x86_64
+     - checkpatch
+     - i386
+     - x86_64_uml
+     - i386_uml
+     - i386_uml_on_x86_64
+  nightly:
+    triggers:
+      - schedule:
+          cron: "0 0 * * *"
+          filters:
+            branches:
+              only:
+                - master
+    jobs:
+      - x86_64_valgrind
diff --git a/tools/lkl/scripts/checkpatch.sh b/tools/lkl/scripts/checkpatch.sh
new file mode 100755
index 000000000000..0c02ca6b21a2
--- /dev/null
+++ b/tools/lkl/scripts/checkpatch.sh
@@ -0,0 +1,60 @@
+#!/bin/sh -ex
+# SPDX-License-Identifier: GPL-2.0
+
+if [ -z "$origin_master" ]; then
+    origin_master="origin/master"
+fi
+
+UPSTREAM=git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
+LKL=github.com:lkl/linux.git
+
+upstream=`git remote -v | grep $UPSTREAM | cut -f1 | head -n1`
+lkl=`git remote -v | grep $LKL | cut -f1 | head -n1`
+
+if [ -z "$upstream" ]; then
+    git fetch --tags --progress git://$UPSTREAM
+else
+    git fetch --tags $upstream
+fi
+
+if [ -z "$lkl" ]; then
+    git remote add lkl-upstream git@$LKL || true
+    lkl=`git remote -v | grep $LKL | cut -f1 | head -n1`
+fi
+
+if [ -z "$lkl" ]; then
+    echo "can't find lkl remote, quiting"
+    exit 1
+fi
+
+git fetch $lkl
+git fetch --tags $upstream
+
+# find the last upstream tag to avoid checking upstream commits during
+# upstream merges
+tag=`git tag --sort='-*authordate' | grep ^v | head -n1`
+tmp=`mktemp -d`
+
+commits=$(git log --no-merges --pretty=format:%h HEAD ^$lkl/master ^$tag)
+for c in $commits; do
+    git format-patch -1 -o $tmp $c
+done
+
+if [ -z "$c" ]; then
+    echo "there are not commits/patches to check, quiting."
+    rmdir $tmp
+    exit 0
+fi
+
+./scripts/checkpatch.pl --ignore FILE_PATH_CHANGES $tmp/*.patch
+rm $tmp/*.patch
+
+# checkpatch.pl does not know how to deal with 3 way diffs which would
+# be useful to check the conflict resolutions during merges...
+#for c in `git log --merges --pretty=format:%h HEAD ^$origin_master ^$tag`; do
+#    git log --pretty=email $c -1 > $tmp/$c.patch
+#    git diff $c $c^1 $c^2 >> $tmp/$c.patch
+#done
+
+rmdir $tmp
+
diff --git a/tools/lkl/scripts/lkl-jenkins.sh b/tools/lkl/scripts/lkl-jenkins.sh
new file mode 100755
index 000000000000..eaadc6e90143
--- /dev/null
+++ b/tools/lkl/scripts/lkl-jenkins.sh
@@ -0,0 +1,21 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+
+set -e
+
+script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
+basedir=$(cd $script_dir/../../..; pwd)
+
+export PATH=$PATH:/sbin
+
+build_and_test()
+{
+    cd $basedir
+    make mrproper
+    cd tools/lkl
+    make clean-conf
+    make -j4
+    make run-tests
+}
+
+build_and_test
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
