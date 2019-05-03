Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CA813088
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 16:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PnRo6XI9shz2qK0FUoXaGlWKf1cGQ4mgCHN12SSWPTY=; b=EFkCXJ1Vfjfz0rGKz/psofOxu
	afAxmRKRWlL5GNTWN9ke9WJ+QarqZmlBmFzBfqPTraNFQ5KPkpgugjOwy+Ku75+KjVq3P2/ViYxZ8
	RpZb8i7x8NG67JCTFklLaUHbEqWH7HaiUJanM1erLMKWcIhX9mZpWRbdZwn8OQaaPQdUDrwO87rly
	iGcp2fOC+Pxn+y3+1/zWQpTAbfz2+f+gSmaCq5SRRPOCZjY6Iuko3wwh8i5pO9JDzZg4ehFVdgF/s
	2CW34Nbce9ScNcV68jAC246zjML2cxB+2mW5iPjC8RCxEvtlhN+Tju64fcNhb2ajPH212r1hUtRb+
	8i27XVFMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZKV-0006Qz-AL; Fri, 03 May 2019 14:38:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZKS-0006QU-G8
 for linux-um@lists.infradead.org; Fri, 03 May 2019 14:38:25 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B53A2075E;
 Fri,  3 May 2019 14:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556894304;
 bh=h8oxhzJgMjKsgFLL1fTeERSR9DIUHSDvIGx4NtqrSk8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pk4OHvvgJJmv9SPnB6LKIN4E7kYPSd9V9fKtqN0iU5EoavNPnLPHQKTqci0zx2sOe
 OUW21wB7Vx2wMWr8UJHS7PkPhgYKYCStUAReyHvN/DZti58bKEgvn8G7m+LgdKLl+q
 2Iy1KJC7agYFgVsnqcKMjl9uBxuQgNZuMkNlyvD4=
Subject: Re: [PATCH v2 15/17] MAINTAINERS: add entry for KUnit the unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-16-brendanhiggins@google.com>
From: shuah <shuah@kernel.org>
Message-ID: <68f88e1c-d40f-9dad-7296-ab2b2303c575@kernel.org>
Date: Fri, 3 May 2019 08:38:21 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501230126.229218-16-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_073824_558604_604F51E9 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 linux-kselftest@vger.kernel.org, shuah <shuah@kernel.org>,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr,
 Shuah Khan <skhan@linuxfoundation.org>, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/1/19 5:01 PM, Brendan Higgins wrote:
> Add myself as maintainer of KUnit, the Linux kernel's unit testing
> framework.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>   MAINTAINERS | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5c38f21aee787..c78ae95c56b80 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8448,6 +8448,16 @@ S:	Maintained
>   F:	tools/testing/selftests/
>   F:	Documentation/dev-tools/kselftest*
>   
> +KERNEL UNIT TESTING FRAMEWORK (KUnit)
> +M:	Brendan Higgins <brendanhiggins@google.com>
> +L:	kunit-dev@googlegroups.com
> +W:	https://google.github.io/kunit-docs/third_party/kernel/docs/
> +S:	Maintained
> +F:	Documentation/kunit/
> +F:	include/kunit/
> +F:	kunit/
> +F:	tools/testing/kunit/
> +

Please add kselftest mailing list to this entry, based on our
conversation on taking these patches through kselftest tree.

thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
