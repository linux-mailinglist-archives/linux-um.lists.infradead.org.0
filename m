Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDAA9BA72
	for <lists+linux-um@lfdr.de>; Sat, 24 Aug 2019 03:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuQABxtosPkTSreKvIUMGh9gtB9G33PXqzFEVthBQpY=; b=hJ0h5yptTRT023
	fJKEcLipwhJS8ZNVNwUm7dsezVMZvt+PhzNQ/WH+PGBMRgyPMrBA5EtvMz3y3KKGNGwyA/S5tYZf9
	u09Jn23lsohusr+0nPhlNci9aGCdqQe1Kwc2CmznQhzlFFXIaeJ0P/OFCmN37vSHCwXkDiQMJ7bbP
	LpeQDnVkLoQvJpi8m5hPCsPtXJVF4N1uahhSnTvmVaUCZFWmuQ9Ww5KbF/uNJzc0vPBb0nmrxB9S6
	E5OKnOlFQalbwD3MLQLzMyokC6ZVZdQz+EJiD2VR0uokrsJMvxELztJ5JWkSDkd0F+9RuE2yRb5uA
	nYtmDrYVLxkPUHUTihjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Ky0-0005OU-Ia; Sat, 24 Aug 2019 01:35:44 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Kxx-0005Nq-Dw
 for linux-um@lists.infradead.org; Sat, 24 Aug 2019 01:35:42 +0000
Received: by mail-pf1-x449.google.com with SMTP id q12so7694988pfl.14
 for <linux-um@lists.infradead.org>; Fri, 23 Aug 2019 18:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=RZYwg2AKNWWbK5AlePl3YpD83HqbQqaQ/S9W/auEYuc=;
 b=sXlKKJhgEU1wa6b+t1Kfk3Us9JBNqB6qgFrYAorUjpNahnQtVB62F129r9jqW7As2D
 TECRv23j+orFXVoF1btyTlgKbGavDLv/mRXRpxUvewJTVsSyWUiwJR/MDWHL2k4m7043
 cnxd+RK+ZXWwaD0m4kGAzCv3TPvws/OkUrPxVWvZj7C8gOUsEIbG1ulzMU+UBC5ulBWq
 dWbj8dEXXE7CGrs/FCxd7vyonAjP9xvohhPSk8O9Rj98/htG5iBLR1KI8Hh4Pbg0s00U
 4YCNUKyFTqpEwz4Jf4CPs5qIZGCq3zkZi2UB5XVr4PO3/OBx5gUJAlDS2TXKFE4g9qqr
 g5EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=RZYwg2AKNWWbK5AlePl3YpD83HqbQqaQ/S9W/auEYuc=;
 b=pM5iVflSW3RBCf3OwTpehucjhUeq+V3KjlZFBXhiCZN16WS5CzL2u71nMYK8znR/Bi
 YOjC33aSs5gsGVxtF43YCpPUPDUmclwQrBeFAXpR/KNRBOHbXHbld9ejm6DWG8qc7aQN
 hi2cJocVveV5K9IztQU45u/jkMuwi0q8iQg7Wrb5kr0ZsemSqaJhiUv2hyl+BqTnM+w0
 7lRWVmP+V8wBTFTjT0WUQ4gH6dGtzW4NuCcGmcqx6Q10Jt33uHT314r52K3dMa8oJB0T
 H6lZqVbCIycGkDVE01v97g3wMyL8aER5tWMa8CLgHAD0a8X0KsyJdg4+BHFLT7Rzzg9Y
 gBQg==
X-Gm-Message-State: APjAAAVlx/Lf75kwxbPm9s7+SHiY1ZPIyKKAE6DfDkRvn6Os/2DiYGAD
 +bJ7NX4Dl7XgsUu8EgNiAcwGPgvOCIxXuxHXaJVrgA==
X-Google-Smtp-Source: APXvYqxeho9rBF0ZZ6VsD/UiYLMznIviw0ZlKZiyS4hv5yytF5NdlNUif2Pu10B+ZY4kXv3ubxh1pUBcBlFmg94D169gig==
X-Received: by 2002:a63:c03:: with SMTP id b3mr6561436pgl.23.1566610527139;
 Fri, 23 Aug 2019 18:35:27 -0700 (PDT)
Date: Fri, 23 Aug 2019 18:34:25 -0700
In-Reply-To: <20190824013425.175645-1-brendanhiggins@google.com>
Message-Id: <20190824013425.175645-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190824013425.175645-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v15 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_183541_470872_EDF9F1D0 
X-CRM114-Status: UNSURE (   6.31  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index f0bd77e8a8a2..0cac78807137 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12965,12 +12965,14 @@ F:	Documentation/filesystems/proc.txt
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
2.23.0.187.g17f5b7556c-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
