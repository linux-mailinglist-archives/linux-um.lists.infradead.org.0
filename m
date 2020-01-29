Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40ADD14C694
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 07:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnpDDoIoBXzYaBW4mdVlgYK5QX3WgYSBqambTzQWE7U=; b=P39FaNuxpZp2Y4
	ODKZxm+scBiKPaXzQWi73P0MK/jSNW0vmbHbsn5Xc2bSrnN5fd4xJbuH1iB/F6D7aVdb5AVzp2N0/
	4I7HETHA4dNQb/9Wg20k3N+uDmh87kLVlFQKJf69qPtQK+mw94XI8gO8U/80bN0oDjq3t4kSHLBsO
	x+XfgHv3gv+c9frWxLrfx3ZC6YyDd6rYHgg0LkSY5/+y5q2yGLJHOOXjQWV+uzhE0TG7QAP9NSghb
	znjiGrVaO9zTIt6oK2HyFi/gC6sEreSTZxg8yTKN6AmjDzzRr77QwfyxjUuRfQiCGR20bEYo8QBQI
	4hpCu11WjOmZM4VX9uEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwgzV-0006cQ-Td; Wed, 29 Jan 2020 06:38:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwgzS-0006bX-IV
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 06:38:19 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E1BA2064C;
 Wed, 29 Jan 2020 06:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580279897;
 bh=igzXSD+i/BUOTNjEhBzvGFgosW6UsPn3MYnWYPPr584=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=xiWwiGuk8lYNmW+eBP/+gr9yInn1cPjsco52iuZ9S6JXKnAomKSJfupwmKOw5pxzz
 G25KAASmOaSBSHmvgg3bfNN0uJl1iS37fZYcmRuxDWSv9xcjD0yZa4glNu7iBFBdIq
 ocgTvBUvE8BLu4TOUrnFbXui9GIX6ftD2fnOLpJs=
MIME-Version: 1.0
In-Reply-To: <20200128072002.79250-4-brendanhiggins@google.com>
References: <20200128072002.79250-1-brendanhiggins@google.com>
 <20200128072002.79250-4-brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v1 3/7] kunit: test: create a single centralized executor
 for all tests
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, frowand.list@gmail.com, jdike@addtoit.com,
 keescook@chromium.org, richard@nod.at, rppt@linux.ibm.com,
 skhan@linuxfoundation.org, yzaikin@google.com
User-Agent: alot/0.8.1
Date: Tue, 28 Jan 2020 22:38:16 -0800
Message-Id: <20200129063817.3E1BA2064C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_223818_635408_748FDA88 
X-CRM114-Status: UNSURE (   4.78  )
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

Quoting Brendan Higgins (2020-01-27 23:19:58)
> From: Alan Maguire <alan.maguire@oracle.com>
> 
> Add a centralized executor to dispatch tests rather than relying on
> late_initcall to schedule each test suite separately.  Centralized
> execution is for built-in tests only; modules will execute tests
> when loaded.
> 
> Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> Co-developed-by: Iurii Zaikin <yzaikin@google.com>
> Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> Co-developed-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
