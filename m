Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED39C179C2B
	for <lists+linux-um@lfdr.de>; Thu,  5 Mar 2020 00:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YHJqp4lTc1onF4UGEYgBc/saavTnlu8iHyMbj/hAfs=; b=Ig0bmT8WKKyNbV
	f3eXDtFa4+LvWuXzDaPXayf3C1eWW0x6Vv+bAC8X6iDWrEvpgLBN6Y6INSgwT+1iZ4VJDw5X4G7Hg
	wmzrEs+/MsJC9HtOXciblhJdLMHdHPJqwVjfU66CaNhrzQxvvF5KmFOYnNHYS1B4m0cFwTAkLFVo7
	FIOVNDMHhjD5JoEvvKUxJmmZ1XvD0hsQTJUGizvCUZTFDiRGVZfHkR86wMNPJI1XdzwAJfpk/NAQ9
	jzGXfm9brgt02aAMogQGf/PpMplqgSFS9ZVDPCqr8cqffi8eNSo2QaioVmTsUMvC2hKC5JCTnJd4i
	9loX3uXFd1Q+2MdFpCwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9dAE-0005wQ-0P; Wed, 04 Mar 2020 23:10:54 +0000
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9dAB-0005vr-1w; Wed, 04 Mar 2020 23:10:51 +0000
Subject: Re: [PATCH v3 7/7] Documentation: Add kunit_shutdown to
 kernel-parameters.txt
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 keescook@chromium.org, skhan@linuxfoundation.org, alan.maguire@oracle.com,
 yzaikin@google.com, davidgow@google.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com, frowand.list@gmail.com
References: <20200228012036.15682-1-brendanhiggins@google.com>
 <20200228012036.15682-8-brendanhiggins@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <22704191-ce7e-cac7-f7a0-1db822b20d84@infradead.org>
Date: Wed, 4 Mar 2020 15:10:49 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200228012036.15682-8-brendanhiggins@google.com>
Content-Language: en-US
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
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 2/27/20 5:20 PM, Brendan Higgins wrote:
> Add kunit_shutdown, an option to specify that the kernel shutsdown after
> running KUnit tests, to the kernel-parameters.txt documentation.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>

Hi Brendan,

To be consistent with other parameters in this file:

> ---
>  Documentation/admin-guide/kernel-parameters.txt | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index dbc22d6846275..6ad63e98916f9 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -2099,6 +2099,14 @@
>  			0: force disabled
>  			1: force enabled
>  
> +	kunit_shutdown	[KERNEL UNIT TESTING FRAMEWORK] Shutdown kernel after

that line should have an '=' sign after the param name:
	kunit_shutdown=

> +			running built-in tests. Tests configured as modules will
> +			not be run.
> +			Default:	(flag not present) don't shutdown
> +			poweroff:	poweroff the kernel after running tests
> +			halt:		halt the kernel after running tests
> +			reboot:		reboot the kernel after running tests
> +
>  	kvm.ignore_msrs=[KVM] Ignore guest accesses to unhandled MSRs.
>  			Default is 0 (don't ignore, but inject #GP)
>  
> 

thanks.
-- 
~Randy


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
