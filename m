Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D471B8497
	for <lists+linux-um@lfdr.de>; Sat, 25 Apr 2020 10:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6CuFrYwqnoL4plD2gEOtdeCOnlAYj9562ZUfUYHbJp4=; b=uVZryeAElgYId5
	r9t/8ypgFHsPJv9eXT02ncsg+Ncl/NhByrq4ptrJ6hjX6fJHhMrqE1yEFiq3VZcwQu7Lhsp+kCpB/
	iDBxzt3+w+94xhBPgpe5tm8SQIc7y1xPqUL/HQfEFoEpkeksOs9Sms/C6je8HAKzHLlBmOkyR1zsg
	h9lizuw3XiprA7xM4HsS5Q6AzHXuBCtEZz7az/7Ksw/0iYYBNXOFjTO6ov8lLd8KlNgMesPPREcG4
	nxOI3vVyGZmZ2hM9mrmnJhhLedoSNcHC36Srk9EyDEyxxW+csfbULczP/jZT/ZJwRKtYSWLB8LOFZ
	vvSOyxCmo//vBY7RYrVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSG1g-0007Ip-Ii; Sat, 25 Apr 2020 08:19:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSG1c-0007HP-GU
 for linux-um@lists.infradead.org; Sat, 25 Apr 2020 08:19:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id d17so14252596wrg.11
 for <linux-um@lists.infradead.org>; Sat, 25 Apr 2020 01:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nUPMA4GPI+NhhHj8s9smGxNaL+f7/GtxGGadrxRFCuA=;
 b=PIo3DTs31b/zRjB7BgiYsADl9emSvQLhOStAb/JVKzqEif5SQrOZ1nnXi5C/2rP+AV
 zFdFzLPJHfg2Ji3qYZz/Noad+PK2//bFVins9Rb4D+Leivrph18/z+LheeEAo0LM60Y8
 XSjlY7ny/mrmoINOMcvfO2SRj2mFKitzUMzbI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nUPMA4GPI+NhhHj8s9smGxNaL+f7/GtxGGadrxRFCuA=;
 b=aie3xIcipHe4dTGQCZD+ARcOGyBnOKIK6f5shqa/PUQJRtVEOGprhcQv5a/A5EszK+
 mqT3iWcRGDdYw9kWw+FB4rTwwnekQkbi3v4IbGQ5qV3BBKJXStFqhoT6JbTOIYr/IbVP
 NV5Vq73ZmxxLBaA3Z/A+HQn8gCTWOLBHn2tafJD7cfpt5CUWWMQDpsavL+U04uNvHyXH
 uMQqSag/VxhdpQg5YIDyvaYR47wKcdKltergaDbIeuSMLjvOf/VY4D4iSjpYhLdT/ObR
 Tm630LqcaV8RLjP3FN9j54KjsrpyvUGtIYvz/lWKeEcHXueM7R7YCWZR3D/UMg9aracw
 I2ww==
X-Gm-Message-State: AGi0PuYQn+GF0RO+ki/PN+La96H7p1+VZ1E6tls/gnesA2Y+Kd4B460X
 Fq3J5kbNBo329mkXWU9quxoDFg==
X-Google-Smtp-Source: APiQypJ4vDHHtPr+GKZiZDT60aVFI95xMZuKwqJDHcy+nG7Ys0q2gTy6OBwpildjyrVbkuHpTD+L/A==
X-Received: by 2002:adf:e3ca:: with SMTP id k10mr17101088wrm.53.1587802737556; 
 Sat, 25 Apr 2020 01:18:57 -0700 (PDT)
Received: from localhost.localdomain ([88.144.89.159])
 by smtp.gmail.com with ESMTPSA id s18sm12233777wra.94.2020.04.25.01.18.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 01:18:56 -0700 (PDT)
From: Ignat Korchagin <ignat@cloudflare.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
 linux-um@lists.infradead.org
Subject: [PATCH] um: Fix typo in vector driver transport option definition
Date: Sat, 25 Apr 2020 09:18:42 +0100
Message-Id: <20200425081842.4365-1-ignat@cloudflare.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_011900_551647_4717133C 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: trivial@kernel.org, Ignat Korchagin <ignat@cloudflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

No big problem as "raw" and "gre" have the same length, but could go wrong if
they don't in the future.

Signed-off-by: Ignat Korchagin <ignat@cloudflare.com>
---
 arch/um/drivers/vector_user.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/um/drivers/vector_user.h b/arch/um/drivers/vector_user.h
index 91f35b266aba..d29d5fdd98fa 100644
--- a/arch/um/drivers/vector_user.h
+++ b/arch/um/drivers/vector_user.h
@@ -17,7 +17,7 @@
 #define TRANS_TAP_LEN strlen(TRANS_TAP)
 
 #define TRANS_GRE "gre"
-#define TRANS_GRE_LEN strlen(TRANS_RAW)
+#define TRANS_GRE_LEN strlen(TRANS_GRE)
 
 #define TRANS_L2TPV3 "l2tpv3"
 #define TRANS_L2TPV3_LEN strlen(TRANS_L2TPV3)
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
