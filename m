Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0456C6383E
	for <lists+linux-um@lfdr.de>; Tue,  9 Jul 2019 16:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hu8gIfjbRHm6nBkOw2ALCsTmBD0LwjwV/o/jideVs2I=; b=foDT8yDKmpCEfcUccQce8Gs2C
	kh77dy1PMCXrv/37E8i1KGfGejvHHI1yY5KE4X4Tjmln1ruh4vRsbvbbj8mLYsfxnIcqw2E2IaY55
	BJFkOy1h7kJczyFbxEMkZhxz3xfr0ku6lNq0yXuc5YJlSnmuYF6+Qrb++SGtqpe/rNsMvSH4aicai
	DJWGMv29hjGdP2QEu0Rkmin6eIrAPolPuTxJa/BQ/wKemHNJeSySnpI4gn4ZoE2JTVL1JUKT0iL5/
	qpZqBAtcfOoS6SB9pBs9wLmIeViPw8jzhfUK6CuUlIUA65FBB47a/SrWc6BCoVkFnADMnT8lhdeBn
	ezVNfUlOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkrV3-0000BB-4d; Tue, 09 Jul 2019 14:53:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkrUz-0000AW-9u
 for linux-um@lists.infradead.org; Tue, 09 Jul 2019 14:53:43 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6644F214AF;
 Tue,  9 Jul 2019 14:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562684020;
 bh=Mv7YTLIc+jI3uCRwSd1DAeik4HQLm9P9oMcVwz2d2dk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=XgulwaGpIAZUTMHGK6H52VD3EGXSfaZA2VLPhCuPHVQN4Ql3qcJzAtWEmAruTZN6F
 CiqOnOuc9sTH4GW5+VhzHiNXC2Jpq24ah0VHZEIGAOqDliCu4Fwf44hiQwbpQ/Q/If
 Xl4Y5OinAOMyTTsR/xSt2diAONVrq1cwoJa/TeF8=
Subject: Re: [PATCH v7 16/18] MAINTAINERS: add entry for KUnit the unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, sboyd@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
References: <20190709063023.251446-1-brendanhiggins@google.com>
 <20190709063023.251446-17-brendanhiggins@google.com>
From: shuah <shuah@kernel.org>
Message-ID: <7cc417dd-036f-7dc1-6814-b1fdac810f03@kernel.org>
Date: Tue, 9 Jul 2019 08:53:19 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709063023.251446-17-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_075342_333789_4700A119 
X-CRM114-Status: GOOD (  11.99  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 linux-kselftest@vger.kernel.org, shuah <shuah@kernel.org>,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 7/9/19 12:30 AM, Brendan Higgins wrote:
> Add myself as maintainer of KUnit, the Linux kernel's unit testing
> framework.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>   MAINTAINERS | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 677ef41cb012c..48d04d180a988 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8599,6 +8599,17 @@ S:	Maintained
>   F:	tools/testing/selftests/
>   F:	Documentation/dev-tools/kselftest*
>   
> +KERNEL UNIT TESTING FRAMEWORK (KUnit)
> +M:	Brendan Higgins <brendanhiggins@google.com>
> +L:	linux-kselftest@vger.kernel.org
> +L:	kunit-dev@googlegroups.com
> +W:	https://google.github.io/kunit-docs/third_party/kernel/docs/
> +S:	Maintained
> +F:	Documentation/dev-tools/kunit/
> +F:	include/kunit/
> +F:	kunit/
> +F:	tools/testing/kunit/
> +
>   KERNEL USERMODE HELPER
>   M:	Luis Chamberlain <mcgrof@kernel.org>
>   L:	linux-kernel@vger.kernel.org
> 

Thanks Brendan.

I am good with this. I can take KUnit patches through kselftest
with your Ack.

thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
