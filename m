Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A57064213
	for <lists+linux-um@lfdr.de>; Wed, 10 Jul 2019 09:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYwOOgv52u2LeHd0fGRudGSqExigCSSrFnE4hh6FFLk=; b=jgA5Gmq7Kfrmhs
	k7Q/vkpxORC4hes7DRcslaFa8mXpDZ8++crgowc5a23CQM80CkEnkC/q788ZbHzmbQLp+p1ErMcxG
	g33LXRz4/Y8aw1kaxZT16wxIkag8MRfN6vf4fYqpqG3V6aXZ1j9wwf/39gI3sqvI4JpSv4X2YlUCN
	dfzozGKn1+XUqt78Tcev1H0SY5ZEHNrrFNo2IbnYCf6jgw7vO/cOfQ32HMlaG+yr0DYcuvTg+QexX
	/9wPwkqJH6gys6HsjVP+mYUzRMvjGtZK4pedDqpEhCLKDBZsAXd2yug+0YYW4NShrFxdIWTTTJPrh
	rX662hZFSg33wWNQ2law==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl6qH-0001OO-4B; Wed, 10 Jul 2019 07:16:41 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl6qE-0001Ni-Pp
 for linux-um@lists.infradead.org; Wed, 10 Jul 2019 07:16:40 +0000
Received: by mail-qk1-x749.google.com with SMTP id r200so1176949qke.19
 for <linux-um@lists.infradead.org>; Wed, 10 Jul 2019 00:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=i+cHtqqH4D1BH2a9iTheu+r071sQgiMbeMpUxd8ISoM=;
 b=rXtTc/GOsRHQaJA6Ws9m+pPNjzj+5rLwHJOomjY2PFfSoikcebfEh5U/5Io+IpJ2JJ
 sM4s5p4wN84uuPK2wawFNwAGeY9GYiSz3gKcm4jFzMNbWra728QlSnFcIoeT+m1EAIpQ
 QYGB2VP1qrToWeK1FH7eNgzJf3m412kAZCT3ZN31EcDBjPTkvFUL4JSVf1OOOQLhkPxP
 qhKxwtWnOPYc2lStgRZSCL7PBZzLS8fq+h81Z2b/9gBDtF2PmASidrMput/8CQSYTF8q
 QhARbBGrlb61/UdpbwVrR2rxDIQXadxthWMUWtQilvHubiBfryuBwCriKQkCnPf+VzpZ
 Hp0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=i+cHtqqH4D1BH2a9iTheu+r071sQgiMbeMpUxd8ISoM=;
 b=qCEjcZO0sBMmDfCPCjB26xZJh8UnQ8xBzVksvVURhEGpCw8Z9THx6bDCvvJY6wgvef
 lcVJkWPXVClxvajymvSnjXq7yJ4GYLYPdSVHqrNbO4wpMJD/ki+QIDzPVIV25vpfceWt
 5SHurNjG1JA3kMVy5/3o6XEZqJEGocc6VTWvDxGIt0pL40SUA/Rtui/vjYS4QNYMSYxi
 u5dpFEn27jM53AotETt/TnUKw/YbHCFMGpvJUuFaWnyCOy1XKsxxtq4oVo1kPt7Dob9+
 uF1x+nUY1ci4AEmqchcq6HenFQsBQBCttLdN7lJJlg0eYH+yLgEFx0VjJIuf7VMq9k3y
 rPSQ==
X-Gm-Message-State: APjAAAX1uFBxWwaQZxMtZHzGjhimwsMyJKL2DwCuCPg0KWMjwCD+70IM
 DB9DcHrWaS4+lfe/qWcfGnEKtb1nM8mAyaO60tmo2g==
X-Google-Smtp-Source: APXvYqzYNxURl6tjKPLLeSDRwuA+Ulct62WFYCncfJUl0k0d7oT8xpOt/Y76tt3BkIrOVTj039P4TCLZz7hT/KHUodnwGg==
X-Received: by 2002:a0c:f20e:: with SMTP id h14mr19332341qvk.246.1562742996789; 
 Wed, 10 Jul 2019 00:16:36 -0700 (PDT)
Date: Wed, 10 Jul 2019 00:14:58 -0700
In-Reply-To: <20190710071508.173491-1-brendanhiggins@google.com>
Message-Id: <20190710071508.173491-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190710071508.173491-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v8 08/18] objtool: add kunit_try_catch_throw to the noreturn
 list
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_001638_861002_362D2B2A 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
