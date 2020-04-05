Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2B819EA07
	for <lists+linux-um@lfdr.de>; Sun,  5 Apr 2020 10:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kjBL2qkO05RqwWoDMQAl21mHxndjUc9VeyOhzSx+kMk=; b=gtg
	lmST+qgcwITSOcU/5/W2rhNmpZJIZgOXyZQUr6GCidOtzMDBUtjvULjAVi+L6WPpifrnT1iDp7DGh
	R2cELBokXO7AR89K4YAWs1hJ8Pn+NAKa1+49M7NP6vSbNXgBKhiiuttQFJkC9qIyF40ygK6ga5vi/
	V0yQjuAUTOq44xEuKYn3r2b8LbkbO3r8/Obdz1rBzSxl76VmwgQOsej1ngmiMvfT4s1CsTv1WCa94
	uwpz/kJ/gBIIkvbe1osz6YFnOCnFIL4nvWjzBtT5pnMcWmjCnf2XJXXl0yVLONLYk8NlJWwcYrRFj
	OOaEhT1o9uFrk/vGbolOuaRkyWsAtJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL0m6-0006Z8-Nq; Sun, 05 Apr 2020 08:37:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL0m3-0006Yf-Qi
 for linux-um@lists.infradead.org; Sun, 05 Apr 2020 08:37:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id m13so1984533pgd.8
 for <linux-um@lists.infradead.org>; Sun, 05 Apr 2020 01:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ncl8XXtzp8goItvEp2ww15C1VisVJr6bKa4zYnBNmX0=;
 b=UiBbl3JgXB+WXPn0PDlm6JGE4zUA0Lk+w2SyBVnGyw+dtI3fMZAwpQvxLQLp1zocmc
 cbZAjRELnDckLbIDej8cQ9TYieSow+wb5wXbORwlZevebns6eo8/z0JWd8gu9J6eQvcw
 hazEBqpkdC/xBC+YGvNdp/RryMhQ/PVr5bSPI/hnLNMKTMSs9uJrrKbom6qKwt53EDl6
 DcRcqE9SMUU8sMl3p5awrJZf2xuCdUStIN8IFN3vUpYauz/B1Me3zUaDSTYiU1K/RbSb
 fzUtxc7jlXr99CrDzjo6H1+wCRql+6stLwwjt9iiefUmyJqE7D+H6jnjoPQcAsxrXOVl
 ZGFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ncl8XXtzp8goItvEp2ww15C1VisVJr6bKa4zYnBNmX0=;
 b=DV9VE1vYITwN2jar8MoMENImWPW+bH+c9Mec5IJLh2//wlRPuJk/LPcUAQqRRxlr81
 3WDSPaZqG67aUnHq7u5LirtYUFBXxkjB1WDs9J+4ma4/jyI6XUk3etNtx5p0FZjRC6CZ
 ECku5PJmSYNaEqbnsEgpk4ec/iuJ49Uz2ATy9Ttan6MkgJDPr4Q6G2yeZbExPEcYr9q7
 uL9UWNfzqQ5cNQz09ciP74hI8UXMXsnkua333Wjm5r3fF7PVlHvKfg/KUhmFWZjMchok
 EZj2yLbwZ9o9S4McOsLYL/s1GN8wEhcZc/+mCYpbiRGkNk03WuxH4ZJqYWP/0yoqr9K3
 Okkw==
X-Gm-Message-State: AGi0PuYtxGGKfSX4r79lxRk9pP0bQ6eXkztCW1fVuauxJwSi14a3QOZF
 K4Xwy/LVeM1BhAiqWnGAKTsDy2Dr
X-Google-Smtp-Source: APiQypLwjpQ8/2K2EhOZmMPEwHuHozeHT2LsHn3MvCuDvbg8478/A6s7FGnWlBvSyPQ5EeyjF7JA+w==
X-Received: by 2002:a63:602:: with SMTP id 2mr15774896pgg.356.1586075818769;
 Sun, 05 Apr 2020 01:36:58 -0700 (PDT)
Received: from localhost (n112120135125.netvigator.com. [112.120.135.125])
 by smtp.gmail.com with ESMTPSA id y3sm8991405pfy.158.2020.04.05.01.36.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 Apr 2020 01:36:58 -0700 (PDT)
From: Qiujun Huang <hqjagain@gmail.com>
To: jdike@addtoit.com,
	richard@nod.at,
	anton.ivanov@cambridgegreys.com
Subject: [PATCH] um: delete an unnecessary check before the kfree
Date: Sun,  5 Apr 2020 16:36:52 +0800
Message-Id: <20200405083652.29462-1-hqjagain@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_013659_864209_C58864D1 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hqjagain[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, linux-um@lists.infradead.org,
 ast@kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 Qiujun Huang <hqjagain@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

NULL check before kfree is unnecessary so remove it.

This issue was detected by using the Coccinelle software.

Signed-off-by: Qiujun Huang <hqjagain@gmail.com>
---
 arch/um/drivers/vector_user.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index ddcd917be0af..aa28e9eecb7b 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -221,8 +221,7 @@ static struct vector_fds *user_init_tap_fds(struct arglist *ifspec)
 	return result;
 tap_cleanup:
 	printk(UM_KERN_ERR "user_init_tap: init failed, error %d", fd);
-	if (result != NULL)
-		kfree(result);
+	kfree(result);
 	return NULL;
 }
 
@@ -266,8 +265,7 @@ static struct vector_fds *user_init_hybrid_fds(struct arglist *ifspec)
 	return result;
 hybrid_cleanup:
 	printk(UM_KERN_ERR "user_init_hybrid: init failed");
-	if (result != NULL)
-		kfree(result);
+	kfree(result);
 	return NULL;
 }
 
@@ -344,10 +342,8 @@ static struct vector_fds *user_init_unix_fds(struct arglist *ifspec, int id)
 unix_cleanup:
 	if (fd >= 0)
 		os_close_file(fd);
-	if (remote_addr != NULL)
-		kfree(remote_addr);
-	if (result != NULL)
-		kfree(result);
+	kfree(remote_addr);
+	kfree(result);
 	return NULL;
 }
 
@@ -382,8 +378,7 @@ static struct vector_fds *user_init_raw_fds(struct arglist *ifspec)
 	return result;
 raw_cleanup:
 	printk(UM_KERN_ERR "user_init_raw: init failed, error %d", err);
-	if (result != NULL)
-		kfree(result);
+	kfree(result);
 	return NULL;
 }
 
-- 
2.17.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
