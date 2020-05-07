Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB6E1C9AE5
	for <lists+linux-um@lfdr.de>; Thu,  7 May 2020 21:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UBiS9fBq5OZdQEoiyP7PG02gT3/d+EEZdjAvXVJ44cc=; b=htzM8qFLb3w2Bg
	5RB0edDX0w7O1nHJyGNrOvaEd4WaO6okcS7pSBBQEtmo0+Ho1jDPI802vOfeP1yyBiP6sHNm6yEU6
	0oxsKvMjwqsGqF6uzcXfx+uvfPDQeQlM0bykjX+jBFQM7YeQICWvaFTQyzsbWqCeClTZufAys9tQa
	WTXQZltrDh8mSD0lV77Li+ib2VjQDAw6BlVhum8TQ72P/SQFzfeuGKN0BdK4AzMdQVHqt2CD5xmbS
	ZwXGbJygsdVIVOyyL3dokBixhCfiKt2Hn/PPbqkknDqiXNIMB8ZWb6ZnxZH0yRjgsGoZv1UWD7Y2f
	T9SZEfzL6Q0QvZK/Dojg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWm6H-00043S-Pa; Thu, 07 May 2020 19:22:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWm6E-000435-Ll
 for linux-um@lists.infradead.org; Thu, 07 May 2020 19:22:28 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC911208E4;
 Thu,  7 May 2020 19:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588879346;
 bh=27j1iFeO7/uFIYuS96IIzx3OB0gXSl5+yOvIErECFgA=;
 h=Date:From:To:Cc:Subject:From;
 b=xdPU4qJBkKugdQKmTvNZ2uh/J5SNwl5PKpj9KHLoeisbBtvnthXjdCts/VAbUpF1Z
 1rPoTGkanvQxgf/aGjFuqKknFYxeNFtO4pkx4JikGk00RVhjb+rYQ2tmdqGGE1L0MS
 ztiO3xcXYnYL1TwODWrRUwZJSvdyzMi6nRDB19/A=
Date: Thu, 7 May 2020 14:26:52 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH] um: virtio: Replace zero-length array with flexible-array
Message-ID: <20200507192652.GA16743@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_122226_733982_EAA18124 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

sizeof(flexible-array-member) triggers a warning because flexible array
members have incomplete type[1]. There are some instances of code in
which the sizeof operator is being incorrectly/erroneously applied to
zero-length arrays and the result is zero. Such instances may be hiding
some bugs. So, this work (flexible-array member conversions) will also
help to get completely rid of those sorts of issues.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 arch/um/drivers/vector_kern.h |    2 +-
 arch/um/drivers/vhost_user.h  |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/um/drivers/vector_kern.h b/arch/um/drivers/vector_kern.h
index d0159082faf0..8fff93a75a92 100644
--- a/arch/um/drivers/vector_kern.h
+++ b/arch/um/drivers/vector_kern.h
@@ -129,7 +129,7 @@ struct vector_private {
 	struct vector_estats estats;
 	struct sock_fprog *bpf;
 
-	char user[0];
+	char user[];
 };
 
 extern int build_transport_data(struct vector_private *vp);
diff --git a/arch/um/drivers/vhost_user.h b/arch/um/drivers/vhost_user.h
index 6c71b6005177..6f147cd3c9f7 100644
--- a/arch/um/drivers/vhost_user.h
+++ b/arch/um/drivers/vhost_user.h
@@ -78,7 +78,7 @@ struct vhost_user_config {
 	u32 offset;
 	u32 size;
 	u32 flags;
-	u8 payload[0]; /* Variable length */
+	u8 payload[]; /* Variable length */
 } __packed;
 
 struct vhost_user_vring_state {


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
