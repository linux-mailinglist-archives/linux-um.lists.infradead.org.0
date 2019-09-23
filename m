Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA5BBB85C
	for <lists+linux-um@lfdr.de>; Mon, 23 Sep 2019 17:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfqOhN2uH9/um5Fm1HnGPdfjIvqRq44ib/2bz0P0XCs=; b=g/F1iJ7KEkE7tP
	/v88vllAsgaI6kuG+wC1Q2fdWbtIjXvEPtAcE3uTSkL7jJU5MHOdgASWZzg/+PGUe4p6g0nMT0yqh
	7vjGfq+2jGLdPY660Yv/HhDSKze2proGNYeAs++o/MFfaepOtDNuBTyqud+ocR7aw18Nn24KzoMkH
	FfSMAkzpC/6zQlRO10oiV2tPn1Gi5a3ORu+ckkRTkQRGseUzY3cBSCXfoYLuUBMg1uuWAE1j/HLr4
	qHWmd7xI/1ROEebA656rsb9fVgzBX0V1saA6WN06X2Xznbl4ulTQJMw2EPMDJp0a2rHLCG1DSMbIH
	DlKlgsR1eb011QKKyz3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQZG-00067X-83; Mon, 23 Sep 2019 15:48:02 +0000
Received: from [2601:1c0:6280:3f0::9a1f]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQZ9-00063q-MO; Mon, 23 Sep 2019 15:47:55 +0000
Subject: Re: [PATCH v18 15/19] Documentation: kunit: add documentation for
 KUnit
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20190923090249.127984-16-brendanhiggins@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <d87eba35-ae09-0c53-bbbe-51ee9dc9531f@infradead.org>
Date: Mon, 23 Sep 2019 08:47:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190923090249.127984-16-brendanhiggins@google.com>
Content-Language: en-US
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
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 kunit-dev@googlegroups.com, richard@nod.at, torvalds@linux-foundation.org,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 9/23/19 2:02 AM, Brendan Higgins wrote:
> Add documentation for KUnit, the Linux kernel unit testing framework.
> - Add intro and usage guide for KUnit
> - Add API reference
> 
> Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  Documentation/dev-tools/index.rst           |   1 +
>  Documentation/dev-tools/kunit/api/index.rst |  16 +
>  Documentation/dev-tools/kunit/api/test.rst  |  11 +
>  Documentation/dev-tools/kunit/faq.rst       |  62 +++
>  Documentation/dev-tools/kunit/index.rst     |  79 +++
>  Documentation/dev-tools/kunit/start.rst     | 180 ++++++
>  Documentation/dev-tools/kunit/usage.rst     | 576 ++++++++++++++++++++
>  7 files changed, 925 insertions(+)
>  create mode 100644 Documentation/dev-tools/kunit/api/index.rst
>  create mode 100644 Documentation/dev-tools/kunit/api/test.rst
>  create mode 100644 Documentation/dev-tools/kunit/faq.rst
>  create mode 100644 Documentation/dev-tools/kunit/index.rst
>  create mode 100644 Documentation/dev-tools/kunit/start.rst
>  create mode 100644 Documentation/dev-tools/kunit/usage.rst


> diff --git a/Documentation/dev-tools/kunit/start.rst b/Documentation/dev-tools/kunit/start.rst
> new file mode 100644
> index 000000000000..6dc229e46bb3
> --- /dev/null
> +++ b/Documentation/dev-tools/kunit/start.rst
> @@ -0,0 +1,180 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +===============
> +Getting Started
> +===============
> +
> +Installing dependencies
> +=======================
> +KUnit has the same dependencies as the Linux kernel. As long as you can build
> +the kernel, you can run KUnit.
> +
> +KUnit Wrapper
> +=============
> +Included with KUnit is a simple Python wrapper that helps format the output to
> +easily use and read KUnit output. It handles building and running the kernel, as
> +well as formatting the output.
> +
> +The wrapper can be run with:
> +
> +.. code-block:: bash
> +
> +   ./tools/testing/kunit/kunit.py run
> +
> +Creating a kunitconfig
> +======================
> +The Python script is a thin wrapper around Kbuild as such, it needs to be

                                       around Kbuild. As such,

> +configured with a ``kunitconfig`` file. This file essentially contains the
> +regular Kernel config, with the specific test targets as well.
> +
> +.. code-block:: bash
> +
> +	git clone -b master https://kunit.googlesource.com/kunitconfig $PATH_TO_KUNITCONFIG_REPO
> +	cd $PATH_TO_LINUX_REPO
> +	ln -s $PATH_TO_KUNIT_CONFIG_REPO/kunitconfig kunitconfig
> +
> +You may want to add kunitconfig to your local gitignore.
> +
> +Verifying KUnit Works
> +---------------------
> +
> +To make sure that everything is set up correctly, simply invoke the Python
> +wrapper from your kernel repo:
> +
> +.. code-block:: bash
> +
> +	./tools/testing/kunit/kunit.py
> +
> +.. note::
> +   You may want to run ``make mrproper`` first.

I normally use O=builddir when building kernels.
Does this support using O=builddir ?

> +
> +If everything worked correctly, you should see the following:
> +
> +.. code-block:: bash
> +
> +	Generating .config ...
> +	Building KUnit Kernel ...
> +	Starting KUnit Kernel ...
> +
> +followed by a list of tests that are run. All of them should be passing.
> +
> +.. note::
> +   Because it is building a lot of sources for the first time, the ``Building
> +   kunit kernel`` step may take a while.
> +
> +Writing your first test
> +=======================

[snip]

> diff --git a/Documentation/dev-tools/kunit/usage.rst b/Documentation/dev-tools/kunit/usage.rst
> new file mode 100644
> index 000000000000..c6e69634e274
> --- /dev/null
> +++ b/Documentation/dev-tools/kunit/usage.rst

TBD...


-- 
~Randy

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
