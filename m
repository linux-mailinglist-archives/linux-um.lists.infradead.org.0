Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FA819008
	for <lists+linux-um@lfdr.de>; Thu,  9 May 2019 20:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqHbeXrzBQCZ0zy29/b/JXJ9V2+2TL0zGZhOEd+tdGc=; b=hDHAH9Pm8kGAjr
	oaABh8tgfkyvRrj1WxIAxI0CKrPUdnA7gvknxXJkiCiu1RwghHmc0jPsMIEsgmDOcdzKYdj3ToJcQ
	jWrCV21bOQXSofHaV+kZx3Fq3lzpgdWuhyZbsYePRHNs61fROfgIl0cvIO0ZfTIDsBvxX63x9Xw3p
	dPrarCcwVBqntTuonLnHF4ldxbbINvzV68XX4j1a+2Ye9ZBB0cyjhPg1jh+z0Tjg/fQ0hoWZEU6QK
	Q5sB2aZSFNAD9y5Hc+FToPotUMQpvue+vdE1T0wIUz+E8xfUdrFwz2ssJQ2qjSgx1b79UXqKMvAED
	II791NIXiNDPcBv6e3bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOnWm-00084g-Bm; Thu, 09 May 2019 18:12:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOnWj-000849-DV
 for linux-um@lists.infradead.org; Thu, 09 May 2019 18:12:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id y11so1708125pfm.13
 for <linux-um@lists.infradead.org>; Thu, 09 May 2019 11:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Uxi0dT3bZPj5ZkTVCL1ze6BziBmMlaGGA5Ikg1U2vOM=;
 b=NVDbC1bDsKomR5b17X9A07TUn96+Z0R3C4QHe4+4XmcpJtOfCd8CgmuLCZMfSUHc2Y
 AZQbhyOHVN3PbnfvpXNwIyTiJEC0AnC3A31KnDgtom1X8Z0bgVekXTI3BVaR1rUMtVkc
 mpvbZA/KClKMuTnmyJdmslHsYwuIqmD1989ZCuOTgZCEOLUbJp+Az3OuPzbniWLdhZRK
 A4eykSViXmcMIyntll9GMv/G9FH9fbRHmzzNbY06sd7ytRr4VIvYZ01eaVqBFzNo471Q
 13oOjpRmdvJZD1oIeJ41HPZmqYmiXnHa+CbiBBf3n0hUjCKPHXEpNrM3Np8eHuClrL/7
 NdMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Uxi0dT3bZPj5ZkTVCL1ze6BziBmMlaGGA5Ikg1U2vOM=;
 b=mBEUVa1MJEp1qqR/IhaYjclz5D4lPZm/Bw8vJYEDUnXwlHivqJluDVo8MZ4Ck8K+h7
 dZr2+EHcJCiGdJMJtfIB1iab1MT8Du0BgUcs3AuUpT45B1Ly1jpYkMkO7LJok8ntuWNU
 QR5+kASKyqSD+BsJgWwZN0Za4gVgT+jLvXecaX4Cm4r3rb+hJVHpTr8YEV5w3/4ETODy
 QSp5PoPGvqD4c1w42V6XzeOPAF29YX4YNERQ7hlumqNUUEgnKJMq0dXnIqA/lEDtC9Zd
 OR9zoLiEeNgSyk9aslAGhYcFjm8KjQZDrVz7XmQh2an12ToeIZ0hnjqyH71UrYTs1DM/
 8+Jg==
X-Gm-Message-State: APjAAAV/HyH/t4pyeH3Sq3TzTYG92YV/JoR8FLW+LUrYe44cfy26VhJQ
 o4W5GsRt6QZBDGEArJpQ03U=
X-Google-Smtp-Source: APXvYqwGz4a+VK7p6ts4ffA1rbfVCYWZRJS4YjX+gCEsA57HSqJ7sXPY9ft7Z0NWCteDTJWoQXvRRA==
X-Received: by 2002:a65:5941:: with SMTP id g1mr7554475pgu.51.1557425535979;
 Thu, 09 May 2019 11:12:15 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id l68sm6532427pfb.20.2019.05.09.11.12.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 11:12:15 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Tim.Bird@sony.com, tytso@mit.edu, knut.omang@oracle.com
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com>
 <a09a7e0e-9894-8c1a-34eb-fc482b1759d0@gmail.com>
 <20190509015856.GB7031@mit.edu>
 <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <20190509032017.GA29703@mit.edu>
 <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
Date: Thu, 9 May 2019 11:12:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_111217_457545_C547D854 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 brendanhiggins@google.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com,
 kieran.bingham@ideasonboard.com, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, jdike@addtoit.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 daniel@ffwll.ch, keescook@google.com, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/9/19 10:00 AM, Tim.Bird@sony.com wrote:
>> -----Original Message-----
>> From: Theodore Ts'o 
>>

< massive snip >

I'll reply in more detail to some other earlier messages in this thread
later.

This reply is an attempt to return to the intent of my original reply to
patch 0 of this series.


>> Ultimately, I'm a pragmatist.  If KTF serves your needs best, good for
>> you.  If other approaches are better for other parts of the kernel,
>> let's not try to impose a strict "There Must Be Only One" religion.
>> That's already not true today, and for good reason.  There are many
>> different kinds of kernel code, and many different types of test
>> philosophies.  Trying to force all kernel testing into a single
>> Procrustean Bed is simply not productive.
> 
> Had to look up "Procrustean Bed" - great phrase.  :-)
> 
> I'm not of the opinion that there must only be one test framework
> in the kernel. But we should avoid unnecessary multiplication. Every
> person is going to have a different idea for where the line of necessity
> is drawn.  My own opinion is that what KUnit is adding is different enough
> from kselftest, that it's a valuable addition.  
> 
>  -- Tim

My first reply to patch 0 was in the context of knowing next to nothing
about kselftest.  My level of understanding was essentially from slideware.
(As the thread progressed, I dug a little deeper into kselftest, so now have
a slightly better, though still fairly surface understanding of kselftest).

Maybe I did not explain myself clearly enough in that reply.  I will try
again here.

Patch 0 provided a one paragraph explanation of why KUnit exists, titled

   "## What's so special about unit testing?"

Patch 0 also provided a statement that it is not meant to replace
kselftest, in a paragraph titled

   "## Is KUnit trying to replace other testing frameworks for the kernel?"

I stated:

   "My understanding is that the intent of KUnit is to avoid booting a kernel on
   real hardware or in a virtual machine.  That seems to be a matter of semantics
   to me because isn't invoking a UML Linux just running the Linux kernel in
   a different form of virtualization?

   So I do not understand why KUnit is an improvement over kselftest.

   ...

   What am I missing?"


I was looking for a fuller, better explanation than was given in patch 0
of how KUnit provides something that is different than what kselftest
provides for creating unit tests for kernel code.

New question "(2)":

(2) If KUnit provides something unique, then the obvious follow on
question would be: does it make sense to (a) integrate that feature into
kselftest, (b) integrate the current kselftest in kernel test functionality
into KUnit and convert the in kernel test portion of kselftest to use
KUnit, or (c) KUnit and kselftest are so different that they need to
remain separate features.

*****  Please do not reply to this email with a discussion of "(2)".
*****  Such a discussion is premature if there is not an answer
*****  to my first question.

Observation (3), rephrased:

(3) I also brought up the issue that if option (c) was the answer to
question "(2)" (instead of either option (a) or option (b)) then this
is extra overhead for any developer or maintainer involved in different
subsystems that use the different frameworks.  I intended this as one
possible motivation for why my first question mattered.

Ted grabbed hold of this issue and basically ignored what I intended
to be my core question.  Nobody else has answered my core question,
though Knut's first reply did manage to get somewhere near the
intent of my core question.

*****  Please do not reply to this email with a discussion of "(3)".
*****  Such a discussion is premature if there is not an answer
*****  to my first question.
*****
*****  Also that discussion is already occurring in this thread,
*****  feel free to discuss it there if you want, even though I
*****  feel such discussion is premature.

I still do not have an answer to my original question.

-Frank

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
