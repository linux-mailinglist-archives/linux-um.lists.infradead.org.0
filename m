Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1933F1C26B
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 07:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuuKrwbnXAphCqeQ5LBTLLeGCL0DlhOsN1+YQox8FhA=; b=u7T0lPiUOmNZbi
	Y6UXwinjk8XDSsk8sN0rt3zcOL2RQoWRBMrp6Wd25KYfIKI2NNX+WMe+6nWqgnv6ZtG/xRkkX6oxm
	MEVco4fqPo3C1t+lLpdofBI2HUmw0Z44DhnmTUTRK+vcf+9t3ulQqH6QHgWd0Mzfj+sR2XCB6hV3h
	5zbX/09Rsl3CZ+oKxznX6djAuQz4KpOi4EiVATFfi6egmvYno5lUiGG7qDhQHFBtUvbGnPXNAh1IS
	Np36+sUPrmrGjfz8LGfk1JhKcbAR7JJbf/VDkNsgdcSUSwNMCD6JeGtq1IAgnC7Lg+3gCCCE7E8A5
	4cjUcbvzJImDe5UsZAIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQGv-0006XM-Sx; Tue, 14 May 2019 05:46:41 +0000
Received: from mail-yw1-xc4a.google.com ([2607:f8b0:4864:20::c4a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQGt-0006VY-Ox
 for linux-um@lists.infradead.org; Tue, 14 May 2019 05:46:40 +0000
Received: by mail-yw1-xc4a.google.com with SMTP id c4so29461530ywd.0
 for <linux-um@lists.infradead.org>; Mon, 13 May 2019 22:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=NNCnVCTAATMxlDMarLLJ67yqDDVFt+vwrBh9wh5mNVQ=;
 b=ogDQD8ZjbQ6rQB/cWAayl+9VthgdTRB4N9+9GyMbHO4DiRsdRDrdV4hPILgY7Dd+L0
 I2RHu02OyvKeDL+lm6hCGMoAmOxcXp1iclHCDygBWy5BFLe5GT+edQ82hOKLR/JJ9KdQ
 11b1p3QAxEdg7lXAO1lNroEn+qdvSJWt3iw3DL5AYhMjgqkE31tSGZQfrWeGG6OKTYPS
 afsxa8QMIeJn+iGaVG/JH2h1LJjJKyL47IF09+kVKczWp9X/zQGgRpH1Zc1iYBbEn+oS
 scXx1DItvS3mhp2+j2MbNl8vNbIJweBsYUaOnaq+FaUIBk4qrqEB0Zys9RYKfXBLRZW1
 bh9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=NNCnVCTAATMxlDMarLLJ67yqDDVFt+vwrBh9wh5mNVQ=;
 b=pmhVjLJ3C/j80829OAHCGQPSnHQ6ZMomqosixBeYCMzIhJn08+k8kvvQq4q41qHK+R
 w/aIHMyVZpH2bdsKaR/G5BbGBfGl+XHq3llv9wWVWOybBVgRtuHbTw0klaPq6pj3tg4Y
 Mwn4zgVSsKAADaoBhIv3wr9YcKonQxRCGQadgNzjEvyHjsplCuCSPIlawyNWHczK3tap
 RPR3/+ylwGKxUU9yTqRsE4afy5i/DhrgJeTiA4FIef/vrsdCelj/IXiqytFc78QxVBBZ
 v4fcMF0Jek1cUMxX2r4FK91HaTrUlxiJHnNYD9elE02fPkNX7zQkxZHTHR2xEUJFzFlu
 ociw==
X-Gm-Message-State: APjAAAWmqyAr7OXGfiT8Vd+UxVPMOVTHrQDfSwtobeEDxqXhCsGIyJpt
 yOZSEC0sLJvcid5Q3Sb50gPeGN5AgyL6hk+D0UuUMA==
X-Google-Smtp-Source: APXvYqzDnMJ4szPxIA4N77qJLw1e3aRJqDLenWVgRY3sM/QbVOHbh8x+6bBUoK7BNggbwfl2r5XHp/gCvYGW7uZKqd8+nw==
X-Received: by 2002:a81:9b17:: with SMTP id s23mr15952402ywg.503.1557812797962; 
 Mon, 13 May 2019 22:46:37 -0700 (PDT)
Date: Mon, 13 May 2019 22:42:52 -0700
In-Reply-To: <20190514054251.186196-1-brendanhiggins@google.com>
Message-Id: <20190514054251.186196-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190514054251.186196-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v3 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, keescook@google.com, 
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org, 
 sboyd@kernel.org, shuah@kernel.org, tytso@mit.edu, 
 yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_224639_807593_4E306D36 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add entry for the new proc sysctl KUnit test to the PROC SYSCTL section.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8a91887c8d541..2e539647589fd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12526,6 +12526,7 @@ S:	Maintained
 F:	fs/proc/proc_sysctl.c
 F:	include/linux/sysctl.h
 F:	kernel/sysctl.c
+F:	kernel/sysctl-test.c
 F:	tools/testing/selftests/sysctl/
 
 PS3 NETWORK SUPPORT
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
