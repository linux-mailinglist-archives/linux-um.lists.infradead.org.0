Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F68D1D981B
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 15:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J/dxhUNCDKm85dw/GAjqDrUoQlYbyRJ5GinGGzdQR+4=; b=fqIgjwFk4P9f9F
	0O4TuKw5FJsJXRM76If4GKc33g/Gch04JcZoAi6y7gdrOBnygNz9ut9aT7K9Daz+RRMCJtcEr6LPK
	biSLg/f7ohLvNTI7I6qQnxUX7xQjUy60+2J8JW0cva9KlHwkwWFriMxiK0o0dJSliU38OuM4Xk8bw
	k8FYv10PjpqBXM5PX68VxuvB9yjtehoHsxbxz8+ZXcxLM5DBexw2pK94NhiKFLVL/U9fs2ntTzX3Q
	b7qFTjq9JFR+kr1LXr+r4UD2YpnP76/K9xNdins3vRgM7HE09F91sqo4XqlRqgIZQz+2spxAZ/pwm
	Zj2lF6tbH74w0NGWCtkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2YB-000103-7a; Tue, 19 May 2020 13:44:55 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2Y7-0000zQ-W6; Tue, 19 May 2020 13:44:52 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: clean up and streamline probe_kernel_* and friends v3
Date: Tue, 19 May 2020 15:44:29 +0200
Message-Id: <20200519134449.1466624-1-hch@lst.de>
X-Mailer: git-send-email 2.26.2
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

Hi all,

this series start cleaning up the safe kernel and user memory probing
helpers in mm/maccess.c, and then allows architectures to implement
the kernel probing without overriding the address space limit and
temporarily allowing access to user memory.  It then switches x86
over to this new mechanism by reusing the unsafe_* uaccess logic.

This version also switches to the saner copy_{from,to}_kernel_nofault
naming suggested by Linus.

I kept the x86 helprs as-is without calling unsage_{get,put}_user as
that avoids a number of hard to trace casts, and it will still work
with the asm-goto based version easily.

Changes since v2:
 - rebased on 5.7-rc6 with the bpf trace format string changes
 - rename arch_kernel_read to __get_kernel_nofault and arch_kernel_write
   to __put_kernel_nofault
 - clean up the tracers to only allowd "mixed" reads when the kernel
   has non-overlapping address spaces

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
