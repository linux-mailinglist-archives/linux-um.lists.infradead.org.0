Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3036A552
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 11:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOLa2e4zLPul9JgMQeb7Ou1hJmN/vZAin9PiszwuRTA=; b=TskIY0JmX5HUBG
	DAlEHjHmpfr7liaDlLIOXqZTHG0w2FL/C8BQRErWDti6HY5Acck6mRgJxxuU6r5xyusULRc+NB3kF
	wp5vdMFm+jqtJ+EVco8r2nA+TkNCNXH590M/WizSyJ6mO9Jkeg9u61RHbOgZP+aVdphzSoH/srCHj
	EZHdwJ7aCARt3ok/y4NezwmMncJZW6cnmnFd5hyWpWkbSWRevyJKMCcODL/HCFTyI+bZZnauHxvnZ
	cXS7MircUzwc7Yb1ziGJg5Y+ETjO/Ap2vIchFnuxl4obNzrHJnREkEa/VK2QvWt5tIocxTWkjjASj
	AB7rIlFId1+AdjVnCE5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnK0C-0006LF-GI; Tue, 16 Jul 2019 09:44:04 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnK08-0006HJ-8k
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 09:44:02 +0000
Received: by mail-pg1-x549.google.com with SMTP id d3so12300877pgc.9
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 02:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=z+RsQ5cMJRNJEspG7oJoFcFROmHPEJhG9JB06H11s3Q=;
 b=CUY4X28sB+ODqLkExBF1TPtKPBrP8z61MsztlmFA3r3gT07JFbpBdEO5woSX6qXc5N
 7BJpPco1WgRlDYy/qo0/eQlbH81eSVuboFms9Vfai0ZrWDbY3TxcYEjJ862ij9z1VGEB
 1XEk67DEtl2x2z0HdpX/hfuCpUB44Qgi9Z5nNVY0IvyFXpJdsd7uca/G6oZFZDgCNkBl
 9KwMhzPT+UvSiWeRn/CMWIFt4CB2a/Hi+EdyU8gaY+ftONCJpCEIb11YwL2UTJXycDAy
 5pyhBy52Rf1DEP5nqhHWDX5FpEAPRVHHNegfFxUpAFP0dG/QMJ9n8t8pRQ9jJ7cscePK
 Kt1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=z+RsQ5cMJRNJEspG7oJoFcFROmHPEJhG9JB06H11s3Q=;
 b=Jmlgh7HsCxVem8TsUeLC8r2DYiG0lxf9sTDALVLZ83ymFH0aqe8VXspWAm/SniSAwP
 OLzKi6yatRx5naSMDMuDD2P2aWf2fIi7czgbWUjAEJgvNewsF6+duq1eJWpVFCoU3ln7
 l1MjCpTfRYFoRwHNLDWytnPQZFdtU75DFSfShHjauE9O4tT7czeHGASysvlTTWlXm+Xb
 AImDTwyEGHGVoL3hn4AZ7IWcB3A3E3zNjr7pBhND+lr4pTXx6GJvoxkDEK1qDW5wu7qX
 7nbbqVgAFBdNT+WnUc8Awitn86905XZgdBSfz/R+bcMuE+OXN39wYh/twZzu0u8NuoDS
 DP3g==
X-Gm-Message-State: APjAAAXrf3n58nMo1go6CHji4OTJgylO9i/IN8b4mH50dOOhbmXIdtJg
 H+CddbqxZrmC4UITjYvvZbj0TX14WxHqcOuYtE8UKg==
X-Google-Smtp-Source: APXvYqx6tsQcpzZYDcAwRrqh43EK99hhlzkdZq0K9nskPImImgYN/CiLbSuAKeIKHVdKNAnHBHuOTFF9uImlQQjUAKlIJg==
X-Received: by 2002:a63:f401:: with SMTP id g1mr33239239pgi.314.1563270238515; 
 Tue, 16 Jul 2019 02:43:58 -0700 (PDT)
Date: Tue, 16 Jul 2019 02:43:02 -0700
In-Reply-To: <20190716094302.180360-1-brendanhiggins@google.com>
Message-Id: <20190716094302.180360-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190716094302.180360-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v10 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_024400_308360_E48E74BF 
X-CRM114-Status: UNSURE (   6.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com,
 Iurii Zaikin <yzaikin@google.com>, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add entry for the new proc sysctl KUnit test to the PROC SYSCTL section,
and add Iurii as a maintainer.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Cc: Iurii Zaikin <yzaikin@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Luis Chamberlain <mcgrof@kernel.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 48d04d180a988..f8204c75114da 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12721,12 +12721,14 @@ F:	Documentation/filesystems/proc.txt
 PROC SYSCTL
 M:	Luis Chamberlain <mcgrof@kernel.org>
 M:	Kees Cook <keescook@chromium.org>
+M:	Iurii Zaikin <yzaikin@google.com>
 L:	linux-kernel@vger.kernel.org
 L:	linux-fsdevel@vger.kernel.org
 S:	Maintained
 F:	fs/proc/proc_sysctl.c
 F:	include/linux/sysctl.h
 F:	kernel/sysctl.c
+F:	kernel/sysctl-test.c
 F:	tools/testing/selftests/sysctl/
 
 PS3 NETWORK SUPPORT
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
