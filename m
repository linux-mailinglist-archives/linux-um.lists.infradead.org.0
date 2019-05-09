Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6832183AD
	for <lists+linux-um@lfdr.de>; Thu,  9 May 2019 04:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5KfOpR1GVQxHptKOK0n3nhyDwj1l8ssZ0NS4wXxJaJU=; b=BVbJF4H3E6tknE2/xxS6Q/Kjk4
	djdLXl3c4SsGnpEOo3zwi89fCbNZK6ukAyWLibaBmK1inhLf3+u1I5uikBHko+243kvoqU5NeDart
	3OvkIdAii94i5RmwyMcCoK+cYX7jP8Rk2c86ZJfPovt07Y6Rgz0Ya832CaC7GsDzwCVAoShg8MFFV
	3BYMugLgrH8CUjMqsUKjwtgpQyFrJkcV+Lbwhzd/F8HjszXl9jTXuxrmeu8xNaWZlHbdDzoV6o1l5
	dqO4DtIKRC9p5+r0wCvuYgQJVLhBxDgYii1j2frkb8I8Cxfk3qjGjxSIcBxyFBG9LG20kkUbkVAz4
	Jpn/nIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOYdq-0002SA-R7; Thu, 09 May 2019 02:18:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOYdo-0002Rg-B6
 for linux-um@lists.infradead.org; Thu, 09 May 2019 02:18:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi2so311638plb.13
 for <linux-um@lists.infradead.org>; Wed, 08 May 2019 19:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=67cKgHpKn5BasI4H9G5b29AFH8V2LHpBqBhNNX7AepI=;
 b=IdWnqVyky2mloPBWQLjQqC3RNWwopYAaMClPvfqRz+kOE5FYbiQV2HYTeaz5LcNXRc
 7wOeWEeAayPUpVKD8GVgH5tlHGjOMXoHfdDjtYENRb51HqJzXvqoIVPN/c8gSgI1A8Bd
 27sn+YVD+VXjElLK8ki7xOEob0TJCp6WvbCU+Rl8BL3/htDMfD8jdKzGUvRX6k4w7lc7
 Pf0CP6YbTC4sS274CsPgsIalQHztO9A4EhBK4Z9Lb7TnlcPn29QL3JvNlnhzeK+xhVUQ
 HL6MkDTHh/MTo81DfiP0Voc8IagpScTcOZUNMy2+isvaJF7gRho5CMGYBOrvWGSA9sL6
 4Tqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=67cKgHpKn5BasI4H9G5b29AFH8V2LHpBqBhNNX7AepI=;
 b=cWe9CBPG24rr64WasOa8hGna2J+K6STg1RuXznIfjHFmWSCOl/o2W3IhGYWa49rCG/
 CvTwwHjxu6JAAEgAYNjC3c+ZLlZOPbrrZsxhF5G64z3p8RCbyvnMl01Qd+HhOMT6Xf2E
 C7YUp/v39dQWoosMOyRyN78cmynBFyUFiUvnqUkEimjh0C3LpyQLHwaoFpBqWbnY1uNg
 H7Ar3Sicx97vhVlyCSC865To0OnSxpbb+snz2BlH+IMIuzcalzC60jqatpjFHlPx5H07
 5ps3Xd1AjpD4I9NBBWmwBSwQZ0eRMxCSC6EKx7+b0AysBK5xt2mKkashKDu8R8cYDRHV
 p4Yg==
X-Gm-Message-State: APjAAAXSImlxHhwGy1eEACR3mH8WX+YbGeOx4fhmzbnVCZPIrCeML1TY
 ZGVotJ5+oUGKK2HHnTnkDEo=
X-Google-Smtp-Source: APXvYqxKONkqpvysOzcXsSL0stE2Fx1k07GjyXCU+F00vWxsMMPMatYsdoa5bWbRlxy93rTIbJhz0w==
X-Received: by 2002:a17:902:8f82:: with SMTP id
 z2mr1716364plo.51.1557368314774; 
 Wed, 08 May 2019 19:18:34 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id r138sm777868pfr.2.2019.05.08.19.18.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 19:18:33 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Theodore Ts'o <tytso@mit.edu>, Greg KH <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 Tim.Bird@sony.com, amir73il@gmail.com, dan.carpenter@oracle.com,
 dan.j.williams@intel.com, daniel@ffwll.ch, jdike@addtoit.com,
 joel@jms.id.au, julia.lawall@lip6.fr, khilman@baylibre.com,
 knut.omang@oracle.com, logang@deltatee.com, mpe@ellerman.id.au,
 pmladek@suse.com, richard@nod.at, rientjes@google.com, rostedt@goodmis.org,
 wfg@linux.intel.com
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com> <20190507172256.GB5900@mit.edu>
 <4d963cdc-1cbb-35a3-292c-552f865ed1f7@gmail.com>
 <20190509014407.GA7031@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <458dcb03-8dee-a005-97e1-7296a9e5bbfd@gmail.com>
Date: Wed, 8 May 2019 19:18:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509014407.GA7031@mit.edu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_191836_384991_45CCE991 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/8/19 6:44 PM, Theodore Ts'o wrote:
> On Wed, May 08, 2019 at 05:58:49PM -0700, Frank Rowand wrote:
>>
>> If KUnit is added to the kernel, and a subsystem that I am submitting
>> code for has chosen to use KUnit instead of kselftest, then yes, I do
>> *have* to use KUnit if my submission needs to contain a test for the
>> code unless I want to convince the maintainer that somehow my case
>> is special and I prefer to use kselftest instead of KUnittest.
> 
> That's going to be between you and the maintainer.  Today, if you want
> to submit a substantive change to xfs or ext4, you're going to be
> asked to create test for that new feature using xfstests.  It doesn't
> matter that xfstests isn't in the kernel --- if that's what is
> required by the maintainer.

Yes, that is exactly what I was saying.

Please do not cut the pertinent parts of context that I am replying to.


>>> supposed to be a simple way to run a large number of small tests that
>>> for specific small components in a system.
>>
>> kselftest also supports running a subset of tests.  That subset of tests
>> can also be a large number of small tests.  There is nothing inherent
>> in KUnit vs kselftest in this regard, as far as I am aware.


> The big difference is that kselftests are driven by a C program that
> runs in userspace.  Take a look at tools/testing/selftests/filesystem/dnotify_test.c
> it has a main(int argc, char *argv) function.
> 
> In contrast, KUnit are fragments of C code which run in the kernel;
> not in userspace.  This allows us to test internal functions inside
> complex file system (such as the block allocator in ext4) directly.
> This makes it *fundamentally* different from kselftest.

No, totally incorrect.  kselftests also supports in kernel modules as
I mention in another reply to this patch.

This is talking past each other a little bit, because your next reply
is a reply to my email about modules.

-Frank

> 
> Cheers,
> 
> 						- Ted
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
