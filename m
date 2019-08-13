Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC898ADE5
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 06:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gB0G802OvrbskHLA0EvUT/FVxUP6uCG/ruOODnXd0I=; b=WMtsmdRVlbbaJt
	k/xdZMOC5hLVGFHS4W6gk2tHJ4IlD9j3XFXy10nVYY0CB3L3NlLe/4CsA2ZtnS2yrIVDiU9WvVTH9
	sertMgSc2VHQKHzEBP5t8cBZF53Mw9BMMZA9cvsbh61BxQPI2ssSgb1ZtYhGNablKd3j2+BR8Glp9
	8KvPmXRvpCWexuP1Xj4pGkb7muNV+yn/cDm9lwXAb+7uSllgcr8crBXijSnI2+P6QzbfLMwFXHvkO
	m6lCFY+lxAvkEbwDf1iDf7iwCFu5KFqzrmblU4bjWuptFUG/X96Bsn4e4S0jFuwzV+VnuPynQx2P7
	ZGJ5At1NTUFl+0HZly/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOaM-000712-LZ; Tue, 13 Aug 2019 04:39:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOaK-00070D-0v
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 04:39:01 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 661F82054F;
 Tue, 13 Aug 2019 04:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565671139;
 bh=3xMxQdsEpxtjj+1yTxgV9WOlUO2WQ552exvs56/rr1o=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=LR11it/I3O8CGTrv+Ng5zvucPa8uUkEfa3LmKFjw6O5u9qhsOj4v0EPjTnoOYONrH
 u/tnKqLjb2VOMamzmBD+bQ92PSyu/l9yjopx4tVHE3QOH9DwxrVN/Ixn8t2s8dlBob
 UQtw5MZJLoTm4I6qlCWqOvb7Iah3ocYPA4XTG7DY=
MIME-Version: 1.0
In-Reply-To: <20190812182421.141150-15-brendanhiggins@google.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-15-brendanhiggins@google.com>
Subject: Re: [PATCH v12 14/18] kunit: defconfig: add defconfigs for building
 KUnit tests
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
User-Agent: alot/0.8.1
Date: Mon, 12 Aug 2019 21:38:58 -0700
Message-Id: <20190813043859.661F82054F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_213900_084574_BD00935D 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-08-12 11:24:17)
> diff --git a/arch/um/configs/kunit_defconfig b/arch/um/configs/kunit_defconfig
> new file mode 100644
> index 0000000000000..bfe49689038f1
> --- /dev/null
> +++ b/arch/um/configs/kunit_defconfig
> @@ -0,0 +1,8 @@
> +CONFIG_OF=y
> +CONFIG_OF_UNITTEST=y
> +CONFIG_OF_OVERLAY=y
> +CONFIG_I2C=y
> +CONFIG_I2C_MUX=y
> +CONFIG_KUNIT=y
> +CONFIG_KUNIT_TEST=y
> +CONFIG_KUNIT_EXAMPLE_TEST=y
> diff --git a/tools/testing/kunit/configs/all_tests.config b/tools/testing/kunit/configs/all_tests.config
> new file mode 100644
> index 0000000000000..bfe49689038f1
> --- /dev/null
> +++ b/tools/testing/kunit/configs/all_tests.config
> @@ -0,0 +1,8 @@
> +CONFIG_OF=y
> +CONFIG_OF_UNITTEST=y
> +CONFIG_OF_OVERLAY=y
> +CONFIG_I2C=y
> +CONFIG_I2C_MUX=y

Are these above config options necessary? I don't think they're part of
the patch series anymore so it looks odd to enable the OF unittests and
i2c configs.

> +CONFIG_KUNIT=y
> +CONFIG_KUNIT_TEST=y
> +CONFIG_KUNIT_EXAMPLE_TEST=y

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
