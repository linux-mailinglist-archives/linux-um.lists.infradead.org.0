Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8E11522B7
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 00:05:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRWtDj1lALdUSzmFg2JXzFNxkaD0krosic2WPdpT2kY=; b=MBCR6y21ZIo+lj
	v9470rufE576+0Rsb8fUSgHM9CaqyNV44rPMYUJFStlGB4HsI42FCqMMZ2Uq5DHmuA4ftswy+18g/
	rSUlFbwDPFfg8n2OKj5KqU+6L19PDl05ua71mgTzUoCdukEkrmwYVJSYv7UDCQmlYy3afqwoq9ayk
	frFeUen1gFHFuK0UJo72Fh0oH7kH90Fle2YkOAGeYjAL6+OljzbP5HKXpCLjnwcV4l5v36fV7j+Ad
	HmzDVDdP7rJiXaGfIuzC/H1GwoeMt0XRT5B+6hnHBNzLSuLvjyYMjiSWGDUysOJZq5lk/biDWHJOp
	IG9UxmSApJt9esaEzuLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7Fn-00082J-59; Tue, 04 Feb 2020 23:05:11 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7Fk-0007d7-2K
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 23:05:09 +0000
Received: by mail-yw1-xc41.google.com with SMTP id l22so538570ywc.8
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 15:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CtQoI/LKAUwNO+ZZKppoJ9ZQ580TzGNHe3s32y3FDcU=;
 b=ROF++/lvs9p/8idAHcjKAdmghF1+VCUBbVHaKGDi9MBAwf0jtZxjDmAhefCMbFFcfF
 JJ5TqbaSBgrBZUtkSpZknIT4ZwngTl5xKyLobK2PwiONvjY5qFiRXsI8TKENTCdGLB0k
 JeDEt+MyCyp/MufMtBDVzGzXvayfxep6thC+HD79wU2BUmfY92Z6fOjnp5tzZWEd1s50
 aYqwJ91vKPAfNFsZDmkoNDDx3kc9ewWD6zfGX+flcui6n0IvyhZmTzbMfY5tu8blD8Sq
 L/O/Ny0FQrWSWtxzIRTluF9XrEGjHgUiG6lEY9EoFPlNjp9+EHWioNdTe/BdCNStxidd
 8AeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CtQoI/LKAUwNO+ZZKppoJ9ZQ580TzGNHe3s32y3FDcU=;
 b=ezot51Ygf9QMVa66Dw/v5n8PZBawaPOpmA15d5mLZf5XswsDHM2umkPOrAILZya6uf
 g45YmGb/KusBhcF4FcBo5zeP2UtR7dThrMPoE0+98QwKqDpkOFTA7wmoKNzRAGe+OLQv
 7FGDXLFmlMvFzyKw4g6NZZKkau4Urk901d1ElG3xXi4V+klTbo5QMP8ZNRCeUAp0iNPN
 zkfyvP8yJrI6DfozXjHIyEN0uoqXFTClimg1BHAwzRSczLHM8Dmk+2/2H9y/nSIuOx3w
 aOlkVccGZo6W8HYj6pifuDBvnjkjdOu+fckmrbHUFEDzk9xcYmjAchipmBWYXjxtIixy
 kcGQ==
X-Gm-Message-State: APjAAAXXVzI/nXm1/ZcnlEQYaHD7fiNcRYl7mjIFCXX7Y6VsDWHZi7QW
 b/cNwawgpGtqTSgVGm8YcO4I0aU5
X-Google-Smtp-Source: APXvYqzzDZuIfag6+O2rgaU5TBXO5um0JsgDsqG/E1/FIi9Cp90kPbNCkYrb0YCImwZKz0hf09LoEg==
X-Received: by 2002:a0d:c444:: with SMTP id g65mr7768022ywd.119.1580857507100; 
 Tue, 04 Feb 2020 15:05:07 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id j68sm10253052ywg.6.2020.02.04.15.05.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Feb 2020 15:05:06 -0800 (PST)
Subject: Re: [PATCH v2 6/7] kunit: Add 'kunit_shutdown' option
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 keescook@chromium.org, skhan@linuxfoundation.org, alan.maguire@oracle.com,
 yzaikin@google.com, davidgow@google.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-7-brendanhiggins@google.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <143dcdac-b19a-8eff-b441-ba79f1873801@gmail.com>
Date: Tue, 4 Feb 2020 17:05:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130230812.142642-7-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_150508_120534_60CE6224 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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

On 1/30/20 5:08 PM, Brendan Higgins wrote:
> From: David Gow <davidgow@google.com>
> 
> Add a new kernel command-line option, 'kunit_shutdown', which allows the
> user to specify that the kernel poweroff, halt, or reboot after
> completing all KUnit tests; this is very handy for running KUnit tests
> on UML or a VM so that the UML/VM process exits cleanly immediately
> after running all tests without needing a special initramfs.

kunit_shutdown needs to be added to Documentation/admin-guide/kernel-parameters.txt

-Frank

> 
> Signed-off-by: David Gow <davidgow@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  lib/kunit/executor.c                | 20 ++++++++++++++++++++
>  tools/testing/kunit/kunit_kernel.py |  2 +-
>  tools/testing/kunit/kunit_parser.py |  2 +-
>  3 files changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
> index 7fd16feff157e..a93821116ccec 100644
> --- a/lib/kunit/executor.c
> +++ b/lib/kunit/executor.c
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  
> +#include <linux/reboot.h>
>  #include <kunit/test.h>
>  
>  /*
> @@ -11,6 +12,23 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
>  
>  #if IS_BUILTIN(CONFIG_KUNIT)
>  
> +static char *kunit_shutdown;
> +core_param(kunit_shutdown, kunit_shutdown, charp, 0644);
> +
> +static void kunit_handle_shutdown(void)
> +{
> +	if (!kunit_shutdown)
> +		return;
> +
> +	if (!strcmp(kunit_shutdown, "poweroff"))
> +		kernel_power_off();
> +	else if (!strcmp(kunit_shutdown, "halt"))
> +		kernel_halt();
> +	else if (!strcmp(kunit_shutdown, "reboot"))
> +		kernel_restart(NULL);
> +
> +}
> +
>  static void kunit_print_tap_header(void)
>  {
>  	struct kunit_suite * const * const *suites, * const *subsuite;
> @@ -42,6 +60,8 @@ int kunit_run_all_tests(void)
>  		}
>  	}
>  
> +	kunit_handle_shutdown();
> +
>  	if (has_test_failed)
>  		return -EFAULT;
>  
> diff --git a/tools/testing/kunit/kunit_kernel.py b/tools/testing/kunit/kunit_kernel.py
> index cc5d844ecca13..43314aa537d30 100644
> --- a/tools/testing/kunit/kunit_kernel.py
> +++ b/tools/testing/kunit/kunit_kernel.py
> @@ -141,7 +141,7 @@ class LinuxSourceTree(object):
>  		return True
>  
>  	def run_kernel(self, args=[], timeout=None, build_dir=''):
> -		args.extend(['mem=256M'])
> +		args.extend(['mem=256M', 'kunit_shutdown=halt'])
>  		process = self._ops.linux_bin(args, timeout, build_dir)
>  		with open(os.path.join(build_dir, 'test.log'), 'w') as f:
>  			for line in process.stdout:
> diff --git a/tools/testing/kunit/kunit_parser.py b/tools/testing/kunit/kunit_parser.py
> index 78b3bdd03b1e4..633811dd9bce8 100644
> --- a/tools/testing/kunit/kunit_parser.py
> +++ b/tools/testing/kunit/kunit_parser.py
> @@ -48,7 +48,7 @@ class TestStatus(Enum):
>  	FAILURE_TO_PARSE_TESTS = auto()
>  
>  kunit_start_re = re.compile(r'^TAP version [0-9]+$')
> -kunit_end_re = re.compile('List of all partitions:')
> +kunit_end_re = re.compile(r'reboot: System halted')
>  
>  def isolate_kunit_output(kernel_output):
>  	started = False
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
