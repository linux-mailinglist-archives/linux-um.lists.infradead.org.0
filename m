Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBC847C7A
	for <lists+linux-um@lfdr.de>; Mon, 17 Jun 2019 10:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oz/Mu0/MOI+pzwBnH6xIUAv3LeGORN4nuNXXjScjnfk=; b=Vc3ntF6zW7o4av
	LCkPR8ZsWeXcdNNkvGH1jxmqSwliC7TOZKFBXSbfz6tJniOLpEBBuhtVgqEoNZDVHVjG4FDbz8XcJ
	yLb/lYDYAGYrT+ppM0L7YGj0iCgzywVuSet/VFYQ0iui/Mq4GCSsU3on5mtXKXFpfkpLWxTbkjfQV
	MutSBl+emhOi19ZPvZNq8CODU3ZMi7ZWWYREyYLJdJbdOuH6nGuAuWozH9jPXVVqklQC+JpTImeIk
	zJOrNU7dIruCn6Aa7fOSm+jUHjyRhBAlja/jSJpxBXzZDA5lcoCfBYDk7y/AlI4ytQ6r3kiNWugsC
	Hari1hjOetS3RU0sB1WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmyy-0007Iq-DI; Mon, 17 Jun 2019 08:27:16 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmyv-0007HI-Jn
 for linux-um@lists.infradead.org; Mon, 17 Jun 2019 08:27:15 +0000
Received: by mail-qt1-x84a.google.com with SMTP id s9so8584912qtn.14
 for <linux-um@lists.infradead.org>; Mon, 17 Jun 2019 01:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=P7qQxupR077m/rPxlenNGlU3U4VVv+id9WBQp+CCiSA=;
 b=dqLUMwrRZQiMFvm38V0z6iKhsbbQcU8U8N8pSEIsFltqJAqDIL/1dU9s/SknImAoiG
 1jAZQEw1jfjkQsGEKRRwb9c9VUuPvm1EKJpmDRR2Dx395sZirD9rolf3UZGnMkXVT/0g
 B3W+XYMY5/uFttGCyyCOCwERc21fwwPtQ60cuJu7C6FZEa+rCRJoJDWrBrFGXpHe4lpW
 7DlYd2qA6sgsitjocepZeYwQsJtKZWf+m6SkXaSyypkDwrgPqUoUG19PSneUhdkmbpZl
 HjkxdkJ4mI1ik3KnnJs+UUjsWS4abEl/JWsf72O68EzBa7qdBYOno2uD0pv3+2nii6q2
 tKqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=P7qQxupR077m/rPxlenNGlU3U4VVv+id9WBQp+CCiSA=;
 b=qBRfp4SHwDMOTMn9I0r3F+YdjbHXQ2LZFCXuYK5JBTT/wEpKPUmJHhGXwxX7CpDmmy
 DXzh4+hRqeBnziJ3d34qvcQfG+g2sIonWQ9s/vhAZkiTY55nEWIUdY1wf7D7N3TYlYC9
 2Ygat6SxJo+bzVPuet1Inmj6rhT1Di9owJScs7uJqdVjwMarvu+sOCBwna8eaaxGdayT
 LdZ3utOhzUTr1WpaRJ8GHco0/m4/vMhsz6BqpggqyYqEH2H7z1BXvYvZo41MfUUQVhPu
 jAyhcJ5iZnqDCm6hB+CNGT5KQ+TGl4W94ek1JjeKYJaMZU+/pnCFJFQNwIyQhRiqQSWa
 3nkw==
X-Gm-Message-State: APjAAAUOoCViLyG126r7eNvVx48bgcVEX8Nam/aVFv52q1diGME1ReKG
 6tRE89iTgnQTeOdWW+ewlKi+eTSGuRKhDpXVhsKJHg==
X-Google-Smtp-Source: APXvYqx0YR1LOvLx8MrLc4kC+IavL77YnqU0ZCY8iQpLJogfIJFPCQppkE8daCg0rbTkPkzwWah6Jy7PTx84UaIsCg506w==
X-Received: by 2002:a37:47d1:: with SMTP id u200mr53840375qka.21.1560760032086; 
 Mon, 17 Jun 2019 01:27:12 -0700 (PDT)
Date: Mon, 17 Jun 2019 01:26:03 -0700
In-Reply-To: <20190617082613.109131-1-brendanhiggins@google.com>
Message-Id: <20190617082613.109131-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v5 08/18] objtool: add kunit_try_catch_throw to the noreturn
 list
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012713_647400_832DB4B8 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
