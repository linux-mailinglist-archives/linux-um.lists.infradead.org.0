Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6118B14B0BB
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 09:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DSYaZ0MPHuDmKH5pTWQNBLR463JH6GBTD4ELOyjRNZU=; b=F3gxAAh9Lm7uvsc0DACqcKgwu
	mzKjcy9LAn89TG53/XHSbTskTr+BCwuxR8ateV6YzSgysXG75eNMtQDEOnrfUhaKf/svUy+Mqg7pT
	yZHs9YGiOBSYVK6lb2KQ9/+y7bOPrZAPXA2elJhkCuiX45G/uTC+x/SYiAhydhWu7ps9KEI905IVe
	3Xe0dKVXb98euKpm9n8/Rpcr89yjStw+JwbmL1P/CWR8n/53L2X8APMQa4eQIvUQqKvXrCN4O20L7
	s1YThaY7kRvFw8tZXJ+FAMOudw1uBXRaypG6DV/hOCibGg8/X0K581xvfAf9pTzolQCX5UQffo1Fq
	J/zRoitzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwLzG-0006h9-QS; Tue, 28 Jan 2020 08:12:42 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwLzD-0006gQ-J3
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 08:12:41 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iwLz6-0007ql-Fw; Tue, 28 Jan 2020 08:12:32 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iwLz2-00039A-Mv; Tue, 28 Jan 2020 08:12:31 +0000
Subject: Re: [RFC v1 2/2] arch: um: turn BTF_TYPEINFO support off
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, akpm@linux-foundation.org, changbin.du@intel.com,
 yamada.masahiro@socionext.com, rdunlap@infradead.org, keescook@chromium.org,
 andriy.shevchenko@linux.intel.com
References: <20200127193549.187419-1-brendanhiggins@google.com>
 <20200127193549.187419-3-brendanhiggins@google.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <b49a0bf2-eaf7-b2b3-a7f2-db0f280d42ff@cambridgegreys.com>
Date: Tue, 28 Jan 2020 08:12:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200127193549.187419-3-brendanhiggins@google.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_001239_625030_553AE9ED 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com, heidifahim@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 27/01/2020 19:35, Brendan Higgins wrote:
> Currently CONFIG_DEBUG_INFO_BTF=y doesn't work on UML:
> 
> scripts/link-vmlinux.sh: line 106: 17463 Segmentation fault      LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> objcopy: --change-section-vma .BTF=0x0000000000000000 never used
> objcopy: --change-section-lma .BTF=0x0000000000000000 never used
> objcopy: error: the input file '.btf.vmlinux.bin' is empty
> Failed to generate BTF for vmlinux
> Try to disable CONFIG_DEBUG_INFO_BTF
> make: *** [Makefile:1078: vmlinux] Error 1
> 
> So turn off ARCH_HAS_BTF_TYPEINFO support off for the UM architecture.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>   arch/um/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/um/Kconfig b/arch/um/Kconfig
> index 0917f8443c285..53e13d8b210e0 100644
> --- a/arch/um/Kconfig
> +++ b/arch/um/Kconfig
> @@ -6,6 +6,7 @@ config UML
>   	bool
>   	default y
>   	select ARCH_HAS_KCOV
> +	select ARCH_NO_BTF_TYPEINFO
>   	select ARCH_NO_PREEMPT
>   	select HAVE_ARCH_AUDITSYSCALL
>   	select HAVE_ARCH_SECCOMP_FILTER
> 

Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
