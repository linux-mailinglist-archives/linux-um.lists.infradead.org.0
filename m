Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB5514E5FC
	for <lists+linux-um@lfdr.de>; Fri, 31 Jan 2020 00:08:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQo6ARknJ7489jpzHK07CqL0pMPuWZV3EIYdH+S3orc=; b=ZRpcb2yv6A1iP3
	2vXnvFMkKdtJ5jR7x+fQaYM+niImOSa03KAFEupkhrzISt6ACBKYt6dniJPFV5xHY/FiPeWdInpGg
	th6gZLwyvBhFuIns3PYO0gsZTMrZWHbaE1olFwqsv/stiLmIs3lO2U5/xnMteyOPhkiXND4qpMr18
	1zcq4aMp1KKTDT79ksaSiaKPzt3hHZHORjPdKTqEAj/JofJdnXcE3hT6IQxh9DEA7yjAdU2FuPXC/
	zL9o0MYDl6iM57qEznGUfvlP7/4b3XCvXexwQDlwCz1hAGJedAYdvewFf+yOLzSEXwP/sBooynvum
	qIC9OQe9nTwU+aswGHOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIva-0006Jx-SK; Thu, 30 Jan 2020 23:08:50 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIvX-0006IQ-TW
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 23:08:49 +0000
Received: by mail-pf1-x44a.google.com with SMTP id z19so2757654pfn.18
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 15:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=dCX2LQDaoIcwFmYSq3cgmAkx+Exp0YNCPmOsw4OCxis=;
 b=Cea+74kKLR/GteXq64Op60MuNDLPdMizqbgVfNpoWkuF8hmEB2KWidlL87tYLsXrua
 8Xzbo2dCO77srQ679vBOopPPaT5k/SDDfLFgk2PVYP32VYXEliWcHSPQQvW7RJouxHAe
 hc+sUOuQ6TRmwjFRtbnmDP2UOQJ2LzmbdTH38wKl5fTpIu7RcFxSIOf2vAfgqu8CZAVW
 GLEzOaHOLVt2EVc2azlbEU9baY7XraTtjjWlZ/jKsLTm/MLozD7uXkqirkr8AYc/6GXF
 us3u/wuW2oRnrheLqJLro/pS7keuZISgD+5hxQQ9fLdo+8fcCY/HdMmki7Y+kyw+/l1K
 d+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=dCX2LQDaoIcwFmYSq3cgmAkx+Exp0YNCPmOsw4OCxis=;
 b=qs44k+lwgrzwfrPeolUCyhm23atmS0CrBHMjSE1YO5mz6AnhJfr0bhncjSqUaGHFDS
 /N4Fx2HHZ5CdeQubl0tUD0UaVWdpqxXqOEcjZJMQqq7zc2iqqMEkG38XvoVakNDwtZsB
 pmzdNT7JdqBODdYc8yqc1z7dMzzXHxdMvoGgACMjz1QhH5Lcc9Zq8SxuD3xyzl2lnOgu
 7aSJVvKZANpyjt8o3LaiTl4rPEQbJH35ETfEV1jDwr929ZAzVfNwrNVtjqA1RiJ+lO7C
 aJLph8tVyuyyKwLy4c+MDO2JIbO/74GPLMNpCy1N3txpy6cY//WKIsX0JbbQeVSThqMt
 CgKQ==
X-Gm-Message-State: APjAAAUVc/qdlRkOhC4JDaad6coj1O4zqlUWRO2TkjTj0/IWQO1trMKa
 gWB1qQUiCaft3DqwTsooM4d0hYZwhwi/v3FqQ/hspg==
X-Google-Smtp-Source: APXvYqx+2ri6MUmVYy6ptSJgWKOGMVZfjLQX0JTmgMuADBux9koL0KUnaGALzsStF3tXii//z0M3FTNmV1ggHaNXMBaSXw==
X-Received: by 2002:a63:78cf:: with SMTP id t198mr6898466pgc.287.1580425727146; 
 Thu, 30 Jan 2020 15:08:47 -0800 (PST)
Date: Thu, 30 Jan 2020 15:08:12 -0800
In-Reply-To: <20200130230812.142642-1-brendanhiggins@google.com>
Message-Id: <20200130230812.142642-8-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 7/7] Documentation: Add kunit_shutdown to
 kernel-parameters.txt
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_150847_950042_867CCD41 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add kunit_shutdown, an option to specify that the kernel shutsdown after
running KUnit tests, to the kernel-parameters.txt documentation.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 Documentation/admin-guide/kernel-parameters.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index ade4e6ec23e03..522fd8bdec949 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2054,6 +2054,13 @@
 			0: force disabled
 			1: force enabled
 
+	kunit_shutdown	[KERNEL UNIT TESTING FRAMEWORK] Shutdown kernel after
+			running tests.
+			Default:	(flag not present) don't shutdown
+			poweroff:	poweroff the kernel after running tests
+			halt:		halt the kernel after running tests
+			reboot:		reboot the kernel after running tests
+
 	kvm.ignore_msrs=[KVM] Ignore guest accesses to unhandled MSRs.
 			Default is 0 (don't ignore, but inject #GP)
 
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
