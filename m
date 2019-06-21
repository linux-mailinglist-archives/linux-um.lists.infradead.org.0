Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C2A4EF5B
	for <lists+linux-um@lfdr.de>; Fri, 21 Jun 2019 21:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eFLlpcxp+H99HIm0hNQaY70bLIi0oxK/EyfvCOhvjQU=; b=oEgqd7LF04unsJp99+HpmPL1u
	VefaRP4ymp1yXBXIEspF2K8WGS2p0Dbz6l3vLoUT/SU+AdrBxL6AsWqLUUOhEHtx4gCMvKu0pyKzF
	VkkkljVMdLbuvd0aMPPqwggy1pwPgLNfwW1PkBicjpZrrs0V7fboLnP7/ReTuO789i/w9EZSXv311
	78ZsqcSBOECtW4jky5yHtq7num6R/1ULcFp5bsdcdhKq1w4Zi9I81iSvJKFWOSdb1RF/G/JRfYlry
	xbM4ufRq4o4vg2rdhfb26p8qfsOGgloML2s6rz25DHGHlvIQYtRslhu88QVHTUg34fbtCzjTtiPon
	kOexD/l6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heP5t-0001kN-6u; Fri, 21 Jun 2019 19:21:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heP5q-0001jn-Ql
 for linux-um@lists.infradead.org; Fri, 21 Jun 2019 19:21:04 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B5A92083B;
 Fri, 21 Jun 2019 19:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561144861;
 bh=iSLE8vYN1CVyQpDZAjB5wUepW90aWW8GZV7fiOhOYLI=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=rOFoGcMjhktMurUdgbCbMpH3CuYbo8f6qv7k7t5ZU+gIRgWY3jvHjiKlvUH/4gtGc
 tkaS0EnLDQaBH4l1BqZoXz0YVlaxT1A7Gl2P40Psq6fLWLtfADeY2VcXqK9sRP2COc
 9m3M+jF/ht6KFuEDIJyo7S5GsVZembQBcUNReF8I=
Subject: Re: [PATCH v5 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Theodore Ts'o <tytso@mit.edu>, Frank Rowand <frowand.list@gmail.com>,
 Brendan Higgins <brendanhiggins@google.com>, gregkh@linuxfoundation.org,
 jpoimboe@redhat.com, keescook@google.com, kieran.bingham@ideasonboard.com,
 mcgrof@kernel.org, peterz@infradead.org, robh@kernel.org, sboyd@kernel.org,
 yamada.masahiro@socionext.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 Tim.Bird@sony.com, amir73il@gmail.com, dan.carpenter@oracle.com,
 daniel@ffwll.ch, jdike@addtoit.com, joel@jms.id.au, julia.lawall@lip6.fr,
 khilman@baylibre.com, knut.omang@oracle.com, logang@deltatee.com,
 mpe@ellerman.id.au, pmladek@suse.com, rdunlap@infradead.org, richard@nod.at,
 rientjes@google.com, rostedt@goodmis.org, wfg@linux.intel.com,
 shuah <shuah@kernel.org>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <10feac3e-7621-65e5-fbf0-9c63fcbe09c9@gmail.com>
 <69809117-dcda-160a-ee0a-d1d3b4c5cd8a@kernel.org>
 <20190621181342.GA17166@mit.edu>
From: shuah <shuah@kernel.org>
Message-ID: <6f3f5184-d14e-1b46-17f1-391ee67e699c@kernel.org>
Date: Fri, 21 Jun 2019 13:20:58 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621181342.GA17166@mit.edu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_122102_904689_6A8302FD 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 6/21/19 12:13 PM, Theodore Ts'o wrote:
> On Fri, Jun 21, 2019 at 08:59:48AM -0600, shuah wrote:
>>>> ### But wait! Doesn't kselftest support in kernel testing?!
>>>>
>>>> ....
>>
>> I think I commented on this before. I agree with the statement that
>> there is no overlap between Kselftest and KUnit. I would like see this
>> removed. Kselftest module support supports use-cases KUnit won't be able
>> to. I can build an kernel with Kselftest test modules and use it in the
>> filed to load and run tests if I need to debug a problem and get data
>> from a system. I can't do that with KUnit.
>>
>> In my mind, I am not viewing this as which is better. Kselftest and
>> KUnit both have their place in the kernel development process. It isn't
>> productive and/or necessary to comparing Kselftest and KUnit without a
>> good understanding of the problem spaces for each of these.
>>
>> I would strongly recommend not making reference to Kselftest and talk
>> about what KUnit offers.
> 
> Shuah,
> 
> Just to recall the history, this section of the FAQ was added to rebut
> the ***very*** strong statements that Frank made that there was
> overlap between Kselftest and Kunit, and that having too many ways for
> kernel developers to do the identical thing was harmful (he said it
> was too much of a burden on a kernel developer) --- and this was an
> argument for not including Kunit in the upstream kernel.
> 
> If we're past that objection, then perhaps this section can be
> dropped, but there's a very good reason why it was there.  I wouldn't
> Brendan to be accused of ignoring feedback from those who reviewed his
> patches.   :-)
> 

Agreed. I understand that this FAQ probably was needed at one time and
Brendan added it to address the concerns.

I think at some point we do need to have a document that outlines when
to KUnit and when to use Kselftest modules. I think one concern people
have is that if KUnit is perceived as a  replacement for Ksefltest
module, Kselftest module will be ignored leaving users without the
ability to build and run with Kselftest modules and load them on a need
basis to gather data on a systems that aren't dedicated strictly for
testing.

I am trying to move the conversation forward from KUnit vs. Kselftest
modules discussion to which problem areas each one addresses keeping
in mind that it is not about which is better. Kselftest and KUnit both
have their place in the kernel development process. We just have to be
clear on usage as we write tests for each.

thanks,
-- Shuah



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
