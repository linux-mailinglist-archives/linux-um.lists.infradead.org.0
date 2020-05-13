Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 877F41D1A12
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 18:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QQe5K5rT8gmwv9/GbCe9PsA6HIzDllKSwXZGRsQJUuQ=; b=Dq0ebtASKSzwWI
	fViKiK+QD4wpaYu8pKlbBNw8pVgFSLVJgIrOiNwQr5l+U6uApTbJXSIfZZeDVqaZHfaJDfqUJolfX
	rWzmFAAb/7n1NvKrt2Wly98s9LAkAG9yoZwy3CzzwTGph191Z5liwIdSy9zLSMx6dzbldFdL+ln79
	ZvtFw/6yFH6gij6uIO3+87CTdEv8y1/gM0XoNRkutGu4/Jq5KhEMvn7ssVAigcW+WGtIGO750FX4C
	P0yQu9zj5/j/dI54R0wi9LXfuwAR+lO0CXVyBC4Jf2j2HnRY//oQKus719NJ+ZyLRbkvDECGkGOV0
	jucGxATCIf+YS/bwJAlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtoJ-0004gO-GR; Wed, 13 May 2020 16:00:43 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtoF-0004fx-T9; Wed, 13 May 2020 16:00:41 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: clean up and streamline probe_kernel_* and friends v2
Date: Wed, 13 May 2020 18:00:20 +0200
Message-Id: <20200513160038.2482415-1-hch@lst.de>
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

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
