Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D6BCE58B
	for <lists+linux-um@lfdr.de>; Mon,  7 Oct 2019 16:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hk/WC/1V4j5pc7uDToDayriQcNwkS43XX71s1qxsqRA=; b=OpCuxAdEW6iti7LZSjoDheCKO
	6EI9ImSkzeCpm/Fs7wmXIZCEnL+dYOvJFk4WlnQ1PEQp9caNCOwpka612fgEq3rCntJGUzI2OJpKb
	K6vcJhrOWOoIXXqHK1bs5Ysr81Mw1V65P0OVCYaVotDAYGGw4GTcsqwW961OM6WygQt6P4zjJ2Zuw
	EmWhQsusc339kDG/DqV5QXVYy2rrckFiLm3lmwQZIYxxphL6jF5ee4WRe7TVhngl6mWRVEeKXd1ne
	DDc9wvrQST7r3+kdS6VdAKUzU0k+fmeLJ7gZGzbPAkQgutPRvc90ObrEnYWAS5keTE7dOgB3GGPGV
	o5cH0L+4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUDx-0003Lh-TC; Mon, 07 Oct 2019 14:42:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUDu-0003Kt-Qk
 for linux-um@lists.infradead.org; Mon, 07 Oct 2019 14:42:56 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 652F821655;
 Mon,  7 Oct 2019 14:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570459374;
 bh=8a9ttxrtf8XQAHoqUXfvVNJTnrKk2ig330NCAHu4lg8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=AoB6OsaRPmZtmsSo+lnAiCXKXpAVYnRxoGldWXC/BBHobSDS+krxcX7IrlOfGHyrA
 TxYbr+Z5YnGt6XoXu3UMvJaolTAbaKL0uQsfA2rKEiZhsD8DybbBoZ3r44PxiMr/G5
 2Q6UI0fo3E2C4VIFC/24/CxuC6cNzrzr3VHDshCo=
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
 <20191004222714.GA107737@google.com>
 <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
 <20191004232955.GC12012@mit.edu>
 <CAFd5g456rBSp177EkYAwsF+KZ0rxJa90mzUpW2M3R7tWbMAh9Q@mail.gmail.com>
 <63e59b0b-b51e-01f4-6359-a134a1f903fd@kernel.org>
 <CAFd5g47wji3T9RFmqBwt+jPY0tb83y46oj_ttOq=rTX_N1Ggyg@mail.gmail.com>
 <544bdfcb-fb35-5008-ec94-8d404a08fd14@kernel.org>
 <CAFd5g467PkfELixpU0JbaepEAAD_ugAA340-uORngC-eXsQQ-g@mail.gmail.com>
 <20191006165436.GA29585@mit.edu>
 <CAHk-=wjcJxypxUOSF-jc=SQKT1CrOoTMyT7soYzbvK3965JmCA@mail.gmail.com>
 <CAFd5g45djTX+FaXwn2abve1+6GbtNrv+8EJgDe_TXn1d+pzukA@mail.gmail.com>
From: shuah <shuah@kernel.org>
Message-ID: <ed26ac47-7f27-c3ec-56ae-8b3b9aa87654@kernel.org>
Date: Mon, 7 Oct 2019 08:42:36 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g45djTX+FaXwn2abve1+6GbtNrv+8EJgDe_TXn1d+pzukA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_074254_909171_CFAE3145 
X-CRM114-Status: GOOD (  22.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, shuah <shuah@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 10/7/19 2:40 AM, Brendan Higgins wrote:
> On Sun, Oct 6, 2019 at 10:18 AM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>>
>> On Sun, Oct 6, 2019 at 9:55 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>>>
>>> Well, one thing we *can* do is if (a) if we can create a kselftest
>>> branch which we know is stable and won't change, and (b) we can get
>>> assurances that Linus *will* accept that branch during the next merge
>>> window, those subsystems which want to use kself test can simply pull
>>> it into their tree.
>>
>> Yes.
>>
>> At the same time, I don't think it needs to be even that fancy. Even
>> if it's not a stable branch that gets shared between different
>> developers, it would be good to just have people do a "let's try this"
>> throw-away branch to use the kunit functionality and verify that
>> "yeah, this is fairly convenient for ext4".
>>
>> It doesn't have to be merged in that form, but just confirmation that
>> the infrastructure is helpful before it gets merged would be good.
> 
> I thought we already had done this satisfactorily.
> 
Adding a couple more tests will only help in the long run. The idea is
to see can this help

> We have one proof-of-concept test in the branch in the kselftest repo
> (proc sysctl test) that went out in the pull request, and we also had
> some other tests that were not in the pull request (there is the ext4
> timestamp stuff mentioned above, and we also had one against the list
> data structure), which we were planning on sending out for review once
> Shuah's pull request was accepted. I know the apparmor people also
> wrote some tests that they said were useful; however, I have not
> coordinated with them on upstreaming their tests. I know of some other
> people who are using it, but I don't think the tests are as far along
> for upstreaming.
> 

Maybe that is a good start. To get the tests that are already in use
and get them in shape for upstream.

> The point is: I thought we had plenty of signal that KUnit would be
> useful to have merged into the mainline kernel. I thought the only
> reason it was rejected for 5.4 was due to the directory name issue
> combined with bad timing.
> 

That is probably the initial thought. However, it makes perfect sense
to add a couple of tests in. We have a few weeks anyway and it gives
us more confidence on kunit.

I already have a branch that is in linux-next and it just has kunit in
it and I will rebase it to 5.4-rc1.

https://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest.git/log/?h=test

Let's use that for kunit work for 5.5. I won't add any kselftest patches
to it and keep it dedicated for kunit work. When tests are ready for
upstream, I can keep adding them to this branch.

thanks,
-- Shuah





_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
