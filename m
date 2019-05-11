Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C99A31A7D9
	for <lists+linux-um@lfdr.de>; Sat, 11 May 2019 14:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/AjDzx0GP2ixPZoxZjuFERhdFshqrkTUlfrlLikkEW0=; b=H7jf9MgoB4c4tW
	WJxEcCa+ZpWAXAGMCyVNIjlZiBYIUz7TVpDOX4MwvQyfCXavQmd6CPKpSIx1w4I4GKowZwDuMc1+r
	jbOgHwNdHUU1AYOYrOqDVA6i1vBgLSNL7Q6zodVy1X8dPv6zZxzVKi2lGhPhoIr68kWzMpwGx0pNa
	ugEj/3xdpMXrejZtOUPOOxnhR7X6bk6xcdnrVTn4y+KmI2HPmdQ9xETi4XMW7MxhfFGOadzarivjy
	XZhgym4k4kOAshHaNfCkPTlaUJKdACL27jp7CqqOrY8MNSACC98ttJD6m0WPIPAWxSC24m3uMDFfw
	pkJOFRpI5pZs54qEIaAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPRIH-0000W8-9E; Sat, 11 May 2019 12:40:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPRIE-0000VJ-RG
 for linux-um@lists.infradead.org; Sat, 11 May 2019 12:40:00 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D65D3208C0;
 Sat, 11 May 2019 12:39:55 +0000 (UTC)
Date: Sat, 11 May 2019 08:39:54 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH] x86: Hide the int3_emulate_call/jmp functions from UML
Message-ID: <20190511083954.23a60052@gandalf.local.home>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_053958_900926_3180DE91 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -4.9 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Peter Zijlstra <peterz@infradead.org>, Jiri Kosina <jkosina@suse.cz>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Andy Lutomirski <luto@amacapital.net>, Richard Weinberger <richard@nod.at>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


From: "Steven Rostedt (VMware)" <rostedt@goodmis.org>

User Mode Linux does not have access to the ip or sp fields of the
pt_regs, and accessing them causes UML to fail to build. Hide the
int3_emulate_jmp() and int3_emulate_call() instructions from UML, as it
doesn't need them anyway.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
---

[ I added this to my queue to test too ]

 arch/x86/include/asm/text-patching.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/text-patching.h
b/arch/x86/include/asm/text-patching.h index 05861cc08787..0bbb07eaed6b
100644 --- a/arch/x86/include/asm/text-patching.h
+++ b/arch/x86/include/asm/text-patching.h
@@ -39,6 +39,7 @@ extern int poke_int3_handler(struct pt_regs *regs);
 extern void *text_poke_bp(void *addr, const void *opcode, size_t len,
void *handler); extern int after_bootmem;
 
+#ifndef CONFIG_UML_X86
 static inline void int3_emulate_jmp(struct pt_regs *regs, unsigned
long ip) {
 	regs->ip = ip;
@@ -65,6 +66,7 @@ static inline void int3_emulate_call(struct pt_regs
*regs, unsigned long func) int3_emulate_push(regs, regs->ip -
INT3_INSN_SIZE + CALL_INSN_SIZE); int3_emulate_jmp(regs, func);
 }
-#endif
+#endif /* CONFIG_X86_64 */
+#endif /* !CONFIG_UML_X86 */
 
 #endif /* _ASM_X86_TEXT_PATCHING_H */
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
