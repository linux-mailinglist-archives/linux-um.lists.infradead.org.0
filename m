Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0882A8A5DF
	for <lists+linux-um@lfdr.de>; Mon, 12 Aug 2019 20:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lBu7s6pvz9b/AzEWQAL9c1lRzzn1oPa0VB7HraGqeM=; b=qkrNgkKUaf+U8i
	IHeKSvHSbHSdpgHeV+YZ3decNBrJl3lk7Oudho9St+p/oOy1TfeDgbvJ3zSZE6PHeLpLpEtnS2+vf
	1y1Coq8a2TqeSoKNG2iW0Ia38VakBXruVWj9rh39hprSmcCxxBeMef62v7rySq2yDs05IANzUa8U/
	rY+NdAlRapw+P6EwK8m970FEjMeCDxuA03l6BMPsWDMMe9692rM10ZqTt8TYCJoBxCVHU2Elq+b30
	x3u/kktuLOwDy+hG2zNy7q2H+1vyuNV5KARqDN/NBBp84fBtBQL6v9axyua6qcGTBiG/U+LVvi/m8
	jhHEW2jbFRf3N84oGEdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxF0G-0004Ga-1B; Mon, 12 Aug 2019 18:25:08 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxF0B-0003gb-03
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 18:25:04 +0000
Received: by mail-pg1-x549.google.com with SMTP id m17so56152987pgh.21
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 11:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=dJI3f1SN7FHCWsT2YqJJAK+Vl1EvHBTDcI6eHyMtfac=;
 b=TCXT4rGGA9pYgeGSCQOuwK+doWXPxrVb0AOPXxXQYGefHSTyEI76rZLOMEBucLYXJP
 Kl/YP3d/wByIytQWP4Kex8kaDH6aXm10JGy9E26rvvCKnc3kWivdZWxW7mVjjPVG1jdc
 B5d8cMNDdAEsb8NTNOmBKDM3Grrx/HJiMeWHQ25J7USIwDfTXkGqGcQUWCu16x4oIewF
 ArXvn7g3xON93c+6BDTa3AZGqLIr2NI17irPbGs2Lcc+bpTd4KtL3QtbRH+aysicvRrL
 s0pHKa7gRu0wDTB4A6uHp4C/kpR0hLfAxfUhmFjy8/5MrJWQJLRtKBIqN2ZlHzPzkuTo
 6woA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=dJI3f1SN7FHCWsT2YqJJAK+Vl1EvHBTDcI6eHyMtfac=;
 b=Vn6L9XiEzgaCot4oF99vYCttl09dU/5TlO8NVML/LNGSQ0PstjaW/+cBboL+y1izmO
 XWCmR2oyql5dF2onT1tUqd+YD2+y39kaeoWZh6URDOLna/L7MzmPxnbVia7MRLfzSKf3
 eG4UjcfLWJyAx5PHQlcR/XXh359osHk8hWiHvOChe1Kr2Cr8osXcbp2nNejNmEAiLVX3
 URxMqSS3EQXN00oQdWzkLg7dNvLoqBzyX2vYI5UIAA3NWacs60X5t31VzpzuyX4VfLOB
 o5k1zsdg8P3nbOXb0urZWMkg6H25CUWfX8LaOx3uTNxiileZmlqXF0U9MQGKvVjZ4oky
 ezjg==
X-Gm-Message-State: APjAAAVyBhhf/3FaqtrH0k5plksFA8SygMoPDRGADmNGz//mGZ7KcQGY
 00FXcxvK0mSLHdc3CpvOwWeopHRwL7d8DHODJ9W3Wg==
X-Google-Smtp-Source: APXvYqw92Wf36wL6Vq2NvamqmhQfIJvYCMbrqX7shiORRX3/SG4CRBa9Fefpmbw4Gnie+/T7oijkOxElDm0pwXK0Yzhrzw==
X-Received: by 2002:a63:e901:: with SMTP id i1mr30762084pgh.451.1565634300656; 
 Mon, 12 Aug 2019 11:25:00 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:24:11 -0700
In-Reply-To: <20190812182421.141150-1-brendanhiggins@google.com>
Message-Id: <20190812182421.141150-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v12 08/18] objtool: add kunit_try_catch_throw to the noreturn
 list
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_112503_093003_BD0478CA 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
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
 kbuild test robot <lkp@intel.com>, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
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

Fix the following warning seen on GCC 7.3:
  kunit/test-test.o: warning: objtool: kunit_test_unsuccessful_try() falls through to next function kunit_test_catch()

kunit_try_catch_throw is a function added in the following patch in this
series; it allows KUnit, a unit testing framework for the kernel, to
bail out of a broken test. As a consequence, it is a new __noreturn
function that objtool thinks is broken (as seen above). So fix this
warning by adding kunit_try_catch_throw to objtool's noreturn list.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Acked-by: Josh Poimboeuf <jpoimboe@redhat.com>
Link: https://www.spinics.net/lists/linux-kbuild/msg21708.html
Cc: Peter Zijlstra <peterz@infradead.org>
---
 tools/objtool/check.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 176f2f0840609..0c8e17f946cda 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -145,6 +145,7 @@ static bool __dead_end_function(struct objtool_file *file, struct symbol *func,
 		"usercopy_abort",
 		"machine_real_restart",
 		"rewind_stack_do_exit",
+		"kunit_try_catch_throw",
 	};
 
 	if (!func)
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
