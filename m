Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC887BB05B
	for <lists+linux-um@lfdr.de>; Mon, 23 Sep 2019 11:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qruRajDgmd821V7snLw0fRH8L1VvZm/KZMaIVAvRjJs=; b=r+G30v2pKN1mEX
	lmYQ64fE5J/SdZnMMbZSriX7dBtnb3eZelRxJGtMWxu5bbYCVJE86Xvg+rOLkQKizLh8p8+A29dAA
	gbPckAFZHIki4TvzSD+lOxuoseKUEZKU9AE2FIrNmez69cVjWCdBhj5X6wqziDb1jCXP+qE/Eivzm
	FCiuFMozYjDo5qZYO4w9asm7f3ADpb9C3ZN/hmHabUNEdpI1ko06nBJQ6FaO5BPTvJcUbay7qbSJc
	ZtGxWpR1Nn5/T2UguQd5lyEowcDfxQWPEQDpEp/1/TE1mJVofKUVBxof0CHKDUYDh4L7+nn/smCsV
	iJ8OQOOq4R50kLgWEJEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKFd-0002zL-Al; Mon, 23 Sep 2019 09:03:21 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKFa-0002wO-4c
 for linux-um@lists.infradead.org; Mon, 23 Sep 2019 09:03:19 +0000
Received: by mail-pf1-x449.google.com with SMTP id s139so9670606pfc.21
 for <linux-um@lists.infradead.org>; Mon, 23 Sep 2019 02:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Ps4mUI1wXYQhLtVI103dUb/qTWn9bG8Bcp8PtHYLuE4=;
 b=qFxdsLMix9SuTOm0MqeSjHtbvUU/0+OVOoudDPyyuONAd7hDphar1IPavEzQZvPuKF
 4zApBd/WkrRJaMotHA8Gz8e364EwfwrjcSj2Q+OgpEFUlBWHejV7VwF5SxR3jXc3iwTm
 +KueNreMBToJhGaIwgcRWU2ncBL2txp5eZa9EeYIdKtYAC74wbaFkI/zcNThcsgV0LHt
 4pJu+ofH8cxDOingwsv26mOPBC5gk5MG8HIO0L6v/8d7ZvscGBi3MWx5+l8SyLzH2Eey
 9KV+cYRLRYJQoFhhWy7zrsF/glsxruQ50pQ+Ri2tg5svkFiEkHLGdUrTr2UyJpXuokUB
 IYlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Ps4mUI1wXYQhLtVI103dUb/qTWn9bG8Bcp8PtHYLuE4=;
 b=SFknqkMjLrnZo6Tl0/CKGPJQZxOMZdRLc+BD47rWerUQ3oNrcdFPRsNgjcm0+EP+4Q
 2PhuUKGHC9sUs2dR8ihu1/yikDmoO0zacF6pHJqmWrxjWm3NgcsDj48+INOeujXPDAVc
 XYE0wYFHJLqU+cEQw3gmVZ2hbsql8wPTkwGYKHqelH7KqiAybuB7XqD2MeKTrWy1Lqjc
 m2C7PFa6qwhGEpj/68EqsnKzfhFaAXehPTFOzEFibxvjRVbxzX6AMsccgxE4ZL+xCQd+
 eMGnXLk0JMV0x+fp3HbpKyA+vsruBSiNI3qYq31OIo0ykzRT3Fym8Ts5t+zzKFyKDsnD
 27Ug==
X-Gm-Message-State: APjAAAWBAF9NccPrhAxUSGzLYhxL0o4r+EywO0NH/Z+DpmS52dt6srQG
 2XL7bM14M/vzyACeCrugOqL4DGV/ijlKJsv1MYcHCg==
X-Google-Smtp-Source: APXvYqxZtpb+vxVfs6KdEpv95n2czjshe/ga6Yeu5rhPTDLYFp2Lda7Njju8cJbWVakX1V0GRGWCC35NALYsFoQ/9SEM6Q==
X-Received: by 2002:a65:6659:: with SMTP id z25mr1323921pgv.23.1569229396529; 
 Mon, 23 Sep 2019 02:03:16 -0700 (PDT)
Date: Mon, 23 Sep 2019 02:02:38 -0700
In-Reply-To: <20190923090249.127984-1-brendanhiggins@google.com>
Message-Id: <20190923090249.127984-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190923090249.127984-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v18 08/19] objtool: add kunit_try_catch_throw to the noreturn
 list
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020318_176936_E94BCBC8 
X-CRM114-Status: UNSURE (   8.23  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 richard@nod.at, torvalds@linux-foundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
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
index 176f2f084060..0c8e17f946cd 100644
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
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
