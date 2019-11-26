Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051B810A204
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 17:25:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U7Hyhk1X6ixYmOPM3m9plJRcp0lwk4HFDGjR4+TP4hQ=; b=gVnW0kG+4Ye/6F
	Cn0a7yikuy6t4KtEfXAdUdvsXS26aT3/Tqor8KMBKpO34ECZ/i6aBhTmzSL6xOSoRr9xdu0hALXHZ
	VcZtNPcwSZoeXFyUjcFD38RWFOG+/SVgJTKO9LBlSKyG3gYWf8Wno5lmXqyAXlPAAax0SinCWYMY+
	3q3gWOMXl5/j8E3kvp5NYDpA+tBhDBzf+V2fwM5E6fJPDFHQHHENyxHpPmI0ZmMHWi3aKrzcMzune
	oRulOqxfPcbE8V5DRs0mByxLsqNMJfRJ9fjUWBcE+vgFOoMKS4QJfPIfCUdMFl48Fm7rVhgzE6d1G
	txQPH8RL9703I3F7+f3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZdeh-0002x1-Ne; Tue, 26 Nov 2019 16:25:35 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZded-0002wD-Rl
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 16:25:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id bb5so8374995plb.4
 for <linux-um@lists.infradead.org>; Tue, 26 Nov 2019 08:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=1hOraEYfhl1CfHNUuJ9PdJuLSAhfXrel88lp028GyuE=;
 b=ofXBE/7VkptXvyZUZ8nCpnF8LnSUO7HEYT1LoAa9Am/hhjFzn63h+s86Xpuxq0Imbq
 jUQVSTWIj7em0wn8lhMOpFYO0/YgE+PlYLu1zC6sZNJlmQnhCSb5Cm639iotn9wnQsOH
 94e3PBGT1YD16gYa0ACD2djV5jMozSNFZRB8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=1hOraEYfhl1CfHNUuJ9PdJuLSAhfXrel88lp028GyuE=;
 b=BKxdbIwGJoki/f9ZxXnVUJd0G5IqQSoC3FV5hIM2I7o7hS8fkKq00cz7aXFKBnPXmT
 x6awe/2KlU7kwLN3LqqxtoWMwRdApm32QjkjNeWj4+GbhbZInlJn4b3Wz7rR+3grhlOf
 AyfN0wfe4L5krOZezG6sPt+KIWMKKSMgZZINyLIHvvI1O8lo5TljFnKEzvAVGpXhV8Mo
 6A95hqeTsoLMzhLNsIqoH5tj1u5P3geavum9vGHAeiHcq1sjfToWkUHakB7HbJGGkl4c
 MC8Q12mU3OaURaHgEGi4DOY+UP44JkhxI2JbO2F0yxqYSTNjcvCC7EJV7ynYwqsGMFfM
 iUeA==
X-Gm-Message-State: APjAAAUIzndEgsKsITI7zS+IobLGwJGtg8OuqyI8PCTIqdugxEJTeGXj
 ZG3tC/hbu/ZnkUzi44/FM5VawA==
X-Google-Smtp-Source: APXvYqxdb3m8lvitpYcVMwL44atFGySYuA7LVySZPpCySFXgRV4Lv/KUVp10g+KjQW8s8fRGDFE4FQ==
X-Received: by 2002:a17:902:ab82:: with SMTP id
 f2mr32593783plr.276.1574785530825; 
 Tue, 26 Nov 2019 08:25:30 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j4sm3993110pjf.25.2019.11.26.08.25.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 08:25:29 -0800 (PST)
Date: Tue, 26 Nov 2019 08:25:28 -0800
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] seccomp updates for v5.5-rc1
Message-ID: <201911260818.9C5DC1E@keescook>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_082531_909136_DF842EA8 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Shuah Khan <shuah@kernel.org>, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Daniel Borkmann <daniel@iogearbox.net>,
 kernel test robot <rong.a.chen@intel.com>, x86@kernel.org,
 Yonghong Song <yhs@fb.com>, Borislav Petkov <bp@suse.de>,
 linux-um@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Will Drewry <wad@chromium.org>,
 linux-parisc@vger.kernel.org,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Tyler Hicks <tyhicks@canonical.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Linus,

Please pull these seccomp updates for v5.5-rc1. Mostly this is
implementing the new flag SECCOMP_USER_NOTIF_FLAG_CONTINUE, but there
are cleanups as well. Most notably, the secure_computing() prototype
has changed (to remove an unused argument), but this has happened at the
same time as riscv adding seccomp support, so the cleanest merge order
would be to merge riscv first, then seccomp with the following patch for
riscv to handle the change from "seccomp: simplify secure_computing()":

diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
index 0f84628b9385..407464201b91 100644
--- a/arch/riscv/kernel/ptrace.c
+++ b/arch/riscv/kernel/ptrace.c
@@ -159,7 +159,7 @@ __visible void do_syscall_trace_enter(struct pt_regs *regs)
 	 * If this fails we might have return value in a0 from seccomp
 	 * (via SECCOMP_RET_ERRNO/TRACE).
 	 */
-	if (secure_computing(NULL) == -1) {
+	if (secure_computing() == -1) {
 		syscall_set_nr(current, regs, -1);
 		return;
 	}

Thanks!

-Kees

The following changes since commit da0c9ea146cbe92b832f1b0f694840ea8eb33cce:

  Linux 5.4-rc2 (2019-10-06 14:27:30 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git tags/seccomp-v5.5-rc1

for you to fetch changes up to 23b2c96fad21886c53f5e1a4ffedd45ddd2e85ba:

  seccomp: rework define for SECCOMP_USER_NOTIF_FLAG_CONTINUE (2019-10-28 12:29:46 -0700)

----------------------------------------------------------------
seccomp updates for v5.5

- implement SECCOMP_USER_NOTIF_FLAG_CONTINUE (Christian Brauner)
- fixes to selftests (Christian Brauner)
- remove secure_computing() argument (Christian Brauner)

----------------------------------------------------------------
Christian Brauner (6):
      seccomp: avoid overflow in implicit constant conversion
      seccomp: add SECCOMP_USER_NOTIF_FLAG_CONTINUE
      seccomp: test SECCOMP_USER_NOTIF_FLAG_CONTINUE
      seccomp: simplify secure_computing()
      seccomp: fix SECCOMP_USER_NOTIF_FLAG_CONTINUE test
      seccomp: rework define for SECCOMP_USER_NOTIF_FLAG_CONTINUE

 arch/arm/kernel/ptrace.c                      |   2 +-
 arch/arm64/kernel/ptrace.c                    |   2 +-
 arch/parisc/kernel/ptrace.c                   |   2 +-
 arch/s390/kernel/ptrace.c                     |   2 +-
 arch/um/kernel/skas/syscall.c                 |   2 +-
 arch/x86/entry/vsyscall/vsyscall_64.c         |   2 +-
 include/linux/seccomp.h                       |   6 +-
 include/uapi/linux/seccomp.h                  |  29 +++++++
 kernel/seccomp.c                              |  28 +++++--
 tools/testing/selftests/seccomp/seccomp_bpf.c | 110 +++++++++++++++++++++++++-
 10 files changed, 169 insertions(+), 16 deletions(-)

-- 
Kees Cook

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
