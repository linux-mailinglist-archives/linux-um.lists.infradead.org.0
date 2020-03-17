Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C205D187707
	for <lists+linux-um@lfdr.de>; Tue, 17 Mar 2020 01:45:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFuPH1nCcV0z5mDsLhMNVtqTuNxSblXSYLHQC8AldYI=; b=By/b9q6Ojo2UMk
	+ksqjUxnLf9L4DWddrA4Bc6pn8v0ly0i2FtsWKZmML1fZoC4FrssI+9ZDfQUMjsbmRQXxeJqEvLYI
	NjUE5l0xSSP1Jts3RVg3Jy9be/682mormojoJiBgWvKXbctPU92WF7YABctc1RpFc+DVbolMR8C+E
	/ja7xplVuuhQYdhmUqu/+CXXuKJ3DFU77pwD3Pj4KsXBzZ5NzagAtHoWkQjQm2dfOIzrCXSogLfC6
	fnqPm3rFt+J/oF9TxTTDV+8s7Ft1CinpinFjUCiiaCCIutIo4sbqEXvst4CIuEk9ON+ijcIDnwB6c
	QAZv3T/YvhslIRpBIFlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE0MN-0008RA-9w; Tue, 17 Mar 2020 00:45:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE0MK-0008PV-3c
 for linux-um@lists.infradead.org; Tue, 17 Mar 2020 00:45:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: krisman) with ESMTPSA id 403CF283BEE
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: jdike@addtoit.com
Subject: [PATCH 2/2] um: ubd: Retry buffer read on any kind of error
Date: Mon, 16 Mar 2020 20:45:07 -0400
Message-Id: <20200317004507.1513370-3-krisman@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200317004507.1513370-1-krisman@collabora.com>
References: <20200317004507.1513370-1-krisman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_174528_279445_11F208E9 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Martyn Welch <martyn.welch@collabora.com>, richard@nod.at,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Gabriel Krisman Bertazi <krisman@collabora.com>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Should bulk_req_safe_read return an error, we want to retry the read,
otherwise, even though no IO will be done, os_write_file might still end
up writing garbage to the pipe.

Cc: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 arch/um/drivers/ubd_kern.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/um/drivers/ubd_kern.c b/arch/um/drivers/ubd_kern.c
index 0f5d0a699a49..d259f0728003 100644
--- a/arch/um/drivers/ubd_kern.c
+++ b/arch/um/drivers/ubd_kern.c
@@ -1591,11 +1591,11 @@ int io_thread(void *arg)
 			&io_remainder_size,
 			UBD_REQ_BUFFER_SIZE
 		);
-		if (n < 0) {
-			if (n == -EAGAIN) {
+		if (n <= 0) {
+			if (n == -EAGAIN)
 				ubd_read_poll(-1);
-				continue;
-			}
+
+			continue;
 		}
 
 		for (count = 0; count < n/sizeof(struct io_thread_req *); count++) {
-- 
2.25.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
