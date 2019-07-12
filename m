Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3B7668AD
	for <lists+linux-um@lfdr.de>; Fri, 12 Jul 2019 10:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbHt/aN33aGGKUC9eAX/C/WAu2nUPosM/7VIjefuhyw=; b=W2IBJlnQ0IgAr5
	ehdyPRXSf6WmuruwgUHjQu4P09QRUaW9CPa7185wlrgOPlEV8SRpxx8YLysyYhv25JLphRKdlhHQX
	1FapjFH46o3FGdWHhbUTTFt/n6+WFLy3VkIMG8FPAYiMbhKyntPhPXgClYobowga05IZfUNh74o5o
	Oid3U9QsEwf1EM4okTGFNQfkt16vgBvm93GESirwdm3MDe5S9s8txqWIMcNP/POMLSGz1onR5QroP
	WM/bFMx5KdPGa0HCukDP9sGp5gYC9x9cU5pYNDZiAvZDasarqrdd39oQL+MQ0vr11qCcS6+uU6QnM
	OBmKN3KV9xDwlZuCIZUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlqlO-0006ST-98; Fri, 12 Jul 2019 08:18:42 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlqlK-0006PU-Kn
 for linux-um@lists.infradead.org; Fri, 12 Jul 2019 08:18:40 +0000
Received: by mail-qt1-x84a.google.com with SMTP id k31so6328301qte.13
 for <linux-um@lists.infradead.org>; Fri, 12 Jul 2019 01:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/VeT4LMsGiTV0pNK4XYxpXDHYp6raL7HPeQMcvopP9E=;
 b=qreLyDZjzSLoWfpDHCemqbAq4PXoCjzSqYvbTxAd3kFq3wcUyd+boew/WgT3T7RHKf
 9DHlYVSAqLvipRWptlYWn4421M2Xu79CzGuk0KbMBlm1rUNK/LznjqA5jW0KnQrmPC1/
 ZdvaHVQI+zq7HWPn4JYjZ3UxDWONOm9Fg1U4Ecy32VB7daAIzd0UYNo8Igah97TpODMo
 MVXHkHxO9A/C5JuWACVZ2C+c1BoQti5W6xYr4Ma7OZ7F6w0tbitEV7BrH7wkYWA0AS6z
 P4gr0KTVRKLs4lFGYERkJWYY15XOw3BkYa4JdcPBUKCPwG5pDxM1xMCqK+sWqXrnX2Nl
 h1Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/VeT4LMsGiTV0pNK4XYxpXDHYp6raL7HPeQMcvopP9E=;
 b=JdMqXnRHRtAFimirIxz1HdbUnBffahIQ8KTOARg2/4ipvlNO29JO4agD5V3U1lMIcU
 fn5IVbLEx1oU+epWSVHgIDzv2n1hQEDBdm9YKjcLl8XJ5HdNPe7AOpGlCUm9i4a07Cls
 +DPEh7e9OakWZuLLq/tuW42BwO8WoWPAziW5wOQpENU3pf0dLa6n9/5jVyHHC0qj+3W3
 Hc9sK026D1RxHSDaFxljNdGAtAUUVh6u+qIALrxOxpRECy5wPcl/skiDiFdn3hXKtqEP
 umT9/GJ8LFRsR0WmSIM+79cWCzS+AplDOHA0s9HED9sAT+ebEGWD84CLqirBCes6qwmH
 THLg==
X-Gm-Message-State: APjAAAVCfm3s8vReaVEojTsqU7O8QtQq0ckQj1YmYuqawRdveRj5UFkh
 V2lBpZb9Gfwb2/SGQFSdt1dY2AMbWfTEhVG8L/OmYw==
X-Google-Smtp-Source: APXvYqx3AxPNySvREBXGAkzPq2NP7j575Vhr0oMdi/29YJtnWUzDE5tk9+TI4/b/ozPiwUtBDdK31OQO693qoPZNoLH1jQ==
X-Received: by 2002:ac8:849:: with SMTP id x9mr5356269qth.16.1562919516598;
 Fri, 12 Jul 2019 01:18:36 -0700 (PDT)
Date: Fri, 12 Jul 2019 01:17:42 -0700
In-Reply-To: <20190712081744.87097-1-brendanhiggins@google.com>
Message-Id: <20190712081744.87097-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v9 16/18] MAINTAINERS: add entry for KUnit the unit testing
 framework
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_011838_684224_8006BB07 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
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
index 677ef41cb012c..48d04d180a988 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8599,6 +8599,17 @@ S:	Maintained
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
