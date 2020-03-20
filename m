Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22B118CE73
	for <lists+linux-um@lfdr.de>; Fri, 20 Mar 2020 14:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/pjkkon4MV+VgRhZE2mj57JMWWr3vDGli7t+gyq6sgM=; b=M9r6T+wGP5DQ4l
	K+4KEhhCdIgv7LjcYhYUP+g76OWItGSmqtHlkigOcG9BfaIcfoBzB3sW4zBnJfekn2rzK2jEUgLeO
	PAJ7chcxFy0gEc/JAtv91GMoocaWZ8AMcd0aztHvRgHuaNngzlJUt5d/Cg0YJ46XtL8gX+73oX0JY
	6pqdQBqYjxoK3Rn0+um0t6XXY8F8OdXk1/nQv4Ze96NFw19WvTi4dTiyPq4y1kLUusQdSfL2UP/h4
	dHtP5aryySAUoqrLO3R4AIBzhvWlzhepBrRh5cTD3zabfGPFEytK2UgB+yQdO63uD+XtVPiYZmgvo
	KqB9hX4/gE2O9FBvY51A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHNN-0004cb-4G; Fri, 20 Mar 2020 13:07:49 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHNK-0004XR-Ci
 for linux-um@lists.infradead.org; Fri, 20 Mar 2020 13:07:47 +0000
IronPort-SDR: J8B6Ab51roKKtk0ewH8sdCpZkPGmeOvvPihmqWS8vLlYzR4TSB5lSJX4L25VWjtxUOtB7bjjkN
 6C2xrCeba4hw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 06:07:44 -0700
IronPort-SDR: ToleBXD81eD5x8HiuuZzuvqNQU3B8IJ6ZGVIHepxEXb8P+6YyuWozi0yLgH7b8cGhIxQfhMLyu
 NSp8dRh0/Bvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="248876200"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga006.jf.intel.com with ESMTP; 20 Mar 2020 06:07:42 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 65443227; Fri, 20 Mar 2020 15:07:36 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
Subject: [PATCH v1] hostfs: Use kasprintf() instead of fixed buffer formatting
Date: Fri, 20 Mar 2020 15:07:35 +0200
Message-Id: <20200320130735.50925-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_060746_468144_378F609F 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Improve readability and maintainability by replacing a hardcoded string
allocation and formatting by the use of the kasprintf() helper.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 fs/hostfs/hostfs_kern.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/fs/hostfs/hostfs_kern.c b/fs/hostfs/hostfs_kern.c
index e6b8c49076bb..c070c0d8e3e9 100644
--- a/fs/hostfs/hostfs_kern.c
+++ b/fs/hostfs/hostfs_kern.c
@@ -139,8 +139,8 @@ static char *inode_name(struct inode *ino)
 
 static char *follow_link(char *link)
 {
-	int len, n;
 	char *name, *resolved, *end;
+	int n;
 
 	name = __getname();
 	if (!name) {
@@ -164,15 +164,13 @@ static char *follow_link(char *link)
 		return name;
 
 	*(end + 1) = '\0';
-	len = strlen(link) + strlen(name) + 1;
 
-	resolved = kmalloc(len, GFP_KERNEL);
+	resolved = kasprintf(GFP_KERNEL, "%s%s", link, name);
 	if (resolved == NULL) {
 		n = -ENOMEM;
 		goto out_free;
 	}
 
-	sprintf(resolved, "%s%s", link, name);
 	__putname(name);
 	kfree(link);
 	return resolved;
@@ -921,18 +919,16 @@ static int hostfs_fill_sb_common(struct super_block *sb, void *d, int silent)
 	sb->s_d_op = &simple_dentry_operations;
 	sb->s_maxbytes = MAX_LFS_FILESIZE;
 
-	/* NULL is printed as <NULL> by sprintf: avoid that. */
+	/* NULL is printed as '(null)' by printf(): avoid that. */
 	if (req_root == NULL)
 		req_root = "";
 
 	err = -ENOMEM;
 	sb->s_fs_info = host_root_path =
-		kmalloc(strlen(root_ino) + strlen(req_root) + 2, GFP_KERNEL);
+		kasprintf(GFP_KERNEL, "%s/%s", root_ino, req_root);
 	if (host_root_path == NULL)
 		goto out;
 
-	sprintf(host_root_path, "%s/%s", root_ino, req_root);
-
 	root_inode = new_inode(sb);
 	if (!root_inode)
 		goto out;
-- 
2.25.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
