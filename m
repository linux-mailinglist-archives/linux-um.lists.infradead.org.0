Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF2D1E37C4
	for <lists+linux-um@lfdr.de>; Wed, 27 May 2020 07:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVworPX7eoUktY/QVVZJ4eirQ/ljbpvXa8zlH5F+Vzg=; b=S1nR6YwGs4tn4t
	vdHu5zNB7AAdQJWMXaQp0FnPZtiZBcXVEBqOwkOM4aNNEwRT5GIcdQyGM/8L6QJbEHP6Xhf1QRVdx
	l7TA21+PIs9wU2mPYqfG+OfWIUSmdUKgIoHake6fXxtmdzyx+pk93QM/h/ygJuBcL82yOZT4KYst4
	t873AeIHDkU2YV6gJEDWHfl5+lZni0YviCpVf5TYSS0YKRfbXZkuGqqxmvA8J9+DH9gT/V9w2cOS5
	mAKzUzWM2sMJ9IKl303FL0lpG+ssHFHSTohvVK3pNh+H9uu8+w5Pahv/eeMRAtg2Amnn5SKucFU3N
	ingGo4USmp4eRfUe4uCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdoKl-0002uN-Fg; Wed, 27 May 2020 05:10:31 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdoKW-0002fn-JK; Wed, 27 May 2020 05:10:17 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 627CA68B02; Wed, 27 May 2020 07:10:12 +0200 (CEST)
Date: Wed, 27 May 2020 07:10:11 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] media: omap3isp: Shuffle cacheflush.h and include mm.h
Message-ID: <20200527051011.GB16317@lst.de>
References: <20200515143646.3857579-7-hch@lst.de>
 <20200527043426.3242439-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527043426.3242439-1-natechancellor@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_221016_785662_5EB9F5A6 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, zippel@linux-m68k.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, hch@lst.de, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-xtensa@linux-xtensa.org, arnd@arndb.de, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, linux-arm-kernel@lists.infradead.org,
 monstr@monstr.eu, linux-kernel@vger.kernel.org, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 09:34:27PM -0700, Nathan Chancellor wrote:
> After mm.h was removed from the asm-generic version of cacheflush.h,
> s390 allyesconfig shows several warnings of the following nature:

Hmm, I'm pretty sure I sent the same fix a few days ago in response to
a build bot report.  But if that didn't get picked up I'm fine with
your version of it as well of course:

Acked-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
