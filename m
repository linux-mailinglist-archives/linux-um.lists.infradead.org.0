Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC3514AA90
	for <lists+linux-um@lfdr.de>; Mon, 27 Jan 2020 20:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uChqWRNNwJ0/rN94QvWY77yjUldgubqsL7/Pza4Zg4w=; b=hx9vI9oZNkBz7B
	N95n/lgl/WLUrdcVVoaiYLCN60OWUrMgOpu0I5gEsjzLoMeFbMMHjlUX7KKfdRKZzkhgUIT8QutK4
	1tvk3m9kALcTHSaQ3HvXfb5kPgz8PuBcLmjuZoIbwuEt5vHyyLCnJkfiXwolG6hPAmx8+bODOi/8/
	mNcBBxVmaFqTu66mqizxpZmcvrF1j1ElLvB16aNxcnMf3nKJCQInKq8pJeVCUPmLnWY/NZab/1SLc
	eJUrRDTSXbTr5iLU/NKEG4s0gYtgWijYXJUalu66PbNirdgPE8g1ZCa99gs1t7mxHYsJV2fuzY/AC
	RrDG87tg0MjOyZ/3JbkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwAB0-0003rl-Mk; Mon, 27 Jan 2020 19:36:02 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwAAy-0003r5-0L
 for linux-um@lists.infradead.org; Mon, 27 Jan 2020 19:36:01 +0000
Received: by mail-pj1-x1049.google.com with SMTP id x16so5442722pjq.7
 for <linux-um@lists.infradead.org>; Mon, 27 Jan 2020 11:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=mpxskphRBvOL/qa3RNJEpkYJ77oom+hiyFZV6y60D5o=;
 b=ET3oZ2P+OposxBTl7gtdA6Ne/VXHBUyrqwzl0jGDJzwmMyX0YHWDh6L2Z/PjUFR+pA
 tpZ8asqoBERAcAX22VeGHr5NrLNIMcfpZy73ggI6GTAVcwket9PhWceGNwvpoxvzksWJ
 umz0SX/haxVNn9obja6wK0h0z1m7nwNVevw7hATItKgbeK2TsUNdaaeWnQgOkRpzZw4r
 D1dFvWpJrfizbMzfoDw6dyPMg0knyjjQwxa+MIjqq9juhhkGd1PEbFINGsBNQSGGS73P
 6g5+h/9UjUSXtnl1YivGXjehcSP1su39J3O875BLeSHjwgybSCXMjTgyrKmbVLpVzkY8
 RerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=mpxskphRBvOL/qa3RNJEpkYJ77oom+hiyFZV6y60D5o=;
 b=VVkRBZPSctjCWjocSq71aoq8MzozmWljfm4tBq/SJW1lDf+c4qplkrSgjRfWKAnOis
 41w+x4BhdVskVYIsXXc2ZI2EEA1LB2vSsmhThqrJcWQ7JpI0mXe7QFvDujCm9ZAxEc0Q
 i5eAMJv1rOSGT8uGsR+EhCfmI0CdMd2s8SoqrCx88SZjv3bL6odAxBByv9yCR4Rwq1ga
 LksgoVvzqqTut40gpvE8VxSag7VK2pvcWRvJjVNr0XcCQZQ0zeqkas2w+OQ2Jiie26zV
 W6sKWzZ59kMoMJZFKIZ6fnJ1c6lK10ugUNOEnOYyQzuBE6av8z17Rx173163y2EyREVO
 FpiA==
X-Gm-Message-State: APjAAAUtXy1jwIGiS3MyDPbxqq71+eogiseFk22d39zbRneLwG1UCurs
 qx4PhDhj9GSCzu4NLggBuNoDhokrrCkWoQTljkskdw==
X-Google-Smtp-Source: APXvYqwxbM0yx3aGLGJCvz0uurqo4GX5uxVBjWuqLdFaQGyTTcSVvraOd/hViBN5gxGGBSLQVqJdDtNEkYW1pHjmMZB2jg==
X-Received: by 2002:a63:4d4c:: with SMTP id n12mr21651459pgl.212.1580153757576; 
 Mon, 27 Jan 2020 11:35:57 -0800 (PST)
Date: Mon, 27 Jan 2020 11:35:47 -0800
Message-Id: <20200127193549.187419-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [RFC v1 0/2] arch: um: turn BTF_TYPEINFO support off
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 akpm@linux-foundation.org, changbin.du@intel.com, 
 yamada.masahiro@socionext.com, rdunlap@infradead.org, keescook@chromium.org, 
 andriy.shevchenko@linux.intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_113600_075507_B7777063 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Brendan Higgins <brendanhiggins@google.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, davidgow@google.com, heidifahim@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

As a part of my quest to get allyesconfig working on UML, I found a new
build error, with CONFIG_DEBUG_INFO_BTF=y:

scripts/link-vmlinux.sh: line 106: 17463 Segmentation fault      LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
objcopy: --change-section-vma .BTF=0x0000000000000000 never used
objcopy: --change-section-lma .BTF=0x0000000000000000 never used
objcopy: error: the input file '.btf.vmlinux.bin' is empty
Failed to generate BTF for vmlinux
Try to disable CONFIG_DEBUG_INFO_BTF
make: *** [Makefile:1078: vmlinux] Error 1

The most interesting bit seems to be the:

objcopy: error: the input file '.btf.vmlinux.bin' is empty

Thinking about it, I am not sure if it makes sense for UML to produce
BTF type information, so I proposed a fix here that:

 1. Adds the ability for architectures to turn BTF support off.
 2. Turns BTF support off for UML.

I am also totally fine with just saying that DEBUG_INFO_BTF
depends on !UML, but I figured people would prefer this approach more.

Brendan Higgins (2):
  kbuild: add arch specific dependency for BTF support
  arch: um: turn BTF_TYPEINFO support off

 arch/um/Kconfig   | 1 +
 lib/Kconfig.debug | 5 ++++-
 2 files changed, 5 insertions(+), 1 deletion(-)

-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
