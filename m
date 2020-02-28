Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 412DB172E1D
	for <lists+linux-um@lfdr.de>; Fri, 28 Feb 2020 02:21:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGqK4RHfuBQtO4WsK3JAFK9YZ2r8pingZfsNZ/MZJpQ=; b=Uwv8iI1uBMP2IU
	YZF+Q1ltIN8mOxMso+2pBUwCStw6jUSJIy7yeI8G/PNGKNJsZRfkXeG83TxQQvES2BBsZMPEuL8s5
	iEyH0PX7v+S+EdEl/1MFxnLbi9buRReg/2ILSaXY63Pz8sIm4PaGknElFOlm5VuQo5OSZtr0KQ1OC
	KnDycqwxNBokj/iOhSK06MHorK3tfJ75Tagyc+j7XGF24x3hqKANwQcR6aRQkiWIypq6g5oEpDaL3
	7vETe5AoVizSw2EoZ6d932K8uqZGgYJAByC1amkCsdtc8G3nx6fiy7kz0J7rzAyRBbTxbEjWREjif
	a+QcKKOvTOIvh/WpUOKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7UKt-0006aX-TM; Fri, 28 Feb 2020 01:21:03 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7UKr-0006Yu-KX
 for linux-um@lists.infradead.org; Fri, 28 Feb 2020 01:21:02 +0000
Received: by mail-pj1-x1049.google.com with SMTP id w7so752411pjn.1
 for <linux-um@lists.infradead.org>; Thu, 27 Feb 2020 17:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ojKrxl1PCfCfQcXP0dlp5ruxQqqYc6a397dYZVnYqp0=;
 b=KfovGAA3hYngusOc4O801/OpozFq5bk3pBM09Fm0f+xMWm65rYFn4FPokdCHh6Jzut
 AwQcPV1GQbZQD7YtUQoxvGCQfdMILr/M4f2QE8tKCBkg22l22HKEkPDNmbkuME12auqg
 VdZRBRlAz9i29ZkqcHN3n9KttVbxKzJodRc0++/lm2FzahO+rKn2n3UmH7on8WoaWvRz
 Wzbp77tnPo92vJ86YgtIYW1gOwC/AuuB/hNb2KcuQPq5G7ssUIsDyt90aUWsJ4mhLbke
 /KvsVTb3oL7y2QS9JDSB96JlcRWzWVCOmiNmDItvhmZT/zebT29KmKHbQRgIKCKBsBgw
 vLbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ojKrxl1PCfCfQcXP0dlp5ruxQqqYc6a397dYZVnYqp0=;
 b=RQqmv7kC4HSbDEU28sapQ3hx5HgqRrdjJ9QmLDO08FDB1lXlRYi3BjufWzrzH74KmP
 YbtJAD615EpR3wEkElveXSwcQAqKQqahGqtcoc+uFf3IqwzmpnvkTKaBzFfYqCcwSGo7
 b55OsD/o0GWULxcv+UW4Pd5y3DmeZ7tkf5w492ugSTQMn/9k+fXsM5bZ+ZahKjlSF4LP
 Z6bPE2ZLHFAXEbI1Jf2a+R8O8tyZu9SUpVdxY8ENHgeWPXtcsSHYPp8ATv27rQadtPif
 BPPDPoJlyMHJqi/dUY3sJ8xd9dUtUA7AtmEQIY317I9GpGfRc8KI4fge2suqcjEBJ6Ff
 bUtg==
X-Gm-Message-State: APjAAAXVfxyWq5NL/RQYPX32x9nb74XhEdiT94Vn+Y0ZQ5nnIZE2Ks0O
 +9lLLbKSinhS8uDCAnkz2FLvb0etxkSdyWV7DT9SSw==
X-Google-Smtp-Source: APXvYqwkRljuIrlXDjEYNBekD9KkQQTbA5MI2lo52Sc84mhjN4+wkeOgkPRnjdKBCR1laBgPCE3wql+OCRfkujQNefCpvQ==
X-Received: by 2002:a63:ba59:: with SMTP id l25mr2147590pgu.68.1582852860531; 
 Thu, 27 Feb 2020 17:21:00 -0800 (PST)
Date: Thu, 27 Feb 2020 17:20:31 -0800
In-Reply-To: <20200228012036.15682-1-brendanhiggins@google.com>
Message-Id: <20200228012036.15682-3-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200228012036.15682-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v3 2/7] arch: um: add linker section for KUnit test suites
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_172101_675124_C7065B6A 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add a linker section to UML where KUnit can put references to its test
suites. This patch is an early step in transitioning to dispatching all
KUnit tests from a centralized executor rather than having each as its
own separate late_initcall.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 arch/um/include/asm/common.lds.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/um/include/asm/common.lds.S b/arch/um/include/asm/common.lds.S
index eca6c452a41bd..9a9c97f45694c 100644
--- a/arch/um/include/asm/common.lds.S
+++ b/arch/um/include/asm/common.lds.S
@@ -52,6 +52,10 @@
 	CON_INITCALL
   }
 
+  .kunit_test_suites : {
+	KUNIT_TEST_SUITES
+  }
+
   .exitcall : {
 	__exitcall_begin = .;
 	*(.exitcall.exit)
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
