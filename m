Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0B1630BF
	for <lists+linux-um@lfdr.de>; Tue,  9 Jul 2019 08:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fBER9nEw1DsMXYZI88d0jN0qS3eUJBzb+CTt5M6AnI=; b=IFVwzt/LaXLBGt
	qaHFDYUgLaSFRsi/Kv0P0b0joij0ZCtmG7rKAHYEbRKPxh66h0pRR3gVKkqBW6BIT2y3rcrXgw1St
	5NiPhbuaGu3SPAFi6crukUbgZYf0b9dCIwuyroXyexF4Ygxh1tz6k691Ox00DyBCKMdo5FvDauETr
	srTP8g2cosgRoC6Tjgt+AnBe9eWyAO5ABZ8+JP4PGGHWmy/7Rx5Ix8TZKBXs8qPMtvO2n97KcO4lc
	Y5KpwXnUwGixBb/vPEtKOXJoSsw5y5IbgO9LJeEBsJeQOjoWZfbw72A0ToJT99D4Nf3e8HIfyikHU
	8FT/tfZ+J1/HQrkIsR5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkji3-0000Kd-87; Tue, 09 Jul 2019 06:34:39 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkji0-0000Jl-N8
 for linux-um@lists.infradead.org; Tue, 09 Jul 2019 06:34:38 +0000
Received: by mail-qk1-x74a.google.com with SMTP id 5so18473330qki.2
 for <linux-um@lists.infradead.org>; Mon, 08 Jul 2019 23:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=zxmYDY9n+QBUjDbNH9DRIe0/wlKXcDbLcLkE9B0ZmxI=;
 b=C4g3uHhNIZIht1nDzDUYm5V2TjqZkqGF4g9U0/Ah+KUIKNc92+/rAoZLx/j01ufbx7
 NTm9IwMbUppcuvs4/CbGM/P0DyEHMaX5TywaRSRvptj6oN81uoUUr62xNvGuYDcNVDhI
 49JoB6UQIsqC/ex5+qHWG3RBZgDlLpJreDtgP29yMI72YRGwOp5k0fkqtT7o2iuSgqiU
 jq5xmkuTYFQ0vqw+N5FHoRuAmb15morhS8McfPpBFBEg4HYmxmXZTsCM3/1UF7oaf6qT
 6YjxVprc/Kxlv2BBc7YWTCmJqDgvhPwsK5BvIOIwE6wSlnDUwRReHV24YJIEmr9unbnc
 X8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=zxmYDY9n+QBUjDbNH9DRIe0/wlKXcDbLcLkE9B0ZmxI=;
 b=UELNw4Pp6SxHcyohJ/4uqsAVzyRBEF9z1aFLU1/bFmY1Zc9oeDoHXE4KrN0nmp0wH6
 vK426naHtC0NAp0bPxBwLWtzQq7mYJFnvo8AVnDP1HxRUoHaZHOLDDEhJZp6Yp8/ndfl
 +ss0F/F6W8nw+yJ3YDmvQU1qOoNJPThnq09HJ4XmRk8qgXxxhUkVCDhyJ6aBSDzl60yX
 /oJWAnXVb5CBVmASosMnGUNG/sZGCRhwAOyoXODKToOoReHbvvry5NNY1Ylptw1Y/FF+
 vbZqlo3G/7uGtQ+manPVG/5w8W9TFWvX9pv8/3LgiFN85UFmAUI6A4yXBI/oSPuNz3Bi
 NMaA==
X-Gm-Message-State: APjAAAWyMZvADkPRMmmWojLhX6ltskWx8aLgXpkLTrM/zOAtw6GooE3T
 Lgzo8VuU2LthNiQGlPeVkOTJPl5wyhvJLW0PMrfbjA==
X-Google-Smtp-Source: APXvYqwOwsIg2AU8i+/acrVUiG/ZVksl2o22EvWFY5S+OQozRKmXPRdDhqqqE6sia3AQVvck9Y39W2rm/r7998eZ/E7wPg==
X-Received: by 2002:a0c:9895:: with SMTP id f21mr17680434qvd.123.1562654074507; 
 Mon, 08 Jul 2019 23:34:34 -0700 (PDT)
Date: Mon,  8 Jul 2019 23:30:13 -0700
In-Reply-To: <20190709063023.251446-1-brendanhiggins@google.com>
Message-Id: <20190709063023.251446-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190709063023.251446-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v7 08/18] objtool: add kunit_try_catch_throw to the noreturn
 list
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_233436_759607_4CD65863 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -6.4 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
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
