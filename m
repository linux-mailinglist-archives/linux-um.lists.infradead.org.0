Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D305F05E
	for <lists+linux-um@lfdr.de>; Thu,  4 Jul 2019 02:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oz/Mu0/MOI+pzwBnH6xIUAv3LeGORN4nuNXXjScjnfk=; b=oW/Z2RWM/Ia8j4
	rkbrxGeGgb/dSpqPNlz+yvc0lV0eWxrEnUZH6po6Yvcl0ixR0WZYRcHbb8czAgzvbs2Hs4MvUiaTC
	onxzkBABIAFJyHvqT7HLlaC5TgtTplsnTuRN+lnBnibKEcb/G4UGjWknzVQRQR819QUAZag+B1U45
	c0zZmXVa5cF5r/lJC+2AH76BMJYhAdXegfLGthkgeh0Ed/oinMntmglN2EnHkTHvrArou19pxl9xs
	27XiNYSqHQFdOm6qePMoJ+6UNJSHtNNOXSnnD7njBtysxaT0yIjc0T5QyDDA7Yd4uGEpxEbWYE7c9
	LgI5oNadJkZYl+ve+6eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiplC-0007MK-1G; Thu, 04 Jul 2019 00:38:02 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hipl9-0007LA-4o
 for linux-um@lists.infradead.org; Thu, 04 Jul 2019 00:38:00 +0000
Received: by mail-qt1-x849.google.com with SMTP id o16so5248224qtj.6
 for <linux-um@lists.infradead.org>; Wed, 03 Jul 2019 17:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=P7qQxupR077m/rPxlenNGlU3U4VVv+id9WBQp+CCiSA=;
 b=eX6g8UJwZVNX+4r+AShnzJta6FGseuE/5NG3bFT5qUZ29kjG3eSigy79cygGRMy3wG
 OlNuhPBgbypVjqEcuiDHgE8ZRW8TX/6T/BgVy+sLlM5y+9VJjnZhvIDMlYZBOk2ci75G
 h9xN0mf0vc5siI3tGh96t9saSuC00p9xuUwaUPkUcu6P9gaKRQ9QK0tgT0c83lmxhbU3
 2FMuBJqZmiDCRtom/5lZVTemVzcNLahTde7XIKJINA6n2Xld/6QvzyMORAoQ1D2is3wV
 ghoNX0qf/AFPDEbC7dn7jjJOxJsOmrsv/J4evI99aFvqYr9hJhmbq+e2Zzdo3qYeS+O3
 59sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=P7qQxupR077m/rPxlenNGlU3U4VVv+id9WBQp+CCiSA=;
 b=iLaA6bzKHHczDubVfVvofXcbs2yXcYaUXVrIFt7qG1lPdAqGGqrTez1cFUDPWUaRoM
 HdRbqhFNW2E6T+ngVxpKBE9g+YHf82Yg8mOCELCixupGTHdB8M37oE6qdfUdGDmjOV7S
 fO8SNcqsdY1+hRvnveTM3bBZkvPkLWjtY6hbEr5BDXZ/VJNfCs9jgg/HLal/hEpIZdaZ
 uGZqPgCcAhgf5ZpIPljS9b9iqpvj2y/lNX3LTMJ5szjwjailNFC5T3/cM9dJUt2AWO73
 mtKnwk71qPN36n1aQJyTvUFBDXE+N7jYSdHo+e6PMnnJDAQLIyAGBle4PcQucNLLe1GC
 SwjA==
X-Gm-Message-State: APjAAAWpuNNA6Nxx+j9dYJm/0945YUnGJlFItHolHzDyxz0GTKjtMZsT
 rzqL9RET7iwE6wX5brQ++tL9JyessqgLBYU2AVj5Lw==
X-Google-Smtp-Source: APXvYqytggehTlSFZvjf2aviCQRPatILKKaUGgr20IkSkXU2ITJH43rWfM0KxJCOSm3yMfSZQ3zYRWZoJDKAEm/SDyDtaQ==
X-Received: by 2002:ac8:7b99:: with SMTP id p25mr3074172qtu.243.1562200677358; 
 Wed, 03 Jul 2019 17:37:57 -0700 (PDT)
Date: Wed,  3 Jul 2019 17:36:05 -0700
In-Reply-To: <20190704003615.204860-1-brendanhiggins@google.com>
Message-Id: <20190704003615.204860-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190704003615.204860-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v6 08/18] objtool: add kunit_try_catch_throw to the noreturn
 list
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_173759_188878_0EC9EEE7 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Link: https://www.spinics.net/lists/linux-kbuild/msg21708.html
---
 tools/objtool/check.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 172f991957269..98db5fe85c797 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -134,6 +134,7 @@ static int __dead_end_function(struct objtool_file *file, struct symbol *func,
 		"usercopy_abort",
 		"machine_real_restart",
 		"rewind_stack_do_exit",
+		"kunit_try_catch_throw",
 	};
 
 	if (func->bind == STB_WEAK)
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
