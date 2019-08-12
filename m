Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E768A608
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 20:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbEFUt/C3icaXpJQ9Pl5shlFyzB+m5hvBjEd8w12YnI=; b=ak0hJ+EneiHXT6
	vxqcKC07f8efYBydtJ60C4/SWi/01F4mV/aPIbHad5hLxtaKogHjS4s9ty6UNfM4hZtzH5CgHA3cK
	vBtWc/DT4YpTJ1HzWMZ3rGXjINQw8EhKdKoIGGBi3GrvMGeDRCzI5dqMt9tk+Nk9AGObEXyp9BNdo
	UV3KHCv1DGSXBNL80jXmaG3bdmft1alFFcO6djxonez2Dl3mW3f01lDxLY4mdOw775Y31/moNuvy6
	YH+TE7F9KLTsEPRlq/4HDFApp9bKVnM5TTND7xDsGWqh0FTPM55+2g49hBBV/DA28fg6GOsKWh4yU
	MAF2jolFtD4LOZss7ePw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxF0f-0005A4-6t; Mon, 12 Aug 2019 18:25:33 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxF0Y-00055j-40
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 18:25:28 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id p63so508314vsd.10
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 11:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xF9O5bmycue+nV+5s3i5h7noHmCRlxc6YkqioFWCIGY=;
 b=gAMWQ0Rq8di8PJdodT5hlee8/JrnFuNFOn9CKpyZkYxConO+hEk83QI5D5n6+k+6i+
 j0b8I4ILhJznmcqU3rrbjs4jFGJOVI0aYBiq0akuO1nPcBMaWWmznfDoLTwhkyatCdEA
 c9YCcVql6VrKCVIbtdtdVUlkobrOu3R9UWzNO43ovANODpT48IxQkwpDo5jhYuvfRFsL
 IrapIf1i0x6MNbwEGnQ+3Au6uQnf5xQNefUPyKxDl8J0fJ3mJV/Y7aTsKcUmXRc87ISS
 XHXIdrXTomm9ohJ18ZDd64h92e/fcyzWZWHpYevEkb9YB6K2oK4ehj5IbdKdrEzicRYR
 VnLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xF9O5bmycue+nV+5s3i5h7noHmCRlxc6YkqioFWCIGY=;
 b=CpueazSaIkuyaKxHDZdPFLZK6q5rJwSvgcHV8wdopifDLpPbHbQK5WDyPVntXHIUyi
 TVS1nskl+RRh7DnKAJSCrN2rMpNpz14/QHD+k24vVQB5o6s4ztZQ9MF5p40sqnkAWtbh
 YcngmXciYFnf4JD8Xv2GJkeUTZj0GgMhF69pDfsAO3Cxsb9Gal7UME1EeCGSXiH69vwU
 9UBFFvoffUWz25gu3npg0vpxr2HpVpV8HKz2cafDOgzHjv4azktdA3vMTUdVovFmmzNH
 7qnM6Mxw4uPLF/3omDdrqb3QCIV6mudAcHpYGcb1TYk2KjarAAx6gXeXhIUPIahTKoy3
 0SIQ==
X-Gm-Message-State: APjAAAWJNzD75s7uc+jvGzpMApRQm4GDTWxMH1pESgNgWUVeBD1ow1KE
 uSw02cn6JTkrNPnSa/zpN9fDD0PIg5bb44FTYAUNVw==
X-Google-Smtp-Source: APXvYqyeAsoiYSIZDssjIlvbmVHHgRUhDoFimGkDtWsUy8Gxg5PQGoL+C6ai0yY+oGoXi0nylGBGvuiQ4FD5jyk1/IcLBg==
X-Received: by 2002:a67:c287:: with SMTP id k7mr6956688vsj.208.1565634323531; 
 Mon, 12 Aug 2019 11:25:23 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:24:19 -0700
In-Reply-To: <20190812182421.141150-1-brendanhiggins@google.com>
Message-Id: <20190812182421.141150-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v12 16/18] MAINTAINERS: add entry for KUnit the unit testing
 framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_112527_219252_534BE113 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
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
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add myself as maintainer of KUnit, the Linux kernel's unit testing
framework.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a2c343ee3b2ca..f0bd77e8a8a2f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8799,6 +8799,17 @@ S:	Maintained
 F:	tools/testing/selftests/
 F:	Documentation/dev-tools/kselftest*
 
+KERNEL UNIT TESTING FRAMEWORK (KUnit)
+M:	Brendan Higgins <brendanhiggins@google.com>
+L:	linux-kselftest@vger.kernel.org
+L:	kunit-dev@googlegroups.com
+W:	https://google.github.io/kunit-docs/third_party/kernel/docs/
+S:	Maintained
+F:	Documentation/dev-tools/kunit/
+F:	include/kunit/
+F:	kunit/
+F:	tools/testing/kunit/
+
 KERNEL USERMODE HELPER
 M:	Luis Chamberlain <mcgrof@kernel.org>
 L:	linux-kernel@vger.kernel.org
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
