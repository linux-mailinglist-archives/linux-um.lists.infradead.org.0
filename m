Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9016B3AF
	for <lists+linux-um@lfdr.de>; Wed, 17 Jul 2019 03:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nh4u1a2pmvRZfIg8JpAm/mm7fIbH/j3S6fe2kuZ0mAs=; b=KYXWElTztUsx5R
	21i4PH64P8TBU+CjTl+RoKu2WZQuzqs2TmLxmTzLMWzfWjLwXuRIML4ts4nYG6Sq8p9P6+lp/o6YD
	hr6U6DIf0fTY99iC4OVBq9Tmz0meyXbcuzjgx70aDsG0hg98QL7fC50RTk86ojVt1DlL22JSiVzO6
	CcckRPOVFRvDRVMon+WeRm5vH6PUDC8UfQDsLkYmUm2UIBjTVxMe9R/YhIeuR/VigQ9074n/0/do/
	nTO/EcMymi423QiVJA7eFTicmhax+/6Eaq8Lrkjul1BKy1vF/WX80I+qlJIIlCbylu3gbwjktSWjL
	NkqFgOxQg5kI0dUXaMuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnZAz-0006Rl-JX; Wed, 17 Jul 2019 01:56:13 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnZAx-0006PP-5x
 for linux-um@lists.infradead.org; Wed, 17 Jul 2019 01:56:12 +0000
Received: by mail-pg1-x549.google.com with SMTP id h3so13714971pgc.19
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 18:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ZxnEgoL+cAyfHeVT/PTT350Q+1yvdmLsRRNYnQGVvxQ=;
 b=anmcre763jqYfgk0jWG0amSJjr9xJDchU7aCLTMoA7GWTjnXP43elmKF15Bo6z8jT/
 uSdYJORRrIzHzGZUbqnAbFwRKeFJDrWfiw0+1PMnDT6HXctOw3e70AmsBr86zxdtYfSF
 9QjexNnudSykx+gILjsNgF/Izk1Qd8cYoWCnqxAFQZkhT4rceTgpbKV8nPdU7wapAdRi
 hbcyVdfr+6dA554hVrDR7CH/dYVdpdsHvTXr12IEodevpJMzgKPwR62HOJtcZbsFshbz
 4nNBdIsyoQPIZCFxFyp3Hb3/XaXqHo2KdfXbEpGJ/wTbzl09x42ZZcaPUlA1B0bBeqvO
 Hw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ZxnEgoL+cAyfHeVT/PTT350Q+1yvdmLsRRNYnQGVvxQ=;
 b=TglNGUtlv/+w+YOCBwPGBCgM707m4HTCpoSAAkCQVrmQya3JUe9wgOmh52b3Zd2UVs
 uhh6H8uh10gvXRWS+ZhX9Y54oL0dK+j2owII2Kagvunpm3+ud8HyzbJDMta2l2iHl4CZ
 7vGNDZ1pQN4FMEjk1Gt4wlFQ9MO2HWhimg835XlPGB4OWXZ3s1o8YHuTrlnvO/0gIKhx
 gmjB9LTJPUkbzxsBK/m/nUqFlom1hBQQ0t+2KX5odJzeT1pGGxwr2yDXqYPIBSIKbTwl
 cGnMmdpvy60I3uzUTzoh6Rbxufm171EXjVnbiI/IxDzqXVTq4LHbc51F3bDTnht8jsE+
 9Q+g==
X-Gm-Message-State: APjAAAW/w9jaKRzBkl+T2yUqrnlpYzZ56GO6Y+CCrboXFhiBr8trN1xV
 Jvc44a7FM+iuJ44Owi4kqPSwcFud69EyhcvQPpRM/Q==
X-Google-Smtp-Source: APXvYqzdOd/pnZZFL/pS6/iieMJ7feNcywGmwm2i67xQ+rYX0bj48kl8BcSe4yfiKEhFGYAbbZpECxiAzIcb05C1kfs0DA==
X-Received: by 2002:a63:fc52:: with SMTP id r18mr37450939pgk.378.1563328569459; 
 Tue, 16 Jul 2019 18:56:09 -0700 (PDT)
Date: Tue, 16 Jul 2019 18:55:31 -0700
In-Reply-To: <20190717015543.152251-1-brendanhiggins@google.com>
Message-Id: <20190717015543.152251-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190717015543.152251-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v11 06/18] kbuild: enable building KUnit
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_185611_221235_A719D0E9 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
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
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 Michal Marek <michal.lkml@markovi.net>, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

KUnit is a new unit testing framework for the kernel and when used is
built into the kernel as a part of it. Add KUnit to the root Kconfig and
Makefile to allow it to be actually built.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Michal Marek <michal.lkml@markovi.net>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 Kconfig  | 2 ++
 Makefile | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Kconfig b/Kconfig
index 48a80beab6853..10428501edb78 100644
--- a/Kconfig
+++ b/Kconfig
@@ -30,3 +30,5 @@ source "crypto/Kconfig"
 source "lib/Kconfig"
 
 source "lib/Kconfig.debug"
+
+source "kunit/Kconfig"
diff --git a/Makefile b/Makefile
index 3e4868a6498b2..0ce1a8a2b6fec 100644
--- a/Makefile
+++ b/Makefile
@@ -993,6 +993,8 @@ PHONY += prepare0
 ifeq ($(KBUILD_EXTMOD),)
 core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
 
+core-$(CONFIG_KUNIT) += kunit/
+
 vmlinux-dirs	:= $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
 		     $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
 		     $(net-y) $(net-m) $(libs-y) $(libs-m) $(virt-y)))
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
