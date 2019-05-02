Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4AC123FD
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 23:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEbTrRUxrLZ8ZXarQ/nhDqgf/dSxqt505lhxq/mTxGU=; b=G9EtADwk8I89pm
	fmZj/J0XUeLj2FQD+HOvVvMvKtfe2K0SYS+lxDTQBltP/u8ISkR4tltwp1Lz/kXpIxuHcHGUz0fGb
	vFvIm/jZd+fDj6ePhZw0VI2A53PFhw+sohvciQV7SRwRbYqIqalHsSrqRMvQQ0+Z7Mcuccno7Z0fe
	fiAn//Wdlqn8eJy2ZUkwQvE+GF81K12+x0CZ/YX05yQgfaPj7FBaZGKCTmb4Xd8a8SCbp+EECAvdG
	0e0emEpOM1UWqrs+lMu5X0azg8IdFxPEv608QU99OzjdzzliJfpjKEQ4sPJSqNKvDQvBG2XB4FFlP
	+I6q20S8L8I6RzPq3idA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMJ4A-0006JT-SG; Thu, 02 May 2019 21:16:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMJ47-0006In-VH
 for linux-um@lists.infradead.org; Thu, 02 May 2019 21:16:29 +0000
Received: by mail-pg1-x543.google.com with SMTP id w22so317195pgi.6
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 14:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SXzn4PL7BS9Zk+Qjz5Z6ao7p78pnuZhgvrrpjIHBgqs=;
 b=kCJFdJIIF969KctuD3d2wM6Ofbq6dPOZFLTH8wlGl+7+cVokVRuDwro7NOWN9ohV8k
 ImAl50lyzEBsv7yN+yDsApIRZoLtSCfwhyzyxPvjXoEWcvwOBh4YVBGfYFjfXofVIUhG
 4IdfwHyJltRS5sW89ee6jcilUM33Ka1rf9l/1hx/r4xvkgirrOsCcjMVyOo7fNRjZFEX
 W57GSaPxOGJB3pNyXX+NzqVUj3/2JEPXwOjRvCBv8sNkyMt8fb6SSscfdGTffg6t6JdB
 E1xSneePimV/qvTL3gOacgC8P6jcyMC1ik1HBxyp2Tove1HOXYfOKbo6mTy7cNVaJPvY
 TkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SXzn4PL7BS9Zk+Qjz5Z6ao7p78pnuZhgvrrpjIHBgqs=;
 b=Wls/ownk9NOWA7FEGh8TE6MWh2mtp8WiWGCDT6wVhS1ONUH2Qkt4hNW9xzJYd09Y8V
 QlPzTJkWZg7qLblApnH/D694oBBvgkxu2XNaYRs0pa0qf04nqOYhO8lexT2iro7+Beil
 K9UDSI7sJbwyb0yTsrEEdTe/FqaQb5hAB6BLFpwhPbW3xMnl9sAof+WJZFnH22szEBRK
 gHgH9Yo8mHoAu9QP0DpU4HtcknG8z8vfOaJl5sGQgmBYiMtOkpFHFr+g2Pa4FMlOtpYB
 fObUSSSgPCH5/6kjNh1+W9on0/31ooIOih+Bk/+CSDWee6VTy7VyBr08cJVAPf5qMqTx
 Qvpw==
X-Gm-Message-State: APjAAAXAPwL2qPRAKoeAQhem60Nv9/8Ble3bGqPWvxvBVNdJI04Lm0dF
 f7g6tNVDboADQvRYmSUvk6++jDnbNC8=
X-Google-Smtp-Source: APXvYqyaAKrOO8dNkOZg12O3d42lENfOgkrL7qBtR/V01hTlj71I+CQb4vEU5IP/L2A0+G0+xdSQEg==
X-Received: by 2002:a63:5f42:: with SMTP id t63mr6174518pgb.275.1556831786717; 
 Thu, 02 May 2019 14:16:26 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id f63sm102173pfc.180.2019.05.02.14.16.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 14:16:26 -0700 (PDT)
Subject: Re: [PATCH v2 12/17] kunit: tool: add Python wrappers for running
 KUnit tests
To: Brendan Higgins <brendanhiggins@google.com>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-13-brendanhiggins@google.com>
 <20190502110220.GD12416@kroah.com>
 <CAFd5g47t=EdLKFCT=CnPkrM2z0nDVo24Gz4j0VxFOJbARP37Lg@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <a49c5088-a821-210c-66de-f422536f5b01@gmail.com>
Date: Thu, 2 May 2019 14:16:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAFd5g47t=EdLKFCT=CnPkrM2z0nDVo24Gz4j0VxFOJbARP37Lg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_141628_035483_4F2A90FE 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 shuah@kernel.org, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/2/19 11:07 AM, Brendan Higgins wrote:
> On Thu, May 2, 2019 at 4:02 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>
>> On Wed, May 01, 2019 at 04:01:21PM -0700, Brendan Higgins wrote:
>>> From: Felix Guo <felixguoxiuping@gmail.com>
>>>
>>> The ultimate goal is to create minimal isolated test binaries; in the
>>> meantime we are using UML to provide the infrastructure to run tests, so
>>> define an abstract way to configure and run tests that allow us to
>>> change the context in which tests are built without affecting the user.
>>> This also makes pretty and dynamic error reporting, and a lot of other
>>> nice features easier.
>>>
>>> kunit_config.py:
>>>   - parse .config and Kconfig files.
>>>
>>> kunit_kernel.py: provides helper functions to:
>>>   - configure the kernel using kunitconfig.
>>>   - build the kernel with the appropriate configuration.
>>>   - provide function to invoke the kernel and stream the output back.
>>>
>>> Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
>>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>>
>> Ah, here's probably my answer to my previous logging format question,
>> right?  What's the chance that these wrappers output stuff in a standard
>> format that test-framework-tools can already parse?  :)
> 
> It should be pretty easy to do. I had some patches that pack up the
> results into a serialized format for a presubmit service; it should be
> pretty straightforward to take the same logic and just change the
> output format.

When examining and trying out the previous versions of the patch I found
the wrappers useful to provide information about how to control and use
the tests, but I had no interest in using the scripts as they do not
fit in with my personal environment and workflow.

In the previous versions of the patch, these helper scripts are optional,
which is good for my use case.  If the helper scripts are required to
get the data into the proper format then the scripts are not quite so
optional, they become the expected environment.  I think the proper
format should exist without the helper scripts.

-Frank

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
