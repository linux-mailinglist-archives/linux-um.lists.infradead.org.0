Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42FE6B3F0
	for <lists+linux-um@lfdr.de>; Wed, 17 Jul 2019 03:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOLa2e4zLPul9JgMQeb7Ou1hJmN/vZAin9PiszwuRTA=; b=LsTN7wj4oGr6Dw
	Fa0JNbGZ2ma0UtPpSkjemt6X4zBI/cS3AD+x/CwP+HeQxSoVGsmvJoBKisO5bFykp1BIdqkwP/8bM
	pThT8GOil3QZteKamA8KA7zI+4KogRdP8tznGKyk7HOsQ1rEIm4KoV+rxHtSfqt2I39KZQNv8JChf
	Bcxua7fG3UEiGpSWwI6F64YrrTQ7/BwJB1wTMFJjIMDgQBlSMq+dy0S3T5JGgblLpM9BzIVGftbKY
	SuPiKG9V3Ak4DfL5fRXPldEnTHMNgqp9hnOLbGeq2Tj6/FXXq7kiJKX1v2rY+eM7+kNwTZhEUKq7+
	189CVSGdSx0AWazQtKKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnZBY-0006mU-Qq; Wed, 17 Jul 2019 01:56:48 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnZBV-0006ke-3m
 for linux-um@lists.infradead.org; Wed, 17 Jul 2019 01:56:46 +0000
Received: by mail-pf1-x44a.google.com with SMTP id e25so13506300pfn.5
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 18:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=z+RsQ5cMJRNJEspG7oJoFcFROmHPEJhG9JB06H11s3Q=;
 b=arQQpTGJERz+HpGPXFp2jlPN5FrwHz2WQgWAk2OJzhGjTvteOU1VI4pyg3Gluszw+4
 vjWiOIXlN3LE6Wmx+vW8ya52UlgsM6wNwD7n+F3tTlm0oU8wIAFq/wdLYE/uqwXxmQlX
 XH8Q+EuWSZgjc3pc2sIgMXZRv15qqL94qa0UO9XEjvbkfa9x4jqUS6XSlv6anCR5d/Qu
 TojpzGJ8KJngr73CNti9m0kYQQzcoyj/lkheRLPJEVpXYgERpvNTv8Z1n1LTd7t4E729
 ECeSIi3rVf+NrWYm31K34bfHpNTeBSIN8kh5bzP8sJs2A90bieFh3IVp2mMrPJo+7TpA
 I/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=z+RsQ5cMJRNJEspG7oJoFcFROmHPEJhG9JB06H11s3Q=;
 b=HGGb/dRvrI12zVqBUEPWmGOz62zFYTKO76nRYX2HP2m/f6n/uB/F1WL4EW8U9xjYu/
 JodeDSFvYOxOE2tNC5vN2J35x2w7GAHJPAF63PBA7XAbww787uMGe6x94E+c0G0gWvjV
 DH5Ux79EHFg01HqeF0y8E6g5pn6Jni7Srb/XAaIeqgzoluP8PzRizmeM6SGuQViBHjVp
 4pzDwSeded0n9/afNW98Phpu9Zj2z7snKcKye/1gmKO3oSPiJ1QzoMoKtlApF+CL5Mzc
 tZvEuFeu5fD62JRgGHNciy9BqqfIUbcs21UNninBap2MZaw9DsBsihpUYE5vvFn/bL1r
 +/Jw==
X-Gm-Message-State: APjAAAVfZJeQQblj/YdsfxpQM+opZ1STHtsV9ETGWmMbKQoi4S8LvvfI
 Jw0XKFgL4Pg2me8kPe3DW7YoslQ+8x+985l7Un//iA==
X-Google-Smtp-Source: APXvYqwCZQKnuVk17fjP8A6U6bIZkWGFvrucA1ktqKosKL/38OKDiYQRbphN4EY4EbgHhiCugGJd7KJEeLMjHEFzWtBqZg==
X-Received: by 2002:a65:4505:: with SMTP id n5mr34106191pgq.301.1563328603229; 
 Tue, 16 Jul 2019 18:56:43 -0700 (PDT)
Date: Tue, 16 Jul 2019 18:55:43 -0700
In-Reply-To: <20190717015543.152251-1-brendanhiggins@google.com>
Message-Id: <20190717015543.152251-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190717015543.152251-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v11 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_185645_200922_22F95745 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
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
