Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC49CC60E
	for <lists+linux-um@lfdr.de>; Sat,  5 Oct 2019 00:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=axEBDjcO3OX3T7Nfy3s8twF5gsHCHgZ+eAKuSzXexI8=; b=Yb0jtrYsNuFY9DQlYELYyNQ7c
	RVSbYfm4eVFCarX0lYiuV31UIHFQ+VZaEL0zydsmkDE9eo9z6ooXvn6bi+bQbhUFDXA2vQdGdrHSj
	5VqNieV+xQlDCfHmD4IpGndXoMNRumX/bsMLDCP78tV9W2VGgoFkb1x364wBGynDMu36Q7yY8QUdM
	9zzqrIi+Byc0gwUoltzSQHCKatF2QYIRyEDwjCgfjclooAEBQ6cCU5hE8mGegxd3sO1J9d6Spyb1Q
	Ef7SkBtGRzfN5peCBx8PwkZ512xfx8je1xq9DstDePiDGD2Je0hmwHjHar58NIZqm+T3nVKXpwouP
	VhJWXb8cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGWM0-0005ot-5f; Fri, 04 Oct 2019 22:47:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGWLx-0005oZ-DL
 for linux-um@lists.infradead.org; Fri, 04 Oct 2019 22:47:14 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27C0D20873;
 Fri,  4 Oct 2019 22:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570229232;
 bh=xzHJwRDpMutixnFislQvEBP/YT7jem/U/8kCBigrHuc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=iwzzgBVqn0QkoDuULW/O4NrloecUNaYOg0c99vmkwrF/zjed3x2bOMaHRqdx3FMcB
 x9c+A3rz+204+uJreaQuOoW8uMDh6bYqcKQgfB1jhKbgSV/JJFS70YgyJLCTDDtbp8
 DUCzwKxib6rwVWWLjRz787WWmuX5+RAponaYusdk=
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20191004213812.GA24644@mit.edu>
 <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
 <20191004222714.GA107737@google.com>
From: shuah <shuah@kernel.org>
Message-ID: <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
Date: Fri, 4 Oct 2019 16:47:09 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191004222714.GA107737@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_154713_493513_E3CCC27B 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Frank Rowand <frowand.list@gmail.com>, robh@kernel.org,
 linux-nvdimm <linux-nvdimm@lists.01.org>, khilman@baylibre.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 jdike@addtoit.com, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree@vger.kernel.org, shuah <shuah@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Josh Poimboeuf <jpoimboe@redhat.com>,
 kunit-dev@googlegroups.com, logang@deltatee.com,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 10/4/19 4:27 PM, Brendan Higgins wrote:
> On Fri, Oct 04, 2019 at 03:59:10PM -0600, shuah wrote:
>> On 10/4/19 3:42 PM, Linus Torvalds wrote:
>>> On Fri, Oct 4, 2019 at 2:39 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>>>>
>>>> This question is primarily directed at Shuah and Linus....
>>>>
>>>> What's the current status of the kunit series now that Brendan has
>>>> moved it out of the top-level kunit directory as Linus has requested?
>>>
>>
>> The move happened smack in the middle of merge window and landed in
>> linux-next towards the end of the merge window.
>>
>>> We seemed to decide to just wait for 5.5, but there is nothing that
>>> looks to block that. And I encouraged Shuah to find more kunit cases
>>> for when it _does_ get merged.
>>>
>>
>> Right. I communicated that to Brendan that we could work on adding more
>> kunit based tests which would help get more mileage on the kunit.
>>
>>> So if the kunit branch is stable, and people want to start using it
>>> for their unit tests, then I think that would be a good idea, and then
>>> during the 5.5 merge window we'll not just get the infrastructure,
>>> we'll get a few more users too and not just examples.
> 
> I was planning on holding off on accepting more tests/changes until
> KUnit is in torvalds/master. As much as I would like to go around
> promoting it, I don't really want to promote too much complexity in a
> non-upstream branch before getting it upstream because I don't want to
> risk adding something that might cause it to get rejected again.
> 
> To be clear, I can understand from your perspective why getting more
> tests/usage before accepting it is a good thing. The more people that
> play around with it, the more likely that someone will find an issue
> with it, and more likely that what is accepted into torvalds/master is
> of high quality.
> 
> However, if I encourage arbitrary tests/improvements into my KUnit
> branch, it further diverges away from torvalds/master, and is more
> likely that there will be a merge conflict or issue that is not related
> to the core KUnit changes that will cause the whole thing to be
> rejected again in v5.5.
> 

The idea is that the new development will happen based on kunit in
linux-kselftest next. It will work just fine. As we accepts patches,
they will go on top of kunit that is in linux-next now.

thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
