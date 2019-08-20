Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9658396D22
	for <lists+linux-um@lfdr.de>; Wed, 21 Aug 2019 01:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lBu7s6pvz9b/AzEWQAL9c1lRzzn1oPa0VB7HraGqeM=; b=eEApFA5fv6EbIr
	iKinpPwknT4Ivc72DhpeXeZ6JTVWu/RCcHZHYDn89veIxwtuiofPkzztWZuyAQycMPajdrz2e6Y7j
	5CkIhUYQM5o0axFBR8Y3dJx23/lOLm4ue8fZgeUb4a98Kh5/a9STf1ulGWXtx+zYFZNT2ZXArDRmW
	qDbyy/0xH/9FxkbrHj5sANKn3jHkvNt6o+j4gc3/opkLMGZvRy3qbU5EzjM2uaBx39epU24Z+P7sN
	WXSnLr9c5HkXtnFxx/PYicdxTGqN/K3RVw3IDpIrfkc6J4V3IV5C7U4chAVYNr2TA/G5rDv5xNAJv
	5l61uAJlmKFDEDuqI+ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0DRI-00039L-CN; Tue, 20 Aug 2019 23:21:20 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0DRF-00036y-F3
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 23:21:18 +0000
Received: by mail-qk1-x74a.google.com with SMTP id d203so229791qke.4
 for <linux-um@lists.infradead.org>; Tue, 20 Aug 2019 16:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=dJI3f1SN7FHCWsT2YqJJAK+Vl1EvHBTDcI6eHyMtfac=;
 b=JPSvTdqrh5Hh7hmPhj7PWqFqjSO1pIitbg6P2pVs6R16DndX+uXzWVgyVVrWOFqwkb
 krpCIxpzbHY6OSf1BUFGonJTCWm2ABvcgKj+4ZkhPReEXTRKKgxCHtCYVoPySSPzRxdu
 DkJbZieHqOXFNnUqmCSsNo9Tukc3/7f58R2FRI/eWpyzGwwMUhQCebkt72Oi2fDqSbkV
 cti+345QxDVHZxwO+deZlFSFk1yEcErYxJM0g/FN6264KIjdj+ogwLW5Ni5WRRQSqqVW
 5kFNE7dRZSLPPX1nSVetLzZP5UI4scCNwGBlpIGf1Bqai6FTQz1NbkglGkpv6/BArW7W
 B4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=dJI3f1SN7FHCWsT2YqJJAK+Vl1EvHBTDcI6eHyMtfac=;
 b=iND1B1fXWekcIA5/V/Qqra/G/icatnBQykoCgyU+CIudQCMg/efkZXwj0I6DTXUBoT
 9zWchpUEMJoLZlMgk+epBaIYOyK9K4MnCZ5Jteq3q+qO4viGe3fAGCtUUaWxxZKobn8R
 c1lOIF51syqiTGKJZB6mqg1J3TLhWhLjeARlAwbsFVWYWOG7YmvoRC7wJyi3/qnF11Db
 UCSaqRre5VksfFQJ03HUrv+YObH/8FKklsnNZPjiju3r03j1hM6wub47GrU6airGlTjA
 BSGpccyQzClx9yK1My8Lrn918ihS73S5x42CVg3rl+ozPAleL3dgEkbfBo2rA6s+zXct
 m5AA==
X-Gm-Message-State: APjAAAW+YimghD6WofwC+ysnHZ65X/ZQFoGx2bhSl+3OVnS7pxU0hh0J
 O8O9P502NoxuECcy8Kpxwc9shrkdCZYfhGCJAudanw==
X-Google-Smtp-Source: APXvYqyHSDrw/H0KHUwTj03jK169STEQ/ER8j6HHgZyfEVFWAzdBG41wuCfhIFzlcxq30giOP1Z93ZVa6G2k4a5fw8FcGA==
X-Received: by 2002:ad4:45d3:: with SMTP id v19mr16123072qvt.90.1566343275753; 
 Tue, 20 Aug 2019 16:21:15 -0700 (PDT)
Date: Tue, 20 Aug 2019 16:20:36 -0700
In-Reply-To: <20190820232046.50175-1-brendanhiggins@google.com>
Message-Id: <20190820232046.50175-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190820232046.50175-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v14 08/18] objtool: add kunit_try_catch_throw to the noreturn
 list
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_162117_502819_6F95C212 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
