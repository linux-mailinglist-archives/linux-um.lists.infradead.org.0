Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6079CC58C
	for <lists+linux-um@lfdr.de>; Fri,  4 Oct 2019 23:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7Uiv2sxjqLQptBqTVKD74c1jc0BOPppvfY+0JefW/lI=; b=Gsvftmrt143gzy1Bz6hpdM5Tj
	+HoFDB/0guDEfetOy9QxkOs0aSk+1r+lewNo1Gd8N2BulZXwrRT/X6UysuBqLL2mcnJ29dhyo4eaw
	oaDUHIl97PFa7S3Uf4vfmQJ7PBXjEcec9kwcH+3HbVmaByziDS0ljI2RvjHL098+vPXXqv/dmD4yQ
	u3GnW8Z8s5M3OesPoAqd3cQ0kCf+1TUBjSjpjD3anWxiGgnayRA8k3RSzUWv6WSjkFAX2bpZNjF1a
	shZazxYC80aM3ulng0v1/laG3bzyjVhY8zTfIaXpWaV9VCndBa5nwbjeDoxf9LoYjm83n78ZGuuwo
	QIBQag6aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVbl-000788-Rl; Fri, 04 Oct 2019 21:59:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVbj-00077a-Kq
 for linux-um@lists.infradead.org; Fri, 04 Oct 2019 21:59:29 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2D2021D81;
 Fri,  4 Oct 2019 21:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570226366;
 bh=W73YLXhXs87A3g1korb/FdZux/uM+XbdVy58joNqtAw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=c7fOk7RUHivPSo4Br+sR7Ulb8toFXC/ZDyjo7M4McI2vK/fU2u5yUL6sgZqCG9/0N
 ojFH2VfZcCuNDqHBacwdU9j3hm2X7p3FAwv0T6qBCIoIakX+ukDWwwzuMnkOhquBaJ
 BRLuBCpyg/Pa+cLfW2XKs0phXp09dZr4S7bAKusM=
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Linus Torvalds <torvalds@linux-foundation.org>,
 "Theodore Y. Ts'o" <tytso@mit.edu>
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20191004213812.GA24644@mit.edu>
 <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
From: shuah <shuah@kernel.org>
Message-ID: <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
Date: Fri, 4 Oct 2019 15:59:10 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_145927_709544_787965B0 
X-CRM114-Status: GOOD (  16.31  )
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
 Brendan Higgins <brendanhiggins@google.com>,
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
 kunit-dev@googlegroups.com, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 logang@deltatee.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 10/4/19 3:42 PM, Linus Torvalds wrote:
> On Fri, Oct 4, 2019 at 2:39 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>>
>> This question is primarily directed at Shuah and Linus....
>>
>> What's the current status of the kunit series now that Brendan has
>> moved it out of the top-level kunit directory as Linus has requested?
> 

The move happened smack in the middle of merge window and landed in
linux-next towards the end of the merge window.

> We seemed to decide to just wait for 5.5, but there is nothing that
> looks to block that. And I encouraged Shuah to find more kunit cases
> for when it _does_ get merged.
> 

Right. I communicated that to Brendan that we could work on adding more
kunit based tests which would help get more mileage on the kunit.

> So if the kunit branch is stable, and people want to start using it
> for their unit tests, then I think that would be a good idea, and then
> during the 5.5 merge window we'll not just get the infrastructure,
> we'll get a few more users too and not just examples.
> 
thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
