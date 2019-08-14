Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707BD8CAE5
	for <lists+linux-um@lfdr.de>; Wed, 14 Aug 2019 07:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lBu7s6pvz9b/AzEWQAL9c1lRzzn1oPa0VB7HraGqeM=; b=ROtst8ozaiDr6b
	XALVvOvs9WRNPXjN/V213FjNfr1wEF30s1N1oev+qLYJ6MQRMKGqglvy34DOO4zguTm6yjh3xiLtX
	bPjMxWjBo9iL1of5tapOxoS3Q6teZdwcnyPy++GB/YSdku5XZCuIj2pqqhuMzzRrmLLReNLBjkpH5
	tBkqQxg9mzer/ffUuwOqJLuOHVoSK8CP+Sa5H1Qcc44DXAcfy4+/7y7ey1k9a57cdUzqpkOgjqQxv
	8nci9y+JffsmXB8kt8ZCSA+RV1Bm+2zI0TPF3Ql/BVxQd+eY5RAB7pTYe5CoPzarLhQ9Fk0MoJXcn
	99RY0nFgpTDYS4T0mueg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmD8-00034e-LP; Wed, 14 Aug 2019 05:52:38 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmD3-00030d-Bi
 for linux-um@lists.infradead.org; Wed, 14 Aug 2019 05:52:36 +0000
Received: by mail-pl1-x64a.google.com with SMTP id i33so64182073pld.15
 for <linux-um@lists.infradead.org>; Tue, 13 Aug 2019 22:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=dJI3f1SN7FHCWsT2YqJJAK+Vl1EvHBTDcI6eHyMtfac=;
 b=sDK5BT/dvFb/4wwwQc1PTpPfH2empuHwtwW683jTc1/UBzcVhObxNP6pBGFilT0sdq
 YjFA/RSQMApVVG+t8h1ynCnvPdjVkkT4nFOBzw6j86bvAZfGFyoYXaIKH1aOmyN2jmCD
 jUU/GIuMEPnspV2nccFjXTCmkzDGT+WZ84tAAqSxmHfl/ERNtjccEG5kl3wcxEb9cTTq
 HoSgKYVtNTanG5OqH7HxaTtMxnQztFLBRlhJ5hoYcT1Yny5tYkm3VtA63Leys4fWCsMI
 KbnsbQWD30WYxkZtVqZaWnTXS2XmF8P1lMAnt7SfjvXusNDDBGHrhs/Rz5S38DPj/h3r
 n92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=dJI3f1SN7FHCWsT2YqJJAK+Vl1EvHBTDcI6eHyMtfac=;
 b=YOWczFjBpo6bg8S8EljhSZgp2YHTHEz7iCMSfXTwO9+6gFho+dX05kkKsF6HqQSr7B
 JxQxWGHJaj4laXx9qfhgQtQ2q+uiy7MIOhuz8h2kEC8iqPD5tE7bm7lioQ30xvKFB8b7
 ZBlN2aO7XO8LxrecXCpzzlEreoNjRNTXU4ELNPozymA4ZWXqgMJr5QXQbwQy5QkgRJac
 ESyW08cbn1GfYskAg70gi53KIZCc0N3b0A0YRR4FPFYG4u6CShJySUkb/39bZk7f5dUP
 62F87SGVMp7G40xzsR/1D8JYPzUxW3ZofAIf+PV/qU9Q7ST0vyTyu/tSoKJJK3PQ6+JM
 cL5A==
X-Gm-Message-State: APjAAAUmP8zHJpr5txyr3CRsjZ1VpOMz0KVRNMJlaao/QdS94leU4dTn
 iGzRR5+IO9sa+dAQ+K/VItG/s9Y1fe4JV7m0UyeMoA==
X-Google-Smtp-Source: APXvYqx15GDkg8PQB7JqjQGJp0JcWDFj1Zkf1yox9JkFPI/5qXF/sLjhNwC7NbFBzfAoGHt2OonLFNZNFwcrsUAQ3uzHkA==
X-Received: by 2002:a63:3006:: with SMTP id w6mr37892554pgw.440.1565761950937; 
 Tue, 13 Aug 2019 22:52:30 -0700 (PDT)
Date: Tue, 13 Aug 2019 22:50:58 -0700
In-Reply-To: <20190814055108.214253-1-brendanhiggins@google.com>
Message-Id: <20190814055108.214253-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190814055108.214253-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v13 08/18] objtool: add kunit_try_catch_throw to the noreturn
 list
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_225233_733815_20AF78AF 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
