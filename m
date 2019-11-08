Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AE7F593A
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 22:11:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQykmCQj/UFTTX9ZcxhEyu6z61WMrxjGzmY0cYfpd4Q=; b=aVcc+EW3HkrgOt
	IJe5O/UkVKu5uCEGSuQK1hafo/732RMzzrqahKfhMOwJygoGnWQGyIdlRkjrgp+MQrloDph9m0jZe
	syC6JTIIIKn02fmQ1BaAIdKFV7+llwMcn/Svy36/3vM0Ad4V/HCMQ8TKGadrrjZCMBcOU53oQX3Og
	YGTsdcXhTqj0ZnMkh7CLI4dYSGzs38RmjTR0vQ37E+naMRxjArKSYGo8c/xYYqQ/GmDZbodL9LrpJ
	M28FVkENtHeeG5FtmM8dN9L2SRrSB0H8X0mG06MgWzIDU+4iP7d/YraHQMi/YFDK5dpL5oRSfyvPF
	fkCFiLM/nY5OWAh0yldg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTBX5-0000oo-1t; Fri, 08 Nov 2019 21:11:03 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBX1-0000nT-Df
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 21:11:01 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MrQR7-1i6FJk2Bdf-00oUk0; Fri, 08 Nov 2019 22:10:27 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, x86@kernel.org,
 Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH 05/23] y2038: vdso: change time_t to __kernel_old_time_t
Date: Fri,  8 Nov 2019 22:07:25 +0100
Message-Id: <20191108210824.1534248-5-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191108210236.1296047-1-arnd@arndb.de>
References: <20191108210236.1296047-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:o8Zkr+sOZ52wm0ae45/RQryAsK7xYXnsT+HPUpQaufkmPH+Q6/t
 Mx1QjONjSFAcKcXg6d+qmIO5Nz2Z1PzDnxY6Ir3M0ox/+vbOAVauXJZo7+cMsdRcRszJBe7
 Aj8ZN5RLd1R69CpmSVEU9MTURTureJNFvVMuvJJDqIIb4Y4IhYa+4XE+s6Ccc/3w7U5VVCC
 UD2jKhDgaH7FjqUd1a5VA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1Ts/01x3JdM=:/uunyXLl4bvJWCavpfEcb/
 9UoHBVyzqBkcj75fodAjDhjhAyjHi2SMlxz2uJbRFRUmXsG6e6eAogVfcdfts7c47d1reojiA
 KrgDDY253RADofyZtnh5viCrKGzvxm4TKGABjrnBJ0bt1w3KfIWjCYWav1trSnZDSOZooRHfO
 WWwwqG5TUQys5Sv+D10PdDh1BmV1PkR0uQvqi3CJd4F1tM+ZGkEG/J9xbVfFsiF8+0dbqDPUQ
 hr3zgVglY92iRK6SwZ3FDgYMfVogf9R2bfVq1QDRbmGdrtFL2VujlHW7nH5WANGKBkOXxZHrO
 gXnN2qQQM31mucJGqTVaHLg+IF8tEGR7WvtN5gFD771I0OsvEOSfwY4xnWz6Z8mPCLoTrrfg0
 iO1f2ahEO0l71Q3MDRR9pChW632vnUMGqXR0Ky4OTVKsj1JqLoKg32dGg6Nf2QnNk4+i5Nn4N
 8P3pt9RnLY3nZ8uRAevHKgNdEPEzkueh4uRRA1fLHzn7oheQgyQ958Xc84M2+/zWIdm4pq7h/
 ReSWhlc/Z0PIHrf6SCL/pkAUlTZ0nXkqcG2+JlONuaSiCIQ1UBPDIwAPipVV24b3qpbmW4+uZ
 ELTyVt3T3AirdIi6KcrlMebb/OnK4+Dpa2LEw92WHUcZ8wj70YTk2UptblgI1j60iH9hZBR7V
 DB3kobMcaX8Q7kGMdND8zIaTooRs/2vF0yOcrx4+3ujrUla+IZhROs6oWdLsansep6RTDDz3R
 3oqTybQw5FsZaFfFrXLoFrDZGx9IkW9T7vaKNmv/iEf/bxmME60Q+D50eSBPH5cE5flykxY1y
 89ZLtDAK60bylXgCvCP2fF5he1cpwrsVM+CNavdYFN4bEulPNhEaj7Ri0q4m9ntK04XxaoFqh
 BWMSp+QkU2j1ZURv5T0w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_131059_758970_A4F8568E 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, "H. Peter Anvin" <hpa@zytor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Only x86 uses the 'time' syscall in vdso, so change that to
__kernel_old_time_t as a preparation for removing 'time_t' and
'__kernel_time_t' later.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/x86/entry/vdso/vclock_gettime.c  | 6 +++---
 arch/x86/entry/vsyscall/vsyscall_64.c | 2 +-
 arch/x86/um/vdso/um_vdso.c            | 4 ++--
 lib/vdso/gettimeofday.c               | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/x86/entry/vdso/vclock_gettime.c b/arch/x86/entry/vdso/vclock_gettime.c
index d9ff616bb0f6..7d70935b6758 100644
--- a/arch/x86/entry/vdso/vclock_gettime.c
+++ b/arch/x86/entry/vdso/vclock_gettime.c
@@ -15,7 +15,7 @@
 #include "../../../../lib/vdso/gettimeofday.c"
 
 extern int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz);
-extern time_t __vdso_time(time_t *t);
+extern __kernel_old_time_t __vdso_time(__kernel_old_time_t *t);
 
 int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
@@ -25,12 +25,12 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 int gettimeofday(struct __kernel_old_timeval *, struct timezone *)
 	__attribute__((weak, alias("__vdso_gettimeofday")));
 
-time_t __vdso_time(time_t *t)
+__kernel_old_time_t __vdso_time(__kernel_old_time_t *t)
 {
 	return __cvdso_time(t);
 }
 
-time_t time(time_t *t)	__attribute__((weak, alias("__vdso_time")));
+__kernel_old_time_t time(__kernel_old_time_t *t)	__attribute__((weak, alias("__vdso_time")));
 
 
 #if defined(CONFIG_X86_64) && !defined(BUILD_VDSO32_64)
diff --git a/arch/x86/entry/vsyscall/vsyscall_64.c b/arch/x86/entry/vsyscall/vsyscall_64.c
index 76e62bcb8d87..bba5bfdb2a56 100644
--- a/arch/x86/entry/vsyscall/vsyscall_64.c
+++ b/arch/x86/entry/vsyscall/vsyscall_64.c
@@ -194,7 +194,7 @@ bool emulate_vsyscall(unsigned long error_code,
 		break;
 
 	case 1:
-		if (!write_ok_or_segv(regs->di, sizeof(time_t))) {
+		if (!write_ok_or_segv(regs->di, sizeof(__kernel_old_time_t))) {
 			ret = -EFAULT;
 			goto check_fault;
 		}
diff --git a/arch/x86/um/vdso/um_vdso.c b/arch/x86/um/vdso/um_vdso.c
index 371724cf70da..2112b8d14668 100644
--- a/arch/x86/um/vdso/um_vdso.c
+++ b/arch/x86/um/vdso/um_vdso.c
@@ -37,7 +37,7 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 int gettimeofday(struct __kernel_old_timeval *, struct timezone *)
 	__attribute__((weak, alias("__vdso_gettimeofday")));
 
-time_t __vdso_time(time_t *t)
+__kernel_old_time_t __vdso_time(__kernel_old_time_t *t)
 {
 	long secs;
 
@@ -47,7 +47,7 @@ time_t __vdso_time(time_t *t)
 
 	return secs;
 }
-time_t time(time_t *t) __attribute__((weak, alias("__vdso_time")));
+__kernel_old_time_t time(__kernel_old_time_t *t) __attribute__((weak, alias("__vdso_time")));
 
 long
 __vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused)
diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index 45f57fd2db64..9ecfd3b547ba 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -164,10 +164,10 @@ __cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 }
 
 #ifdef VDSO_HAS_TIME
-static __maybe_unused time_t __cvdso_time(time_t *time)
+static __maybe_unused __kernel_old_time_t __cvdso_time(__kernel_old_time_t *time)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
-	time_t t = READ_ONCE(vd[CS_HRES_COARSE].basetime[CLOCK_REALTIME].sec);
+	__kernel_old_time_t t = READ_ONCE(vd[CS_HRES_COARSE].basetime[CLOCK_REALTIME].sec);
 
 	if (time)
 		*time = t;
-- 
2.20.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
