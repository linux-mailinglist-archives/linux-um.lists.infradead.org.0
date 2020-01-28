Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AAE14BFF9
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 19:37:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPseAMYV7R5KekZxhBO3Mqv2LwNsG4KCL1BxbDLa9yY=; b=kzB6pVtUV/XvH3
	Zum5lm5GOQ55tVchV7vfvpLbirJsRMJkYU1Ko8FqNUV1hRZHYH9lZPPC8OKzg41f0z/2JdH+P0GOp
	ohbT9xUoPHNmYkrRa3UmHIWW/9fff8yet+Z0oMptl/dTb4k6MJBHOVPYfSTC2IvHUMRVFDzS6oV5g
	TZutouSmC3umH1q75YCAJtmBrZxyfChuDRsFvCheLGtuzG+Fzfafl158RAxAs0tbzfHmvmR2Tmtsf
	poI2U+xWnKTj8Y+CXiljbnCe5RE4ymkTzFb7wVW7SnEBUoDekyROvKUodVCKVdSIVltyDmArkcLWU
	aVop6xyAjtSfpfawgK+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVjL-0003nR-CO; Tue, 28 Jan 2020 18:36:55 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVjI-0003mZ-Aa
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 18:36:53 +0000
Received: by mail-yw1-xc43.google.com with SMTP id l22so6969694ywc.8
 for <linux-um@lists.infradead.org>; Tue, 28 Jan 2020 10:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UAaJIyMCtfqDJNVGPg+VIxoXHpPloRjdhA2WOZPQuQo=;
 b=nnkrjD/4eh4orr4I9QZwg2tsLzI/F7M1p9TKAUtbzdELO0mgklmIYiLAd5geqGJB7u
 Vp9oLuyidZqIeV7sAIANKB3mkgnupXSadCS4j0ObyivnC1i/tOddlV+vsuPIAUU/ls0S
 tZdA+/o1Az2iRUa9PGDQFPxR9n3pBaosh6ftpPW/oUWtDGnEQR86U1UHFcHpkrH2Yoav
 qsqdzeTyoPS7xLCPxDSuogcNkMEJmctyj/vAJmazWs7EdBXnpdIM7fL9CgI6Mo0yJt9S
 mTieWkt4sPblkKDg4sBkH/Pz3ShgtahvE3GOOdX+stAg3SdoXe33CdibMKAfBbQ8fLQZ
 E22g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UAaJIyMCtfqDJNVGPg+VIxoXHpPloRjdhA2WOZPQuQo=;
 b=GCDPcTzIIGr2nMUYa1Wj2UP2kN6G4IrVvY3vPZLDLFBKqyvan+4G9O+Vzc6NuSuB6i
 AdPDEuNOtgS9O4dazaVz8XuWcvOwgyumP6+0p+GIC7HAkC56mM5gl0UMwgeUPZi0xvS+
 POMEMVT9p6qLpDQMCwer6OZ8OhZ0vA6mVjKSxnyf9lZhZ/1abOIA1d/3KLDbckNFrzt9
 pT5miC8Ra6Wm8XTuJ1eicotJN4qQuSQ8prIB9bBD9HIZuXvs3uEJKLGs8FMl7ZjwpNfs
 TjIhbva/DFqWAyJbSKUuz0yJCrV67ALjZXiy/WSuRC0CAkWKHjhFS924zqTH9kEf/7Um
 aG8A==
X-Gm-Message-State: APjAAAWZD2iI7wsP3IeQHSoiJOYgtR/T1ZaSufJskUyOzfikHr1B4H0D
 KQR5UQHeN2sEVx/CbAcvLbU=
X-Google-Smtp-Source: APXvYqyzGvSY0gHjoEHGMOB4+0FYgIao/sa1DMQ5fP8MYcSTPmpU8qNnV4/4N227yIsPKr6z1eGTOA==
X-Received: by 2002:a0d:df15:: with SMTP id i21mr2024857ywe.73.1580236610860; 
 Tue, 28 Jan 2020 10:36:50 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id t3sm8858935ywi.18.2020.01.28.10.36.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Jan 2020 10:36:50 -0800 (PST)
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch all
 KUnit tests
To: Brendan Higgins <brendanhiggins@google.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
 <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
 <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
Date: Tue, 28 Jan 2020 12:36:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_103652_365016_079BADB0 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Logan Gunthorpe <logang@deltatee.com>, linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Stephen Boyd <sboyd@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Knut Omang <knut.omang@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, rppt@linux.ibm.com,
 linux-um <linux-um@lists.infradead.org>, Luis Chamberlain <mcgrof@kernel.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Alan Maguire <alan.maguire@oracle.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 1/28/20 1:19 AM, Brendan Higgins wrote:
> On Mon, Jan 27, 2020 at 9:40 AM Frank Rowand <frowand.list@gmail.com> wrote:
>>
>> On 1/23/20 4:40 PM, Brendan Higgins wrote:
>>> Sorry for the late reply. I am still catching up from being on vacation.
>>>>> On Mon, Jan 6, 2020 at 2:40 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>>>> It does beg the question if this means kunit is happy to not be a tool
>>>> to test pre basic setup stuff (terminology used in init.c, meaning prior
>>>> to running all init levels). I suspect this is the case.
>>>
>>> Not sure. I still haven't seen any cases where this is necessary, so I
>>> am not super worried about it. Regardless, I don't think this patchset
>>> really changes anything in that regard, we are moving from late_init
>>> to after late_init, so it isn't that big of a change for most use
>>> cases.
>>>
>>> Please share if you can think of some things that need to be tested in
>>> early init.
>>
>> I don't have a specific need for this right now.  I had not thought about
>> how the current kunit implementation forces all kunit tests to run at a
>> specific initcall level before reading this email thread.
>>
>> I can see the value of being able to have some tests run at different
>> initcall levels to verify what functionality is available and working
>> at different points in the boot sequence.
> 
> Let's cross that bridge when we get there. It should be fairly easy to
> add that functionality.

Yes. I just wanted to add the thought to the back of your mind so that
it does not get precluded by future changes to the kunit architecture.

> 
>> But more important than early initcall levels, I do not want the
>> framework to prevent using or testing code and data that are marked
>> as '__init'.  So it is important to retain a way to invoke the tests
>> while __init code and data are available, if there is also a change
>> to generally invoke the tests later.
> 
> Definitely. For now that still works as long as you don't build KUnit
> as a module, but I think Alan's new patches which allow KUnit to be
> run at runtime via debugfs could cause some difficulty there. Again,

Yes, Alan's patches are part of what triggered me thinking about the
issues I raised.


> we could add Kconfigs to control this, but the compiler nevertheless
> complains because it doesn't know what phase KUnit runs in.
> 
> Is there any way to tell the compiler that it is okay for non __init
> code to call __init code? I would prefer not to have a duplicate
> version of all the KUnit libraries with all the symbols marked __init.

I'm not sure.  The build messages have always been useful and valid in
my context, so I never thought to consider that possibility.

> Thoughts?
> .
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
