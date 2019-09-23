Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE35BBDBB
	for <lists+linux-um@lfdr.de>; Mon, 23 Sep 2019 23:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hMtVMIu9z2cSSo3tg5uu5d7EYNkTOCEbM21JGBOnGow=; b=QrJGydblAHoaS1Dk2tJqokio9
	vg4E/3bGzeKXLK0NCWPQB3YD6TZQbgkJSxfsimSq+2/xRJiny9fkHNfzu64lA2NDBBvEKNVFQnSwW
	++y+o1Jy5SuQ+DsXxr8Z9gvEmuCSRiqcTY7iu2Kl7aMBjb0JISy1S2wRjfIk9Wu9BSCfSlasxadlH
	Ui71+6vzsgd9AY+8OifR+Fuo6rdk+n3cESXCMl5wEz07fA3QJR9NDoCIeBS5eLueoZQ9gW7Zme+zC
	/Lv4LFZmgN+zZHAljt+sFk3p4sQP+iktEws4sGg3Ub/TRYBOE8oyIkb01tWHajr08zMl9Tpv9Ud5B
	BoAMn9Gww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVjQ-0007Ah-Ft; Mon, 23 Sep 2019 21:18:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVjN-0007AF-Uq
 for linux-um@lists.infradead.org; Mon, 23 Sep 2019 21:18:51 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEFE921655;
 Mon, 23 Sep 2019 21:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569273528;
 bh=uZGy9vlY/pn+dPb1iZcKXB9oWJ1CxU/IxDEL/lnY++Y=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=SGo9W/cpUNl7KLgBfpJognPZxmFKKR4dEP6cA4jJHfYUQWpe3l2mgKE4k6iQx35cy
 ofpQ0Ztxh76B0jNkARdk9GCqGBkkj5Tzt6rUZCw261tq2nb9i+caRKzISInhCp2Dgx
 eN+urP1l4CUPMZHARnlboLegMC/L9Vk8rfBD2WVE=
Subject: Re: [PATCH v18 15/19] Documentation: kunit: add documentation for
 KUnit
To: Randy Dunlap <rdunlap@infradead.org>,
 Brendan Higgins <brendanhiggins@google.com>
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20190923090249.127984-16-brendanhiggins@google.com>
 <d87eba35-ae09-0c53-bbbe-51ee9dc9531f@infradead.org>
 <CAFd5g45y-NWzbn8E8hUg=n4U5E+N6_4D8eCXhQ74Y0N4zqVW=w@mail.gmail.com>
 <d7a61045-8fe6-a104-ece9-67b69c379425@infradead.org>
From: shuah <shuah@kernel.org>
Message-ID: <d5dc04ab-9be5-b258-c302-29f8045d6aaa@kernel.org>
Date: Mon, 23 Sep 2019 15:18:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d7a61045-8fe6-a104-ece9-67b69c379425@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_141850_039223_0799F024 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, shuah <shuah@kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 9/23/19 1:49 PM, Randy Dunlap wrote:
> On 9/23/19 11:06 AM, Brendan Higgins wrote:
>> On Mon, Sep 23, 2019 at 8:48 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>>>
>>> On 9/23/19 2:02 AM, Brendan Higgins wrote:
>>>> Add documentation for KUnit, the Linux kernel unit testing framework.
>>>> - Add intro and usage guide for KUnit
>>>> - Add API reference
>>>>
>>>> Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
>>>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>>>> Cc: Jonathan Corbet <corbet@lwn.net>
>>>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
>>>> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
>>>> ---
>>>>   Documentation/dev-tools/index.rst           |   1 +
>>>>   Documentation/dev-tools/kunit/api/index.rst |  16 +
>>>>   Documentation/dev-tools/kunit/api/test.rst  |  11 +
>>>>   Documentation/dev-tools/kunit/faq.rst       |  62 +++
>>>>   Documentation/dev-tools/kunit/index.rst     |  79 +++
>>>>   Documentation/dev-tools/kunit/start.rst     | 180 ++++++
>>>>   Documentation/dev-tools/kunit/usage.rst     | 576 ++++++++++++++++++++
>>>>   7 files changed, 925 insertions(+)
>>>>   create mode 100644 Documentation/dev-tools/kunit/api/index.rst
>>>>   create mode 100644 Documentation/dev-tools/kunit/api/test.rst
>>>>   create mode 100644 Documentation/dev-tools/kunit/faq.rst
>>>>   create mode 100644 Documentation/dev-tools/kunit/index.rst
>>>>   create mode 100644 Documentation/dev-tools/kunit/start.rst
>>>>   create mode 100644 Documentation/dev-tools/kunit/usage.rst
>>>
>>>
>>>> diff --git a/Documentation/dev-tools/kunit/start.rst b/Documentation/dev-tools/kunit/start.rst
>>>> new file mode 100644
>>>> index 000000000000..6dc229e46bb3
>>>> --- /dev/null
>>>> +++ b/Documentation/dev-tools/kunit/start.rst
>>>> @@ -0,0 +1,180 @@
>>>> +.. SPDX-License-Identifier: GPL-2.0
>>>> +
>>>> +===============
>>>> +Getting Started
>>>> +===============
>>>> +
>>>> +Installing dependencies
>>>> +=======================
>>>> +KUnit has the same dependencies as the Linux kernel. As long as you can build
>>>> +the kernel, you can run KUnit.
>>>> +
>>>> +KUnit Wrapper
>>>> +=============
>>>> +Included with KUnit is a simple Python wrapper that helps format the output to
>>>> +easily use and read KUnit output. It handles building and running the kernel, as
>>>> +well as formatting the output.
>>>> +
>>>> +The wrapper can be run with:
>>>> +
>>>> +.. code-block:: bash
>>>> +
>>>> +   ./tools/testing/kunit/kunit.py run
>>>> +
>>>> +Creating a kunitconfig
>>>> +======================
>>>> +The Python script is a thin wrapper around Kbuild as such, it needs to be
>>>
>>>                                         around Kbuild. As such,
>>
>> Thanks for pointing this out.
>>
>>>
>>>> +configured with a ``kunitconfig`` file. This file essentially contains the
>>>> +regular Kernel config, with the specific test targets as well.
>>>> +
>>>> +.. code-block:: bash
>>>> +
>>>> +     git clone -b master https://kunit.googlesource.com/kunitconfig $PATH_TO_KUNITCONFIG_REPO
>>>> +     cd $PATH_TO_LINUX_REPO
>>>> +     ln -s $PATH_TO_KUNIT_CONFIG_REPO/kunitconfig kunitconfig
>>>> +
>>>> +You may want to add kunitconfig to your local gitignore.
>>>> +
>>>> +Verifying KUnit Works
>>>> +---------------------
>>>> +
>>>> +To make sure that everything is set up correctly, simply invoke the Python
>>>> +wrapper from your kernel repo:
>>>> +
>>>> +.. code-block:: bash
>>>> +
>>>> +     ./tools/testing/kunit/kunit.py
>>>> +
>>>> +.. note::
>>>> +   You may want to run ``make mrproper`` first.
>>>
>>> I normally use O=builddir when building kernels.
>>> Does this support using O=builddir ?
>>
>> Yep, it supports specifying a separate build directory.
>>
>>>> +
>>>> +If everything worked correctly, you should see the following:
>>>> +
>>>> +.. code-block:: bash
>>>> +
>>>> +     Generating .config ...
>>>> +     Building KUnit Kernel ...
>>>> +     Starting KUnit Kernel ...
>>>> +
>>>> +followed by a list of tests that are run. All of them should be passing.
>>>> +
>>>> +.. note::
>>>> +   Because it is building a lot of sources for the first time, the ``Building
>>>> +   kunit kernel`` step may take a while.
>>>> +
>>>> +Writing your first test
>>>> +=======================
>>>
>>> [snip]
>>>
>>>> diff --git a/Documentation/dev-tools/kunit/usage.rst b/Documentation/dev-tools/kunit/usage.rst
>>>> new file mode 100644
>>>> index 000000000000..c6e69634e274
>>>> --- /dev/null
>>>> +++ b/Documentation/dev-tools/kunit/usage.rst
>>>
>>> TBD...
>>
>> What did you mean by this comment?
> 
> I plan to review usage.rst soon... (To Be Done :)
> 

I would like to apply the series very soon so it gets some soak time
after this move in linux-next and it can still make the rc1.

Since there changes can be addressed after rc1, I would like to not
require Brendan to do another version before I apply.

Hope you are okay with that Randy!

thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
