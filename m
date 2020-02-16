Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE251606BD
	for <lists+linux-um@lfdr.de>; Sun, 16 Feb 2020 22:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QNakrC0LSzLo1WsfY0sPcyVFOTPCNSngcZpSMF3cT2U=; b=uS9LS/kjNgKslF
	JbvtrXYx4olzwZ/HchD5VhKzZldE3Mw6ZYNYrTPpWPktjizfcYwIg4ArYnE/mcvN1T2cs3KgQ1peI
	H2NzRnmin7hgOVK1x90uy2PSekiAINuy6UUxylf4TKoGYVmbkRPfNYEbjN2ELlMeMrvJhX335NIa8
	vjJrMcff1YyaNaSYQs5Lch4H3p6xCaAAS66UqX1PO58cmedlr58vYC3ky7odaCr4DVyww1tdx73Fw
	/lBj+7Msd/lrhuR6/bfEnrLwpuDedu3ZNTw+bSKjEF1ZJnSnNrAL7/B+1J2zBOMiJ8YwmKDSF6Uox
	UDJv/uofODq1ZveiJ0VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Raf-00067G-Nv; Sun, 16 Feb 2020 21:36:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Rad-00066k-Dt
 for linux-um@lists.infradead.org; Sun, 16 Feb 2020 21:36:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: sjoerd) with ESMTPSA id 7268B290C1D
Received: by beast.luon.net (Postfix, from userid 1000)
 id F0AC13E1EED; Sun, 16 Feb 2020 22:36:24 +0100 (CET)
From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: vector: Avoid NULL ptr deference if transport is unset
Date: Sun, 16 Feb 2020 22:36:24 +0100
Message-Id: <20200216213624.800463-1-sjoerd.simons@collabora.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_133635_602615_A27E41CE 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-kernel@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

When the transport option of a vec isn't set strncmp ends up being
called on a NULL pointer. Better not do that.

Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>

---

 arch/um/drivers/vector_kern.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 0ff86391f77d..ca90666c0b61 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -198,6 +198,9 @@ static int get_transport_options(struct arglist *def)
 	long parsed;
 	int result = 0;
 
+	if (transport == NULL)
+		return -EINVAL;
+
 	if (vector != NULL) {
 		if (kstrtoul(vector, 10, &parsed) == 0) {
 			if (parsed == 0) {
-- 
2.25.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
