Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED1A11BD04
	for <lists+linux-um@lfdr.de>; Wed, 11 Dec 2019 20:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dygLJbSnEL6l1T5oy25xIkE3K+/McoRygY+5mZt8lVk=; b=l5Eqy3x7WY/Shr
	Rs9g/enmSku2/GSNkrrwDiALfxj4TlQQYLNF2J1BG4zaUzAH1/8lRMVqj68xJYaSmNy25izfXhrEH
	0o5zbGnqJX2yQAf7J6JGCMp9FbmzhEuxU5XFUY/AA+XcaraKMJVQ4bpfEngGJF9nX0vu7U4N/jn9Z
	s2cbBw4eS8kssoVg41ozl0RwudSbjE3Oe4CURIdji3qs9wLVgWiAlq45IVEO9HjjrtjsSuBAAyIuQ
	zR1BOirWjwPWyKRxDU5n9f2t7nNc+O/kH56/ayb/3DEvg+8vRcv+ISKNJRYSu5AGgcQhCcM0XRBtw
	bnYec1lZ7T62tkxUdiMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7ft-0005Zh-P6; Wed, 11 Dec 2019 19:29:29 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7er-0004UZ-6N
 for linux-um@lists.infradead.org; Wed, 11 Dec 2019 19:28:26 +0000
Received: by mail-pf1-x449.google.com with SMTP id b15so2690754pfo.16
 for <linux-um@lists.infradead.org>; Wed, 11 Dec 2019 11:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Z9cyJ6q/dRKwszgWPK/I6HD4udk/HngreENNBBFw7AE=;
 b=R4J+hp7ameLmcKBvWd1R3GHgVQMiqDLeCk+xK86P/IRMuh6UmJa9Faa5uqjS4kWyFg
 lL/VL+0yiQSVCjjou1PYLwUk5n8YWw+5HFdP2a92aB7l5OvSR7njVCuEuEU7ILdNksTE
 2IpI6glhHVDy6eNg96ttbF925uLPxi+VoHZCb7VWblcUGDkMrvhzGjACHIWT/UqDBsaz
 ONTjf5w9eu8EeVbm9tB0FOcag12BKE6rhip+RYd5P8VyZ62mxl0MZ8QED5kQRVYL1c0H
 UQ1HaAdchOoT2M+AZajZrwAWD8PvQ9W1PwBcEmzwoAJM3GxLhGO1mshgQ2QK1+Gs3kcV
 wa7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Z9cyJ6q/dRKwszgWPK/I6HD4udk/HngreENNBBFw7AE=;
 b=BhaNxCqo56u5xuwb4SUpwIXLLZ4fY6KFkXXqcqEVdgPVZRDKjIRTcrHOrKe5pQL77L
 ytoNU7JcDHZt1OfvceKdB/5z4g9R8b6kdg053TDraRiHepcGYai3LZ6+aliLXPX5Ms9X
 9iQn2WBChXzUG+TmGcwCODvYIgzpz165H3wUttH7cEKgtd+ZgTPsNrDGK8J3ZzWXiwxu
 qkq3/dy8SQ1kmsUmVM8KKnIGPZJ8FMKsJbaCC9Dt1Vz4ZYd8gudnNf/FrINwYJ/uFvAH
 Qmk9ukLsmyfQKfFA7a1Y9hADx+6mBs7+XgrHXL3m1YATEjfcPtY62dbeSjheV+/DV+8p
 N/gw==
X-Gm-Message-State: APjAAAXUdbnRE9WPqfiABVYFZmUhVp7j3brYXdq6oj3xEmoFmeutjJDX
 Kig68waBN3t0yGKFkNNWys5Ghcs7AQJqYMN8B0B59A==
X-Google-Smtp-Source: APXvYqyYij4yV+DXbejSHZeng6BXYHuLudblK+kNmIhwXq4dmlZ+ZGkXmoMKknhbAuxQ+DE/c95Qal0IVJbWFYYgdCBmMg==
X-Received: by 2002:a63:28a:: with SMTP id 132mr5883273pgc.165.1576092502945; 
 Wed, 11 Dec 2019 11:28:22 -0800 (PST)
Date: Wed, 11 Dec 2019 11:27:42 -0800
In-Reply-To: <20191211192742.95699-1-brendanhiggins@google.com>
Message-Id: <20191211192742.95699-8-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH v1 7/7] fsi: aspeed: add unspecified HAS_IOMEM dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Jeremy Kerr <jk@ozlabs.org>, 
 Alistar Popple <alistair@popple.id.au>, Eddie James <eajames@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112825_274150_9C330409 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-aspeed@lists.ozlabs.org, linux-um@lists.infradead.org,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 davidgow@google.com, linux-arm-kernel@lists.infradead.org,
 linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_FSI_MASTER_ASPEED=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

ld: drivers/fsi/fsi-master-aspeed.o: in function `fsi_master_aspeed_probe':
drivers/fsi/fsi-master-aspeed.c:436: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Reported-by: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/fsi/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/fsi/Kconfig b/drivers/fsi/Kconfig
index 92ce6d85802cc..4cc0e630ab79b 100644
--- a/drivers/fsi/Kconfig
+++ b/drivers/fsi/Kconfig
@@ -55,6 +55,7 @@ config FSI_MASTER_AST_CF
 
 config FSI_MASTER_ASPEED
 	tristate "FSI ASPEED master"
+	depends on HAS_IOMEM
 	help
 	 This option enables a FSI master that is present behind an OPB bridge
 	 in the AST2600.
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
