Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8054D186CF
	for <lists+linux-um@lfdr.de>; Thu,  9 May 2019 10:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxDxpAa9lCuGUN2v0a3bwcuIzdFPRSdcniDXOOmr0Bw=; b=hOjio0FUVOtRpM
	ZxCMMRzZDSxVwosDSopvw/ZNcjVrdewVUV95l42DnWW7bqcmcylUOwSwcHw4vYjQKXTU4yvMAeNwQ
	tV/nX3gewVmYFQEX0yOPzDnHjxY/25UIStyWQfZqnNhJhW+n0ORyI5Gbo35rkwzndSe9MD0EZh9++
	3vQRZ3AlisVudpoeEJd1X/9y0bWtMBj86ExqxNGODHnGqtacDjrhoDnx6EvGLGjoG4kHjNpOd04qu
	mVzIMAGLWzABYOC3ALB5PKG5udcMKffIFk/zPYVWwiyllSsV+nXZ+KY8uGBLZqNPCRcpg2+rkhcZb
	4MMW8x5J7bsCPVOnd3Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOeSZ-0006Sk-Bu; Thu, 09 May 2019 08:31:23 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOeSU-0006Rp-95
 for linux-um@lists.infradead.org; Thu, 09 May 2019 08:31:21 +0000
Received: by mail-wm1-x333.google.com with SMTP id j187so2005806wmj.1
 for <linux-um@lists.infradead.org>; Thu, 09 May 2019 01:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FzWOYssN0isWIIe9zGhm6nETA9v2GV7Jir7OO9+o9Vw=;
 b=E2kz1FMl83tN2ABjW1mJurOeaAAcQShe1pSdN0kxvumUhNTI+TqC+JXIZb1PePIKJJ
 ysk3UkyIsJU1IyF0QX1bzY9ls8u7jx8KohqfGd2WpkooA64l95qf7m/i1PXKKqW34KQF
 NNcpCM/IAQlJ5s4gyXGZ9cMqAAd7CUf1vozzxU8QOI5PMk0lgpQQKZzWT1hz9HGssOvu
 uKSWLGBKVYuEifUSTdaTScT7ZUK/rBVNeKSLxaCEgLJEzr+DuN5HYR3Wm+13avez/Z+N
 IK5ls6J3TdDfsYGUe0WoryVlVbiG8KYRYsN6OokIHADtlhOTcp6Zf1M8DSc7jpHqbyfy
 gN6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=FzWOYssN0isWIIe9zGhm6nETA9v2GV7Jir7OO9+o9Vw=;
 b=ezb3+3JEfnmkirBMF8NCMZT5GMXaPBGfXGDGp16Ui2AOdr8kH3Od+qJxVh8CGCD2pv
 iKoxOI/yw6ZYZ4c0cP4+SpBB1yRdYR8M6TXTFC7XX5mEOZL4zeW0k66cEXgordOpIyQ0
 zkXV0KvYNecVC1H8zjOayaz6Si4XCIwWnOOi2S0DK98/JEx5WC6aCnWXDGkz3AQH1WKU
 Z/MiIv7U+Mp0/mCiFLf1efDHju4GinLJ/loMTB1cPdo30Ddffsg9nXEDaP74vCGqCcCX
 Lqomof+oPbWue273fsXqyj9DC9mtojGwBUkFKYCk7kdC65OVGCV13ISKVSEaUqAqkFzc
 1UVQ==
X-Gm-Message-State: APjAAAUtsRsaqKzt8TKxuqbKOJsK+Vn2s7o3yp/W6ektWW5/B8iEbG6C
 97OJIPOHvJgtyfane3zmQUU=
X-Google-Smtp-Source: APXvYqwbP80+SsW7YO75fRTZDEwGG81tyowfGAEzJg/Pgbxk1mNQT7/K4RNdohJEwe6Atj6WEY8WAQ==
X-Received: by 2002:a7b:c309:: with SMTP id k9mr1995617wmj.45.1557390675018;
 Thu, 09 May 2019 01:31:15 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id x17sm1474400wru.27.2019.05.09.01.31.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 01:31:14 -0700 (PDT)
Date: Thu, 9 May 2019 10:31:11 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Dave Hansen <dave.hansen@linux.intel.com>
Subject: Re: [PATCH] [v2] x86/mpx: fix recursive munmap() corruption
Message-ID: <20190509083111.GA75918@gmail.com>
References: <20190419194747.5E1AD6DC@viggo.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190419194747.5E1AD6DC@viggo.jf.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_013118_854475_A5553D0D 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch@vger.kernel.org, hjl.tools@gmail.com, mhocko@suse.com,
 rguenther@suse.de, richard@nod.at, gxt@pku.edu.cn, benh@kernel.crashing.org,
 jdike@addtoit.com, x86@kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, luto@amacapital.net,
 linux-mm@kvack.org, paulus@samba.org, mpe@ellerman.id.au,
 yang.shi@linux.alibaba.com, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, vbabka@suse.cz, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


* Dave Hansen <dave.hansen@linux.intel.com> wrote:

> Reported-by: Richard Biener <rguenther@suse.de>
> Reported-by: H.J. Lu <hjl.tools@gmail.com>
> Fixes: dd2283f2605e ("mm: mmap: zap pages with read mmap_sem in munmap")
> Cc: Yang Shi <yang.shi@linux.alibaba.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Andy Lutomirski <luto@amacapital.net>
> Cc: x86@kernel.org
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-mm@kvack.org
> Cc: stable@vger.kernel.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-um@lists.infradead.org
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: linux-arch@vger.kernel.org
> Cc: Guan Xuetao <gxt@pku.edu.cn>
> Cc: Jeff Dike <jdike@addtoit.com>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com>

I've also added your:

  Signed-off-by: Dave Hansen <dave.hansen@linux.intel.com>

Because I suppose you intended to sign off on it?

Thanks,

	Ingo

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
