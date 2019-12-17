Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5C612268D
	for <lists+linux-um@lfdr.de>; Tue, 17 Dec 2019 09:21:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TT1Q9JjTROT09FYQKy3HpcNXQQim+FgFsN94nzFQWVc=; b=EM+Fv4tNtSYO8K
	zV1PwrZDeTWkM5uYROAGPluDCkVSZnQ6NK+CCYNwcU1agDO/TW8kf820SoN7pUwS5/0Lf7E/eq7Lg
	3R09l3nZ2FUGYx2U00CBf6HrntXy2HvjVyE2W07Xy5C9jJ1ozCIroeIQpYFCnRt+xjR0bvPXoe8sw
	0uCxb9LteGCHgi9OKFszWFVSAT8T3r2puj183LuuekV6ryVDGFTIaceR3S0QDAdvAMqXpobboxgfm
	i03jerPLILAcaCdY0CpASW6HpiLdI4pAhr7XJMFUSBpdLwdG+t0IfNyciqPNQwYtWlGkxwo49N875
	pGEBEiqQ8Z2jQBaiIRdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih86b-0002Et-Ny; Tue, 17 Dec 2019 08:21:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih86Y-0002E1-BE
 for linux-um@lists.infradead.org; Tue, 17 Dec 2019 08:21:19 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5D98206EC;
 Tue, 17 Dec 2019 08:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576570878;
 bh=nIYiVC67apMi4Vst3H8kFTSVpFYsff/+7MatcMr+Tow=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=EL8mMcuO1ffPqKAzobis1NhERxOvU+G+V+yGbKVNXuSfT8pj3orl0SpkjOka0LRJz
 SjkZY+NInGTUdJ2tyvNNcczUXOYzoNRl5BNgta8iXZ4Cag9ElC1ceMUGmsWJiGavw6
 hwDz5F8j8cYkw9F1WA1SNn4YY1PhFWfd+QvykR5M=
MIME-Version: 1.0
In-Reply-To: <20191216220555.245089-2-brendanhiggins@google.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20191216220555.245089-2-brendanhiggins@google.com>
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, jdike@addtoit.com, keescook@chromium.org, richard@nod.at,
 rppt@linux.ibm.com, skhan@linuxfoundation.org, yzaikin@google.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1 1/6] vmlinux.lds.h: add linker section for KUnit test
 suites
User-Agent: alot/0.8.1
Date: Tue, 17 Dec 2019 00:21:17 -0800
Message-Id: <20191217082117.E5D98206EC@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_002118_479236_314A4063 
X-CRM114-Status: UNSURE (   5.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-12-16 14:05:50)
> Add a linker section where KUnit can put references to its test suites.
> This patch is the first step in transitioning to dispatching all KUnit
> tests from a centralized executor rather than having each as its own
> separate late_initcall.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Co-developed-by: Iurii Zaikin <yzaikin@google.com>
> Signed-off-by: Iurii Zaikin <yzaikin@google.com>

I thought your SoB should come last given you're sending the patch.

Otherwise,

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
