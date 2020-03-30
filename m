Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18561198691
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 23:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSn1Zn2O/68S/v/7FIXKDn/3CjIlXQLJUwQQkQXoWLM=; b=emwB69gWxXD/ov
	XyJ/LgoGZ9euVdCcAeY02NLuVl98Y6dknpq2IzhNs0d95Uz8B+jGB383YnQIYlPH15aEo5mNF73zy
	73ZvB3VZMXuv1Xjp+MRV3AqUIyPtaLCTPKH+H3OJX12PEmd9nb2jTB7UB+yiK0Isz4biS9u4Auo1T
	4RaGmrGYMVYKlXZ0nu6l3iu56O+7Ny1Z1XhNcLDo+0qiLgpjn+nP18EiP5D1zVGBwT0duRfMv4DzE
	1+eBZqczlvLUK463a1+O3l6G7pECK9Nap360FntYvFTdjP9dQ/VwlOTWiBLAY/dDFu4O6tc0Kkp+x
	SELHUYJUdz+W18NXuf8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ20C-0002q1-7V; Mon, 30 Mar 2020 21:31:24 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ209-0002p8-FJ
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 21:31:22 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jJ204-0073Cz-Pp; Mon, 30 Mar 2020 23:31:17 +0200
Message-ID: <b2a730a4bcafb13cb1b29a637f8f8449cf3521d6.camel@sipsolutions.net>
Subject: Re: [RFC v4 23/25] um lkl: add UML network driver for lkl
From: Johannes Berg <johannes@sipsolutions.net>
To: Hajime Tazaki <thehajime@gmail.com>, linux-um@lists.infradead.org
Date: Mon, 30 Mar 2020 23:31:15 +0200
In-Reply-To: <0f087b36ad579eeb8062b12e9e61566d9b5b18ac.1585579244.git.thehajime@gmail.com>
References: <cover.1585579244.git.thehajime@gmail.com>
 <0f087b36ad579eeb8062b12e9e61566d9b5b18ac.1585579244.git.thehajime@gmail.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_143121_508451_AEBE7DD8 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 linux-kernel-library@freelists.org, Akira Moroo <retrage01@gmail.com>,
 linux-arch@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


> +++ b/arch/um/lkl/include/asm/irq.h
> @@ -2,6 +2,9 @@
>  #ifndef _ASM_LKL_IRQ_H
>  #define _ASM_LKL_IRQ_H
>  
> +/* pull UML's definitions */
> +#include "../../../include/asm/irq.h"

This is _really_ ugly.

> +#if defined(__linux) && (defined(__i386) || defined(__x86_64))
> +#include <os.h>
> +#endif
> +void *um_os_signal(int signum, void *handler);

and arguably those random declarations you're sprinkling are worse.

> @@ -181,6 +196,11 @@ void init_IRQ(void)
>  	for (i = 0; i < NR_IRQS; i++)
>  		irq_set_chip_and_handler(i, &dummy_irq_chip, handle_simple_irq);
>  
> +#if defined(__linux) && (defined(__i386) || defined(__x86_64))

What's with all those ifdefs with this condition?

> +++ b/tools/lkl/lib/um/um_glue.c
> @@ -0,0 +1,39 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <unistd.h>
> +#include <errno.h>
> +
> +
> +
> +char lkl_um_devs[4096];
> +
> +/* from sigio.c */
> +void maybe_sigio_broken(int fd, int read)
> +{
> +}
> +
> +/* from process.c */
> +int os_getpid(void)
> +{
> +	return getpid();
> +}

All of this really is quite ugly - are you sure it's needed for just the
vector network driver??

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
