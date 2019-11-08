Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9ED5F3F32
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4tEBxmbmkA5VMaR7187nWB7wOWXXiv9vUB1ODA0/p4=; b=uVCMV8lQHqy9A6
	Sjo4G/o1OrGEYeCB2/4jQKOOYm6KRW/34fKkZ0Vr3isuA5P2lL40VzmcAvhePXPy+oucteaV/MjqA
	5g63NGXmgNk22pkTiCxEcmPNxiCUjRluuEkuEJRn7QaAZOzZqI0aO0Cvhi8Ku5GXhp3L4MQOBp9ks
	8OMKUGO0WYp1fs7rScMUwDUvI/nYd7tJ1QpT01qNhZ8toKBW3BFbtMifV8RODerjl8Gzic9uvH3+k
	C6DuF0boDGSOpu8rMWznYqW8aYHmACGEpVeEilv6tL+sY87Fq+wOzyRJgDZo9X1ZDFIbYuEVsewRr
	S7x81SILLZs0WL1NAe5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQu-0003mp-GC; Fri, 08 Nov 2019 05:03:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQp-0003kS-TF
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id z24so3297480pgu.4
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2FP9jKAyH9QSLb82vpQo6qbDSsw46dZinr2yMcN3Isc=;
 b=nIAvLQUQtgr6nF4o6jDYz1IgoXyIIasb7Rm3YQi0/9rjWCPVw2a/Aw3x6aTHs2YpPk
 ib/08rsin4jdDtcWg3OgHpbO6jP/ey8exki8mZCdIiVM9Hs4K2T0BT764C9oZL91Lw1g
 9cwiAbh3Gf+0QTIDtKArvNhtNztWK6sjId7P9E9AZOy4kOB5Mx0+vY3ItOWQTtwjjIny
 flGnhA2gpgV/sInKu8sjLmyHU7mqKGfhaB+rFS9oieUkDwGz4Pwxz3sSAoIi24hViQ4R
 S9AX1z/W5F3ByL1f9CKwGhEpf8l4svmrH5DueZLEh4oIJbENFoMk5ns7CjBKyxWe7vQy
 Zb9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2FP9jKAyH9QSLb82vpQo6qbDSsw46dZinr2yMcN3Isc=;
 b=Yv2R+zToHAf1/sme5MZVY6lHXybpFacIdz+80+/+m4Rf0MizI0Vb31YVQlp/sLYMvU
 uv/urz6zwRGmXCJjKUKc5jSpPAdDHCySM6vEjfM0Q7W7oGUmZr57YFwOi+EnuhzYgyyf
 rO6t+wfjKBTUZheMewJxUeJUNWnLOWFrK3d+tr+USBuDBgfIAcUufMIWSOEBIZHffk0K
 rbsHGzJL7WAPzBa1zWvSUoty0IQbW9TyZXCBrseREXIQzte5v3NElJ0FMlw98YlOHJId
 4nh4X/t5kRqNVhMI99rS7czXO2+AVmPVnWCO7QPaPt1Ey8wGNsGJGCHyOWZ3XL4DH+Ty
 1IXw==
X-Gm-Message-State: APjAAAXIdA0xnPv9K0Zyjjg7cUQxPqx/a8+mlmo7gR/4dC0tKw8CRks7
 HRYlGiYzqhEGxakZgijvVvlEKbzXFhZgmQ==
X-Google-Smtp-Source: APXvYqzbnoIuFsSqmyInLASuZDCE3zcn5F/A0B4I1bWt+XBgKSPIeVNsX7J9xXhK1iEwFb0L+0OnVg==
X-Received: by 2002:aa7:93cd:: with SMTP id y13mr9210729pff.240.1573189415144; 
 Thu, 07 Nov 2019 21:03:35 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id fh11sm3678546pjb.2.2019.11.07.21.03.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:33 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id E7F14201ACFD31; Fri,  8 Nov 2019 14:03:31 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 14/37] lkl tools: skeleton for host side library,
 tests and tools
Date: Fri,  8 Nov 2019 14:02:29 +0900
Message-Id: <902032e3f90c68605a05e84c082ba8f0bad113d5.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210335_957917_F5440F4F 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: linux-arch@vger.kernel.org, Patrick Collins <pscollins@google.com>,
 Xiao Jia <xiaoj@google.com>, Conrad Meyer <cem@FreeBSD.org>,
 Octavian Purdila <tavi.purdila@gmail.com>, Motomu Utsumi <motomuman@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Petros Angelatos <petrosagg@gmail.com>,
 Yuan Liu <liuyuan@google.com>, Thomas Liebetraut <thomas@tommie-lie.de>,
 Mark Stillwell <mark@stillwell.me>, Ben Wolsieffer <benwolsieffer@gmail.com>,
 linux-kernel-library@freelists.org,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Luca Dariz <luca.dariz@gmail.com>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

This patch adds the skeleton for the host library, tests and
application examples.

The host library is implementing the host operations needed by LKL and
is split into host dependent (depends on a specific host, e.g. POSIX
hosts) and host independent parts (will work on all supported hosts).

Signed-off-by: Ben Wolsieffer <benwolsieffer@gmail.com>
Signed-off-by: Conrad Meyer <cem@FreeBSD.org>
Signed-off-by: H.K. Jerry Chu <hkchu@google.com>
Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
Signed-off-by: Luca Dariz <luca.dariz@gmail.com>
Signed-off-by: Mark Stillwell <mark@stillwell.me>
Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
Signed-off-by: Motomu Utsumi <motomuman@gmail.com>
Signed-off-by: Patrick Collins <pscollins@google.com>
Signed-off-by: Petros Angelatos <petrosagg@gmail.com>
Signed-off-by: Thomas Liebetraut <thomas@tommie-lie.de>
Signed-off-by: Xiao Jia <xiaoj@google.com>
Signed-off-by: Yuan Liu <liuyuan@google.com>
Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 tools/lkl/.gitignore         |   4 +
 tools/lkl/Build              |   0
 tools/lkl/Makefile           | 124 ++++++++++++
 tools/lkl/Makefile.autoconf  |  87 +++++++++
 tools/lkl/Targets            |   3 +
 tools/lkl/include/.gitignore |   1 +
 tools/lkl/include/lkl.h      | 358 +++++++++++++++++++++++++++++++++++
 tools/lkl/include/lkl_host.h |  19 ++
 tools/lkl/lib/.gitignore     |   3 +
 tools/lkl/lib/Build          |   1 +
 10 files changed, 600 insertions(+)
 create mode 100644 tools/lkl/.gitignore
 create mode 100644 tools/lkl/Build
 create mode 100644 tools/lkl/Makefile
 create mode 100644 tools/lkl/Makefile.autoconf
 create mode 100644 tools/lkl/Targets
 create mode 100644 tools/lkl/include/.gitignore
 create mode 100644 tools/lkl/include/lkl.h
 create mode 100644 tools/lkl/include/lkl_host.h
 create mode 100644 tools/lkl/lib/.gitignore
 create mode 100644 tools/lkl/lib/Build

diff --git a/tools/lkl/.gitignore b/tools/lkl/.gitignore
new file mode 100644
index 000000000000..1aed58bfe171
--- /dev/null
+++ b/tools/lkl/.gitignore
@@ -0,0 +1,4 @@
+Makefile.conf
+include/lkl_autoconf.h
+tests/autoconf.sh
+bin/stat
diff --git a/tools/lkl/Build b/tools/lkl/Build
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/tools/lkl/Makefile b/tools/lkl/Makefile
new file mode 100644
index 000000000000..6d6d2cead03f
--- /dev/null
+++ b/tools/lkl/Makefile
@@ -0,0 +1,124 @@
+# Do not use make's built-in rules
+# (this improves performance and avoids hard-to-debug behaviour);
+# also do not print "Entering directory..." messages from make
+.SUFFIXES:
+MAKEFLAGS += -r --no-print-directory
+
+KCONFIG?=defconfig
+
+ifneq ($(silent),1)
+  ifneq ($(V),1)
+	QUIET_AUTOCONF       = @echo '  AUTOCONF '$@;
+	Q = @
+  endif
+endif
+
+PREFIX   := /usr
+
+ifeq (,$(srctree))
+  srctree := $(patsubst %/,%,$(dir $(shell pwd)))
+  srctree := $(patsubst %/,%,$(dir $(srctree)))
+endif
+export srctree
+
+-include $(srctree)/tools/scripts/Makefile.include
+
+# OUTPUT fixup should be *after* include ../scripts/Makefile.include
+ifneq ($(OUTPUT),)
+  OUTPUT := $(OUTPUT)/tools/lkl/
+else
+  OUTPUT := $(CURDIR)/
+endif
+export OUTPUT
+
+
+all:
+
+conf: $(OUTPUT)Makefile.conf
+
+$(OUTPUT)Makefile.conf: Makefile.autoconf
+	$(call QUIET_AUTOCONF, headers)$(MAKE) -f Makefile.autoconf -s
+
+-include $(OUTPUT)Makefile.conf
+
+export CFLAGS += -I$(OUTPUT)/include -Iinclude -Wall -g -O2 -Wextra \
+	 -Wno-unused-parameter \
+	 -Wno-missing-field-initializers -fno-strict-aliasing
+
+-include Targets
+
+TARGETS := $(progs-y:%=$(OUTPUT)%$(EXESUF))
+TARGETS += $(libs-y:%=$(OUTPUT)%$(SOSUF))
+all: $(TARGETS)
+
+# this workaround is for FreeBSD
+bin/stat:
+ifeq ($(LKL_HOST_CONFIG_BSD),y)
+	$(Q)ln -sf `which gnustat` bin/stat
+	$(Q)ln -sf `which gsed` bin/sed
+else
+	$(Q)touch bin/stat
+endif
+
+# rule to build lkl.o
+$(OUTPUT)lib/lkl.o: bin/stat
+	$(Q)$(MAKE) -C $(srctree) ARCH=um UMMODE=library $(KOPT) $(KCONFIG)
+# this workaround is for arm32 linker (ld.gold)
+	$(Q)export PATH=$(shell pwd)/bin/:${PATH} ;\
+	$(MAKE) -C $(srctree) ARCH=um UMMODE=library $(KOPT) install INSTALL_PATH=$(OUTPUT)
+
+# rules to link libs
+$(OUTPUT)%$(SOSUF): LDFLAGS += -shared
+$(OUTPUT)%$(SOSUF): $(OUTPUT)%-in.o $(OUTPUT)liblkl.a
+	$(QUIET_LINK)$(CC) $(LDFLAGS) $(LDFLAGS_$*-y) -o $@ $^ $(LDLIBS) $(LDLIBS_$*-y)
+
+# liblkl is special
+$(OUTPUT)liblkl$(SOSUF): $(OUTPUT)%-in.o $(OUTPUT)lib/lkl.o
+$(OUTPUT)liblkl.a: $(OUTPUT)lib/liblkl-in.o $(OUTPUT)lib/lkl.o
+	$(QUIET_AR)$(AR) -rc $@ $^
+
+# rule to link programs
+$(OUTPUT)%$(EXESUF): $(OUTPUT)%-in.o $(OUTPUT)liblkl.a
+	$(QUIET_LINK)$(CC) $(LDFLAGS) $(LDFLAGS_$*-y) -o $@ $^ $(LDLIBS) $(LDLIBS_$*-y)
+
+# rule to build objects
+$(OUTPUT)%-in.o: $(OUTPUT)lib/lkl.o FORCE
+	$(Q)$(MAKE) -f $(srctree)/tools/build/Makefile.build dir=$(patsubst %/,%,$(dir $*)) obj=$(notdir $*)
+
+
+clean:
+	$(call QUIET_CLEAN, objects)find $(OUTPUT) -name '*.o' -delete -o -name '\.*.cmd'\
+	 -delete -o -name '\.*.d' -delete
+	$(call QUIET_CLEAN, headers)$(RM) -r $(OUTPUT)/include/lkl/
+	$(call QUIET_CLEAN, liblkl.a)$(RM) $(OUTPUT)/liblkl.a
+	$(call QUIET_CLEAN, targets)$(RM) $(TARGETS) bin/stat
+
+clean-conf: clean
+	$(call QUIET_CLEAN, Makefile.conf)$(RM) $(OUTPUT)/Makefile.conf
+
+headers_install: $(TARGETS)
+	$(call QUIET_INSTALL, headers) \
+	    install -d $(DESTDIR)$(PREFIX)/include ; \
+	    install -m 644 include/lkl.h include/lkl_host.h $(OUTPUT)include/lkl_autoconf.h \
+	      include/lkl_config.h $(DESTDIR)$(PREFIX)/include ; \
+	    cp -r $(OUTPUT)include/lkl $(DESTDIR)$(PREFIX)/include
+
+libraries_install: $(libs-y:%=$(OUTPUT)%$(SOSUF)) $(OUTPUT)liblkl.a
+	$(call QUIET_INSTALL, libraries) \
+	    install -d $(DESTDIR)$(PREFIX)/lib ; \
+	    install -m 644 $^ $(DESTDIR)$(PREFIX)/lib
+
+programs_install: $(progs-y:%=$(OUTPUT)%$(EXESUF))
+	$(call QUIET_INSTALL, programs) \
+	    install -d $(DESTDIR)$(PREFIX)/bin ; \
+	    install -m 755 $^ $(DESTDIR)$(PREFIX)/bin
+
+install: headers_install libraries_install programs_install
+
+
+FORCE: ;
+.PHONY: all clean FORCE
+.PHONY: headers_install libraries_install programs_install install
+.NOTPARALLEL : lib/lkl.o
+.SECONDARY:
+
diff --git a/tools/lkl/Makefile.autoconf b/tools/lkl/Makefile.autoconf
new file mode 100644
index 000000000000..fd63b8aa5c77
--- /dev/null
+++ b/tools/lkl/Makefile.autoconf
@@ -0,0 +1,87 @@
+POSIX_HOSTS=elf64-x86-64 elf32-i386 elf64-x86-64-freebsd
+
+define set_autoconf_var
+  $(shell echo "#define LKL_HOST_CONFIG_$(1) $(2)" \
+	  >> $(OUTPUT)/include/lkl_autoconf.h)
+  $(shell echo "LKL_HOST_CONFIG_$(1)=$(2)" >> $(OUTPUT)/tests/autoconf.sh)
+  export LKL_HOST_CONFIG_$(1)=$(2)
+endef
+
+define find_include
+  $(eval include_paths=$(shell $(CC) -E -Wp,-v -xc /dev/null 2>&1 | grep '^ '))
+  $(foreach f, $(include_paths), $(wildcard $(f)/$(1)))
+endef
+
+define is_defined
+$(shell $(CC) -dM -E - </dev/null | grep $(1))
+endef
+
+define bsd_host
+  $(call set_autoconf_var,BSD,y)
+endef
+
+define arm_host
+  $(call set_autoconf_var,ARM,y)
+endef
+
+define aarch64_host
+  $(call set_autoconf_var,AARCH64,y)
+endef
+
+define virtio_net_dpdk
+  $(call set_autoconf_var,VIRTIO_NET_DPDK,y)
+  RTE_SDK ?= $(OUTPUT)/dpdk-17.02
+  RTE_TARGET ?= build
+  DPDK_LIBS = -lrte_pmd_vmxnet3_uio -lrte_pmd_ixgbe -lrte_pmd_e1000
+  DPDK_LIBS += -lrte_pmd_virtio
+  DPDK_LIBS += -lrte_timer -lrte_hash -lrte_mbuf -lrte_ethdev -lrte_eal
+  DPDK_LIBS += -lrte_mempool -lrte_ring -lrte_pmd_ring
+  DPDK_LIBS += -lrte_kvargs -lrte_net
+  CFLAGS += -I$$(RTE_SDK)/$$(RTE_TARGET)/include -msse4.2 -mpopcnt
+  LDFLAGS +=-L$$(RTE_SDK)/$$(RTE_TARGET)/lib
+  LDFLAGS +=-Wl,--whole-archive $$(DPDK_LIBS) -Wl,--no-whole-archive -lm -ldl
+endef
+
+define virtio_net_vde
+  $(call set_autoconf_var,VIRTIO_NET_VDE,y)
+  LDLIBS += $(shell pkg-config --libs vdeplug)
+endef
+
+define posix_host
+  $(call set_autoconf_var,POSIX,y)
+  $(call set_autoconf_var,VIRTIO_NET,y)
+  LDFLAGS += -pie
+  CFLAGS += -fPIC -pthread
+  SOSUF := .so
+  $(if $(filter $(1),elf64-x86-64-freebsd),$(call bsd_host))
+  $(if $(filter $(1),elf32-littlearm),$(call arm_host))
+  $(if $(filter $(1),elf64-littleaarch64),$(call aarch64_host))
+  $(if $(filter yes,$(dpdk)),$(call virtio_net_dpdk))
+  $(if $(filter yes,$(vde)),$(call virtio_net_vde))
+  $(if $(strip $(call find_include,fuse.h)),$(call set_autoconf_var,FUSE,y))
+  $(if $(strip $(call find_include,archive.h)),$(call set_autoconf_var,ARCHIVE,y))
+  $(if $(strip $(call find_include,linux/if_tun.h)),$(call set_autoconf_var,VIRTIO_NET_MACVTAP,y))
+  $(if $(filter $(1),elf64-x86-64-freebsd),$(call set_autoconf_var,NEEDS_LARGP,y))
+  $(if $(filter $(1),elf32-i386),$(call set_autoconf_var,I386,y))
+endef
+
+define do_autoconf
+  export CROSS_COMPILE := $(CROSS_COMPILE)
+  export CC := $(CROSS_COMPILE)gcc
+  export LD := $(CROSS_COMPILE)ld
+  export AR := $(CROSS_COMPILE)ar
+  $(eval LD := $(CROSS_COMPILE)ld)
+  $(eval CC := $(CROSS_COMPILE)gcc)
+  $(eval LD_FMT := $(shell $(LD) -r -print-output-format))
+  $(if $(filter $(LD_FMT),$(POSIX_HOSTS)),$(call posix_host,$(LD_FMT)))
+endef
+
+export do_autoconf
+
+
+$(OUTPUT)Makefile.conf: Makefile.autoconf
+	$(shell mkdir -p $(OUTPUT)/include)
+	$(shell mkdir -p $(OUTPUT)/tests)
+	$(shell echo -n "" > $(OUTPUT)/include/lkl_autoconf.h)
+	$(shell echo -n "" > $(OUTPUT)/tests/autoconf.sh)
+	@echo "$$do_autoconf" > $(OUTPUT)/Makefile.conf
diff --git a/tools/lkl/Targets b/tools/lkl/Targets
new file mode 100644
index 000000000000..24c985e64638
--- /dev/null
+++ b/tools/lkl/Targets
@@ -0,0 +1,3 @@
+libs-y += lib/liblkl
+
+
diff --git a/tools/lkl/include/.gitignore b/tools/lkl/include/.gitignore
new file mode 100644
index 000000000000..c41a463c898d
--- /dev/null
+++ b/tools/lkl/include/.gitignore
@@ -0,0 +1 @@
+lkl/
\ No newline at end of file
diff --git a/tools/lkl/include/lkl.h b/tools/lkl/include/lkl.h
new file mode 100644
index 000000000000..76da534a85f1
--- /dev/null
+++ b/tools/lkl/include/lkl.h
@@ -0,0 +1,358 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LKL_H
+#define _LKL_H
+
+#include "lkl_autoconf.h"
+
+#ifdef __cplusplus
+extern "C" {
+#endif
+
+#define _LKL_LIBC_COMPAT_H
+
+#ifdef __cplusplus
+#define class __lkl__class
+#endif
+
+/*
+ * Avoid collisions between Android which defines __unused and
+ * linux/icmp.h which uses __unused as a structure field.
+ */
+#pragma push_macro("__unused")
+#undef __unused
+
+#include <lkl/asm/syscalls.h>
+
+#pragma pop_macro("__unused")
+
+#ifdef __cplusplus
+#undef class
+#endif
+
+#if defined(__MINGW32__)
+#define strtok_r strtok_s
+#define inet_pton lkl_inet_pton
+
+int inet_pton(int af, const char *src, void *dst);
+#endif
+
+#if __LKL__BITS_PER_LONG == 64
+#define lkl_sys_fstatat lkl_sys_newfstatat
+#define lkl_sys_fstat lkl_sys_newfstat
+
+#else
+#define __lkl__NR_fcntl __lkl__NR_fcntl64
+
+#define lkl_stat lkl_stat64
+#define lkl_sys_stat lkl_sys_stat64
+#define lkl_sys_lstat lkl_sys_lstat64
+#define lkl_sys_truncate lkl_sys_truncate64
+#define lkl_sys_ftruncate lkl_sys_ftruncate64
+#define lkl_sys_sendfile lkl_sys_sendfile64
+#define lkl_sys_fstatat lkl_sys_fstatat64
+#define lkl_sys_fstat lkl_sys_fstat64
+#define lkl_sys_fcntl lkl_sys_fcntl64
+
+#define lkl_statfs lkl_statfs64
+
+static inline int lkl_sys_statfs(const char *path, struct lkl_statfs *buf)
+{
+	return lkl_sys_statfs64(path, sizeof(*buf), buf);
+}
+
+static inline int lkl_sys_fstatfs(unsigned int fd, struct lkl_statfs *buf)
+{
+	return lkl_sys_fstatfs64(fd, sizeof(*buf), buf);
+}
+
+#define lkl_sys_nanosleep lkl_sys_nanosleep_time32
+static inline int lkl_sys_nanosleep_time32(struct lkl_timespec *rqtp,
+					   struct lkl_timespec *rmtp)
+{
+	long p[6] = {(long)rqtp, (long)rmtp, 0, 0, 0, 0};
+
+	return lkl_syscall(__lkl__NR_nanosleep, p);
+}
+
+#endif
+
+static inline int lkl_sys_stat(const char *path, struct lkl_stat *buf)
+{
+	return lkl_sys_fstatat(LKL_AT_FDCWD, path, buf, 0);
+}
+
+static inline int lkl_sys_lstat(const char *path, struct lkl_stat *buf)
+{
+	return lkl_sys_fstatat(LKL_AT_FDCWD, path, buf,
+			       LKL_AT_SYMLINK_NOFOLLOW);
+}
+
+#ifdef __lkl__NR_llseek
+/**
+ * lkl_sys_lseek - wrapper for lkl_sys_llseek
+ */
+static inline long long lkl_sys_lseek(unsigned int fd, __lkl__kernel_loff_t off,
+				      unsigned int whence)
+{
+	long long res;
+	long ret = lkl_sys_llseek(fd, off >> 32, off & 0xffffffff, &res,
+				  whence);
+
+	return ret < 0 ? ret : res;
+}
+#endif
+
+static inline void *lkl_sys_mmap(void *addr, size_t length, int prot, int flags,
+				 int fd, off_t offset)
+{
+	return (void *)lkl_sys_mmap_pgoff((long)addr, length, prot, flags, fd,
+					  offset >> 12);
+}
+
+#define lkl_sys_mmap2 lkl_sys_mmap_pgoff
+
+#ifdef __lkl__NR_openat
+/**
+ * lkl_sys_open - wrapper for lkl_sys_openat
+ */
+static inline long lkl_sys_open(const char *file, int flags, int mode)
+{
+	return lkl_sys_openat(LKL_AT_FDCWD, file, flags, mode);
+}
+
+/**
+ * lkl_sys_creat - wrapper for lkl_sys_openat
+ */
+static inline long lkl_sys_creat(const char *file, int mode)
+{
+	return lkl_sys_openat(LKL_AT_FDCWD, file,
+			      LKL_O_CREAT|LKL_O_WRONLY|LKL_O_TRUNC, mode);
+}
+#endif
+
+
+#ifdef __lkl__NR_faccessat
+/**
+ * lkl_sys_access - wrapper for lkl_sys_faccessat
+ */
+static inline long lkl_sys_access(const char *file, int mode)
+{
+	return lkl_sys_faccessat(LKL_AT_FDCWD, file, mode);
+}
+#endif
+
+#ifdef __lkl__NR_fchownat
+/**
+ * lkl_sys_chown - wrapper for lkl_sys_fchownat
+ */
+static inline long lkl_sys_chown(const char *path, lkl_uid_t uid, lkl_gid_t gid)
+{
+	return lkl_sys_fchownat(LKL_AT_FDCWD, path, uid, gid, 0);
+}
+#endif
+
+#ifdef __lkl__NR_fchmodat
+/**
+ * lkl_sys_chmod - wrapper for lkl_sys_fchmodat
+ */
+static inline long lkl_sys_chmod(const char *path, mode_t mode)
+{
+	return lkl_sys_fchmodat(LKL_AT_FDCWD, path, mode);
+}
+#endif
+
+#ifdef __lkl__NR_linkat
+/**
+ * lkl_sys_link - wrapper for lkl_sys_linkat
+ */
+static inline long lkl_sys_link(const char *existing, const char *new)
+{
+	return lkl_sys_linkat(LKL_AT_FDCWD, existing, LKL_AT_FDCWD, new, 0);
+}
+#endif
+
+#ifdef __lkl__NR_unlinkat
+/**
+ * lkl_sys_unlink - wrapper for lkl_sys_unlinkat
+ */
+static inline long lkl_sys_unlink(const char *path)
+{
+	return lkl_sys_unlinkat(LKL_AT_FDCWD, path, 0);
+}
+#endif
+
+#ifdef __lkl__NR_symlinkat
+/**
+ * lkl_sys_symlink - wrapper for lkl_sys_symlinkat
+ */
+static inline long lkl_sys_symlink(const char *existing, const char *new)
+{
+	return lkl_sys_symlinkat(existing, LKL_AT_FDCWD, new);
+}
+#endif
+
+#ifdef __lkl__NR_readlinkat
+/**
+ * lkl_sys_readlink - wrapper for lkl_sys_readlinkat
+ */
+static inline long lkl_sys_readlink(const char *path, char *buf, size_t bufsize)
+{
+	return lkl_sys_readlinkat(LKL_AT_FDCWD, path, buf, bufsize);
+}
+#endif
+
+#ifdef __lkl__NR_renameat
+/**
+ * lkl_sys_rename - wrapper for lkl_sys_renameat
+ */
+static inline long lkl_sys_rename(const char *old, const char *new)
+{
+	return lkl_sys_renameat(LKL_AT_FDCWD, old, LKL_AT_FDCWD, new);
+}
+#endif
+
+#ifdef __lkl__NR_mkdirat
+/**
+ * lkl_sys_mkdir - wrapper for lkl_sys_mkdirat
+ */
+static inline long lkl_sys_mkdir(const char *path, mode_t mode)
+{
+	return lkl_sys_mkdirat(LKL_AT_FDCWD, path, mode);
+}
+#endif
+
+#ifdef __lkl__NR_unlinkat
+/**
+ * lkl_sys_rmdir - wrapper for lkl_sys_unlinkrat
+ */
+static inline long lkl_sys_rmdir(const char *path)
+{
+	return lkl_sys_unlinkat(LKL_AT_FDCWD, path, LKL_AT_REMOVEDIR);
+}
+#endif
+
+#ifdef __lkl__NR_mknodat
+/**
+ * lkl_sys_mknod - wrapper for lkl_sys_mknodat
+ */
+static inline long lkl_sys_mknod(const char *path, mode_t mode, dev_t dev)
+{
+	return lkl_sys_mknodat(LKL_AT_FDCWD, path, mode, dev);
+}
+#endif
+
+#ifdef __lkl__NR_pipe2
+/**
+ * lkl_sys_pipe - wrapper for lkl_sys_pipe2
+ */
+static inline long lkl_sys_pipe(int fd[2])
+{
+	return lkl_sys_pipe2(fd, 0);
+}
+#endif
+
+#ifdef __lkl__NR_sendto
+/**
+ * lkl_sys_send - wrapper for lkl_sys_sendto
+ */
+static inline long lkl_sys_send(int fd, void *buf, size_t len, int flags)
+{
+	return lkl_sys_sendto(fd, buf, len, flags, 0, 0);
+}
+#endif
+
+#ifdef __lkl__NR_recvfrom
+/**
+ * lkl_sys_recv - wrapper for lkl_sys_recvfrom
+ */
+static inline long lkl_sys_recv(int fd, void *buf, size_t len, int flags)
+{
+	return lkl_sys_recvfrom(fd, buf, len, flags, 0, 0);
+}
+#endif
+
+#ifdef __lkl__NR_pselect6
+/**
+ * lkl_sys_select - wrapper for lkl_sys_pselect
+ */
+static inline long lkl_sys_select(int n, lkl_fd_set *rfds, lkl_fd_set *wfds,
+				  lkl_fd_set *efds, struct lkl_timeval *tv)
+{
+	long data[2] = { 0, _LKL_NSIG/8 };
+	struct lkl_timespec ts;
+	lkl_time_t extra_secs;
+	const lkl_time_t max_time = ((1ULL<<8)*sizeof(time_t)-1)-1;
+
+	if (tv) {
+		if (tv->tv_sec < 0 || tv->tv_usec < 0)
+			return -LKL_EINVAL;
+
+		extra_secs = tv->tv_usec / 1000000;
+		ts.tv_nsec = tv->tv_usec % 1000000 * 1000;
+		ts.tv_sec = extra_secs > max_time - tv->tv_sec ?
+			max_time : tv->tv_sec + extra_secs;
+	}
+	return lkl_sys_pselect6(n, rfds, wfds, efds, tv ?
+				(struct __lkl__kernel_timespec *)&ts : 0, data);
+}
+#endif
+
+#ifdef __lkl__NR_ppoll
+/**
+ * lkl_sys_poll - wrapper for lkl_sys_ppoll
+ */
+static inline long lkl_sys_poll(struct lkl_pollfd *fds, int n, int timeout)
+{
+	return lkl_sys_ppoll(fds, n, timeout >= 0 ?
+			     (struct __lkl__kernel_timespec *)
+			     &((struct lkl_timespec){ .tv_sec = timeout/1000,
+				   .tv_nsec = timeout%1000*1000000 }) : 0,
+			     0, _LKL_NSIG/8);
+}
+#endif
+
+#ifdef __lkl__NR_epoll_create1
+/**
+ * lkl_sys_epoll_create - wrapper for lkl_sys_epoll_create1
+ */
+static inline long lkl_sys_epoll_create(int size)
+{
+	return lkl_sys_epoll_create1(0);
+}
+#endif
+
+#ifdef __lkl__NR_epoll_pwait
+/**
+ * lkl_sys_epoll_wait - wrapper for lkl_sys_epoll_pwait
+ */
+static inline long lkl_sys_epoll_wait(int fd, struct lkl_epoll_event *ev,
+				      int cnt, int to)
+{
+	return lkl_sys_epoll_pwait(fd, ev, cnt, to, 0, _LKL_NSIG/8);
+}
+#endif
+
+
+
+/**
+ * lkl_strerror - returns a string describing the given error code
+ *
+ * @err - error code
+ * @returns - string for the given error code
+ */
+const char *lkl_strerror(int err);
+
+/**
+ * lkl_perror - prints a string describing the given error code
+ *
+ * @msg - prefix for the error message
+ * @err - error code
+ */
+void lkl_perror(char *msg, int err);
+
+
+#ifdef __cplusplus
+}
+#endif
+
+#endif
diff --git a/tools/lkl/include/lkl_host.h b/tools/lkl/include/lkl_host.h
new file mode 100644
index 000000000000..b5f96096fe69
--- /dev/null
+++ b/tools/lkl/include/lkl_host.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LKL_HOST_H
+#define _LKL_HOST_H
+
+#ifdef __cplusplus
+extern "C" {
+#endif
+
+#include <lkl/asm/host_ops.h>
+#include <lkl.h>
+
+extern struct lkl_host_operations lkl_host_ops;
+
+
+#ifdef __cplusplus
+}
+#endif
+
+#endif
diff --git a/tools/lkl/lib/.gitignore b/tools/lkl/lib/.gitignore
new file mode 100644
index 000000000000..427ae0273fdd
--- /dev/null
+++ b/tools/lkl/lib/.gitignore
@@ -0,0 +1,3 @@
+lkl.o
+liblkl.a
+
diff --git a/tools/lkl/lib/Build b/tools/lkl/lib/Build
new file mode 100644
index 000000000000..8b137891791f
--- /dev/null
+++ b/tools/lkl/lib/Build
@@ -0,0 +1 @@
+
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
