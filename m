Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5D31D9847
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 15:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGPMpX3GTDvKz2XuIxIwNCTXMwweGeEqmqVLh7q2N5o=; b=bu67K7Nw0b+m1/
	iMzm5KBfkQCi+yDT8NQVMRHQp1UhMvqkwoy2O/Wf+X8ztWGFfm9o5cJi3hqnbr0pWYHmWBYmcQ6xT
	XZ/HGrrU31xMnLu4YZcoshXSvhmsC9IgSQoSkQhIuNYvGX7c5QgFeaD/fqRTFTw2FhzIfhS2+IKWh
	4IqOAtk2Q42MvlqDoMNmL28ulynGvrRPYndTBOSDoiYRacVDZ1FmE35XvPQBw1sJDsipNU4+nxBqR
	/eXdjAog61aS9SV9P/kolA5GduChXw5A2XcgCqrIRr/y+ROc+XOPS2EGKAruQPBsj2yP38DdrJWNV
	l7vKiawEiDmz+bWhrv/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2Z8-0003x2-FD; Tue, 19 May 2020 13:45:54 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2Z6-0003vo-KR; Tue, 19 May 2020 13:45:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 19/20] maccess: rename probe_kernel_address to
 get_kernel_nofault
Date: Tue, 19 May 2020 15:44:48 +0200
Message-Id: <20200519134449.1466624-20-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519134449.1466624-1-hch@lst.de>
References: <20200519134449.1466624-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Better describe what this helper does, and match the naming of
copy_from_kernel_nofault.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/kernel/traps.c             |  2 +-
 arch/arm/mm/alignment.c             |  4 ++--
 arch/arm64/kernel/traps.c           |  2 +-
 arch/ia64/include/asm/sections.h    |  2 +-
 arch/parisc/kernel/process.c        |  2 +-
 arch/powerpc/include/asm/sections.h |  2 +-
 arch/powerpc/kernel/kgdb.c          |  2 +-
 arch/powerpc/kernel/process.c       |  2 +-
 arch/powerpc/sysdev/fsl_pci.c       |  2 +-
 arch/riscv/kernel/traps.c           |  4 ++--
 arch/s390/mm/fault.c                |  2 +-
 arch/sh/kernel/traps.c              |  2 +-
 arch/x86/kernel/probe_roms.c        | 20 ++++++++++----------
 arch/x86/kernel/traps.c             |  2 +-
 arch/x86/mm/fault.c                 |  6 +++---
 arch/x86/pci/pcbios.c               |  2 +-
 include/linux/uaccess.h             |  4 ++--
 lib/test_lockup.c                   |  6 +++---
 18 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 1e70e7227f0ff..61b91872b3e74 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -391,7 +391,7 @@ int is_valid_bugaddr(unsigned long pc)
 	u32 insn = __opcode_to_mem_arm(BUG_INSTR_VALUE);
 #endif
 
-	if (probe_kernel_address((unsigned *)pc, bkpt))
+	if (get_kernel_nofault((unsigned *)pc, bkpt))
 		return 0;
 
 	return bkpt == insn;
diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
index 84718eddae603..236016f13bcd3 100644
--- a/arch/arm/mm/alignment.c
+++ b/arch/arm/mm/alignment.c
@@ -774,7 +774,7 @@ static int alignment_get_arm(struct pt_regs *regs, u32 *ip, u32 *inst)
 	if (user_mode(regs))
 		fault = get_user(instr, ip);
 	else
-		fault = probe_kernel_address(ip, instr);
+		fault = get_kernel_nofault(ip, instr);
 
 	*inst = __mem_to_opcode_arm(instr);
 
@@ -789,7 +789,7 @@ static int alignment_get_thumb(struct pt_regs *regs, u16 *ip, u16 *inst)
 	if (user_mode(regs))
 		fault = get_user(instr, ip);
 	else
-		fault = probe_kernel_address(ip, instr);
+		fault = get_kernel_nofault(ip, instr);
 
 	*inst = __mem_to_opcode_thumb16(instr);
 
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index cf402be5c573f..2245af23973a2 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -315,7 +315,7 @@ static int call_undef_hook(struct pt_regs *regs)
 
 	if (!user_mode(regs)) {
 		__le32 instr_le;
-		if (probe_kernel_address((__force __le32 *)pc, instr_le))
+		if (get_kernel_nofault((__force __le32 *)pc, instr_le))
 			goto exit;
 		instr = le32_to_cpu(instr_le);
 	} else if (compat_thumb_mode(regs)) {
diff --git a/arch/ia64/include/asm/sections.h b/arch/ia64/include/asm/sections.h
index cea15f2dd38df..ef03eec8666f8 100644
--- a/arch/ia64/include/asm/sections.h
+++ b/arch/ia64/include/asm/sections.h
@@ -35,7 +35,7 @@ static inline void *dereference_function_descriptor(void *ptr)
 	struct fdesc *desc = ptr;
 	void *p;
 
-	if (!probe_kernel_address(&desc->ip, p))
+	if (!get_kernel_nofault(&desc->ip, p))
 		ptr = p;
 	return ptr;
 }
diff --git a/arch/parisc/kernel/process.c b/arch/parisc/kernel/process.c
index 230a6422b99f3..c3b0f03bd0bf1 100644
--- a/arch/parisc/kernel/process.c
+++ b/arch/parisc/kernel/process.c
@@ -293,7 +293,7 @@ void *dereference_function_descriptor(void *ptr)
 	Elf64_Fdesc *desc = ptr;
 	void *p;
 
-	if (!probe_kernel_address(&desc->addr, p))
+	if (!get_kernel_nofault(&desc->addr, p))
 		ptr = p;
 	return ptr;
 }
diff --git a/arch/powerpc/include/asm/sections.h b/arch/powerpc/include/asm/sections.h
index d19871763ed4a..636bb1633de18 100644
--- a/arch/powerpc/include/asm/sections.h
+++ b/arch/powerpc/include/asm/sections.h
@@ -85,7 +85,7 @@ static inline void *dereference_function_descriptor(void *ptr)
 	struct ppc64_opd_entry *desc = ptr;
 	void *p;
 
-	if (!probe_kernel_address(&desc->funcaddr, p))
+	if (!get_kernel_nofault(&desc->funcaddr, p))
 		ptr = p;
 	return ptr;
 }
diff --git a/arch/powerpc/kernel/kgdb.c b/arch/powerpc/kernel/kgdb.c
index 7dd55eb1259dc..f0045a74e7cea 100644
--- a/arch/powerpc/kernel/kgdb.c
+++ b/arch/powerpc/kernel/kgdb.c
@@ -420,7 +420,7 @@ int kgdb_arch_set_breakpoint(struct kgdb_bkpt *bpt)
 	unsigned int instr;
 	unsigned int *addr = (unsigned int *)bpt->bpt_addr;
 
-	err = probe_kernel_address(addr, instr);
+	err = get_kernel_nofault(addr, instr);
 	if (err)
 		return err;
 
diff --git a/arch/powerpc/kernel/process.c b/arch/powerpc/kernel/process.c
index d5d6136b13480..b77f97073200c 100644
--- a/arch/powerpc/kernel/process.c
+++ b/arch/powerpc/kernel/process.c
@@ -1260,7 +1260,7 @@ static void show_instructions(struct pt_regs *regs)
 #endif
 
 		if (!__kernel_text_address(pc) ||
-		    probe_kernel_address((const void *)pc, instr)) {
+		    get_kernel_nofault((const void *)pc, instr)) {
 			pr_cont("XXXXXXXX ");
 		} else {
 			if (regs->nip == pc)
diff --git a/arch/powerpc/sysdev/fsl_pci.c b/arch/powerpc/sysdev/fsl_pci.c
index 73fa37ca40ef9..483412d5a1973 100644
--- a/arch/powerpc/sysdev/fsl_pci.c
+++ b/arch/powerpc/sysdev/fsl_pci.c
@@ -1069,7 +1069,7 @@ int fsl_pci_mcheck_exception(struct pt_regs *regs)
 			ret = copy_from_user_nofault(&inst,
 					(void __user *)regs->nip, sizeof(inst));
 		else
-			ret = probe_kernel_address((void *)regs->nip, inst);
+			ret = get_kernel_nofault((void *)regs->nip, inst);
 
 		if (!ret && mcheck_handle_load(regs, inst)) {
 			regs->nip += 4;
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 7f58fa53033f6..d807d507bd95a 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -137,7 +137,7 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
 {
 	bug_insn_t insn;
 
-	if (probe_kernel_address((bug_insn_t *)pc, insn))
+	if (get_kernel_nofault((bug_insn_t *)pc, insn))
 		return 0;
 
 	return GET_INSN_LENGTH(insn);
@@ -160,7 +160,7 @@ int is_valid_bugaddr(unsigned long pc)
 
 	if (pc < VMALLOC_START)
 		return 0;
-	if (probe_kernel_address((bug_insn_t *)pc, insn))
+	if (get_kernel_nofault((bug_insn_t *)pc, insn))
 		return 0;
 	if ((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32)
 		return (insn == __BUG_INSN_32);
diff --git a/arch/s390/mm/fault.c b/arch/s390/mm/fault.c
index dedc28be27ab4..ab68eca6b2480 100644
--- a/arch/s390/mm/fault.c
+++ b/arch/s390/mm/fault.c
@@ -106,7 +106,7 @@ static int bad_address(void *p)
 {
 	unsigned long dummy;
 
-	return probe_kernel_address((unsigned long *)p, dummy);
+	return get_kernel_nofault((unsigned long *)p, dummy);
 }
 
 static void dump_pagetable(unsigned long asce, unsigned long address)
diff --git a/arch/sh/kernel/traps.c b/arch/sh/kernel/traps.c
index 63cf17bc760da..27c53c5b84e6b 100644
--- a/arch/sh/kernel/traps.c
+++ b/arch/sh/kernel/traps.c
@@ -118,7 +118,7 @@ int is_valid_bugaddr(unsigned long addr)
 
 	if (addr < PAGE_OFFSET)
 		return 0;
-	if (probe_kernel_address((insn_size_t *)addr, opcode))
+	if (get_kernel_nofault((insn_size_t *)addr, opcode))
 		return 0;
 	if (opcode == TRAPA_BUG_OPCODE)
 		return 1;
diff --git a/arch/x86/kernel/probe_roms.c b/arch/x86/kernel/probe_roms.c
index ee0286390a4c1..77f3341570e84 100644
--- a/arch/x86/kernel/probe_roms.c
+++ b/arch/x86/kernel/probe_roms.c
@@ -99,7 +99,7 @@ static bool probe_list(struct pci_dev *pdev, unsigned short vendor,
 	unsigned short device;
 
 	do {
-		if (probe_kernel_address(rom_list, device) != 0)
+		if (get_kernel_nofault(rom_list, device) != 0)
 			device = 0;
 
 		if (device && match_id(pdev, vendor, device))
@@ -125,13 +125,13 @@ static struct resource *find_oprom(struct pci_dev *pdev)
 			break;
 
 		rom = isa_bus_to_virt(res->start);
-		if (probe_kernel_address(rom + 0x18, offset) != 0)
+		if (get_kernel_nofault(rom + 0x18, offset) != 0)
 			continue;
 
-		if (probe_kernel_address(rom + offset + 0x4, vendor) != 0)
+		if (get_kernel_nofault(rom + offset + 0x4, vendor) != 0)
 			continue;
 
-		if (probe_kernel_address(rom + offset + 0x6, device) != 0)
+		if (get_kernel_nofault(rom + offset + 0x6, device) != 0)
 			continue;
 
 		if (match_id(pdev, vendor, device)) {
@@ -139,8 +139,8 @@ static struct resource *find_oprom(struct pci_dev *pdev)
 			break;
 		}
 
-		if (probe_kernel_address(rom + offset + 0x8, list) == 0 &&
-		    probe_kernel_address(rom + offset + 0xc, rev) == 0 &&
+		if (get_kernel_nofault(rom + offset + 0x8, list) == 0 &&
+		    get_kernel_nofault(rom + offset + 0xc, rev) == 0 &&
 		    rev >= 3 && list &&
 		    probe_list(pdev, vendor, rom + offset + list)) {
 			oprom = res;
@@ -183,14 +183,14 @@ static int __init romsignature(const unsigned char *rom)
 	const unsigned short * const ptr = (const unsigned short *)rom;
 	unsigned short sig;
 
-	return probe_kernel_address(ptr, sig) == 0 && sig == ROMSIGNATURE;
+	return get_kernel_nofault(ptr, sig) == 0 && sig == ROMSIGNATURE;
 }
 
 static int __init romchecksum(const unsigned char *rom, unsigned long length)
 {
 	unsigned char sum, c;
 
-	for (sum = 0; length && probe_kernel_address(rom++, c) == 0; length--)
+	for (sum = 0; length && get_kernel_nofault(rom++, c) == 0; length--)
 		sum += c;
 	return !length && !sum;
 }
@@ -211,7 +211,7 @@ void __init probe_roms(void)
 
 		video_rom_resource.start = start;
 
-		if (probe_kernel_address(rom + 2, c) != 0)
+		if (get_kernel_nofault(rom + 2, c) != 0)
 			continue;
 
 		/* 0 < length <= 0x7f * 512, historically */
@@ -249,7 +249,7 @@ void __init probe_roms(void)
 		if (!romsignature(rom))
 			continue;
 
-		if (probe_kernel_address(rom + 2, c) != 0)
+		if (get_kernel_nofault(rom + 2, c) != 0)
 			continue;
 
 		/* 0 < length <= 0x7f * 512, historically */
diff --git a/arch/x86/kernel/traps.c b/arch/x86/kernel/traps.c
index 96809f6aad67d..07739b67da335 100644
--- a/arch/x86/kernel/traps.c
+++ b/arch/x86/kernel/traps.c
@@ -161,7 +161,7 @@ int is_valid_bugaddr(unsigned long addr)
 	if (addr < TASK_SIZE_MAX)
 		return 0;
 
-	if (probe_kernel_address((unsigned short *)addr, ud))
+	if (get_kernel_nofault((unsigned short *)addr, ud))
 		return 0;
 
 	return ud == INSN_UD0 || ud == INSN_UD2;
diff --git a/arch/x86/mm/fault.c b/arch/x86/mm/fault.c
index 994e207abdf64..7c5e23e7407d8 100644
--- a/arch/x86/mm/fault.c
+++ b/arch/x86/mm/fault.c
@@ -98,7 +98,7 @@ check_prefetch_opcode(struct pt_regs *regs, unsigned char *instr,
 		return !instr_lo || (instr_lo>>1) == 1;
 	case 0x00:
 		/* Prefetch instruction is 0x0F0D or 0x0F18 */
-		if (probe_kernel_address(instr, opcode))
+		if (get_kernel_nofault(instr, opcode))
 			return 0;
 
 		*prefetch = (instr_lo == 0xF) &&
@@ -132,7 +132,7 @@ is_prefetch(struct pt_regs *regs, unsigned long error_code, unsigned long addr)
 	while (instr < max_instr) {
 		unsigned char opcode;
 
-		if (probe_kernel_address(instr, opcode))
+		if (get_kernel_nofault(instr, opcode))
 			break;
 
 		instr++;
@@ -441,7 +441,7 @@ static int bad_address(void *p)
 {
 	unsigned long dummy;
 
-	return probe_kernel_address((unsigned long *)p, dummy);
+	return get_kernel_nofault((unsigned long *)p, dummy);
 }
 
 static void dump_pagetable(unsigned long address)
diff --git a/arch/x86/pci/pcbios.c b/arch/x86/pci/pcbios.c
index 9c97d814125eb..b7f8699b18c1f 100644
--- a/arch/x86/pci/pcbios.c
+++ b/arch/x86/pci/pcbios.c
@@ -302,7 +302,7 @@ static const struct pci_raw_ops *__init pci_find_bios(void)
 	     check <= (union bios32 *) __va(0xffff0);
 	     ++check) {
 		long sig;
-		if (probe_kernel_address(&check->fields.signature, sig))
+		if (get_kernel_nofault(&check->fields.signature, sig))
 			continue;
 
 		if (check->fields.signature != BIOS32_SIGNATURE)
diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index baef2e09b5ae9..5cc94a38a3984 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -319,13 +319,13 @@ long strncpy_from_user_nofault(char *dst, const void __user *unsafe_addr,
 long strnlen_user_nofault(const void __user *unsafe_addr, long count);
 
 /**
- * probe_kernel_address(): safely attempt to read from a location
+ * get_kernel_nofault(): safely attempt to read from a location
  * @addr: address to read from
  * @retval: read into this variable
  *
  * Returns 0 on success, or -EFAULT.
  */
-#define probe_kernel_address(addr, retval)		\
+#define get_kernel_nofault(addr, retval)		\
 	copy_from_kernel_nofault(&retval, addr, sizeof(retval))
 
 #ifndef user_access_begin
diff --git a/lib/test_lockup.c b/lib/test_lockup.c
index ea09ca335b214..71f7a4c89ed4f 100644
--- a/lib/test_lockup.c
+++ b/lib/test_lockup.c
@@ -419,8 +419,8 @@ static bool test_kernel_ptr(unsigned long addr, int size)
 	/* should be at least readable kernel address */
 	if (access_ok(ptr, 1) ||
 	    access_ok(ptr + size - 1, 1) ||
-	    probe_kernel_address(ptr, buf) ||
-	    probe_kernel_address(ptr + size - 1, buf)) {
+	    get_kernel_nofault(ptr, buf) ||
+	    get_kernel_nofault(ptr + size - 1, buf)) {
 		pr_err("invalid kernel ptr: %#lx\n", addr);
 		return true;
 	}
@@ -437,7 +437,7 @@ static bool __maybe_unused test_magic(unsigned long addr, int offset,
 	if (!addr)
 		return false;
 
-	if (probe_kernel_address(ptr, magic) || magic != expected) {
+	if (get_kernel_nofault(ptr, magic) || magic != expected) {
 		pr_err("invalid magic at %#lx + %#x = %#x, expected %#x\n",
 		       addr, offset, magic, expected);
 		return true;
-- 
2.26.2


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
