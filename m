Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A580F1473A5
	for <lists+linux-um@lfdr.de>; Thu, 23 Jan 2020 23:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=upkyJBXvEBkOxzUNG0xfH8+mOs2ASXr8K+Fm68l0US0=; b=DKd25reW95vxMq
	PAhb2Zs4FMU+pFxH9BwuxpZ1+FUs9pLzbYubtjUEIbY5leSCS7NNYP6N5a+/olSXiwf+H73rOgKX2
	mN/ANUlJkVBPII3RckM/gCXqQuxT5QHO2ToRBIDNyjxTQmadA5SMBqwsE2n+O+Kg7P5LZkVbtxvrr
	uySbJkuM5XYV34dMJTeI/0/Q32oxKfbdvUaVvIwdhmhReYsLoYDTP32p2xHb3WK9pBXfzK2uSEGed
	e9ObVVRaLRODPZxK384it0XvpNj2G9aqehl4HzTjwceaOreBrki2h2lSHO75XBkt18rtrJn/GIbxx
	HYyctmKmSRBSEhgtROuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iukm6-0005O0-2e; Thu, 23 Jan 2020 22:16:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iukm3-0005Nf-Sv
 for linux-um@lists.infradead.org; Thu, 23 Jan 2020 22:16:29 +0000
Received: by mail-pl1-x644.google.com with SMTP id q13so1241623pls.1
 for <linux-um@lists.infradead.org>; Thu, 23 Jan 2020 14:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=POE26sNda0qtVdGqaXyUt84eyMAEBk9xA850hvv0kH4=;
 b=owiLuPsQcxHYXKCoP2YMvnzUUPRJslexRJOb18oXdkPOh4AC/fUyal/8hlDeRp0mdv
 95kuNy3Kj511gamXHKpivwFl1DWCF0A0Y4Gg8kcYVQlTq+a1hI+Oq2F7npRIwS/sRbLy
 bQYuRm0gv+0PeBKEW6cZ337kB2rH+rFCuIyCs5tDxu5vilTm2/tjN4N8+GWxnzQjyXBF
 a8OwHYZWuHAxe0etWYupTfs/aNXsWV/aIkLDu1qVfQFPWPIOni32bHbPFDm0fPpaDhqL
 Vl7ulGV5qPCRx2w5O/MhRC8mo1C9nAOIV9q9rvvlvmxFRh8+uxQr97uBodTZuSf5YqYq
 4gYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=POE26sNda0qtVdGqaXyUt84eyMAEBk9xA850hvv0kH4=;
 b=lkotgZQ5XI44N0oySJt3fdtOvfzHRx1HPMTdp0h0tS+B6TG3ugxQMgsnR+C388LCeX
 bWC0903grvxcoM7VzqE2d0lLQjJtB1ZSpF29Ju5sD7A3b+BmMPamWjBOD05yorcs5HSX
 WKORMyCS8AzBoCr3X6ZK5T6fb9TuBzF+/5pdHJu0GutTe6G4J8RflKZtJzLR2h+oCuCH
 LibouodgFHpgyp1Jtt0pjfQGQxsml0OX7Ypd/UBwriY2a74DkjwY84kQ2EzLYbWH3+mG
 OY9lYIUXdiMfKRFzqS2jAlSaBOWtOJ6nHl59iTIDiZJv1FSfN1rBy9Rqpuq35OjCWdZu
 ZV0g==
X-Gm-Message-State: APjAAAVwRJBaYpnAhvGG3b98M+LOMQKFnFHRKnx1fmQnIrHxLxibDwcM
 onjJEhvNLIYFjX4904cG8Ci1SNkKKK/Sa7Q7ESUH+w==
X-Google-Smtp-Source: APXvYqxxENHLtb92CkinCc6e7hMd/rmU5Q1evHN28+Wrp9/KsMdz3zfVLEZj0nvViglYxV3hcct7P8IRe35WoCSUI4U=
X-Received: by 2002:a17:902:fe8d:: with SMTP id
 x13mr320727plm.232.1579817786931; 
 Thu, 23 Jan 2020 14:16:26 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-7-brendanhiggins@google.com>
 <20191214112815.GA3335535@kroah.com>
In-Reply-To: <20191214112815.GA3335535@kroah.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 23 Jan 2020 14:16:15 -0800
Message-ID: <CAFd5g44Eg7DjBYWfKZ-s860X+GW65k-RtwjfEbeGXkKQ99h8WA@mail.gmail.com>
Subject: Re: [PATCH v1 6/7] staging: axis-fifo: add unspecified HAS_IOMEM
 dependency
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_141627_935723_819BEF91 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, Dec 14, 2019 at 3:28 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Dec 11, 2019 at 11:27:41AM -0800, Brendan Higgins wrote:
> > Currently CONFIG_XIL_AXIS_FIFO=y implicitly depends on
> > CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> > the following build error:
> >
> > ld: drivers/staging/axis-fifo/axis-fifo.o: in function `axis_fifo_probe':
> > drivers/staging/axis-fifo/axis-fifo.c:809: undefined reference to `devm_ioremap_resource'
> >
> > Fix the build error by adding the unspecified dependency.
> >
> > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>
> Saying you reported a problem and then fixed it kind of does a bit of
> disservice to the "reported-by:" tag which we normally use only to
> credit the people that do not actually fix the problem.
>
> So in the future, no need for this to be there for patches that you
> write yourself.

Alright, thanks for spelling that out. I will remember that in the future.

Cheers!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
