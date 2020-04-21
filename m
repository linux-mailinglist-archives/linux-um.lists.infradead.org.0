Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC0A1B2006
	for <lists+linux-um@lfdr.de>; Tue, 21 Apr 2020 09:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=87XHpcWN+IiojC4GVT0vAw53u1f+NJ0RpXGUKAYaT20=; b=AePYkU2cnVtStX
	60sSP4gqUKf/9+zXsxsFQNX0QWoX55KdjjxIZtEySMnNuH9tA+NbzygdZOORGOFdLC3MLi1UFIrmi
	ipYLwSvgpqVjOZOjoHLH35r2n3mxcwUX2yJ9eugshU3O+LS5LOyJmJ/L7++1WtQZLyxAXYPhqcALT
	tARvfFbkujrE3QUij8l2qBdqpiL1O6r88T4ovnR6HSvOvfjpj4vFDxs8x+oJr9SpcN7jesvNjsTei
	6XEPkDgDIFnd7gOLuTt+zle+ce7WSzPBTK7wRPnxlJFRptYhLzOSCOGACsHWW2LuLELw26wJw5OKQ
	47X/J9oZs7v6juMbFlmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnW8-0001Ud-8X; Tue, 21 Apr 2020 07:40:28 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnW4-0001QD-GP
 for linux-um@lists.infradead.org; Tue, 21 Apr 2020 07:40:26 +0000
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net
 [126.90.202.47]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 03L7dstT022941;
 Tue, 21 Apr 2020 16:39:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 03L7dstT022941
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587454796;
 bh=Zv91K2NSW1zIQUpi6lT8xcoiatIzC59/CNYR7v9KfnQ=;
 h=From:To:Cc:Subject:Date:From;
 b=Wym/VORynZ20qd8805OsjPiCKCp2lfUp/3sN0Q4KmKUws9o7Yl4rm+TpMd/7+dRRn
 v2rugZ3q0v2SLwUYMBhH41UDZdMqpf1815hSaHzp5bWRkvanoA5O7GeFVg8BPuqWiB
 CDd0uvDaJOihngQDK2hcA5W9DRHYtW7lkY9LtYSIrReTryePAKAFXdDlAjSdnoenhJ
 Gqvxf8fwlOyJywJxrqqvCbFVkcLzsxaxLJmupiQWS0gncVYDsBxwhgZYM/Z/OVHEmx
 MlIgCvtCjSP6mg4EkrgzfUHs32pWpHmjhi18gvPEQ55RvUwcrlxBBiGXHsR8daN6C3
 +2OlWPwvcDQLQ==
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>
Subject: [PATCH 1/2] x86: check CONFIG options instead of __arch_um__
Date: Tue, 21 Apr 2020 16:39:46 +0900
Message-Id: <20200421073947.586662-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_004024_907146_9AC69E4E 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Richard Weinberger <richard@nod.at>, Masahiro Yamada <masahiroy@kernel.org>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Jeff Dike <jdike@addtoit.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

If the intention is to check i386/x86_64 excluding UML, we can use
CONFIG options instead.

There are only some users of __arch_um__. This commit replaces them,
then removes the __arch_um__ definition.

The original reason for checking __i386__ / __x86_64__ was perhaps
because lib/raid6/algos.c is built not only for the kernel but also
for the user-space test program.

However, lib/raid6/test/Makefile passes -DCONFIG_X86, -DCONFIG_X86_32,
and -DCONFIG_X86_64 for this case. So, I do not see a good reason to
not use CONFIG options here.

What is confusing is, CONFIG_X86_{32,64} is defined not only in
arch/x86/Kconfig, but also in arch/x86/um/Kconfig. To exlucde UML,
we need to check CONFIG_X86 too.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
---

 arch/um/Makefile  | 2 +-
 kernel/signal.c   | 2 +-
 lib/raid6/algos.c | 6 ++++--
 lib/raid6/x86.h   | 2 +-
 4 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/um/Makefile b/arch/um/Makefile
index d2daa206872d..064fbed7a4e9 100644
--- a/arch/um/Makefile
+++ b/arch/um/Makefile
@@ -62,7 +62,7 @@ KBUILD_CPPFLAGS += -I$(srctree)/$(HOST_DIR)/um
 #
 # These apply to USER_CFLAGS to.
 
-KBUILD_CFLAGS += $(CFLAGS) $(CFLAGS-y) -D__arch_um__ \
+KBUILD_CFLAGS += $(CFLAGS) $(CFLAGS-y) \
 	$(ARCH_INCLUDE) $(MODE_INCLUDE) -Dvmap=kernel_vmap	\
 	-Dlongjmp=kernel_longjmp -Dsetjmp=kernel_setjmp \
 	-Din6addr_loopback=kernel_in6addr_loopback \
diff --git a/kernel/signal.c b/kernel/signal.c
index 713104884414..1af3ad707b02 100644
--- a/kernel/signal.c
+++ b/kernel/signal.c
@@ -1246,7 +1246,7 @@ static void print_fatal_signal(int signr)
 	struct pt_regs *regs = signal_pt_regs();
 	pr_info("potentially unexpected fatal signal %d.\n", signr);
 
-#if defined(__i386__) && !defined(__arch_um__)
+#if defined(CONFIG_X86) && defined(CONFIG_X86_32)
 	pr_info("code at %08lx: ", regs->ip);
 	{
 		int i;
diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
index 6d5e5000fdd7..978fa19efbbf 100644
--- a/lib/raid6/algos.c
+++ b/lib/raid6/algos.c
@@ -29,7 +29,8 @@ struct raid6_calls raid6_call;
 EXPORT_SYMBOL_GPL(raid6_call);
 
 const struct raid6_calls * const raid6_algos[] = {
-#if defined(__i386__) && !defined(__arch_um__)
+#ifdef CONFIG_X86
+#if defined(CONFIG_X86_32)
 #ifdef CONFIG_AS_AVX512
 	&raid6_avx512x2,
 	&raid6_avx512x1,
@@ -43,7 +44,7 @@ const struct raid6_calls * const raid6_algos[] = {
 	&raid6_mmxx2,
 	&raid6_mmxx1,
 #endif
-#if defined(__x86_64__) && !defined(__arch_um__)
+#if defined(CONFIG_X86_64)
 #ifdef CONFIG_AS_AVX512
 	&raid6_avx512x4,
 	&raid6_avx512x2,
@@ -56,6 +57,7 @@ const struct raid6_calls * const raid6_algos[] = {
 	&raid6_sse2x2,
 	&raid6_sse2x1,
 #endif
+#endif /* CONFIG_X86 */
 #ifdef CONFIG_ALTIVEC
 	&raid6_vpermxor8,
 	&raid6_vpermxor4,
diff --git a/lib/raid6/x86.h b/lib/raid6/x86.h
index 9a6ff37115e7..0436b32f7709 100644
--- a/lib/raid6/x86.h
+++ b/lib/raid6/x86.h
@@ -14,7 +14,7 @@
 #ifndef LINUX_RAID_RAID6X86_H
 #define LINUX_RAID_RAID6X86_H
 
-#if (defined(__i386__) || defined(__x86_64__)) && !defined(__arch_um__)
+#ifdef CONFIG_X86
 
 #ifdef __KERNEL__ /* Real code */
 
-- 
2.25.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
