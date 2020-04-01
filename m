Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C55A19B7A2
	for <lists+linux-um@lfdr.de>; Wed,  1 Apr 2020 23:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VSE93SXOy3OclBeordtcxDayUWdTL9CLgof3JJcWTiY=; b=OkmzttO8uTmE2d
	KJF56nkFwIJfCahv4tMGtCGuQRJXNQY50WwsJe9LmtsGF2fejMvRlyvk4HMNd0EM5fpSlJDo14bJo
	Tn7z2u5IhjXEU4wSrY3WtKAhMiJNTJ4zSFSUDXb+VsptDXrX1UbJBBjrOnJ5moeXmcqFXcIIeyZZi
	X1FcyWlaRun3aUTI9eJH8xFptocgFp/XCtTOExKEGGdZmB8avZeaoY4Zd5/OroNJLmLKKSponG7uJ
	HeEXHDngRFfJuHwdvo46NT+kp7OkH1OkebBKoRE6Z4I0oRwCyDEQLcSIeqVt1d41OdtXAro+RPNCp
	Qvz/Moi3XuhIj8sZSlQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJkwv-0001IA-Cm; Wed, 01 Apr 2020 21:31:01 +0000
Received: from sender4-of-o51.zoho.com ([136.143.188.51])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJkwq-0001HR-Nt
 for linux-um@lists.infradead.org; Wed, 01 Apr 2020 21:30:58 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1585776653; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=QvSiCxxe2w79MR2WQA6qr5ReJVNqXpDMdsAfYYgsGDXGjmQy1yPhlQfEjyl99WRYR3x2V6j06QVfVuMy9VDeQGPTQRY31PLszJFSY8GhngRpMR4KhDA5vf9b1mE8yU+7mJIwss85tco7V4Rp26Y3sNBD5frt/iBwG6vjzpzxH5I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585776653;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=Ovd3KQjj+XaAtRsbbcvIASUZe23NDleaSRa1Iv2OAes=; 
 b=AOZ+NHrkjd3EegnNZQVoOAjJ784s8RAanHVzrSbYYuVIuETh+rWj4jb/w5YIt5wnb6GycZr2s/+3X0cbXC5kP8XzkqX2eykhkZmH6VAv3daBkaTrq2aHsYboXT5BnK/5jKaZDWQ9s5ykQAc0Wjk9Sb1M767yPTOmr8oN3VZE1J0=
ARC-Authentication-Results: i=1; mx.zohomail.com; dkim=pass  header.i=zv.io;
 spf=pass  smtp.mailfrom=me@zv.io;
 dmarc=pass header.from=<me@zv.io> header.from=<me@zv.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585776653; 
 s=zoho; d=zv.io; i=me@zv.io;
 h=Message-ID:Subject:From:To:Cc:Date:Content-Type:Mime-Version:Content-Transfer-Encoding;
 bh=Ovd3KQjj+XaAtRsbbcvIASUZe23NDleaSRa1Iv2OAes=;
 b=PHr7jsq44fpSmSOvXVAbNm2tX84DDMlK4B1Eq0sEBAZ/M8fjet76eBXGjU3Z0rFE
 T7qpq4X9GYr9es9IYOK7F14kJ+hulNyZybcrYcg9XHMhH5CTyc4EOqO6l0FR69DmnSo
 BxDxFI2V9ZM+RR3lxWJ/Faz6N2BlB9utrtylOI+0=
Received: from powerhouse (cpe-70-114-218-141.austin.res.rr.com
 [70.114.218.141]) by mx.zohomail.com
 with SMTPS id 1585776649042727.6372832244042;
 Wed, 1 Apr 2020 14:30:49 -0700 (PDT)
Message-ID: <a1f6271e7c72e49fd863efc4b7126be6598fd4f6.camel@zv.io>
Subject: [PATCH] um: add include: memset() and memcpy() are in <string.h>
From: Zach van Rijn <me@zv.io>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Date: Wed, 01 Apr 2020 16:30:48 -0500
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_143056_830999_C0AA9CD0 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [136.143.188.51 listed in list.dnswl.org]
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
 linux-um@lists.infradead.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

These two functions are otherwise unknown to the pedantic compiler.
Include the correct header to enable the build to succeed.

Signed-off-by: Zach van Rijn <me@zv.io>
---
 arch/um/os-Linux/file.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
index 26ecbd64c409..044836ad7392 100644
--- a/arch/um/os-Linux/file.c
+++ b/arch/um/os-Linux/file.c
@@ -6,6 +6,7 @@
 #include <stdio.h>
 #include <unistd.h>
 #include <stdlib.h>
+#include <string.h>
 #include <errno.h>
 #include <fcntl.h>
 #include <signal.h>
-- 
2.25.1



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
