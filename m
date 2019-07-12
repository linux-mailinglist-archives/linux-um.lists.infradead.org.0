Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA945668B2
	for <lists+linux-um@lfdr.de>; Fri, 12 Jul 2019 10:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zniL9D1Fa0kyaGnMV4EpeUQlUj8KyTLc8SMn2MqPy2w=; b=ZdW5YOCJTw+U/g
	eFskRbws0kh37vA/eRTWSG2JRHNk7EEn7/Wb5kgLSS9vuH7I0ZhsANfSTZZoX6bd1AieKdmSLDMw8
	Xvx/37NHiPYoHYm5gZaw/jaJkRReeqrscKVY/OBtBJtcNN5p3t63ZtDuExWeBr/4sqd2ermTarZda
	dZVxeJdVkIwP82iu1TPBtBiDWIhYTfUb67aCb8g5QjFJsBTvv8SNTNQD9J5Zkh2R/ixFFcCN8P4Hs
	gw9Ijwkiwjq9INL2FkPBt6zashbAYSiZoqnFHKfXTZpDgg4QCGLdNc2fnQ8ZcE1F+oErgVtmy609f
	zMzh9EogyTqa/QnaFDqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlqlU-0006Vr-Sg; Fri, 12 Jul 2019 08:18:48 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlqlQ-0006Sx-3U
 for linux-um@lists.infradead.org; Fri, 12 Jul 2019 08:18:45 +0000
Received: by mail-qk1-x74a.google.com with SMTP id k13so6260905qkj.4
 for <linux-um@lists.infradead.org>; Fri, 12 Jul 2019 01:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=LDQmGV1sXKMjUeOhPKTnD5bP1+GpH11oHwNBh3L4XLs=;
 b=ajMvr06ssanFu9RH2ulwsIFgwcP3l/5lqWEJ4esAE7iplXyXRdoSrlII6lIzkciV9c
 8fS3nAoGa/HEi4KQyyTUBP5BR7yF3M+y9W97hSaSVNMs7BQDT5O+1ViXKXfznttmHdA4
 kZj77gRl1AQhpyhVrBktIROAMxvXbx6avdgvMOr4xBoGYGhyUIqfYD/dLpvgaPFXSOWO
 xbcNYLSdxlgrhAxlcEUApm2APOEsny1ZyIbfB8sr4BAZx09pOkCoMJnlgMX+1V3SASYs
 BSMIHfLGoKRYl/0WYsLgnjKM0J6KWHxKs/rp+Dqs7J9PUiYp83sE3bi0Q56vLyTXyarh
 dgxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=LDQmGV1sXKMjUeOhPKTnD5bP1+GpH11oHwNBh3L4XLs=;
 b=hWRVh36Nf4KjyhjDZnLEcpgAhSBkYsIDlr2f0Dy3Eyzjgcu1zNFCetLv77PaTmw2Hu
 5lLEqr5lRhLwbnK5xyu8P3sa1DtyMk62JZ+EVAYVlVcoDbNn3zArdvFiphX53d63uFZz
 6wYhEaStCq6KUz/hnp8KNYLcjyUzUUW7tRjrtYxHSop60f8OqS7F5LF4PXVsFu9ErjHc
 bRV3U7H8dT+u2QEjx72lNGMCIbzhLyquQSOXMhxAsp9nm0XFy1XZiTWSkR8rsnzHfYNo
 gMsSYHgFbhxdj4rXpHplR5faOYYTFcD+JturbfDuogfxvnj6LD6Sm4t3Ly+v8xLiwt4S
 8GxQ==
X-Gm-Message-State: APjAAAXZMMFg5VHeiMkCvBWxKMavD8XTWpxALT2sXldrzNGDJ31Sen8E
 x2Osj3W5kN8MGLIFIdt7jlArY9tNhP/hZ1ym8rvo+A==
X-Google-Smtp-Source: APXvYqzC+SZLS5J+4fhjs10zmFF3ZVskrEEqUdAP/3LUu2LLwXYMIIoYM0ZhbtGFlpH7G417ya7cYZF2uvns6Cyv43rpDw==
X-Received: by 2002:a37:9a8b:: with SMTP id c133mr4814616qke.261.1562919522167; 
 Fri, 12 Jul 2019 01:18:42 -0700 (PDT)
Date: Fri, 12 Jul 2019 01:17:44 -0700
In-Reply-To: <20190712081744.87097-1-brendanhiggins@google.com>
Message-Id: <20190712081744.87097-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v9 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_011844_147118_AF6019AF 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
