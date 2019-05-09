Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF1D18399
	for <lists+linux-um@lfdr.de>; Thu,  9 May 2019 04:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9HU37dC8UrRV1IyIQAKBlzuoxW/JQJdi0/+SYLzcDr0=; b=Bh1l+YAKHNUBKOt5C09hADSUL7
	UTlBDH4RsCKCD6joo5jaBijK8erI0ga9EnE//9kbp0WEiwZQwzI6g9E6+NpQll63cIrxNqjcKuEQN
	nAmZhZSFxZX93wSYcE7CDDsYkkpojzHv2O/UbpOgGqiSyy8mpPFqFpEOV17rdK8V7gygM/6esLAIL
	GCcjLCuhvqSnIKrH3FaHLEGqAGDFV9CxJjNtjwjVgtPeVN0L7kpfYZWG7R78+e76wRdWE8oW+Bwmj
	MJK4y+558fGhbZ2ey7WzWgJT1stSmfQE3myUbhM9k1Jh+4XwJ/Sm/1cLMUvA3JmLhh4GcNH8UfK1X
	PtBiiRAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOYZT-000150-Od; Thu, 09 May 2019 02:14:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOYZQ-00014a-IS
 for linux-um@lists.infradead.org; Thu, 09 May 2019 02:14:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id j26so357275pgl.5
 for <linux-um@lists.infradead.org>; Wed, 08 May 2019 19:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=m2h4qfOyf/vTBN3ksTZ+p+B5Uh42DjnmBaKteMIQJDg=;
 b=d6Fl21d6H9hguqCIk66KfQTbpzIqdRCUj3hyqEHsDnZWMFK8wQPsR7wgx3oa+G2kjG
 1seT91f0+lIwQZd84COg8BT3K9ELnhDM30SHEOrlnvKeE7/5VX5u1W/8fgPsbHGyE+tg
 N1mbck/bnevbonwY9JDeI4wL+fVc6yDfWWKPjYGMVo+t1urDbbw17h12P2lsuAick9RL
 +tTl21ycCYmhS8aq1IQN4QtpicNviaYVVDhPWJWCkKNQi57gYY8h3oQc9YLQvbqDRawh
 S+/psk+LuYFrjp041aE4v+E+1oI4xE/yaxSeWSVYuo1fFT8XcryTFla0UCjHS8CZoXbN
 /oeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=m2h4qfOyf/vTBN3ksTZ+p+B5Uh42DjnmBaKteMIQJDg=;
 b=HjVjQGejixxFfFTAo8ZHfKKlqTHE4KG9Sy4ut69hdWLb0VDE/4l8BTPrtZOLKwRFi4
 Bk1l2zX793bbEaQiso70jLzn2mxlIYQ+xwhkX9jQQoOCAVxPB0vXgI4DWBcA7BrjAXip
 MnqclwDXPj5jZc3gbOoDv/1pwNjl9L1lQcyxfWmfqX8h25jDq7Dq1O293e55eHXVmMX7
 Imq2ufM++VMctoxlV6wqLSyJNUCwHSoRHyHabI71KgWjbfXO7faLleh5xmnI6VoKyW3Z
 0WfOsoLL//5R7tWUXgdrSpF3Wq+nCPZ7WyEmeviaXzAcgTSG1PvBoGmEiEog/+Uvp/ko
 S4Mg==
X-Gm-Message-State: APjAAAWmrsNH9Ujem8bkQ80L2oiTd9AtNCBX4NW1lasI/dU7ZwEOzQtJ
 oMDIl3sQ2EUZndpQP5DQ8kc=
X-Google-Smtp-Source: APXvYqzL/TN1nN9Ct8HQ4wtcFHZZcQhp0SvsSuj3cK4ro/YW06pExZSQlXbu2Pcfe+Xz4ExfmkwqHw==
X-Received: by 2002:a63:b64:: with SMTP id a36mr2188141pgl.58.1557368042377;
 Wed, 08 May 2019 19:14:02 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id a17sm668823pff.82.2019.05.08.19.13.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 19:14:01 -0700 (PDT)
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
 <20190507080119.GB28121@kroah.com>
 <a09a7e0e-9894-8c1a-34eb-fc482b1759d0@gmail.com>
 <20190509015856.GB7031@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
Date: Wed, 8 May 2019 19:13:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509015856.GB7031@mit.edu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_191404_636143_0D6CE1FF 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

On 5/8/19 6:58 PM, Theodore Ts'o wrote:
> On Wed, May 08, 2019 at 05:43:35PM -0700, Frank Rowand wrote:
>> kselftest provides a mechanism for in-kernel tests via modules.  For
>> example, see:
>>
>>   tools/testing/selftests/vm/run_vmtests invokes:
>>     tools/testing/selftests/vm/test_vmalloc.sh
>>       loads module:
>>         test_vmalloc
>>         (which is built from lib/test_vmalloc.c if CONFIG_TEST_VMALLOC)
> 
> The majority of the kselftests are implemented as userspace programs.

Non-argument.


> You *can* run in-kernel test using modules; but there is no framework
> for the in-kernel code found in the test modules, which means each of
> the in-kernel code has to create their own in-kernel test
> infrastructure.

Why create an entire new subsystem (KUnit) when you can add a header
file (and .c code as appropriate) that outputs the proper TAP formatted
results from kselftest kernel test modules?

There are already a multitude of in kernel test modules used by
kselftest.  It would be good if they all used a common TAP compliant
mechanism to report results.

 
> That's much like saying you can use vice grips to turn a nut or
> bolt-head.  You *can*, but it might be that using a monkey wrench
> would be a much better tool that is much easier.
> 
> What would you say to a wood worker objecting that a toolbox should
> contain a monkey wrench because he already knows how to use vise
> grips, and his tiny brain shouldn't be forced to learn how to use a
> wrench when he knows how to use a vise grip, which is a perfectly good
> tool?
> 
> If you want to use vice grips as a hammer, screwdriver, monkey wrench,
> etc.  there's nothing stopping you from doing that.  But it's not fair
> to object to other people who might want to use better tools.
> 
> The reality is that we have a lot of testing tools.  It's not just
> kselftests.  There is xfstests for file system code, blktests for
> block layer tests, etc.   We use the right tool for the right job.

More specious arguments.

-Frank

> 
> 						- Ted
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
