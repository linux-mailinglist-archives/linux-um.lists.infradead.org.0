Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CC2B9A45
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 01:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+sTcBj8m1Td8raB2g8rDeFsahKIEbCzo+Ji6pVuUdnQ=; b=h2hH4PwnTkgT5S
	V6I9wFWY0bcJLn1CxCvPdATKy0TXdYQXVt2gs9DqI9gSTmyWaLuzFEMQOJns4hUfdn2fxrDcgEPl/
	YT9gOkcGuOWG0820VQ9d4eR3i51NJlCYdQJGxxz1zcg1wKQhtFa144TVyto/2Hu3NSm9KdsJYaTzV
	ZYSgIwx50a7KOB+q9gKtdIFaf7vjBUwu76/qONYyhAkQ6f0em6iU/y/7p8lrcUb/n1Kij8cmMOM+e
	xskDquiw0hZ2x7o/HtOhMIHpoDHHAWJAV29V5mexs1gXdzX8u3cpPjHgZPZzXolxfmXeO5MoAava5
	JZ1TT+kbD0nqPMrJK5fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBSCY-0004pF-Na; Fri, 20 Sep 2019 23:20:34 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBSCU-0004nC-J6
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 23:20:31 +0000
Received: by mail-pg1-x54a.google.com with SMTP id d19so5379940pgh.3
 for <linux-um@lists.infradead.org>; Fri, 20 Sep 2019 16:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=GL8bIr8dLG5/Kc/Y8WKLabBIaZO7WJH2uwuCEH7n76U=;
 b=CzgTCJo8a03qtDkryi8S7GqE3WBkXpTH7h8KPPyCJ/R7yPOdQC+gbMLhhZO+qiGjtk
 54sY/XHjJn4GHW/KCNJea84VmG0gPWw0E7BExnqcKWyg3Kz/ZtYTaMSh+TwGbp9qsgIk
 s7KtsGrN1A86XI0MRInVo2n83P+LNe6ZOMKostCkOJP2PnvWM3cxmYY7Tx+N2B+zejw+
 nTowY3+Pk1lGifYnmfpFWAzDCYnjgqGhu3ohRMdCvw11WlX2ydoXxkQ4zZtinpNk32nk
 /kaVxxucPBvWZLeXCPZndsCjhhXXVaNBJ+OattQtQm5izw7LOib7R5p257wQQqk2kihb
 P5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=GL8bIr8dLG5/Kc/Y8WKLabBIaZO7WJH2uwuCEH7n76U=;
 b=kRIdyGHmVfuz2v2y41OL61tnciFwTrKigSL8WfhrZY7weTiFi+Rk6kP0QqnueF3q2j
 mdOumHmcHPtuz7tWDIUnsMfNbrR35mxfFUdDORbfK9YIksKiX8dsCXjqYARGJ9jcLJ7r
 3cZVQM5BZ0uuWlZYXGNKpVhbhLk+GAtzl65DD2zeWOy/XjluR891YLodTAHrG0Qwylau
 CotT0ShBROidX3IQxtVBv3oygtbPDpHngMXD2boH6jdW9mv11PMDVg1xW2sfh4hGB9pg
 YwEISw0o18TMf94uLFTPqlKqMDiogwcMdkD41G7cws5OHG6xX0JjSo3sr2gFwehuBEYA
 fNoQ==
X-Gm-Message-State: APjAAAWQeM3CWi4sWkvibdo/uaiUBs8Gq2dZdmZIkYKDrj8XPptNuvZw
 GOTXp8ITOG19XQik6jZFaxCFOOuIfZIv4inOQMfibg==
X-Google-Smtp-Source: APXvYqys3CVY+ZJk3HZQ+2n1DealAsHrwQI2guSNKDoKj0PZfd4ijUtGVuBrwdz736i08AAJsEhXYd5CBLACuWNBY3hfvA==
X-Received: by 2002:a65:608e:: with SMTP id t14mr17679666pgu.373.1569021628859; 
 Fri, 20 Sep 2019 16:20:28 -0700 (PDT)
Date: Fri, 20 Sep 2019 16:19:22 -0700
In-Reply-To: <20190920231923.141900-1-brendanhiggins@google.com>
Message-Id: <20190920231923.141900-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190920231923.141900-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v16 18/19] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_162030_627145_E36B4F86 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 kunit-dev@googlegroups.com, richard@nod.at, torvalds@linux-foundation.org,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org, daniel@ffwll.ch,
 mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org, logang@deltatee.com
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
index e3d0d184ae4e..6663d4accd36 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12983,12 +12983,14 @@ F:	Documentation/filesystems/proc.txt
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
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
