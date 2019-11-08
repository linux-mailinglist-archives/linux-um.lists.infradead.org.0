Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A00F5938
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 22:10:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTH5O2fn0vTEEScj98e0pXmDFzSLdoMUutU964F8UsM=; b=WV96d6NhWrhJRw
	4oFSGaacBWpDd9LAumVc/ThLHB+028umPXzVKLU/T6ltaIYk5p3dkcrBpfjo3tqIu5aN46DoeG2p4
	ppKrHT6zbitgfIYOWnwTRC9j25kfAhh6t5oJ7mV7aZw7S/2iOUnvOAy30Js56+oNWNFAMoVvdr90B
	4+q9nQNd/dmJgT+EKIcOSSBYMlNUl6oUvwLqrx/N9KcoZtIox8iiXLNvEpZpf70gRvxKB8lUZKsW0
	PowHvHhuvynfpYlOEw3ERKpNwFt7VyRFEXukhmCbvtObJax26mLz8rV7yqsrQaj7Dhs9wAsCUzrCn
	n6LT9VPcp5N2ogkQ/grw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTBWh-0000jW-Rg; Fri, 08 Nov 2019 21:10:39 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBWd-0000iK-Ih
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 21:10:37 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M3lkT-1iTSce3JNz-000qeu; Fri, 08 Nov 2019 22:09:27 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "David S. Miller" <davem@davemloft.net>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, x86@kernel.org,
 Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH 03/23] y2038: vdso: change timeval to __kernel_old_timeval
Date: Fri,  8 Nov 2019 22:07:23 +0100
Message-Id: <20191108210824.1534248-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191108210236.1296047-1-arnd@arndb.de>
References: <20191108210236.1296047-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:VLIICAlTXnc6akV8I31bwvzXwDpY0cN0rydeLsQ3qT4lpr37nsE
 QSig7L9+fEYaUu4VulfxoNH+E4reHQ6RGrJbyz6AENXlp2ZEvLfgcY5zMAWMTtfjhtb9edx
 ThuUA780pWF4C2g4IuqR0gBlX5zv2mPKayttxb2UIkHe16yvjCZTYmmmavae5t5ZhdPPiRv
 OVGfDhmMw8AlwVhNlpN+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2XmZ2WmhQSs=:NtEfBD4YRcAIUdi0aMJ9Mm
 Mb4MrEng20SlCkVVAtea6ffQ6TULJ8SxAulod/wh653pQ191y5a8Xt10083lB+77jDbyi4+vK
 MDPPbVDUw0opOuiZldymkKMNZhOr8UO10SDtogxW8SXOgk0rhSB8Cuw9mdlktFSIWkUEEWHCI
 0ElYr/fvDtAlD4LLLkQ/uM2yHFlbFaWwkz8s3F5RB5+NgS5dyQzrnM0v8fZJY+zllVf/nLHHg
 S+JdA/xXJmfin7xMl3GN8tXVcoaVJivmYpohnP8QPHHer9yOutJpyAQkmm2xkfT7h0Igsu3oU
 X7muOLP+G+TGYA13w4IduabKZm9OUyfp5uiwxnvgWOPSb/mTkZzHPmo24nqv9omNrbgRVXXU7
 2niBolECHBbWEeRl1dGen3sUQ7GZ4qbUoUFoUp+i08S7bqkr55zs1TDHv7eUCwQm62DLz5crv
 C8TlnwrkMQDuNh2GBssvXpj8kYuiUDzF4ktKGI1rpKi5EY/V+fSNMZwlaPqA7OqXF6U2JoFq4
 e9BFBX6PWHsDUKdIXE5ecwqwRsSlvyXIOmOCRIanfX05ssEC+a1ha6njy87yln9bUWDP0tkaT
 N2uGm6uY6keDg0rUIdDm344DVUK19EuWbIknJb5TEkWdzzA85DCgwHBXbB82XpfvZSJKjGTUJ
 8K/Or/oyje4QwbXSajyrofGYCVLUZd5J20QQom5N/BEI1jgoHhzm7BKPrqJlDrq+o1YRcXBrR
 NyGWFUaGrsk0KRRa1VAVfG5R6N8Hbgd5U7vg1qjDCdjYmTAiTEab5ZC+Iw5iTZHVOD4p8p1gD
 yqRjJzL1IDd9qAlDwHeRWKbOoQ+545KRPzlvfMBBBmEn8DURYyTREjntT8XHg8KqjjNQ4FNl+
 tGkJFPgb3klzzrokdFpg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_131035_902973_0E878403 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Arnd Bergmann <arnd@arndb.de>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The gettimeofday() function in vdso uses the traditional 'timeval'
structure layout, which will be incompatible with future versions of
glibc on 32-bit architectures that use a 64-bit time_t.

This interface is problematic for y2038, when time_t overflows on 32-bit
architectures, but the plan so far is that a libc with 64-bit time_t
will not call into the gettimeofday() vdso helper at all, and only
have a method for entering clock_gettime().  This means we don't have
to fix it here, though we probably want to add a new clock_gettime()
entry point using a 64-bit version of 'struct timespec' at some point.

Changing the vdso code to use __kernel_old_timeval helps isolate
this usage from the other ones that still need to be fixed properly,
and it gets us closer to removing the 'timeval' definition from the
kernel sources.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/nds32/kernel/vdso/gettimeofday.c |  6 +++---
 arch/powerpc/kernel/asm-offsets.c     |  8 ++++----
 arch/sparc/vdso/vclock_gettime.c      | 12 ++++++------
 arch/x86/entry/vsyscall/vsyscall_64.c |  2 +-
 arch/x86/um/vdso/um_vdso.c            |  4 ++--
 5 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/nds32/kernel/vdso/gettimeofday.c b/arch/nds32/kernel/vdso/gettimeofday.c
index b02581891c33..1e69fd5b067b 100644
--- a/arch/nds32/kernel/vdso/gettimeofday.c
+++ b/arch/nds32/kernel/vdso/gettimeofday.c
@@ -230,10 +230,10 @@ notrace int __vdso_clock_getres(clockid_t clk_id, struct timespec *res)
 	return 0;
 }
 
-static notrace inline int gettimeofday_fallback(struct timeval *_tv,
+static notrace inline int gettimeofday_fallback(struct __kernel_old_timeval *_tv,
 						struct timezone *_tz)
 {
-	register struct timeval *tv asm("$r0") = _tv;
+	register struct __kernel_old_timeval *tv asm("$r0") = _tv;
 	register struct timezone *tz asm("$r1") = _tz;
 	register int ret asm("$r0");
 
@@ -246,7 +246,7 @@ static notrace inline int gettimeofday_fallback(struct timeval *_tv,
 	return ret;
 }
 
-notrace int __vdso_gettimeofday(struct timeval *tv, struct timezone *tz)
+notrace int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
 	struct timespec ts;
 	struct vdso_data *vdata;
diff --git a/arch/powerpc/kernel/asm-offsets.c b/arch/powerpc/kernel/asm-offsets.c
index 484f54dab247..827f4c354e13 100644
--- a/arch/powerpc/kernel/asm-offsets.c
+++ b/arch/powerpc/kernel/asm-offsets.c
@@ -393,8 +393,8 @@ int main(void)
 	OFFSET(CFG_DCACHE_LOGBLOCKSZ, vdso_data, dcache_log_block_size);
 #ifdef CONFIG_PPC64
 	OFFSET(CFG_SYSCALL_MAP64, vdso_data, syscall_map_64);
-	OFFSET(TVAL64_TV_SEC, timeval, tv_sec);
-	OFFSET(TVAL64_TV_USEC, timeval, tv_usec);
+	OFFSET(TVAL64_TV_SEC, __kernel_old_timeval, tv_sec);
+	OFFSET(TVAL64_TV_USEC, __kernel_old_timeval, tv_usec);
 	OFFSET(TVAL32_TV_SEC, old_timeval32, tv_sec);
 	OFFSET(TVAL32_TV_USEC, old_timeval32, tv_usec);
 	OFFSET(TSPC64_TV_SEC, timespec, tv_sec);
@@ -402,8 +402,8 @@ int main(void)
 	OFFSET(TSPC32_TV_SEC, old_timespec32, tv_sec);
 	OFFSET(TSPC32_TV_NSEC, old_timespec32, tv_nsec);
 #else
-	OFFSET(TVAL32_TV_SEC, timeval, tv_sec);
-	OFFSET(TVAL32_TV_USEC, timeval, tv_usec);
+	OFFSET(TVAL32_TV_SEC, __kernel_old_timeval, tv_sec);
+	OFFSET(TVAL32_TV_USEC, __kernel_old_timeval, tv_usec);
 	OFFSET(TSPC32_TV_SEC, timespec, tv_sec);
 	OFFSET(TSPC32_TV_NSEC, timespec, tv_nsec);
 #endif
diff --git a/arch/sparc/vdso/vclock_gettime.c b/arch/sparc/vdso/vclock_gettime.c
index fc5bdd14de76..a20c5030578d 100644
--- a/arch/sparc/vdso/vclock_gettime.c
+++ b/arch/sparc/vdso/vclock_gettime.c
@@ -74,7 +74,7 @@ notrace static long vdso_fallback_gettime(long clock, struct timespec *ts)
 	return o0;
 }
 
-notrace static long vdso_fallback_gettimeofday(struct timeval *tv, struct timezone *tz)
+notrace static long vdso_fallback_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
 	register long num __asm__("g1") = __NR_gettimeofday;
 	register long o0 __asm__("o0") = (long) tv;
@@ -304,7 +304,7 @@ __vdso_clock_gettime_stick(clockid_t clock, struct timespec *ts)
 }
 
 notrace int
-__vdso_gettimeofday(struct timeval *tv, struct timezone *tz)
+__vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
 	struct vvar_data *vvd = get_vvar_data();
 
@@ -312,7 +312,7 @@ __vdso_gettimeofday(struct timeval *tv, struct timezone *tz)
 		if (likely(tv != NULL)) {
 			union tstv_t {
 				struct timespec ts;
-				struct timeval tv;
+				struct __kernel_old_timeval tv;
 			} *tstv = (union tstv_t *) tv;
 			do_realtime(vvd, &tstv->ts);
 			/*
@@ -336,11 +336,11 @@ __vdso_gettimeofday(struct timeval *tv, struct timezone *tz)
 	return vdso_fallback_gettimeofday(tv, tz);
 }
 int
-gettimeofday(struct timeval *, struct timezone *)
+gettimeofday(struct __kernel_old_timeval *, struct timezone *)
 	__attribute__((weak, alias("__vdso_gettimeofday")));
 
 notrace int
-__vdso_gettimeofday_stick(struct timeval *tv, struct timezone *tz)
+__vdso_gettimeofday_stick(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
 	struct vvar_data *vvd = get_vvar_data();
 
@@ -348,7 +348,7 @@ __vdso_gettimeofday_stick(struct timeval *tv, struct timezone *tz)
 		if (likely(tv != NULL)) {
 			union tstv_t {
 				struct timespec ts;
-				struct timeval tv;
+				struct __kernel_old_timeval tv;
 			} *tstv = (union tstv_t *) tv;
 			do_realtime_stick(vvd, &tstv->ts);
 			/*
diff --git a/arch/x86/entry/vsyscall/vsyscall_64.c b/arch/x86/entry/vsyscall/vsyscall_64.c
index e7c596dea947..76e62bcb8d87 100644
--- a/arch/x86/entry/vsyscall/vsyscall_64.c
+++ b/arch/x86/entry/vsyscall/vsyscall_64.c
@@ -184,7 +184,7 @@ bool emulate_vsyscall(unsigned long error_code,
 	 */
 	switch (vsyscall_nr) {
 	case 0:
-		if (!write_ok_or_segv(regs->di, sizeof(struct timeval)) ||
+		if (!write_ok_or_segv(regs->di, sizeof(struct __kernel_old_timeval)) ||
 		    !write_ok_or_segv(regs->si, sizeof(struct timezone))) {
 			ret = -EFAULT;
 			goto check_fault;
diff --git a/arch/x86/um/vdso/um_vdso.c b/arch/x86/um/vdso/um_vdso.c
index 891868756a51..845336c11364 100644
--- a/arch/x86/um/vdso/um_vdso.c
+++ b/arch/x86/um/vdso/um_vdso.c
@@ -25,7 +25,7 @@ int __vdso_clock_gettime(clockid_t clock, struct timespec *ts)
 int clock_gettime(clockid_t, struct timespec *)
 	__attribute__((weak, alias("__vdso_clock_gettime")));
 
-int __vdso_gettimeofday(struct timeval *tv, struct timezone *tz)
+int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
 	long ret;
 
@@ -34,7 +34,7 @@ int __vdso_gettimeofday(struct timeval *tv, struct timezone *tz)
 
 	return ret;
 }
-int gettimeofday(struct timeval *, struct timezone *)
+int gettimeofday(struct __kernel_old_timeval *, struct timezone *)
 	__attribute__((weak, alias("__vdso_gettimeofday")));
 
 time_t __vdso_time(time_t *t)
-- 
2.20.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
