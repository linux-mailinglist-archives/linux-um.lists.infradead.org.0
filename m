Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D3622EE1
	for <lists+linux-um@lfdr.de>; Mon, 20 May 2019 10:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jwKHMNpeuAkz33iBifHJfKyyoT6l04CnH+JmtxIGoJo=; b=BJLKfgxduRflYd1Q0C2yqqLFn
	1S8VCZkUXwLetYsdmNizrbx/OwKIvpHFDGN8PkGcUpbsV94hxHdpA/A9eapbDomlSv67FLR8EQLbv
	HU9eg+9y1KjQ29ucm32C/MIkVe8kg4wISNSttZXSDSUZA6W+HyLRH+oaSVQJLoxHKWOT3Hr1HyR4I
	ZG6zu4OgStySV9ZZ8v6jS+gaF5ARx26VL0x4GPORKnWzl9rnnVkrhA4nPUYPs8Ky4Ng5ifpYdvapu
	fZ6ODKtno0WRYCIHk1IrzwqUMlrCDnJtj6eAlzG5LlauvSUDeydztvbXn6RDynFb83d8P6bZ2OngG
	5D8fM+yUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdhf-0002JW-E7; Mon, 20 May 2019 08:31:27 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdhb-0002IU-St
 for linux-um@lists.infradead.org; Mon, 20 May 2019 08:31:25 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hSdL2-0002PP-9N; Mon, 20 May 2019 08:08:04 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hSdKz-0007w1-OP; Mon, 20 May 2019 09:08:03 +0100
Subject: Re: [PATCH] x86: Hide the int3_emulate_call/jmp functions from UML
To: Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>
References: <20190511083954.23a60052@gandalf.local.home>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <41bc0b7b-9f51-6a10-6182-811163aa0890@cambridgegreys.com>
Date: Mon, 20 May 2019 09:08:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511083954.23a60052@gandalf.local.home>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_013124_068209_3DE722D7 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 11/05/2019 13:39, Steven Rostedt wrote:
> 
> From: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
> 
> User Mode Linux does not have access to the ip or sp fields of the
> pt_regs, and accessing them causes UML to fail to build. Hide the
> int3_emulate_jmp() and int3_emulate_call() instructions from UML, as it
> doesn't need them anyway.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> ---
> 
> [ I added this to my queue to test too ]
> 
>   arch/x86/include/asm/text-patching.h | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/include/asm/text-patching.h
> b/arch/x86/include/asm/text-patching.h index 05861cc08787..0bbb07eaed6b
> 100644 --- a/arch/x86/include/asm/text-patching.h
> +++ b/arch/x86/include/asm/text-patching.h
> @@ -39,6 +39,7 @@ extern int poke_int3_handler(struct pt_regs *regs);
>   extern void *text_poke_bp(void *addr, const void *opcode, size_t len,
> void *handler); extern int after_bootmem;
>   
> +#ifndef CONFIG_UML_X86
>   static inline void int3_emulate_jmp(struct pt_regs *regs, unsigned
> long ip) {
>   	regs->ip = ip;
> @@ -65,6 +66,7 @@ static inline void int3_emulate_call(struct pt_regs
> *regs, unsigned long func) int3_emulate_push(regs, regs->ip -
> INT3_INSN_SIZE + CALL_INSN_SIZE); int3_emulate_jmp(regs, func);
>   }
> -#endif
> +#endif /* CONFIG_X86_64 */
> +#endif /* !CONFIG_UML_X86 */
>   
>   #endif /* _ASM_X86_TEXT_PATCHING_H */
> 
The patch has been garbled by an auto-wrap. Can you resend it please.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
