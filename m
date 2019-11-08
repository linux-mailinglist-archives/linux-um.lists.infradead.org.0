Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A7DF3F18
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlJnOIXptfOAmZJcuT1giLFEV7Yx3u8KFSc21L1sZSc=; b=tQTKiC+LytgS14
	QT34ag5xr3zK2/irLUmwX00sa4QgBf7dLaJxPdm4KSiKfSzNpmHMnX4Dx0bIA1tx7d+GrmSL/9yig
	kFlPI1MPSvA5Q91b2Dp6AX94SmGH0F8QY60LTm1PGXfnXv5k+mICpeT7a5Z/lLG2jKeBIHdMktfKA
	5epqkPLHvnLUA78bPvIsfVbN8EMUNDdNe7mv+GJ88SgDdlHOT7JloUARs8T3YlzBb3d+o+d90VJV1
	BhsE5Dit3LZXtBwbOtsbVRgqbx0iFk4ceASktSQQIVTNsnnkY7eyWyei1ThmgZhXEXRU9isZMsLpw
	yp7xXsWKS7W01WFzrJQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwQO-0003X5-Bo; Fri, 08 Nov 2019 05:03:08 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwQL-0003Vu-Li
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:03:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id j12so3225162plt.9
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NxJBcBRow1AvQI6ecmVgHCS/pUSBuJYc9TYuMuJ/9+8=;
 b=FRllAVZrda6jMCsSgu5V7aaOLbxuTjxOdk9PQpdfqtay0M/yIOVAcz3gfFlpwLFFUy
 S8vUSUEyLXBntqowdhUZvNwugxMzZCS+4/r2doHwUsm9f43F59zsGvudetTbekE815Vw
 Y2/LDc128I4J/i/W/jQMI8cZjCJh12s53o9esOZ06oZU0vwggjWFChnFBieju6tWWk7A
 /gDBdDYBfitR27LrMG/VC4np+yVO48p9QZoxgJUQbFygWNAPYMSqjNI+TlVP2P7k+eFI
 FqIyd2b0JF4qcX+HPs9ZcakfPXIUDPO8T4JMIpUsrOUXZu6a2W+RJEccy+yP1Uv51v+f
 IfhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NxJBcBRow1AvQI6ecmVgHCS/pUSBuJYc9TYuMuJ/9+8=;
 b=A4gV+q87YNIdlKz03BtFMzvne0iJ2YoAXu4DN3qG7YPWykduIn8Vh/7Q0Mtzv8iq0E
 31JoArBwQKvJfu9SICHAfKXh4L4A02ZcjzxuifOtCE032SnCIJAhbMDsy7y/USUxa7S3
 2oyPxFv0lsrqCyV8jr/HVIDpMHVuno64xaw9hhELEWyUEaMME4nFUkOkvx4Lw1ugSQlG
 AS35HHTpdKBjP9z1Pcaifm0fyAnAO7VPsQOx3okHocedXt0h9/6/D0WcTgXhTiYVTDHx
 z3GP7ccW3RKA+l7yBtYCiLcoq96cpitrhs2sTEtMsVYQPPpNdap+B+ES9gC+nEnI83yE
 Qquw==
X-Gm-Message-State: APjAAAUS/mlD++eDGoZgtjWfBmPNgI/Fx4yA4bD6s6R1jOpmY+WWKpOC
 d/RdMVuJ9sOvkWHdDxNVkkc=
X-Google-Smtp-Source: APXvYqyHAIakQgLUm4cLJb+cpxpiOCi3L7tXPMzg6kR+Di4q02niLoBC0u80z7GD7Ntx5rUiiVMIOA==
X-Received: by 2002:a17:90a:24b:: with SMTP id
 t11mr10776362pje.77.1573189384508; 
 Thu, 07 Nov 2019 21:03:04 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id c12sm5559511pfp.67.2019.11.07.21.03.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:03:03 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 9D775201ACFC45; Fri,  8 Nov 2019 14:03:01 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 01/37] asm-generic: atomic64: allow using generic atomic64 on
 64bit platforms
Date: Fri,  8 Nov 2019 14:02:16 +0900
Message-Id: <3ed3c306fc51b0073fcf3a222f7314fcaf50ccf4.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210305_733855_3635FDEE 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

With CONFIG_64BIT enabled, atomic64 via CONFIG_GENERIC_ATOMIC64 options
are not compiled due to type conflict of atomic64_t defined in
linux/type.h.

This commit fixes the issue and allow using generic atomic64 ops.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 include/asm-generic/atomic64.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/asm-generic/atomic64.h b/include/asm-generic/atomic64.h
index 370f01d4450f..9b15847baae5 100644
--- a/include/asm-generic/atomic64.h
+++ b/include/asm-generic/atomic64.h
@@ -9,9 +9,11 @@
 #define _ASM_GENERIC_ATOMIC64_H
 #include <linux/types.h>
 
+#ifndef CONFIG_64BIT
 typedef struct {
 	s64 counter;
 } atomic64_t;
+#endif
 
 #define ATOMIC64_INIT(i)	{ (i) }
 
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
