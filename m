Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EC114C67A
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 07:27:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BgfWjczr1JhjzkjGsuIw/jZkMor97CX6viYHL6Sg4TY=; b=XeSg1u5kDobhrT
	By4cf0PYt7dwYjQ4PPENjj4juvbQq7PJW3/s96eOp76csUR3TUnSVvj32KxEMrYHdiu3E32WCCp+T
	wM0fHM42aWZCkN3HqdNi2tzyKonuVpDbfCrqgkLj9oERKsVqMBURRpTiIGrdyOfGzNWEaQM3Ddvz7
	6KYhrcqYwUdiP2rhg7smtWE0oso9tGi5RpmC8SmWbsW53aa9v5yG3Y9udr4jL5AnCxMKImMp66JMV
	GF1SnxFdZOLbKXNsNSygY/yEyn8+wef5PrFhx8Ul+qnIr/rG3MSCaurw7SxjdllelexLSdlkQCmkX
	X4uyfgWL+D9DuXDsaqnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwgok-00039M-22; Wed, 29 Jan 2020 06:27:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwgog-00038L-Ph
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 06:27:11 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B2A22067C;
 Wed, 29 Jan 2020 06:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580279229;
 bh=oXTODPPEtyYViFG/qy2k/m0F+1/ivnHKdVwxHe04wKU=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=sNsNTd92426V//z/W5gIgopUCS5dFpSf6Upp8q1zU/uFDCItd0Kuk0PA5pq3kwdkE
 GcEru2eHhJoohX9UtMCtvC7h/cvaPOTmXTwnPO6RVWIzmGBqaZSV7GchFldApPcRzD
 Zrnd6bZFPXrdvZMGKU8JLp5IVhMfBIPkyO6Df30s=
MIME-Version: 1.0
In-Reply-To: <20200128072002.79250-8-brendanhiggins@google.com>
References: <20200128072002.79250-1-brendanhiggins@google.com>
 <20200128072002.79250-8-brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v1 7/7] Documentation: Add kunit_shutdown to
 kernel-parameters.txt
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, frowand.list@gmail.com, jdike@addtoit.com,
 keescook@chromium.org, richard@nod.at, rppt@linux.ibm.com,
 skhan@linuxfoundation.org, yzaikin@google.com
User-Agent: alot/0.8.1
Date: Tue, 28 Jan 2020 22:27:08 -0800
Message-Id: <20200129062709.5B2A22067C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_222710_856884_715A799A 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, knut.omang@oracle.com,
 linux-doc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2020-01-27 23:20:02)
> Add kunit_shutdown, an option to specify that the kernel shutsdown after
> running KUnit tests, to the kernel-parameters.txt documentation.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>  Documentation/admin-guide/kernel-parameters.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index ade4e6ec23e03..0472b02ce16bb 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -2054,6 +2054,13 @@
>                         0: force disabled
>                         1: force enabled
>  
> +       kunit_shutdown  [KERNEL UNIT TESTING FRAMEWORK] Shutdown kernel after
> +                       running tests.
> +                       Default:        (flag not present) don't shutdown
> +                       poweroff:       poweroff the kernel after running tests.
> +                       halt:           halt the kernel after running tests.
> +                       reboot:         reboot the kernel after running tests.

Maybe drop the full stops on the short descriptions.

Otherwise,

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
