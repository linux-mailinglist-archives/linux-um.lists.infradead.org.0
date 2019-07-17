Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B026B3BA
	for <lists+linux-um@lfdr.de>; Wed, 17 Jul 2019 03:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1lqH+O9C/IB5Fwbc7pspAtS7nxgS0Y7zeVbRDB9FJg=; b=JOpFdKBJrS6w58
	TMWx5TxQgOvETeQLxc5DL4QmEGBsJ813W8jBseZuOfrMT3ck0ajcDmzWyrZVvdrT7ATfCIke56Xj8
	kbrFXW9Q36DuWVC9vliQAh4X4Tsyjjc5ULjQy4RguXvrFA3ml1ZabKQ2WFq49QCHCVTAtMD3tfFQ3
	TqIgrRcx0tdHt6Zoa59T1CaJWhxGSGYhkruwlSBEHiFcuZ2znF4xBPIE/lCP2KI13Lu/d3HaVAepM
	6qW2XQG3uqfMpZPKArGrEedhCUZK+4SZDXtjWD3PTSemBQ9tFSXZoLnxx3w3SNi9TZyxs5ik+uxSJ
	o6nb5j3phyuEsCGPwESg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnZB6-0006VS-Dn; Wed, 17 Jul 2019 01:56:20 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnZB2-0006Sz-Td
 for linux-um@lists.infradead.org; Wed, 17 Jul 2019 01:56:18 +0000
Received: by mail-qk1-x749.google.com with SMTP id s25so18663867qkj.18
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 18:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=lZlBFQY3Us5crfW9WSC4bzJfPTy9JBI0rQpN2XrR9wI=;
 b=tqrR9xFTwORg1QSrmBsFleKT9JOo0mWeTxGW4Cfwc/bY+SbwKbWZtnZC5uqvLPXSy0
 fFTbFyRnOTfxluTh2q6BMZP1q+PSU3GiYh3dcvTTUMWsTDnE6XZgVauYWvDh+EbTKMPB
 KOgoPOnY6LBnwW9fDpo4DT805XeLouwSR15jHAff7jT0L9EmtILO0Z0eY1r1rCV8Q2i5
 O5GViNSp0p+IvC97BTusPHUJbhRwBbnLV8q2bc7TmAONmWtyLpSkhVrAreIyO5wcuztq
 zhOnGzS12A0sd7xlto/kMnwO3Xxh5zXw/gRGmyzq7nhT8lD3eB9n4tJ+8f/lrXrHJcfq
 mv9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=lZlBFQY3Us5crfW9WSC4bzJfPTy9JBI0rQpN2XrR9wI=;
 b=UsxrYHax+cADgXzqWN8KAPGLmQurvqpp614A594Gmcp9V5VVKnv6RA+Op8TsAcxVMi
 3Jzf/GbZGWfEbgPtp7JphIqXQNg9WRET8VXWq+kqT9YoBw2sgLUWYDbI10rfP+Gh8QeV
 OkcGC2oqfZN5Pv107mxPZSBWwwirTCpF9oDkOJHjYHgKBRiI5EBdk60fJy7VRh53oQaw
 c50PuQNIGTzLXKxrLDosylnxZCCPCq3EF68mUL7PeMtTRTUJsjsIDSuHJmR/dgDbOhc9
 tHAOksv1sNSkU50oe+549pXBOxIIhbX3F/1YXLUp1+gQgc82UaSgy6fSfKlbew4K4ior
 DgEQ==
X-Gm-Message-State: APjAAAXf+DtJXNXrIcGA4GIsXPDdClbgzIp9KQGVuYdsE6dOF92+k9ek
 o+zkM9r2QuPaO5QGFPd3TAw8F7e4KPs5DeoiD9bvXQ==
X-Google-Smtp-Source: APXvYqy/TbQinVkJuiRr7In6NyYeP8GT0mPKVABGBjQoi+qfrDV3qI73/LYe4gjXEi7BN46B71HCJBM5Bwy+83T+EO8gPQ==
X-Received: by 2002:aed:37a1:: with SMTP id j30mr25579345qtb.367.1563328575182; 
 Tue, 16 Jul 2019 18:56:15 -0700 (PDT)
Date: Tue, 16 Jul 2019 18:55:33 -0700
In-Reply-To: <20190717015543.152251-1-brendanhiggins@google.com>
Message-Id: <20190717015543.152251-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190717015543.152251-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v11 08/18] objtool: add kunit_try_catch_throw to the noreturn
 list
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_185616_981358_AAE45654 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
