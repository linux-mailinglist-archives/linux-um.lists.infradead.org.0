Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9171522C4
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 00:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hBuFKKVlofJw4SL2mlInSGodAnXPPBL2zL+kF3fFIo=; b=TRss0WsY4P5X4L
	8F+F/oLKrnhwrJmNc9DM0eQPdUmgErKPxnkaiSW95eQlJRbu7y5bSG9Yg+9eW4gNYhErUJVDoqaHn
	A8kqyXn4PQoc578nO1oeB2xCiIvfXSibTQbreCgq2xh23iX6UB+4RrGxDj/pnWdFNvFPPjE85Q3AM
	1Kr5ZwqUuEZRN3pqn/m69tumk/tgQtMyoJMQy+0Hp/QnCEJS2jKGK1lBo9LOzYqqYsCz3wEaZoF7R
	KTepTOjzBfGc35AcZ+A8u1gBS7unWtSLbNZnq9YWuPLazLMu0miAzhm7aE1dEaudSvtNA7LmFg4tu
	xdqzU+hye2dlZzO7/Diw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7GX-0008K2-CD; Tue, 04 Feb 2020 23:05:57 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7GU-0008JB-7Z
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 23:05:55 +0000
Received: by mail-yw1-xc42.google.com with SMTP id t141so510815ywc.11
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 15:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YrYTUO2Q77JjgQVjeJh09goSUpzPILNsJ5mmTOcpwY8=;
 b=FBEFGJ76/Ot3voodjukXPoHQYLJcDFq66AR1siCu3j64KGSgTtyPIB8ZmIugKV8N01
 /DUlLTX/nipCgl0I2M7S5fsWs2sUrb0nS7QBXZvxlZIH82BCFSs5ckQg1plHCprSsIv+
 ujVZUJF7xTeh2B7lJt9STKbXHaBpzIoIdlVnoM4IIGwDrm7PfNseBWQOjz8OkGW9ttAE
 kY4wdYQvubje/sYMhi+feQmGw4itZyjTFf0d/8dcvCJcgbT27CfPz6802hWzSLsM0bai
 HY6vbwxMDeepvK94iroChr+p6HloJCM0bVibhjS0JhhkKDPI0TCa4yQXUXu7j9erOr28
 czBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YrYTUO2Q77JjgQVjeJh09goSUpzPILNsJ5mmTOcpwY8=;
 b=C7bimDJv/ln4bale3QG6A+MgBcR1XlaiV9FpSMk5HNXBuMJw2vYm0uUl/hFZQ/hYKo
 SjRw0TS3gT2PAHp20W+FxzrZFcJd+qBSOS9LWpes1HJ+A1eoR1TBdooXarA2hV4FKKcQ
 5SQAaoFoew0du0wCLDcm0Sfw95MY5RjbxaUK8Ow+Go9uSDhQUjRx7QanRVk5Dk8mzzEf
 pZfP3WMpETQMs60w8qv/ruPoC1vtIS9/ig20TI1InMYLfrdkm6MehzkgQ8UKB2/B8oXQ
 kfZmBWPJs9V1KeWKA17k56s/PVNQB/ikgN2+hgBE9vseWRSjTDRPB65MXuwaLhgEyWkt
 EXaw==
X-Gm-Message-State: APjAAAXq75PnfJ2Dy31QQiJQdWOLQqwZp6+AuWN3jrM3HJ/wpovjQhIX
 RVSqlgU76ZTsylc44qwP1hA=
X-Google-Smtp-Source: APXvYqyKfM69VLy5Ee+aBTiUgRgse09zOU1ALRKZujwY/FZFiCRrjDJGnyjMjQZk/hVbHPxCR9wv9w==
X-Received: by 2002:a0d:cc88:: with SMTP id o130mr8018607ywd.498.1580857552431; 
 Tue, 04 Feb 2020 15:05:52 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id j184sm10522708ywa.39.2020.02.04.15.05.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Feb 2020 15:05:52 -0800 (PST)
Subject: Re: [PATCH v2 6/7] kunit: Add 'kunit_shutdown' option
From: Frank Rowand <frowand.list@gmail.com>
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 keescook@chromium.org, skhan@linuxfoundation.org, alan.maguire@oracle.com,
 yzaikin@google.com, davidgow@google.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-7-brendanhiggins@google.com>
 <143dcdac-b19a-8eff-b441-ba79f1873801@gmail.com>
Message-ID: <8f7a5e34-d386-abcd-9926-1bd4cab8aeef@gmail.com>
Date: Tue, 4 Feb 2020 17:05:51 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <143dcdac-b19a-8eff-b441-ba79f1873801@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_150554_274369_E824EFAA 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 2/4/20 5:05 PM, Frank Rowand wrote:
> On 1/30/20 5:08 PM, Brendan Higgins wrote:
>> From: David Gow <davidgow@google.com>
>>
>> Add a new kernel command-line option, 'kunit_shutdown', which allows the
>> user to specify that the kernel poweroff, halt, or reboot after
>> completing all KUnit tests; this is very handy for running KUnit tests
>> on UML or a VM so that the UML/VM process exits cleanly immediately
>> after running all tests without needing a special initramfs.
> 
> kunit_shutdown needs to be added to Documentation/admin-guide/kernel-parameters.txt

Oops, patch 7/7 does exactly that.

-Frank

> 
> -Frank
> 
>>
>> Signed-off-by: David Gow <davidgow@google.com>
>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
>> ---
>>  lib/kunit/executor.c                | 20 ++++++++++++++++++++
>>  tools/testing/kunit/kunit_kernel.py |  2 +-
>>  tools/testing/kunit/kunit_parser.py |  2 +-
>>  3 files changed, 22 insertions(+), 2 deletions(-)
>>
>> diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
>> index 7fd16feff157e..a93821116ccec 100644
>> --- a/lib/kunit/executor.c
>> +++ b/lib/kunit/executor.c
>> @@ -1,5 +1,6 @@
>>  // SPDX-License-Identifier: GPL-2.0
>>  
>> +#include <linux/reboot.h>
>>  #include <kunit/test.h>
>>  
>>  /*
>> @@ -11,6 +12,23 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
>>  
>>  #if IS_BUILTIN(CONFIG_KUNIT)
>>  
>> +static char *kunit_shutdown;
>> +core_param(kunit_shutdown, kunit_shutdown, charp, 0644);
>> +
>> +static void kunit_handle_shutdown(void)
>> +{
>> +	if (!kunit_shutdown)
>> +		return;
>> +
>> +	if (!strcmp(kunit_shutdown, "poweroff"))
>> +		kernel_power_off();
>> +	else if (!strcmp(kunit_shutdown, "halt"))
>> +		kernel_halt();
>> +	else if (!strcmp(kunit_shutdown, "reboot"))
>> +		kernel_restart(NULL);
>> +
>> +}
>> +
>>  static void kunit_print_tap_header(void)
>>  {
>>  	struct kunit_suite * const * const *suites, * const *subsuite;
>> @@ -42,6 +60,8 @@ int kunit_run_all_tests(void)
>>  		}
>>  	}
>>  
>> +	kunit_handle_shutdown();
>> +
>>  	if (has_test_failed)
>>  		return -EFAULT;
>>  
>> diff --git a/tools/testing/kunit/kunit_kernel.py b/tools/testing/kunit/kunit_kernel.py
>> index cc5d844ecca13..43314aa537d30 100644
>> --- a/tools/testing/kunit/kunit_kernel.py
>> +++ b/tools/testing/kunit/kunit_kernel.py
>> @@ -141,7 +141,7 @@ class LinuxSourceTree(object):
>>  		return True
>>  
>>  	def run_kernel(self, args=[], timeout=None, build_dir=''):
>> -		args.extend(['mem=256M'])
>> +		args.extend(['mem=256M', 'kunit_shutdown=halt'])
>>  		process = self._ops.linux_bin(args, timeout, build_dir)
>>  		with open(os.path.join(build_dir, 'test.log'), 'w') as f:
>>  			for line in process.stdout:
>> diff --git a/tools/testing/kunit/kunit_parser.py b/tools/testing/kunit/kunit_parser.py
>> index 78b3bdd03b1e4..633811dd9bce8 100644
>> --- a/tools/testing/kunit/kunit_parser.py
>> +++ b/tools/testing/kunit/kunit_parser.py
>> @@ -48,7 +48,7 @@ class TestStatus(Enum):
>>  	FAILURE_TO_PARSE_TESTS = auto()
>>  
>>  kunit_start_re = re.compile(r'^TAP version [0-9]+$')
>> -kunit_end_re = re.compile('List of all partitions:')
>> +kunit_end_re = re.compile(r'reboot: System halted')
>>  
>>  def isolate_kunit_output(kernel_output):
>>  	started = False
>>
> 
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
