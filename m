Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C696B9AC6
	for <lists+linux-um@lfdr.de>; Sat, 21 Sep 2019 01:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w25QaFZscupShxgbtt9io5ReB8MCgqEPdPlv0CdFNEE=; b=BJrV/bu6EAnLRa
	Lf9rwNyMMQLMKqKIMZIqUv3uTCsg73hkgPo0lweyMex6FrbS/DlvlFMu/++bQojsiovNzg5puTeD2
	TzGasqUCVqppV7SxkSKfaKNmq1BnEFA1mJaIGIQbQLdREYlhbGGhEfvLWLv1BCzJy7L0hH0vGSFKA
	ljL7t4tThZcq4gX0o7zo5Lvy1gbhrTMrc3Q/idn/N6TCM8TDFdjwZZGCoNV0Z8xBZHKD7Eg8r/cNm
	McNe2MY+5D5Vox2+ZBe66KIo1q5YMU3mY87JgErVPIEjrdKgIfdFLdRK5LhdyLRJG40GzwR75F3h7
	u3nVroHZA+LD/lKNHI5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBSRY-00026X-BM; Fri, 20 Sep 2019 23:36:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBSRV-00025a-HH
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 23:36:03 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48BBA20644;
 Fri, 20 Sep 2019 23:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569022560;
 bh=5sglSv+9hSOJc0b2FWY8nQeYj0FpLkqsXtS/3eUTZSE=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=QoMrsX259uVvKBLBgqFjYCWW1WAj3R7P2E6eLBj5gAyIaMIeiTZjnJfb1ejgaJusJ
 UkwBwgUAjsyBgNEGV13XM9dZr3pmhCUgchYJf34niV3DUvIrN8ruCbCxuAbZoqAL58
 4PWBzZepSAwldwciLUi98T3R3UO3RBc/aPRrzFTw=
MIME-Version: 1.0
In-Reply-To: <20190920231923.141900-7-brendanhiggins@google.com>
References: <20190920231923.141900-1-brendanhiggins@google.com>
 <20190920231923.141900-7-brendanhiggins@google.com>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v16 06/19] lib: enable building KUnit in lib/
User-Agent: alot/0.8.1
Date: Fri, 20 Sep 2019 16:35:59 -0700
Message-Id: <20190920233600.48BBA20644@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_163601_598742_45FE4A11 
X-CRM114-Status: GOOD (  11.37  )
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
 Kees Cook <keescook@chromium.org>, linux-kbuild@vger.kernel.org,
 Tim.Bird@sony.com, linux-um@lists.infradead.org, rostedt@goodmis.org,
 julia.lawall@lip6.fr, kunit-dev@googlegroups.com, richard@nod.at,
 torvalds@linux-foundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-09-20 16:19:10)
> KUnit is a new unit testing framework for the kernel and when used is
> built into the kernel as a part of it. Add KUnit to the lib Kconfig and
> Makefile to allow it to be actually built.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Cc: Randy Dunlap <rdunlap@infradead.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: Kees Cook <keescook@chromium.org>
> ---
>  lib/Kconfig.debug | 2 ++
>  lib/Makefile      | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 5960e2980a8a..5870fbe11e9b 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -2144,4 +2144,6 @@ config IO_STRICT_DEVMEM
>  
>  source "arch/$(SRCARCH)/Kconfig.debug"
>  
> +source "lib/kunit/Kconfig"
> +

Perhaps this should go by the "Runtime Testing" part? Before or after.

>  endmenu # Kernel hacking

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
