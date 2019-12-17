Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C7112264E
	for <lists+linux-um@lfdr.de>; Tue, 17 Dec 2019 09:06:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7io4Z8qExh5EIPjwKiDI176uWUhU2GhKm1zK7nzq1E=; b=gaqyzDj5fXTg3R
	askBedk88N2KnFCZy0Oq8nZyELgnEyCV+0kG1vRuOMqL1pVAyLRr130eGdYJGYY0LklW1/QdmtleU
	XmJs/0bwKzzeIl8VWcDeAumOwP9bsQGq8CzvRro4bipZQEsflAGeO/D74lpVtf5G+lNnvSLsLJtWx
	kFMkdO5NKBkCbQMp+96g7aD55vfhYYlARFVXIAOM633q16C6mWy2w6WX+Hi8vr4PF1wudQojBYO8M
	Z7XYHLjrywthF+ynEt5AZXdSkbf/fKfct5YSyTGuA7OuDsYgklGiMZyaweX05HJNKor0sVN7B0ieJ
	U7voG4KFBCBQo1iwTwKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7sd-0005pG-Pu; Tue, 17 Dec 2019 08:06:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7sc-0005ok-4y
 for linux-um@lists.infradead.org; Tue, 17 Dec 2019 08:06:55 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B672B2082E;
 Tue, 17 Dec 2019 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576570013;
 bh=2HEttcf2FK3isDhkwY7QsOLIh5N7UrvLjCETf/Z/wY8=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=R3if4cpVHuRrFNYaLbiz7sGH/bwdNjle6N9etawjq8zT/vIHNtiMnGnWRmP/nqpmZ
 aRNHn3kW5SpogEpAdtXeB4dmFbMkmmERy1vwIR9Mi8+rkAX87BU7LOSYhnngmTsAtP
 KFsM1UkQlHp7uPa4XyWa9aecC4Lx/tF89egvPAwE=
MIME-Version: 1.0
In-Reply-To: <20191216220555.245089-7-brendanhiggins@google.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20191216220555.245089-7-brendanhiggins@google.com>
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, jdike@addtoit.com, keescook@chromium.org, richard@nod.at,
 rppt@linux.ibm.com, skhan@linuxfoundation.org, yzaikin@google.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1 6/6] kunit: Add 'kunit_shutdown' option
User-Agent: alot/0.8.1
Date: Tue, 17 Dec 2019 00:06:53 -0800
Message-Id: <20191217080653.B672B2082E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_000654_209595_C471042C 
X-CRM114-Status: UNSURE (   8.34  )
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

Quoting Brendan Higgins (2019-12-16 14:05:55)
> From: David Gow <davidgow@google.com>
> 
> Add a new kernel command-line option, 'kunit_shutdown', which allows the
> user to specify that the kernel poweroff, halt, or reboot after
> completing all KUnit tests; this is very handy for running KUnit tests
> on UML or a VM so that the UML/VM process exits cleanly immediately
> after running all tests without needing a special initramfs.
> 
> Signed-off-by: David Gow <davidgow@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>  lib/kunit/executor.c                | 18 ++++++++++++++++++
>  tools/testing/kunit/kunit_kernel.py |  2 +-
>  tools/testing/kunit/kunit_parser.py |  2 +-
>  3 files changed, 20 insertions(+), 2 deletions(-)

Can you document it in Documentation/admin-guide/kernel-parameters.txt ?


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
