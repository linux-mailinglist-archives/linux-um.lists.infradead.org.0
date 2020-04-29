Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4F21BE742
	for <lists+linux-um@lfdr.de>; Wed, 29 Apr 2020 21:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWxCFTnob4+UOFbY9qiMl6ysxw1g1I2b59shCaw4NCE=; b=Ta4BgUJv2szdK+
	c04mVZ60ItJyu1DTRxrDtadwBwyY5zZ7QC3qzgBUWGiPPB4/GRfsWhwEAb8cbOwWyVuEQYGWKX8vp
	n6cVaR1Gvgmz+5y9tmoe464bRxsR3ZOdr3vXZq6sPy21zhARw9MpqJ2RL4g6LDaHtZWej366p19CQ
	VWeafHqSLXwhZZeNhLeQQufduuLebWmksPOXh0ld9c7CWPGhawTLU3PRdrXPi0+O39qYT+kVRpRC1
	UqH14Ih/6fwL43H3dKL/VbUTvdTdE303lefBBl1tOsOOBEqIjtZ/huIdPmXee9A8CqIpYYYusZvWT
	7UTUtgnYhFsNq5Iy40bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTsJ5-0005WP-Ki; Wed, 29 Apr 2020 19:23:43 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTsJ2-0005VX-Rt
 for linux-um@lists.infradead.org; Wed, 29 Apr 2020 19:23:42 +0000
Received: by mail-qk1-x742.google.com with SMTP id g74so3212784qke.13
 for <linux-um@lists.infradead.org>; Wed, 29 Apr 2020 12:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S6dnVbQgRobUMYbJNTdF0Gmg/V+Yh5wnkRnW2rYK2O4=;
 b=fwYsHNx8O1l2L+FipTaegsAJV0tAWjthO8ZCchZH7Yojz+Xr5N4DSzwvalBwSG2kGu
 26prYd8JoDPYnS7hxDY4UQIVfm6SSRogmW6oW1J58TNzcsD3BiYuKYD1UY3QSUFWeIms
 uQhk21sdKnDV1nqjTkbsPNqN370GobCFZ6bMDmy/UjDZbAfUh9UqJtWQ0F6iOrpcdpDD
 Z68taAmyA6ITkvDq3rhimS3IQM0e33BHd71x4ZIuj3Il905akCj2h9uE5dCo3eUybF2e
 PXrC74+XQiHTlR6gGwg9cBxztIJvx0cl4kGH//oGHdI8f6H3p8UmHHgEfzDzUbmoBeAf
 21Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S6dnVbQgRobUMYbJNTdF0Gmg/V+Yh5wnkRnW2rYK2O4=;
 b=D6vzSClyFjCTPQ7DDXcD228yw7dvP89/gU/BQKFox8IYv9GfNkeYGKPI89pwQ1tktG
 YjMibEIZ4KPYwc9wL3+u3SuJEi8KVydhwSq5ia7wfxoQ2nzPslkH8dA77HhRoodjVm24
 U1FGyhCoEvWOXUqxfZCiO2awBHdUosiswuhZ7Xbu7f0Zgl1Rw8XHkg012F/De8xzZUoE
 q2TNkKH04aZxyYtIOcrIElJT8ePActXqPgJbLIKI2U+jQK1thYM7lOD1orL+jtUEQEF0
 AZ1df4uJzn4+6YAUuwJXHLLORxRqTYycI/JTIVRr6UoeCdtt+O6HDce4ByKUUhLHpZQU
 F1og==
X-Gm-Message-State: AGi0PuaEcCtyiHvmwMUxiZxHbIjzHvFNTIdu5eJs9ah+su9PbsB9/7HV
 OsVK7EbOWwAvCgJ3crm8OSsTtfZ/gAziA+tWv0w=
X-Google-Smtp-Source: APiQypJm///vLJ8iGbPRxIQXsTnPRKcnlmMYAK2vfNl5WYaaOyL4pSc9bECXorAzqBCR5U6A/y3jSVs4bngW+jlRfjY=
X-Received: by 2002:a37:6287:: with SMTP id w129mr12259qkb.34.1588188216258;
 Wed, 29 Apr 2020 12:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200405213357.b6ce1024b276.I7c370e20580d3122c58df5727ee2d6fb53545576@changeid>
 <CAFd5g47m5JHV19FjCgSt=FKWYjG3vUQSJ3oa125xD1cYMH8bww@mail.gmail.com>
In-Reply-To: <CAFd5g47m5JHV19FjCgSt=FKWYjG3vUQSJ3oa125xD1cYMH8bww@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 29 Apr 2020 21:23:23 +0200
Message-ID: <CAFLxGvwi_khBEKSXgFSt0s5MdrFWDepOY9pdMpD+3DJCproUig@mail.gmail.com>
Subject: Re: [PATCH] arch: um: fix xor.h include
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_122340_940820_AD80CD66 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Johannes Berg <johannes@sipsolutions.net>,
 linux-um <linux-um@lists.infradead.org>, Thomas Meyer <thomas@m3y3r.de>,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 7:38 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Sun, Apr 5, 2020 at 12:34 PM Johannes Berg <johannes@sipsolutions.net> wrote:
> >
> > From: Johannes Berg <johannes.berg@intel.com>
> >
> > Two independent changes here ended up going into the tree
> > one after another, without a necessary rename, fix that.
> >
> > Reported-by: Thomas Meyer <thomas@m3y3r.de>
> > Fixes: f185063bff91 ("um: Move timer-internal.h to non-shared")
> > Signed-off-by: Johannes Berg <johannes.berg@intel.com>
>
> Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

Applied, thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
