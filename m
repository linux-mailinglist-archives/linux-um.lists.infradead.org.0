Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401A4CC6C8
	for <lists+linux-um@lfdr.de>; Sat,  5 Oct 2019 01:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+HFyIG/Am0Fgi+tGI7xM2pxGD08b/LfQjW1alwLFyHg=; b=O17O3UvjJzG7tqm3X7TQIK0d0
	XM9yHqRIXhGvFgHtubNmLOABuFOGYGKC00zlxbyD1xmmoiGG/EnWwos7da5T8B7zFrgVwkSdgYRjl
	jaWiBqeJLFeEfmBwrVcVVuylt9bODSBXcUw//7UM9zA0SfH8yy9ZsKIqv8knONTKXp+1+Y6UvNSvc
	kvYTW7t87rzHA3TgCR0dNZuaZBDzLVIa3SSvrmYvO/Z0i/vN0sM2Hh2Ex1tgnUqj6C8exyQrwDVxt
	tleIqvuwPb96CAcL1pwdthEsoG2sqjLnB5fci8y0L/fH+oWzKqZvF3XaQKahcbgLHV8VgLaFeMoRX
	e+nn3RDEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGXS9-0002J3-6t; Fri, 04 Oct 2019 23:57:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGXS6-0002IW-Fv
 for linux-um@lists.infradead.org; Fri, 04 Oct 2019 23:57:39 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B5B4217F5;
 Fri,  4 Oct 2019 23:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570233456;
 bh=QnxgZGjRGb9kVa/AbzFU/w+ata+FCIrTiXgoxZKR668=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=14VBaXN2i1lZzsGbzc40dGmK4Kz7MeNzgfzYFP1mBUWKFrLWr5b8W2fbZxF7XWXT/
 kFJ2TnRAgZew/x23kGW5L/k2jFdvXDJGUxAALPAqq4xa3NgG7/4XUrOkkuVZWSwetb
 YcbcyPY+1xumtG3sOuB8AeQgccrkurfn3PNq0JFU=
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>,
 "Theodore Y. Ts'o" <tytso@mit.edu>
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20191004213812.GA24644@mit.edu>
 <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
 <20191004222714.GA107737@google.com>
 <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
 <20191004232955.GC12012@mit.edu>
 <CAFd5g456rBSp177EkYAwsF+KZ0rxJa90mzUpW2M3R7tWbMAh9Q@mail.gmail.com>
From: shuah <shuah@kernel.org>
Message-ID: <63e59b0b-b51e-01f4-6359-a134a1f903fd@kernel.org>
Date: Fri, 4 Oct 2019 17:57:26 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g456rBSp177EkYAwsF+KZ0rxJa90mzUpW2M3R7tWbMAh9Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_165738_572635_505F25AC 
X-CRM114-Status: GOOD (  23.90  )
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
 Logan Gunthorpe <logang@deltatee.com>, Richard Weinberger <richard@nod.at>,
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

On 10/4/19 5:52 PM, Brendan Higgins wrote:
> On Fri, Oct 4, 2019 at 4:30 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>>
>> On Fri, Oct 04, 2019 at 04:47:09PM -0600, shuah wrote:
>>>> However, if I encourage arbitrary tests/improvements into my KUnit
>>>> branch, it further diverges away from torvalds/master, and is more
>>>> likely that there will be a merge conflict or issue that is not related
>>>> to the core KUnit changes that will cause the whole thing to be
>>>> rejected again in v5.5.
>>>
>>> The idea is that the new development will happen based on kunit in
>>> linux-kselftest next. It will work just fine. As we accepts patches,
>>> they will go on top of kunit that is in linux-next now.
>>
>> I don't see how this would work.  If I add unit tests to ext4, they
>> would be in fs/ext4.  And to the extent that I need to add test mocks
>> to allow the unit tests to work, they will involve changes to existing
>> files in fs/ext4.  I can't put them in the ext4.git tree without
>> pulling in the kunit changes into the ext4 git tree.  And if they ext4
>> unit tests land in the kunit tree, it would be a receipe for large
>> numbers of merge conflicts.
> 
> That's where I was originally coming from.
> 
> So here's a dumb idea: what if we merged KUnit through the ext4 tree?
> I imagine that could potentially get very confusing when we go back to
> sending changes in through the kselftest tree, but at least it means
> that ext4 can use it in the meantime, which means that it at least
> gets to be useful to one group of people. Also, since Ted seems pretty
> keen on using this, I imagine it is much more likely to produce real
> world, immediately useful tests not written by me (I'm not being lazy,
> I just think it is better to get other people's experiences other than
> my own).
> 

That doesn't make sense does it? The tests might not be limited to
fs/ext4. We might have other sub-systems that add tests.

So, we will have to work to make linux-next as the base for new
development and limit the number of tests to where it will be
easier work in this mode for 5.5. We can stage the pull requests
so that kunit lands first followed by tests.

We have a similar situation with kselftest as well. Sub-systems
send tests that depend on their tress separately.

thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
