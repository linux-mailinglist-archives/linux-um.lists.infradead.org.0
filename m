Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59646196FB8
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 21:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80LimNOK+S7K/aN8ekO1w3C+Ce9WHPnYM5TaOzMzCuY=; b=juisYpn4dyCdNk
	GcrMD6HXpTaaQLMglQ0CldCo2YNq9w5IXhFxtGF57tGP+2Zh2doRhKjEkP1iCQbpdcajfPqDhkDlm
	3RTpdkJsl5chKh0mb136ZtgeJHgKDOe4QgHTJBEzaT7HNM4wHfZCnd8wcM/OwkhSruBy0I1EtAeCG
	SMY3f0sSQJl1Vnmdw+NqyA3GxNIqomfXNEl4ck0wk/wFoKSDTu0GrnXHnqAA+MW1jOqsttdTrzkcO
	4zmTLGiS2H481APDYRW85JvcVuJJl4sjo7mO9vWmb59/LORgSrVEdW68Qw2pPFSFAYV7MDTzMIy2c
	eaqyoTwZhNtSXGU0dV7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIdeo-0005MT-2n; Sun, 29 Mar 2020 19:31:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIdel-0005Lw-PT
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 19:31:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id e9so6933895wme.4
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 12:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oUj2BTOBnk4kupF0DuUZlas/nCm6EBGRrhihVbBeMZQ=;
 b=nU/3GHMzWd0lsnUVgRyx4KNon68j9gdzThe6yHV2K65FJK418KMoc/k0/XYutH55Lx
 Lr24WceP1v9fnx7qCwUuIWibsRXVA0yOYx4O/yd4UpA4HrDG1N82QKfqTSlOWDu6fKT3
 5BNcCik6A7f2Ik1C1LzChRvUixKwPzxFGISEoPP0K1n3u/TIxr5uQ6fQHBZe7aZBZibZ
 xxvypEZpRG35jbIyui0SNLbFFBZ3JDscw/y5Z2FsWZlI7nc+teDGsdMaURaot+4P4ru8
 NbUeiAsKEPno/4zS71kDwyniiELKLHTrx9+a4x50Zy+9GrYUxhZq4UKkSTvNHXxix9mm
 idOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oUj2BTOBnk4kupF0DuUZlas/nCm6EBGRrhihVbBeMZQ=;
 b=qRDSzNQw4JzbjIyVvBG16niLKwfhXe9Z6sVrWITtl5ZMRnRYCHmG9eIAXUSAf7xHWv
 RqiG1ClyuW+8AVcQhocTpjDmZ/yOzj6VlcP0zM5wfTDq4iEqCXlgU8Ja1ifnm75DO6sf
 lLM2VpVmoBsLplFSbIdk31Syq4ITEwjCn65AKMjRL21AKngrUCZ46YZMS3PYC83hRjBN
 z5hrbDdNurMR6suUzyoVbe2FlEoyIgfpN5W5YaV4iBlRdxtMyPhgNU5NxTSDxCodZPbD
 WVlnPY73aJFLngb0nRnyL7Z9I6ncg7bcd4xAU4ehJ7guzijxXn8B7Vw4hSsyS7JQ52A7
 r11w==
X-Gm-Message-State: ANhLgQ13B93erzr/DdgYpgdf0Ddg28X3iYEBgmLcR5IPfAO02wU1KHJm
 4mx8qoNqu0yWy87MyOEEzWFc2uT+pcj9yIHcSrU=
X-Google-Smtp-Source: ADFU+vvr7aqd7t3iphFepIlAusV8u8l8bfxjC/Q2h93NX+GEzrTDzhUFqjxdRgRa1zqM/y0wl0Gk8HuK2+0/yNELhLo=
X-Received: by 2002:a1c:2e10:: with SMTP id u16mr9055853wmu.143.1585510296476; 
 Sun, 29 Mar 2020 12:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200206204018.98f745aed1a1.I986f68ddedf1cb4ef59abf4fbcb5931ce99bc2e8@changeid>
In-Reply-To: <20200206204018.98f745aed1a1.I986f68ddedf1cb4ef59abf4fbcb5931ce99bc2e8@changeid>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 21:31:25 +0200
Message-ID: <CAFLxGvz+vs+zD8=Y+eE1RA=QhkWYPea5R9o5vrhLs3jz4G-wGg@mail.gmail.com>
Subject: Re: [RFC PATCH] um: implement CONFIG_CONSTRUCTORS for modules
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_123139_829804_D602924C 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Patricia Alfonso <trishalfonso@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Feb 6, 2020 at 8:40 PM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> From: Johannes Berg <johannes.berg@intel.com>
>
> My previous attempt at implementing CONFIG_CONSTRUCTORS failed,
> in part because it was badly done, but also because we just need
> the gcc/libc constructors to run really early for what is really
> a relatively normal userspace program. For some more details, see
> commit 87c9366e1725 ("Revert "um: Enable CONFIG_CONSTRUCTORS"").
>
> On the other hand, we *do* need constructors for modules, if we
> want GCOV_KERNEL (and eventually KASAN) to work there, since the
> constructors that gcc emits will need to be run.
>
> So here's another attempt to implement CONFIG_CONSTRUCTORS: don't
> touch the ones in the main binary, and don't do anything in the
> main init code (do_ctors()), but still allow enabling the symbol
> and associated code for modules.

I have to admit I don't know all details about constructors.
Do I understand this correctly that constructor code is never code which
depends on kernel internals? So it will always be gcc internal stuff?

If so, this approach will work and you can have my:
Acked-by: Richard Weinberger <richard@nod.at>

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
