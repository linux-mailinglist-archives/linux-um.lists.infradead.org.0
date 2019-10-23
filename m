Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8A6E1161
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIuol2Zz+kgEN4+eYm08cn/f9pXCmpfBf5B3Wi0gXz0=; b=ELUo4W5WIXv7E/
	1gtOQWVBxBo/AEPVjzatFZ2wx17uHkYw6Kb41HdmXy3p1Wr8T9j3/UxkDaA1J3TyuSKYgIGvghSUN
	cvtOu2chx2376nbiTmmuinqT8hKnrJZx5X2x9h6UFUd9rVfm1I6U1ljZEV6r4vb8JfJiS0eqg8I6x
	8ZoeW7pHNdIxEr1obIpKOnt+pMI/CisHOHj601eSoP0Cptgo1pdV1L/kQvBrX7iS7T3rKa6Vceuxy
	I3E1kQgW/MJU0aJo7/TXQkFKuTmwaaIJJWgfp930bmIq1bwaph6KloFg8JdSrM7V1pPBe3A5FA3Za
	2DNQAuCVjcPdcszJIhgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8km-00028L-No; Wed, 23 Oct 2019 05:00:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8ke-0001IR-U2
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id y5so12111974pfo.4
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S6NR7MEe8GBCa5Fnlhwel/ZY5gHH/y0I4812KAkYtes=;
 b=Hp7F1VH+iGpZbVGacNEwCaYlujkIjCaMacxb9RQ13Jr+newSBai3jowwtbSg77BK/T
 lTS897pzrcAvA5JzIwyQzmPX+M6jeRs+gSbPQ3/OJpdWpp3c/xiVqCjGNEFRUdxoFKws
 419sOvEYFwHbbZ/C3W9bzO9U369HRoP8nu0Xv8yA7chqyX9AXCBlQW0bZv7zw5ewj4j/
 oFKiioACj9WMYvW4lTRuPeyWiCR/aVHTorkrjrLDLP/jBrbwYCRG+LkD4ljxUr3TFEEO
 IgYr1/IfcfWXLDK3G17zh1QtfG6yF66XzKyWm+p3MMPvelW8Alva0XCFUjzn7EITatNU
 6sSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S6NR7MEe8GBCa5Fnlhwel/ZY5gHH/y0I4812KAkYtes=;
 b=jAQMfnvtTbAEtVtcA2rt8Z8S82QN24Z/8I//u3DFCxccxM4qUsPdt3Hd7omUoPtOBA
 1wSoVstzk5176GmT3dHMsTCQyTRAnx/k+4e2yw7w5jqsaWj4TrA31wUSg1uEGq36vjWh
 VW8y2C56dw0wE459j+geHC+xWAYSDKGj0iqi+IF37sSdCyySzR0HMxgccNV4o9L0nTHp
 HRYFT802rASZfic0nN8Kxpj2j7EVVj5EZq4jGjgmMp+FwBYiFj1yz9pIRxtpyMzVEUQg
 5fteu6c0YWVogRcjej1QS4+AGq1Mr/djEglWedzBzpz+Ro6p+IO/bwQYE+8v+oYGYkGH
 mg9g==
X-Gm-Message-State: APjAAAXhJmsZO6Mxk6NpM4orVCyk/68Fsg9u1Too47fvI6XLtgH0HwBV
 WWSup5Q8milZcJjqWlbVQzA=
X-Google-Smtp-Source: APXvYqxGKfLNymXfwAMOxVHqmrSeK3rCJZqDnhYY4i4I4QwuGSgJi8qUqgIX79exF/dtA10/nolVAg==
X-Received: by 2002:a17:90a:bd82:: with SMTP id
 z2mr9323339pjr.15.1571806804073; 
 Tue, 22 Oct 2019 22:00:04 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id c14sm24606861pfm.179.2019.10.22.22.00.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:02 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 9A75C20199584C; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 45/47] um lkl: add CI tests
Date: Wed, 23 Oct 2019 13:38:19 +0900
Message-Id: <c23f6e539ab1473cae99c7563933e658b0e7ee4f.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220004_995204_14F2CD9A 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

We use CircleCI for the tests, which should check regressions before
merging.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 .circleci/config.yml             | 246 +++++++++++++++++++++++++++++++
 tools/lkl/scripts/checkpatch.sh  |  60 ++++++++
 tools/lkl/scripts/lkl-jenkins.sh |  21 +++
 3 files changed, 327 insertions(+)
 create mode 100644 .circleci/config.yml
 create mode 100755 tools/lkl/scripts/checkpatch.sh
 create mode 100755 tools/lkl/scripts/lkl-jenkins.sh

diff --git a/.circleci/config.yml b/.circleci/config.yml
new file mode 100644
index 000000000000..7d140d9a2acb
--- /dev/null
+++ b/.circleci/config.yml
@@ -0,0 +1,246 @@
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
+        make -C tools/lkl/
+        make defconfig ARCH=um
+        make ARCH=um
+  - save_cache:
+     paths:
+       - /home/ubuntu/.ccache
+     key: compiler-cache-{{ checksum "~/_cross_compile" }}-{{ .Environment.CACHE_VERSION }}-{{ epoch }}
+  - run:
+      name: test
+      command: |
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
