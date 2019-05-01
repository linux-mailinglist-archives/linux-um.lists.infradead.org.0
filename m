Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B768210FF6
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 01:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EA9Kszx5Ma9oHfgNxHKsWWcfhzIpugUgn7KXicSkui0=; b=c/IbJmo+Oz8+hA
	1Ncp2AAfrRYFgnQ6r3uuBncryO5NTZG9Ecsi8qtJQUFsEhVKxwWdCv2uGPDDmhtftjKIfQE9q9o3U
	monOcEys8ZdiyVdFb/RAQmh7G+J8HH0MPx8s4iFx67o/BDEK9DzpSLrIgntAWgVJAh4mRutdkS27j
	84p1mDpEIvdV9wGipdZEFFDRFZIfvgMB29N+NPllPjeq1CzODlRNQRFDsT6gpNNyfQoPdX6tsuo2D
	G+YcZea93dFXiFAXrAZLYvHXcVGNH63wXuw+ZvrpKUJ4sCktyt8uEI+YpEIo6y5/cXrzl0zsGdz26
	qof9f4jLhSds4ZcYO5Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLyHn-0000SW-9I; Wed, 01 May 2019 23:05:11 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLyHl-0008W0-3g
 for linux-um@lists.infradead.org; Wed, 01 May 2019 23:05:10 +0000
Received: by mail-yw1-xc49.google.com with SMTP id s11so1096976ywa.18
 for <linux-um@lists.infradead.org>; Wed, 01 May 2019 16:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=PRLXnvg3FnToIBJTwXVR7d2TK/MHZSW5pjHfdNwtr7Q=;
 b=K5TwnumODggM3WBroA2xjKir+Hf59I1szowVRTt0lzCy/25DKO4Auoy9KuasdBqFUu
 UWvBOKOTmtxVhAOl4er1T2140+nu1Bz+99TiGL9+yTK//z+jqboMkU5aijHYP0BbYsOh
 P/McaehM5toEAU772+pJGpQWNEZx5xhfrNPAJoKaW0IpWIVJaq0KjD8R8F3QXpB30i5m
 XrT04TmEJJAw/8yrNXA4XJeGyU/uVcdsIpKRYnl9kRb2X6reSvrGJiWqLpi2xAFDwIgz
 M+mClrFoRM5PxaczMRkZTVN0VXOBXS2l+ZY6dXc7xjKICM5LbtnpXVDT7unPYWdXqa7Y
 wpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=PRLXnvg3FnToIBJTwXVR7d2TK/MHZSW5pjHfdNwtr7Q=;
 b=IaBCirXzYf7naK6c2Wa464DQY3IDm4d0Km+PZi6KdIa1LWx6qCEpxjzDzjhIG6aKtt
 p3YMQolEoqBwIXqZzPXW2i0y1hEAt4oqVy/o75msTZIh1mIIy25tYhNpLH9i9A/KiATK
 46nd/N3q18MJU8YLAiog0Pabzg+lLZ2G/SKgNrOjup9pDdrbFrEY6Xp54/80KM/SBKww
 BH67OLg2oNhHvHarWoFNAeYk4WeWCW2VyS+tNIN9lrLE4tWLtQ61sL4I1IwfPyircYjG
 PnCCQHGXImgQYGkSrb3EOFRXGB81gg4lbYFvONT2U8twEdIuAl3Bs3XQDTAICAlPYlnC
 UxtQ==
X-Gm-Message-State: APjAAAUHF2P74spX6sZYkZRSpjYvfgI2B/CBoHRwJC6/mEpFXhuuJ7/f
 durV1RmHbpgd0SQDR9XAE11at1gmHLpde0MEISjsEg==
X-Google-Smtp-Source: APXvYqxSccXA/VUA/6JwG1W+T505ogTb6cCEY1XA3skvxQHV+dYiYJA75B70f0UwwhMZGG1vCcs3UYjo4MLfLh9fEqXVcw==
X-Received: by 2002:a25:aa87:: with SMTP id t7mr327533ybi.419.1556751907604;
 Wed, 01 May 2019 16:05:07 -0700 (PDT)
Date: Wed,  1 May 2019 16:01:26 -0700
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Message-Id: <20190501230126.229218-18-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 17/17] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_160509_153781_E408FB81 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add entry for the new proc sysctl KUnit test to the PROC SYSCTL section.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c78ae95c56b80..23cc97332c3d7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12524,6 +12524,7 @@ S:	Maintained
 F:	fs/proc/proc_sysctl.c
 F:	include/linux/sysctl.h
 F:	kernel/sysctl.c
+F:	kernel/sysctl-test.c
 F:	tools/testing/selftests/sysctl/
 
 PS3 NETWORK SUPPORT
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
