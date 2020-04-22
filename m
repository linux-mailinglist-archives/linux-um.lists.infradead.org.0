Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A33351B494F
	for <lists+linux-um@lfdr.de>; Wed, 22 Apr 2020 18:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l7Sq1OOD1YtQIFYoTCvIxUDUkw4C7F89OBD5TUhZwLc=; b=sDJrEpO3ou7602
	geZKpPChDDDkDARTrgmUxQFtC7TozVRvJFkeWwnTaBq3Q8J/VyTENAuokHmXAh68yai5ydYji8JeH
	l9G129d8/EBlXcBQ1tCzDlcn1G4EgP0mwS5VugU4DhUKxii8O0RZZKXf8yUrBEcgQirk1aWLfEkbZ
	hC6YFe+BzirmDjw9ZbYhEnUOyaXp4Qluct1ijrLGUEvXdjsYNZ4fU5hlaQYXIKbL8VYrCKupoldEi
	2SRHWDwpcnYz80SxMl5waoBz7wzq9AmuK3GSxTU0hWcrD7Q2XAePUf54x96248iooWP35ImIVUAr7
	CeVHFyYPW9yKYS6mCSxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHnJ-0007Dd-EY; Wed, 22 Apr 2020 16:00:13 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHnF-0005zM-W8
 for linux-um@lists.infradead.org; Wed, 22 Apr 2020 16:00:11 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jRHnD-00005q-0S; Wed, 22 Apr 2020 16:00:07 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jRHnA-0003V4-55; Wed, 22 Apr 2020 17:00:05 +0100
From: anton.ivanov@cambridgegreys.com
To: linux-um@lists.infradead.org
Subject: [PATCH] um: use fdatasync() when mapping the UBD FSYNC command
Date: Wed, 22 Apr 2020 17:00:01 +0100
Message-Id: <20200422160001.13200-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_090010_056449_B90AA8F5 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: richard@nod.at, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Anton Ivanov <anton.ivanov@cambridgegreys.com>

We do not need to update the metadata (atime, mtime, etc)
on the UBD file and/or the COW file until UML exits.

UBD image mtime is checked in UML only when opening
the files. After that they are locked and used
exclusively by a single UML instance, so there is
no point wasting resources on updating metadata on
every sync. We can sync data only. The host will
always update mtime if a file has been modified upon
closing it.

Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/os-Linux/file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
index fbda10535dab..538c7765323b 100644
--- a/arch/um/os-Linux/file.c
+++ b/arch/um/os-Linux/file.c
@@ -286,7 +286,7 @@ int os_write_file(int fd, const void *buf, int len)
 
 int os_sync_file(int fd)
 {
-	int n = fsync(fd);
+	int n = fdatasync(fd);
 
 	if (n < 0)
 		return -errno;
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
