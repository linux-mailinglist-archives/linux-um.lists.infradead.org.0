Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7E4E1119
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFjp7Jm3LjiBK33B/k//GvgU9LBchdqeSN+2MY7tfUY=; b=GsJggkHVHbeSCL
	oAGfCzi3DLVBPhUwyDOwZALCo1bRlPdWNWWxmTbp6ggjxNXfe13zqBUmlKN2ukYDQithFfM5SbVrk
	lPZuOczpQFKo/AHOv6pnaTdMtppcK7Iu1fZ4IDElK7HaV3QGwKYJV8LUJJ0b+wYm/qH3PpULhmyTH
	IX4wJ3RjLO2/2Mrs+3nRLd0vWFwgK3EqrTbKEPtdpcKRiqBoHZ2UBJssWCGdbLOSEezJHf/pFIS0n
	QI3csu/CezoMDCUjqpdFSWm8aF98tvdQQiK0tnr9aU1Q52vc5GY57dP+LgXEBW5h0xk2ScSyPugjD
	ybUdKlg0D3yDBRqGRq9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8Qc-00024d-4O; Wed, 23 Oct 2019 04:39:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QN-0001rn-6B
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:18 +0000
Received: by mail-pg1-x543.google.com with SMTP id c8so6538851pgb.2
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+gHzXqYAVaQ1x2qwChj9LgcOMtcG5AUeOmx6iKsRGTA=;
 b=AXLpH56tSps9RygiIHMpvRfhRvRCPbELsVyYtgXt7Y3TWMyy1YfOdQM95KoNZ9SKjl
 wsGX6Ys7eot88qj7bzRF4jZeVMimnxF/XykB3XezJGznOcmTTF5YT+2uuDa3UiZSvZ6o
 Hzs0D1EXgtnTY1PD5rXSIHgk2XaFPEVYgCrJ8ed0QofQ7Ndo32XOrzvtl84qlJPl4jcf
 xDYJx/bvnejxP2ApLDT+EdUSy/mbvqJbw1tXMLSmVjTRz2bn9pQns1+yys589gpw3S6T
 ug8GyR/sW/XgNCHYXkYryzD4NBURPCbiLc4IlFTdKIlEcnTqSdmGJmH3uqIdfWG6Vz4Q
 3r2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+gHzXqYAVaQ1x2qwChj9LgcOMtcG5AUeOmx6iKsRGTA=;
 b=h+r2HSJsSTp3pu23MZxtrIbfPLReUi4f8EopEkHMgRrJqX6UD1hXQI5tUtvsPBnnyP
 Ys1kLsbym0EkQRhtrRXLI23nhvkej+nMmhhfJBL3RxgnWcsD68El4MseLUd1BLLLjxFk
 BmiP56E7svUauPHd4/Rk5KVRM+GvgEpejrecSz/oFrVjnBh1NHorkFRmD1/j0FvpK5Up
 AyVHQCVpCXVXLpQgbEveUsh4MVVcHZXw646hAR3p6crde2TLypzzpxR71OJvLWotP7Z6
 eyicHSS8NUiVAvab/L8uS7J6VddiYGQU5gWqT5LFQC6ZunwqN8iSHt/2UmPN9d0Ohxcc
 2wbw==
X-Gm-Message-State: APjAAAWrP3nLa16IUT1o86rgzMiZuJgns/9nQ+M3dAZwB9L2Sl5+Uvgd
 WBjQNPhrYXOVJtRVcH4AXlQ=
X-Google-Smtp-Source: APXvYqxkiMbWJdJLvZpGs5g/L+5vNlQc1sb4S/d1c/idYtzHLxmCuxG7N23a8pBTx/fph02FAxuh/A==
X-Received: by 2002:a63:3441:: with SMTP id b62mr8051779pga.274.1571805545423; 
 Tue, 22 Oct 2019 21:39:05 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id m12sm23414146pff.66.2019.10.22.21.38.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:39:02 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 944EC20199580E; Wed, 23 Oct 2019 13:38:53 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 14/47] lkl tools: skeleton for host side library,
 tests and tools
Date: Wed, 23 Oct 2019 13:37:48 +0900
Message-Id: <06adaf7e2d1344fa60f8466d5e269cf4c131e015.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213907_347104_81A04F46 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: "H . K . Jerry Chu" <hkchu@google.com>, Xiao Jia <xiaoj@google.com>,
 Conrad Meyer <cem@FreeBSD.org>, Octavian Purdila <tavi.purdila@gmail.com>,
 Motomu Utsumi <motomuman@gmail.com>, Akira Moroo <retrage01@gmail.com>,
 Petros Angelatos <petrosagg@gmail.com>, Yuan Liu <liuyuan@google.com>,
 Thomas Liebetraut <thomas@tommie-lie.de>, Mark Stillwell <mark@stillwell.me>,
 Patrick Collins <pscollins@google.com>,
 Ben Wolsieffer <benwolsieffer@gmail.com>,
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
 tools/lkl/.gitignore         |  14 +
 tools/lkl/Build              |   6 +
 tools/lkl/Makefile           | 130 +++++
 tools/lkl/Makefile.autoconf  | 114 +++++
 tools/lkl/Targets            |  27 +
 tools/lkl/include/.gitignore |   1 +
 tools/lkl/include/lkl.h      | 928 +++++++++++++++++++++++++++++++++++
 tools/lkl/include/lkl_host.h | 160 ++++++
 tools/lkl/lib/.gitignore     |   3 +
 tools/lkl/lib/Build          |  25 +
 10 files changed, 1408 insertions(+)
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
index 000000000000..796785986336
--- /dev/null
+++ b/tools/lkl/.gitignore
@@ -0,0 +1,14 @@
+tests/boot
+fs2tar
+cptofs
+cpfromfs
+lklfuse
+tests/valgrind*.xml
+*.exe
+*.dll
+tests/net-test
+tests/disk
+Makefile.conf
+include/lkl_autoconf.h
+tests/autoconf.sh
+*.pyc
diff --git a/tools/lkl/Build b/tools/lkl/Build
new file mode 100644
index 000000000000..6048440d0e1b
--- /dev/null
+++ b/tools/lkl/Build
@@ -0,0 +1,6 @@
+CFLAGS_lklfuse.o += -D_FILE_OFFSET_BITS=64
+
+cptofs-$(LKL_HOST_CONFIG_ARCHIVE) += cptofs.o
+fs2tar-$(LKL_HOST_CONFIG_ARCHIVE) += fs2tar.o
+lklfuse-$(LKL_HOST_CONFIG_FUSE) += lklfuse.o
+
diff --git a/tools/lkl/Makefile b/tools/lkl/Makefile
new file mode 100644
index 000000000000..7e0cb0d01bf2
--- /dev/null
+++ b/tools/lkl/Makefile
@@ -0,0 +1,130 @@
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
+-include ../scripts/Makefile.include
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
+	$(Q)$(MAKE) -C ../.. ARCH=um SUBARCH=lkl $(KOPT) $(KCONFIG)
+# this workaround is for arm32 linker (ld.gold)
+	$(Q)export PATH=$(srctree)/tools/lkl/bin/:${PATH} ;\
+	$(MAKE) -C ../.. ARCH=um SUBARCH=lkl $(KOPT) install INSTALL_PATH=$(OUTPUT)
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
+$(OUTPUT)cpfromfs$(EXESUF): cptofs$(EXESUF)
+	$(Q)if ! [ -e $@ ]; then ln -s $< $@; fi
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
+run-tests:
+	./tests/run.py $(tests)
+
+FORCE: ;
+.PHONY: all clean FORCE run-tests
+.PHONY: headers_install libraries_install programs_install install
+.NOTPARALLEL : lib/lkl.o
+.SECONDARY:
+
diff --git a/tools/lkl/Makefile.autoconf b/tools/lkl/Makefile.autoconf
new file mode 100644
index 000000000000..1c3a053a8e94
--- /dev/null
+++ b/tools/lkl/Makefile.autoconf
@@ -0,0 +1,114 @@
+POSIX_HOSTS=elf64-x86-64 elf32-i386 elf64-x86-64-freebsd elf32-littlearm elf64-littleaarch64
+NT_HOSTS=pe-i386 pe-x86-64
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
+define android_host
+  $(call set_autoconf_var,ANDROID,y)
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
+  $(if $(call is_defined,__ANDROID__),$(call android_host),LDLIBS += -lrt -lpthread)
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
+define nt64_host
+  $(call set_autoconf_var,NEEDS_LARGP,y)
+  CFLAGS += -Wl,--enable-auto-image-base -Wl,--image-base -Wl,0x10000000 \
+  	 -Wl,--out-implib=$(OUTPUT)liblkl.dll.a -Wl,--export-all-symbols \
+	 -Wl,--enable-auto-import
+  LDFLAGS +=-Wl,--image-base -Wl,0x10000000 -Wl,--enable-auto-image-base \
+   	   -Wl,--out-implib=$(OUTPUT)liblkl.dll.a -Wl,--export-all-symbols \
+	   -Wl,--enable-auto-import
+endef
+
+define nt_host
+  $(call set_autoconf_var,NT,y)
+  KOPT = "KALLSYMS_EXTRA_PASS=1"
+  LDLIBS += -lws2_32
+  EXESUF := .exe
+  SOSUF := .dll
+  CFLAGS += -Iinclude/mingw32
+  $(if $(filter $(1),pe-x86-64),$(call nt64_host))
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
+  $(if $(filter $(LD_FMT),$(NT_HOSTS)),$(call nt_host,$(LD_FMT)))
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
index 000000000000..e6394fae4526
--- /dev/null
+++ b/tools/lkl/Targets
@@ -0,0 +1,27 @@
+libs-y += lib/liblkl
+
+ifneq ($(LKL_HOST_CONFIG_BSD),y)
+libs-$(LKL_HOST_CONFIG_POSIX) += lib/hijack/liblkl-hijack
+endif
+LDFLAGS_lib/hijack/liblkl-hijack-y += -shared -nodefaultlibs
+LDLIBS_lib/hijack/liblkl-hijack-y += -ldl
+LDLIBS_lib/hijack/liblkl-hijack-$(LKL_HOST_CONFIG_ARM) += -lgcc -lc
+LDLIBS_lib/hijack/liblkl-hijack-$(LKL_HOST_CONFIG_AARCH64) += -lc
+LDLIBS_lib/hijack/liblkl-hijack-$(LKL_HOST_CONFIG_I386) += -lc_nonshared
+
+progs-$(LKL_HOST_CONFIG_FUSE) += lklfuse
+LDLIBS_lklfuse-y := -lfuse
+
+progs-$(LKL_HOST_CONFIG_ARCHIVE) += fs2tar
+LDLIBS_fs2tar-y := -larchive
+LDLIBS_fs2tar-$(LKL_HOST_CONFIG_NEEDS_LARGP) += -largp
+
+
+progs-$(LKL_HOST_CONFIG_ARCHIVE) += cptofs
+LDLIBS_cptofs-y := -larchive
+LDLIBS_cptofs-$(LKL_HOST_CONFIG_NEEDS_LARGP) += -largp
+
+progs-y += tests/boot
+progs-y += tests/disk
+progs-y += tests/net-test
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
index 000000000000..65f151f9c047
--- /dev/null
+++ b/tools/lkl/include/lkl.h
@@ -0,0 +1,928 @@
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
+/**
+ * struct lkl_dev_blk_ops - block device host operations, defined in lkl_host.h.
+ */
+struct lkl_dev_blk_ops;
+
+/**
+ * lkl_disk - host disk handle
+ *
+ * @dev - a pointer to 'virtio_blk_dev' structure for this disk
+ * @fd - a POSIX file descriptor that can be used by preadv/pwritev
+ * @handle - an NT file handle that can be used by ReadFile/WriteFile
+ */
+struct lkl_disk {
+	void *dev;
+	union {
+		int fd;
+		void *handle;
+	};
+	struct lkl_dev_blk_ops *ops;
+};
+
+/**
+ * lkl_disk_add - add a new disk
+ *
+ * @disk - the host disk handle
+ * @returns a disk id (0 is valid) or a strictly negative value in case of error
+ */
+int lkl_disk_add(struct lkl_disk *disk);
+
+/**
+ * lkl_disk_remove - remove a disk
+ *
+ * This function makes a cleanup of the @disk's virtio_dev structure
+ * that was initialized by lkl_disk_add before.
+ *
+ * @disk - the host disk handle
+ */
+int lkl_disk_remove(struct lkl_disk disk);
+
+/**
+ * lkl_get_virtiolkl_encode_dev_from_sysfs_blkdev - extract device id from sysfs
+ *
+ * This function returns the device id for the given sysfs dev node.
+ * The content of the node has to be in the form 'MAJOR:MINOR'.
+ * Also, this function expects an absolute path which means that sysfs
+ * already has to be mounted at the given path
+ *
+ * @sysfs_path - absolute path to the sysfs dev node
+ * @pdevid - pointer to memory where dev id will be returned
+ * @returns - 0 on success, a negative value on error
+ */
+int lkl_encode_dev_from_sysfs(const char *sysfs_path, uint32_t *pdevid);
+
+/**
+ * lkl_get_virtio_blkdev - get device id of a disk (partition)
+ *
+ * This function returns the device id for the given disk.
+ *
+ * @disk_id - the disk id identifying the disk
+ * @part - disk partition or zero for full disk
+ * @pdevid - pointer to memory where dev id will be returned
+ * @returns - 0 on success, a negative value on error
+ */
+int lkl_get_virtio_blkdev(int disk_id, unsigned int part, uint32_t *pdevid);
+
+
+/**
+ * lkl_mount_dev - mount a disk
+ *
+ * This functions creates a device file for the given disk, creates a mount
+ * point and mounts the device over the mount point.
+ *
+ * @disk_id - the disk id identifying the disk to be mounted
+ * @part - disk partition or zero for full disk
+ * @fs_type - filesystem type
+ * @flags - mount flags
+ * @opts - additional filesystem specific mount options
+ * @mnt_str - a string that will be filled by this function with the path where
+ * the filesystem has been mounted
+ * @mnt_str_len - size of mnt_str
+ * @returns - 0 on success, a negative value on error
+ */
+long lkl_mount_dev(unsigned int disk_id, unsigned int part, const char *fs_type,
+		   int flags, const char *opts,
+		   char *mnt_str, unsigned int mnt_str_len);
+
+/**
+ * lkl_umount_dev - umount a disk
+ *
+ * This functions umounts the given disks and removes the device file and the
+ * mount point.
+ *
+ * @disk_id - the disk id identifying the disk to be mounted
+ * @part - disk partition or zero for full disk
+ * @flags - umount flags
+ * @timeout_ms - timeout to wait for the kernel to flush closed files so that
+ * umount can succeed
+ * @returns - 0 on success, a negative value on error
+ */
+long lkl_umount_dev(unsigned int disk_id, unsigned int part, int flags,
+		    long timeout_ms);
+
+/**
+ * lkl_umount_timeout - umount filesystem with timeout
+ *
+ * @path - the path to unmount
+ * @flags - umount flags
+ * @timeout_ms - timeout to wait for the kernel to flush closed files so that
+ * umount can succeed
+ * @returns - 0 on success, a negative value on error
+ */
+long lkl_umount_timeout(char *path, int flags, long timeout_ms);
+
+/**
+ * lkl_opendir - open a directory
+ *
+ * @path - directory path
+ * @err - pointer to store the error in case of failure
+ * @returns - a handle to be used when calling lkl_readdir
+ */
+struct lkl_dir *lkl_opendir(const char *path, int *err);
+
+/**
+ * lkl_fdopendir - open a directory
+ *
+ * @fd - file descriptor
+ * @err - pointer to store the error in case of failure
+ * @returns - a handle to be used when calling lkl_readdir
+ */
+struct lkl_dir *lkl_fdopendir(int fd, int *err);
+
+/**
+ * lkl_rewinddir - reset directory stream
+ *
+ * @dir - the directory handler as returned by lkl_opendir
+ */
+void lkl_rewinddir(struct lkl_dir *dir);
+
+/**
+ * lkl_closedir - close the directory
+ *
+ * @dir - the directory handler as returned by lkl_opendir
+ */
+int lkl_closedir(struct lkl_dir *dir);
+
+/**
+ * lkl_readdir - get the next available entry of the directory
+ *
+ * @dir - the directory handler as returned by lkl_opendir
+ * @returns - a lkl_dirent64 entry or NULL if the end of the directory stream is
+ * reached or if an error occurred; check lkl_errdir() to distinguish between
+ * errors or end of the directory stream
+ */
+struct lkl_linux_dirent64 *lkl_readdir(struct lkl_dir *dir);
+
+/**
+ * lkl_errdir - checks if an error occurred during the last lkl_readdir call
+ *
+ * @dir - the directory handler as returned by lkl_opendir
+ * @returns - 0 if no error occurred, or a negative value otherwise
+ */
+int lkl_errdir(struct lkl_dir *dir);
+
+/**
+ * lkl_dirfd - gets the file descriptor associated with the directory handle
+ *
+ * @dir - the directory handle as returned by lkl_opendir
+ * @returns - a positive value,which is the LKL file descriptor associated with
+ * the directory handle, or a negative value otherwise
+ */
+int lkl_dirfd(struct lkl_dir *dir);
+
+/**
+ * lkl_if_up - activate network interface
+ *
+ * @ifindex - the ifindex of the interface
+ * @returns - return 0 if no error: otherwise negative value returns
+ */
+int lkl_if_up(int ifindex);
+
+/**
+ * lkl_if_down - deactivate network interface
+ *
+ * @ifindex - the ifindex of the interface
+ * @returns - return 0 if no error: otherwise negative value returns
+ */
+int lkl_if_down(int ifindex);
+
+/**
+ * lkl_if_set_mtu - set MTU on interface
+ *
+ * @ifindex - the ifindex of the interface
+ * @mtu - the requested MTU size
+ * @returns - return 0 if no error: otherwise negative value returns
+ */
+int lkl_if_set_mtu(int ifindex, int mtu);
+
+/**
+ * lkl_if_set_ipv4 - set IPv4 address on interface
+ *
+ * @ifindex - the ifindex of the interface
+ * @addr - 4-byte IP address (i.e., struct in_addr)
+ * @netmask_len - prefix length of the @addr
+ * @returns - return 0 if no error: otherwise negative value returns
+ */
+int lkl_if_set_ipv4(int ifindex, unsigned int addr, unsigned int netmask_len);
+
+/**
+ * lkl_set_ipv4_gateway - add an IPv4 default route
+ *
+ * @addr - 4-byte IP address of the gateway (i.e., struct in_addr)
+ * @returns - return 0 if no error: otherwise negative value returns
+ */
+int lkl_set_ipv4_gateway(unsigned int addr);
+
+/**
+ * lkl_if_set_ipv4_gateway - add an IPv4 default route in rule table
+ *
+ * @ifindex - the ifindex of the interface, used for tableid calculation
+ * @addr - 4-byte IP address of the interface
+ * @netmask_len - prefix length of the @addr
+ * @gw_addr - 4-byte IP address of the gateway
+ * @returns - return 0 if no error: otherwise negative value returns
+ */
+int lkl_if_set_ipv4_gateway(int ifindex, unsigned int addr,
+		unsigned int netmask_len, unsigned int gw_addr);
+
+/**
+ * lkl_if_set_ipv6 - set IPv6 address on interface
+ * must be called after interface is up.
+ *
+ * @ifindex - the ifindex of the interface
+ * @addr - 16-byte IPv6 address (i.e., struct in6_addr)
+ * @netprefix_len - prefix length of the @addr
+ * @returns - return 0 if no error: otherwise negative value returns
+ */
+int lkl_if_set_ipv6(int ifindex, void *addr, unsigned int netprefix_len);
+
+/**
+ * lkl_set_ipv6_gateway - add an IPv6 default route
+ *
+ * @addr - 16-byte IPv6 address of the gateway (i.e., struct in6_addr)
+ * @returns - return 0 if no error: otherwise negative value returns
+ */
+int lkl_set_ipv6_gateway(void *addr);
+
+/**
+ * lkl_if_set_ipv6_gateway - add an IPv6 default route in rule table
+ *
+ * @ifindex - the ifindex of the interface, used for tableid calculation
+ * @addr - 16-byte IP address of the interface
+ * @netmask_len - prefix length of the @addr
+ * @gw_addr - 16-byte IP address of the gateway (i.e., struct in_addr)
+ * @returns - return 0 if no error: otherwise negative value returns
+ */
+int lkl_if_set_ipv6_gateway(int ifindex, void *addr,
+		unsigned int netmask_len, void *gw_addr);
+
+/**
+ * lkl_ifname_to_ifindex - obtain ifindex of an interface by name
+ *
+ * @name - string of an interface
+ * @returns - return an integer of ifindex if no error
+ */
+int lkl_ifname_to_ifindex(const char *name);
+
+/**
+ * lkl_netdev - host network device handle, defined in lkl_host.h.
+ */
+struct lkl_netdev;
+
+/**
+ * lkl_netdev_args - arguments to lkl_netdev_add
+ * @mac - optional MAC address for the device
+ * @offload - offload bits for the device
+ */
+struct lkl_netdev_args {
+	void *mac;
+	unsigned int offload;
+};
+
+/**
+ * lkl_netdev_add - add a new network device
+ *
+ * Must be called before calling lkl_start_kernel.
+ *
+ * @nd - the network device host handle
+ * @args - arguments that configs the netdev. Can be NULL
+ * @returns a network device id (0 is valid) or a strictly negative value in
+ * case of error
+ */
+#ifdef LKL_HOST_CONFIG_VIRTIO_NET
+int lkl_netdev_add(struct lkl_netdev *nd, struct lkl_netdev_args *args);
+#else
+static inline int lkl_netdev_add(struct lkl_netdev *nd,
+				 struct lkl_netdev_args *args)
+{
+	return -LKL_ENOSYS;
+}
+#endif
+
+/**
+ * lkl_netdev_remove - remove a previously added network device
+ *
+ * Attempts to release all resources held by a network device created
+ * via lkl_netdev_add.
+ *
+ * @id - the network device id, as return by @lkl_netdev_add
+ */
+#ifdef LKL_HOST_CONFIG_VIRTIO_NET
+void lkl_netdev_remove(int id);
+#else
+static inline void lkl_netdev_remove(int id)
+{
+}
+#endif
+
+/**
+ * lkl_netdev_free - frees a network device
+ *
+ * @nd - the network device to free
+ */
+#ifdef LKL_HOST_CONFIG_VIRTIO_NET
+void lkl_netdev_free(struct lkl_netdev *nd);
+#else
+static inline void lkl_netdev_free(struct lkl_netdev *nd)
+{
+}
+#endif
+
+/**
+ * lkl_netdev_get_ifindex - retrieve the interface index for a given network
+ * device id
+ *
+ * @id - the network device id
+ * @returns the interface index or a stricly negative value in case of error
+ */
+int lkl_netdev_get_ifindex(int id);
+
+/**
+ * lkl_netdev_tap_create - create TAP net_device for the virtio net backend
+ *
+ * @ifname - interface name for the TAP device. need to be configured
+ * on host in advance
+ * @offload - offload bits for the device
+ */
+#ifdef LKL_HOST_CONFIG_VIRTIO_NET
+struct lkl_netdev *lkl_netdev_tap_create(const char *ifname, int offload);
+#else
+static inline struct lkl_netdev *
+lkl_netdev_tap_create(const char *ifname, int offload)
+{
+	return NULL;
+}
+#endif
+
+/**
+ * lkl_netdev_dpdk_create - create DPDK net_device for the virtio net backend
+ *
+ * @ifname - interface name for the DPDK device. The name for DPDK device is
+ * only used for an internal use.
+ * @offload - offload bits for the device
+ * @mac - mac address pointer of dpdk-ed device
+ */
+#ifdef LKL_HOST_CONFIG_VIRTIO_NET_DPDK
+struct lkl_netdev *lkl_netdev_dpdk_create(const char *ifname, int offload,
+					unsigned char *mac);
+#else
+static inline struct lkl_netdev *
+lkl_netdev_dpdk_create(const char *ifname, int offload, unsigned char *mac)
+{
+	return NULL;
+}
+#endif
+
+/**
+ * lkl_netdev_vde_create - create VDE net_device for the virtio net backend
+ *
+ * @switch_path - path to the VDE switch directory. Needs to be started on host
+ * in advance.
+ */
+#ifdef LKL_HOST_CONFIG_VIRTIO_NET_VDE
+struct lkl_netdev *lkl_netdev_vde_create(const char *switch_path);
+#else
+static inline struct lkl_netdev *lkl_netdev_vde_create(const char *switch_path)
+{
+	return NULL;
+}
+#endif
+
+/**
+ * lkl_netdev_raw_create - create raw socket net_device for the virtio net
+ *                         backend
+ *
+ * @ifname - interface name for the snoop device.
+ */
+#ifdef LKL_HOST_CONFIG_VIRTIO_NET
+struct lkl_netdev *lkl_netdev_raw_create(const char *ifname);
+#else
+static inline struct lkl_netdev *lkl_netdev_raw_create(const char *ifname)
+{
+	return NULL;
+}
+#endif
+
+/**
+ * lkl_netdev_macvtap_create - create macvtap net_device for the virtio
+ * net backend
+ *
+ * @path - a file name for the macvtap device. need to be configured
+ * on host in advance
+ * @offload - offload bits for the device
+ */
+#ifdef LKL_HOST_CONFIG_VIRTIO_NET_MACVTAP
+struct lkl_netdev *lkl_netdev_macvtap_create(const char *path, int offload);
+#else
+static inline struct lkl_netdev *
+lkl_netdev_macvtap_create(const char *path, int offload)
+{
+	return NULL;
+}
+#endif
+
+/**
+ * lkl_netdev_pipe_create - create pipe net_device for the virtio
+ * net backend
+ *
+ * @ifname - a file name for the rx and tx pipe device. need to be configured
+ * on host in advance. delimiter is "|". e.g. "rx_name|tx_name".
+ * @offload - offload bits for the device
+ */
+#ifdef LKL_HOST_CONFIG_VIRTIO_NET
+struct lkl_netdev *lkl_netdev_pipe_create(const char *ifname, int offload);
+#else
+static inline struct lkl_netdev *
+lkl_netdev_pipe_create(const char *ifname, int offload)
+{
+	return NULL;
+}
+#endif
+
+/*
+ * lkl_register_dbg_handler- register a signal handler that loads a debug lib.
+ *
+ * The signal handler is triggered by Ctrl-Z. It creates a new pthread which
+ * call dbg_entrance().
+ *
+ * If you run the program from shell script, make sure you ignore SIGTSTP by
+ * "trap '' TSTP" in the shell script.
+ */
+void lkl_register_dbg_handler(void);
+
+/**
+ * lkl_add_neighbor - add a permanent arp entry
+ * @ifindex - the ifindex of the interface
+ * @af - address family of the ip address. Must be LKL_AF_INET or LKL_AF_INET6
+ * @ip - ip address of the entry in network byte order
+ * @mac - mac address of the entry
+ */
+int lkl_add_neighbor(int ifindex, int af, void *addr, void *mac);
+
+/**
+ * lkl_mount_fs - mount a file system type like proc, sys
+ * @fstype - file system type. e.g. proc, sys
+ * @returns - 0 on success. 1 if it's already mounted. negative on failure.
+ */
+int lkl_mount_fs(char *fstype);
+
+/**
+ * lkl_if_add_ip - add an ip address
+ * @ifindex - the ifindex of the interface
+ * @af - address family of the ip address. Must be LKL_AF_INET or LKL_AF_INET6
+ * @addr - ip address of the entry in network byte order
+ * @netprefix_len - prefix length of the @addr
+ */
+int lkl_if_add_ip(int ifindex, int af, void *addr, unsigned int netprefix_len);
+
+/**
+ * lkl_if_del_ip - add an ip address
+ * @ifindex - the ifindex of the interface
+ * @af - address family of the ip address. Must be LKL_AF_INET or LKL_AF_INET6
+ * @addr - ip address of the entry in network byte order
+ * @netprefix_len - prefix length of the @addr
+ */
+int lkl_if_del_ip(int ifindex, int af, void *addr, unsigned int netprefix_len);
+
+/**
+ * lkl_add_gateway - add a gateway
+ * @af - address family of the ip address. Must be LKL_AF_INET or LKL_AF_INET6
+ * @gwaddr - 4-byte IP address of the gateway (i.e., struct in_addr)
+ */
+int lkl_add_gateway(int af, void *gwaddr);
+
+/**
+ * XXX Should I use OIF selector?
+ * temporary table idx = ifindex * 2 + 0 <- ipv4
+ * temporary table idx = ifindex * 2 + 1 <- ipv6
+ */
+/**
+ * lkl_if_add_rule_from_addr - create an ip rule table with "from" selector
+ * @ifindex - the ifindex of the interface, used for table id calculation
+ * @af - address family of the ip address. Must be LKL_AF_INET or LKL_AF_INET6
+ * @saddr - network byte order ip address, "from" selector address of this rule
+ */
+int lkl_if_add_rule_from_saddr(int ifindex, int af, void *saddr);
+
+/**
+ * lkl_if_add_gateway - add gateway to rule table
+ * @ifindex - the ifindex of the interface, used for table id calculation
+ * @af - address family of the ip address. Must be LKL_AF_INET or LKL_AF_INET6
+ * @gwaddr - 4-byte IP address of the gateway (i.e., struct in_addr)
+ */
+int lkl_if_add_gateway(int ifindex, int af, void *gwaddr);
+
+/**
+ * lkl_if_add_linklocal - add linklocal route to rule table
+ * @ifindex - the ifindex of the interface, used for table id calculation
+ * @af - address family of the ip address. Must be LKL_AF_INET or LKL_AF_INET6
+ * @addr - ip address of the entry in network byte order
+ * @netprefix_len - prefix length of the @addr
+ */
+int lkl_if_add_linklocal(int ifindex, int af,  void *addr, int netprefix_len);
+
+/**
+ * lkl_if_wait_ipv6_dad - wait for DAD to be done for a ipv6 address
+ * must be called after interface is up
+ *
+ * @ifindex - the ifindex of the interface
+ * @addr - ip address of the entry in network byte order
+ */
+int lkl_if_wait_ipv6_dad(int ifindex, void *addr);
+
+/**
+ * lkl_set_fd_limit - set the maximum number of file descriptors allowed
+ * @fd_limit - fd max limit
+ */
+int lkl_set_fd_limit(unsigned int fd_limit);
+
+/**
+ * lkl_qdisc_add - set qdisc rule onto an interface
+ *
+ * @ifindex - the ifindex of the interface
+ * @root - the name of root class (e.g., "root");
+ * @type - the type of qdisc (e.g., "fq")
+ */
+int lkl_qdisc_add(int ifindex, const char *root, const char *type);
+
+/**
+ * lkl_qdisc_parse_add - Add a qdisc entry for an interface with strings
+ *
+ * @ifindex - the ifindex of the interface
+ * @entries - strings of qdisc configurations in the form of
+ *            "root|type;root|type;..."
+ */
+void lkl_qdisc_parse_add(int ifindex, const char *entries);
+
+/**
+ * lkl_sysctl - write a sysctl value
+ *
+ * @path - the path to an sysctl entry (e.g., "net.ipv4.tcp_wmem");
+ * @value - the value of the sysctl (e.g., "4096 87380 2147483647")
+ */
+int lkl_sysctl(const char *path, const char *value);
+
+/**
+ * lkl_sysctl_parse_write - Configure sysctl parameters with strings
+ *
+ * @sysctls - Configure sysctl parameters as the form of "key=value;..."
+ */
+void lkl_sysctl_parse_write(const char *sysctls);
+
+#ifdef __cplusplus
+}
+#endif
+
+#endif
diff --git a/tools/lkl/include/lkl_host.h b/tools/lkl/include/lkl_host.h
new file mode 100644
index 000000000000..ab9c3f2a69fb
--- /dev/null
+++ b/tools/lkl/include/lkl_host.h
@@ -0,0 +1,160 @@
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
+/**
+ * lkl_printf - print a message via the host print operation
+ *
+ * @fmt: printf like format string
+ */
+int lkl_printf(const char *fmt, ...);
+
+extern char lkl_virtio_devs[4096];
+
+#ifdef LKL_HOST_CONFIG_POSIX
+#include <sys/uio.h>
+#else
+struct iovec {
+	void *iov_base;
+	size_t iov_len;
+};
+#endif
+
+extern struct lkl_dev_blk_ops lkl_dev_blk_ops;
+
+/**
+ * struct lkl_blk_req - block device request
+ *
+ * @type: type of request
+ * @prio: priority of request - currently unused
+ * @sector: offset in units 512 bytes for read / write requests
+ * @buf: an array of buffers to be used for read / write requests
+ * @count: the number of buffers
+ */
+struct lkl_blk_req {
+#define LKL_DEV_BLK_TYPE_READ		0
+#define LKL_DEV_BLK_TYPE_WRITE		1
+#define LKL_DEV_BLK_TYPE_FLUSH		4
+#define LKL_DEV_BLK_TYPE_FLUSH_OUT	5
+	unsigned int type;
+	unsigned int prio;
+	unsigned long long sector;
+	struct iovec *buf;
+	int count;
+};
+
+/**
+ * struct lkl_dev_blk_ops - block device host operations
+ */
+struct lkl_dev_blk_ops {
+	/**
+	 * @get_capacity: returns the disk capacity in bytes
+	 *
+	 * @disk - the disk for which the capacity is requested;
+	 * @res - pointer to receive the capacity, in bytes;
+	 * @returns - 0 in case of success, negative value in case of error
+	 */
+	int (*get_capacity)(struct lkl_disk disk, unsigned long long *res);
+#define LKL_DEV_BLK_STATUS_OK		0
+#define LKL_DEV_BLK_STATUS_IOERR	1
+#define LKL_DEV_BLK_STATUS_UNSUP	2
+	/**
+	 * @request: issue a block request
+	 *
+	 * @disk - the disk the request is issued to;
+	 * @req - a request described by &struct lkl_blk_req
+	 */
+	int (*request)(struct lkl_disk disk, struct lkl_blk_req *req);
+};
+
+struct lkl_netdev {
+	struct lkl_dev_net_ops *ops;
+	int id;
+	uint8_t has_vnet_hdr: 1;
+};
+
+/**
+ * struct lkl_dev_net_ops - network device host operations
+ */
+struct lkl_dev_net_ops {
+	/**
+	 * @tx: writes a L2 packet into the net device
+	 *
+	 * The data buffer can only hold 0 or 1 complete packets.
+	 *
+	 * @nd - pointer to the network device;
+	 * @iov - pointer to the buffer vector;
+	 * @cnt - # of vectors in iov.
+	 *
+	 * @returns number of bytes transmitted
+	 */
+	int (*tx)(struct lkl_netdev *nd, struct iovec *iov, int cnt);
+
+	/**
+	 * @rx: reads a packet from the net device.
+	 *
+	 * It must only read one complete packet if present.
+	 *
+	 * If the buffer is too small for the packet, the implementation may
+	 * decide to drop it or trim it.
+	 *
+	 * @nd - pointer to the network device
+	 * @iov - pointer to the buffer vector to store the packet
+	 * @cnt - # of vectors in iov.
+	 *
+	 * @returns number of bytes read for success or < 0 if error
+	 */
+	int (*rx)(struct lkl_netdev *nd, struct iovec *iov, int cnt);
+
+#define LKL_DEV_NET_POLL_RX		1
+#define LKL_DEV_NET_POLL_TX		2
+#define LKL_DEV_NET_POLL_HUP		4
+
+	/**
+	 * @poll: polls a net device
+	 *
+	 * Supports the following events: LKL_DEV_NET_POLL_RX
+	 * (readable), LKL_DEV_NET_POLL_TX (writable) or
+	 * LKL_DEV_NET_POLL_HUP (the close operations has been issued
+	 * and we need to clean up). Blocks until one event is
+	 * available.
+	 *
+	 * @nd - pointer to the network device
+	 *
+	 * @returns - LKL_DEV_NET_POLL_RX, LKL_DEV_NET_POLL_TX,
+	 * LKL_DEV_NET_POLL_HUP or a negative value for errors
+	 */
+	int (*poll)(struct lkl_netdev *nd);
+
+	/**
+	 * @poll_hup: make poll wakeup and return LKL_DEV_NET_POLL_HUP
+	 *
+	 * @nd - pointer to the network device
+	 */
+	void (*poll_hup)(struct lkl_netdev *nd);
+
+	/**
+	 * @free: frees a network device
+	 *
+	 * Implementation must release its resources and free the network device
+	 * structure.
+	 *
+	 * @nd - pointer to the network device
+	 */
+	void (*free)(struct lkl_netdev *nd);
+};
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
index 000000000000..719c7308c830
--- /dev/null
+++ b/tools/lkl/lib/Build
@@ -0,0 +1,25 @@
+CFLAGS_posix-host.o += -D_FILE_OFFSET_BITS=64
+CFLAGS_virtio_net_vde.o += $(pkg-config --cflags vdeplug 2>/dev/null)
+CFLAGS_nt-host.o += -D_WIN32_WINNT=0x0600
+
+liblkl-y += fs.o
+liblkl-y += iomem.o
+liblkl-y += net.o
+liblkl-y += jmp_buf.o
+liblkl-$(LKL_HOST_CONFIG_POSIX) += posix-host.o
+liblkl-$(LKL_HOST_CONFIG_NT) += nt-host.o
+liblkl-y += utils.o
+liblkl-y += virtio_blk.o
+liblkl-y += virtio.o
+liblkl-y += dbg.o
+liblkl-y += dbg_handler.o
+liblkl-$(LKL_HOST_CONFIG_VIRTIO_NET) += virtio_net.o
+liblkl-$(LKL_HOST_CONFIG_VIRTIO_NET) += virtio_net_fd.o
+liblkl-$(LKL_HOST_CONFIG_VIRTIO_NET) += virtio_net_tap.o
+liblkl-$(LKL_HOST_CONFIG_VIRTIO_NET) += virtio_net_raw.o
+liblkl-$(LKL_HOST_CONFIG_VIRTIO_NET_MACVTAP) += virtio_net_macvtap.o
+liblkl-$(LKL_HOST_CONFIG_VIRTIO_NET_DPDK) += virtio_net_dpdk.o
+liblkl-$(LKL_HOST_CONFIG_VIRTIO_NET_VDE) += virtio_net_vde.o
+liblkl-$(LKL_HOST_CONFIG_VIRTIO_NET) += virtio_net_pipe.o
+liblkl-y += ../../perf/pmu-events/jsmn.o
+liblkl-y += config.o
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
