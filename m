Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3F914ACCD
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 00:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeG1eC3SOlu6ccvRiJrysmhMGgl4BYgLg82FmmDsiBg=; b=AxQNj2Bkf5v6hv
	vErtvBHCCfxw7bFH0cE41zwN9hnPcF8Do60sqrjaMe8pryfK98GiYMh+WtgFZ5RGCwwq6L/6seFyH
	yqiYvWekvA+O2QwXVbqHoLeZusUM0sa8yMryHN9JDQIfHe7UyLb6SBUZUg7v1qUHqfHefh/P01+gv
	JVjHvx9H/wAuBcY6buscWDZO9qh76VDg5MR9PbyzafBZppy9zd54OeL44FFWK+F+/fsXq5dAC686c
	RxpfAcKhIqdUafGmS3ebdURehUhXo532dOO7qdS18WFPnCVjWBOnj9RdBXLxylM4J1At5CF7VapQb
	u2fmOZk+RyOeIg2GPXVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwEE7-0007zz-0j; Mon, 27 Jan 2020 23:55:31 +0000
Received: from mail-pj1-x104a.google.com ([2607:f8b0:4864:20::104a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwEDo-0007I4-U4
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 23:55:14 +0000
Received: by mail-pj1-x104a.google.com with SMTP id ie20so263640pjb.8
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 15:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=4KjA2O3e5WfLc30wyB/HF4idXFgGIVfHNa/bFpMvIf4=;
 b=jeDzCCaf1mffpWsNrUWt3r7/AOzqb0HR4TMgu+vUxItxw6dM6qGy/RsJMXmJ6WYtdX
 7H8qxJXbYGCxHSQx3QtCpcOzkdM45i3w9usgyo/DrZsvjkKUMrf4ydiONm+ks/OZxmvr
 3NdNCDOAf2Ml6HAvOos5npaI8Mv3di0sVVio3OCZp7bEC1JysLrZEbnWde7rnyJwnHi/
 +/mzZWV6qyHFvgt3m00Et6fna971JpKrXzOX23GkJhQTJnCNsxnJA1w8wXDW5VNmEzDW
 tS2PA0lJg4Pka6yL4zllgKJA7fgCr3xDBatOSLX0vWRq+yM/k362tyJzSFjiQso3iRXx
 vQkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=4KjA2O3e5WfLc30wyB/HF4idXFgGIVfHNa/bFpMvIf4=;
 b=qocW1AqMWkjJ9g3DJ8NOXVWJt0VgwqfuZ32o7hhkHoRzAgAVIA2lYk6qi+x8jDwPhs
 HndV9vTaE2feLkdv+mD1Xd+pAxA6TpXYHp1QQD8NlBROtYYTDd6byyCi9JmLwo9+3OsX
 MUdwNMY9lKHic0vYpz/loXYc2NQR/yQQsyxFIMdOiNoBOZLqYbJa2mHGMEvXO+H8F3Qm
 yqiO1i04ruiPL5KoAjQ5hVOuZmg+NXot2p167rypvE7ZoNK5M9wtFcFxxaqtnM9xARtg
 T9xUJ43z7q5rQMSeJw68P0rQdCWPJ7u/JBTUdbfFRITbJ3sgvLKnL4NGJEf5vPcF4yk9
 LNgw==
X-Gm-Message-State: APjAAAV/28WfRFor/28XGtkic56HXaMDidKh+50bW5TNhGqjmNX0X3ct
 1Uv86KiBHSAargO8QPoKdVfmIj50oppUazc3YYT8Iw==
X-Google-Smtp-Source: APXvYqxX2cTYOYi/6gfypjziF+v7JoXLJYFHxYRZUMf0IT3deC7wiZG5csxN84jPhbo7NcVApT5J2LUA/tX8yW3rQK9e7g==
X-Received: by 2002:a63:d041:: with SMTP id s1mr22025574pgi.363.1580169310297; 
 Mon, 27 Jan 2020 15:55:10 -0800 (PST)
Date: Mon, 27 Jan 2020 15:53:55 -0800
In-Reply-To: <20200127235356.122031-1-brendanhiggins@google.com>
Message-Id: <20200127235356.122031-5-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200127235356.122031-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 4/5] ptp: 1588_clock_ines: add unspecified HAS_IOMEM
 dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Richard Cochran <richardcochran@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_155513_002911_F6B0E4F4 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: heidifahim@google.com, netdev@vger.kernel.org,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 linux-um@lists.infradead.org, davidgow@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Currently CONFIG_PTP_1588_CLOCK_INES=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

/usr/bin/ld: drivers/ptp/ptp_ines.o: in function `ines_ptp_ctrl_probe':
drivers/ptp/ptp_ines.c:795: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/ptp/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ptp/Kconfig b/drivers/ptp/Kconfig
index 475c60dccaa4f..17e670fa1d4c8 100644
--- a/drivers/ptp/Kconfig
+++ b/drivers/ptp/Kconfig
@@ -80,6 +80,7 @@ config PTP_1588_CLOCK_INES
 	depends on NETWORK_PHY_TIMESTAMPING
 	depends on PHYLIB
 	depends on PTP_1588_CLOCK
+	depends on HAS_IOMEM
 	help
 	  This driver adds support for using the ZHAW InES 1588 IP
 	  core.  This clock is only useful if the MII bus of your MAC
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
