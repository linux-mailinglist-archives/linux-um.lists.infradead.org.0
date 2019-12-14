Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A8211F18C
	for <lists+linux-um@lfdr.de>; Sat, 14 Dec 2019 12:28:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3izD7rTmadtZw3Y79bvb/zQe0KPuk4mIJRD+b5Ms58=; b=aKqA07b9l+F68s
	zZIRVhTw5nAXwYGtvsAe4/hmm0S48Cssi1zLLgabLiUciX4aEiMkqwdhOaSMuyB9zp/vZJEViUmL+
	/ndrXxgkmQXVSh/ibTQP7nSqaT1LQNmGMOTRRQqPYHer/SdqCSuZH9jcEEUTVppA1xuMlpnStwcqc
	XxKG4EkBc4/lN8l8kWRo/LdxcMGBeVD/vvgzSObBYKWURStdFP73gSdwTwL+04Mn+5dwI1PxC8W+C
	YZV/vw1M6GI6TsHGGYMOAZSzFaCuqmDLq5A6gffcpFIfK73XwCM+bZCANaTF0+3SjaZMobRharqoR
	HMjheB5ViWIFaZC0Yimg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig5av-0003lc-Sq; Sat, 14 Dec 2019 11:28:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig5at-0003l3-3j
 for linux-um@lists.infradead.org; Sat, 14 Dec 2019 11:28:20 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E412720706;
 Sat, 14 Dec 2019 11:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576322898;
 bh=81hWOd6Qqqxwb56zYhk0nrhWVt4JaFtoYSXNMBLaUEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R3p2LPHCw+yBV8HQTMhza/sHPmmQ/F1fcfYqntv3wJzGQxeUHwKhYvje6R8nHzqQM
 pGITV30s/Sdl/k0JF+1iJf7DBq6ZQDOhlyf6/wFj68ieeqQyWcJtse05Jh4V2GRCpC
 fKka8eIHGWX8ZQVlWRGjjJ+H8Kt9GGTQpReC7c1s=
Date: Sat, 14 Dec 2019 12:28:15 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v1 6/7] staging: axis-fifo: add unspecified HAS_IOMEM
 dependency
Message-ID: <20191214112815.GA3335535@kroah.com>
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-7-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211192742.95699-7-brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_032819_173268_793D04DA 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Moses Christopher <moseschristopherb@gmail.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, richard@nod.at,
 jdike@addtoit.com, linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:27:41AM -0800, Brendan Higgins wrote:
> Currently CONFIG_XIL_AXIS_FIFO=y implicitly depends on
> CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> the following build error:
> 
> ld: drivers/staging/axis-fifo/axis-fifo.o: in function `axis_fifo_probe':
> drivers/staging/axis-fifo/axis-fifo.c:809: undefined reference to `devm_ioremap_resource'
> 
> Fix the build error by adding the unspecified dependency.
> 
> Reported-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>

Saying you reported a problem and then fixed it kind of does a bit of
disservice to the "reported-by:" tag which we normally use only to
credit the people that do not actually fix the problem.

So in the future, no need for this to be there for patches that you
write yourself.

thanks,

greg k-h

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
