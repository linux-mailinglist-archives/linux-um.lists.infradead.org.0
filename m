Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92251645DF
	for <lists+linux-um@lfdr.de>; Wed, 19 Feb 2020 14:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KxWxIPdexkWx6b1vBgAYIpVPEX0Hge5l7fpoYoiHVI8=; b=Yw0X7P9UkglEeV
	wRPANEjcBrLNkCAEmd80bl+RMqEiPWo4Ck1O22btFdzKgxTTnXFMX0Vb95E077kgkxkqczpvI7n0J
	UW9nhdY6wtmdKaOBD2cC14LvKbgoCrf3oNJpTLMELpI/iBAuTWuuKUDV+eEUugX3vfI84VGQMbSZ6
	k7Hwjqge5fOkv9w0bwtJjban9zl4LBFX7RaaYkK4x6lZCit4QTAK4nuOkOhSwAYvBx2n5fLPPN75Y
	iNfqYING0tNh3+ecD69tRH5iqhyykrOvPwK6xBCyepunO052Q2lzDzX2TDFPD1WbQctAqo6TLiW0u
	F4uOblyRjrFkEaQluExQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Pf5-0002E1-KD; Wed, 19 Feb 2020 13:45:11 +0000
Received: from out30-56.freemail.mail.aliyun.com ([115.124.30.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Pf2-00010R-C3
 for linux-um@lists.infradead.org; Wed, 19 Feb 2020 13:45:10 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04396; MF=wenyang@linux.alibaba.com;
 NM=1; PH=DS; RN=7; SR=0; TI=SMTPD_---0TqN-9jy_1582119888; 
Received: from localhost(mailfrom:wenyang@linux.alibaba.com
 fp:SMTPD_---0TqN-9jy_1582119888) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 19 Feb 2020 21:44:57 +0800
From: Wen Yang <wenyang@linux.alibaba.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH] um: fix len of file in create_pid_file
Date: Wed, 19 Feb 2020 21:44:42 +0800
Message-Id: <20200219134442.68744-1-wenyang@linux.alibaba.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_054508_594158_21ECECB8 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-um@lists.infradead.org, Wen Yang <wenyang@linux.alibaba.com>,
 Alex Dewar <alex.dewar@gmx.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

sizeof gives us the size of the pointer variable, not of the
area it points to. So the number of bytes copied by umid_file_name()
is 8.
We should pass in the correct length of the file buffer.

Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
Cc: Jeff Dike <jdike@addtoit.com> (maintainer:USER-MODE LINUX (UML))
Cc: Richard Weinberger <richard@nod.at> (maintainer:USER-MODE LINUX (UML),commit_signer:2/2=100%)
Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com> (maintainer:USER-MODE LINUX (UML))
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com> (commit_signer:1/2=50%,authored:1/2=50%,added_lines:27/28=96%,removed_lines:9/10=90%)
Cc: Alex Dewar <alex.dewar@gmx.co.uk> (commit_signer:1/2=50%,authored:1/2=50%,removed_lines:1/10=10%)
Cc: linux-um@lists.infradead.org (open list:USER-MODE LINUX (UML))
---
 arch/um/os-Linux/umid.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/um/os-Linux/umid.c b/arch/um/os-Linux/umid.c
index 44def53a11cd..9e16078a4bf8 100644
--- a/arch/um/os-Linux/umid.c
+++ b/arch/um/os-Linux/umid.c
@@ -220,11 +220,12 @@ static void __init create_pid_file(void)
 	char pid[sizeof("nnnnn\0")], *file;
 	int fd, n;
 
-	file = malloc(strlen(uml_dir) + UMID_LEN + sizeof("/pid\0"));
+	n = strlen(uml_dir) + UMID_LEN + sizeof("/pid\0");
+	file = malloc(n);
 	if (!file)
 		return;
 
-	if (umid_file_name("pid", file, sizeof(file)))
+	if (umid_file_name("pid", file, n))
 		goto out;
 
 	fd = open(file, O_RDWR | O_CREAT | O_EXCL, 0644);
-- 
2.23.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
