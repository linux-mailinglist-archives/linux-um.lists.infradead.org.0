Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D6C117DF
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 13:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5VbqaamLjy3WzyKfW3L4EwOcHVlZF1L61l61qU4EPQ=; b=sZAlyNW3wTsYUo
	nAh5wkOuh3p0xxtFhXP2LzfONNBqJ7Y3w/0udWiHuEJiCH7eClXNTLtWe2WnTiSPqSzA8lGojV2NC
	dGuKvCl6AXbasuDqR4/N6M5QahC6tw44hlFQkLQ/Dx9OwuoCipdmyvXvWpD4sChMHzeWR6n3pqTwu
	JSXSQXl1E85bK0NKA5mYU+l5U+KW3EQrs7nhdcj8vx86BI3puHSpAi8PhnzCgSIun+AViWSQj0x7G
	akJ6UJLy2ftkqUTBjkgv5iu2N+dLNbUD/Yk0KWRbVnS+Lff+IxDVy/aWqcE7L1gy63DjODre8xR5y
	vSpIpppywFiXOE6/zEmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9VJ-0001Zr-S0; Thu, 02 May 2019 11:03:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9VG-0001Yu-3T
 for linux-um@lists.infradead.org; Thu, 02 May 2019 11:03:52 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4209320656;
 Thu,  2 May 2019 11:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556795029;
 bh=O3tfI3pqzOj0bEmXd9MUeZFrQfwB6jIaKEbV4O7x7Bc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cpMMab1CbtEf7/ukbOdl3ygxOXLRXxfMRGPprF4sj5SCCaW5OE96hyghMd3SOS2/O
 704jRirIDOFY4nx9V3U5D+VWDZoHX2Dr8aOg1DMDp0dkWxjxEJNwlIk5qgnR1l74hy
 2ADDJONY2mvp2Xafc2iurhiMmE86VmsCoHu18VkU=
Date: Thu, 2 May 2019 13:03:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v2 16/17] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
Message-ID: <20190502110347.GE12416@kroah.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-17-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501230126.229218-17-brendanhiggins@google.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_040350_157504_D04FB66A 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, Iurii Zaikin <yzaikin@google.com>,
 jdike@addtoit.com, dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 04:01:25PM -0700, Brendan Higgins wrote:
> From: Iurii Zaikin <yzaikin@google.com>
> 
> KUnit tests for initialized data behavior of proc_dointvec that is
> explicitly checked in the code. Includes basic parsing tests including
> int min/max overflow.
> 
> Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>  kernel/Makefile      |   2 +
>  kernel/sysctl-test.c | 292 +++++++++++++++++++++++++++++++++++++++++++
>  lib/Kconfig.debug    |   6 +
>  3 files changed, 300 insertions(+)
>  create mode 100644 kernel/sysctl-test.c
> 
> diff --git a/kernel/Makefile b/kernel/Makefile
> index 6c57e78817dad..c81a8976b6a4b 100644
> --- a/kernel/Makefile
> +++ b/kernel/Makefile
> @@ -112,6 +112,8 @@ obj-$(CONFIG_HAS_IOMEM) += iomem.o
>  obj-$(CONFIG_ZONE_DEVICE) += memremap.o
>  obj-$(CONFIG_RSEQ) += rseq.o
>  
> +obj-$(CONFIG_SYSCTL_KUNIT_TEST) += sysctl-test.o

You are going to have to have a "standard" naming scheme for test
modules, are you going to recommend "foo-test" over "test-foo"?  If so,
that's fine, we should just be consistant and document it somewhere.

Personally, I'd prefer "test-foo", but that's just me, naming is hard...

thanks,

greg k-h

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
