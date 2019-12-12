Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C41711C18A
	for <lists+linux-um@lfdr.de>; Thu, 12 Dec 2019 01:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wp3Y2TZY+7VLK1BWIXPkpDLOIlq94sC/Newjecj4FiM=; b=QngRqoIebPxTSB
	65hbrf2KyptwYz596YSf/oNfG2RTpvZ9pHE2X+grtKHxHrbZrjEE5AFZDapRN18ix1DHgelR+zlU1
	atRbh7f8p5xvORavi5scxMWamIENCKPpb3Ll0VIwaN/0GLzwewD6pld0/e0fDcqfHz1QsVfI1HjS5
	z6W8Uq7tl0uXtv0zeoU+dH/HqWrqRrJEETW+BzzHvExUJhW3BBUJMjVJc7lL77vZRxGH8dCXOVDIc
	dsujjxJ2TNC52iykpn++xgaZoDClk8zXPNePf5zeyAIUvbH2kNl6SxxQNrYlU1qw7N2xDZ21s6ASe
	pNZN/pW2y1fnkZwVi/KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCSj-0001dV-KZ; Thu, 12 Dec 2019 00:36:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCSg-0001cq-VQ
 for linux-um@lists.infradead.org; Thu, 12 Dec 2019 00:36:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id b9so186215pgk.12
 for <linux-um@lists.infradead.org>; Wed, 11 Dec 2019 16:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WbhKO4WeCDUgMgdoBOMDM5Csz16uIE5zNtwBD+Qk1/4=;
 b=hB0WklF+T3Zy5+Z8n/qleeTfdlQbkR0a5VL79MOgenF9kTSAR0s/vGy7Rd7Gdhs0WJ
 j6qQ9LoizbPb+EMDr3twZObrfKKkeEomMy5UGnp67AIuF4KiWvyOfmtZdUnYL4GtLqyD
 y4dKbpaZremkX8zuDGju3GitmufI9UPLWAdmJK6U4TzlVYhC1vnNioJN4jvbvuckpHUH
 cYS/YUlwZVpxTvWvzShP/xV7YafIsGyIFtlBc/6/jpGObUZjhdTh2Z+2UoUUJ86S8Fye
 PV+ieNPndEdQQeD/y5lz1yaRmG+LSjYirKVAkiDpVhsPPFt2t02I0NgzEVgkVeM3pi+S
 B0Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WbhKO4WeCDUgMgdoBOMDM5Csz16uIE5zNtwBD+Qk1/4=;
 b=K0eS6wZIBW6YbTlz6dCt/8PiNPstDBGr64WJKJt+Qja6c6LRVtJ0xqlY+npnrRtpGT
 S8qXuiPrkhp75Ew+yzoAWRHMY1SkeOJ6dL+TtFCCFVk7D/eRpuNRw6ZVsgqBJ91WJ+KP
 ur+a9jHS/NH7EsWRUyuY7ccYuSoi/t3t/47V68C3HDhdNyCYa+epxpuRYsGm7aC2smEN
 8YfFHR5gzlrgg+jHjaoMNStb/S0scM2HOawWAKqZxJeQQLWYvWxLWzKwxaQyPqz3Kyku
 vWrqbheB1Kw6fNvAdl7quJ2jr0zbYkS/tRFCUr8NEknJ/AcUpgbj7shJXzmkTw6yQ6nv
 wlHg==
X-Gm-Message-State: APjAAAVYPAb25w8xZgZFnydG4VokQ9mq+KPqVZaFtvdziEHO18YC6msH
 Fed3qFr5V71t4zWGDZKmLJGgF13Nr/5nfbrca/11UQe1hXM=
X-Google-Smtp-Source: APXvYqwdor3sEiXEI3zspQ18ECczZ7+Du+aYPaumeXz//y/dgLrvSrCif8dj3w+dXGmeJzXzNlydhd5OWj/UhWbAuPs=
X-Received: by 2002:aa7:961b:: with SMTP id q27mr6903341pfg.23.1576110966401; 
 Wed, 11 Dec 2019 16:36:06 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <e1e0fdadd05387200caf361dc08713a811263258.camel@sipsolutions.net>
In-Reply-To: <e1e0fdadd05387200caf361dc08713a811263258.camel@sipsolutions.net>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 11 Dec 2019 16:35:55 -0800
Message-ID: <CAFd5g47tOCDossSbW1y1dO-2gEjuPDWW4pHTY3A3ZVvwyOTSEQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/7] uml: add unspecified HAS_IOMEM dependencies
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_163611_063206_BF22B03E 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 12:06 PM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> (stripping CCs a lot)
>
> On Wed, 2019-12-11 at 11:27 -0800, Brendan Higgins wrote:
> > # TL;DR
> >
> > This patchset adds a missing HAS_IOMEM dependency to several drivers in
> > an attempt to get allyesconfig closer to working for ARCH=um.
>
> Out of curiosity, how big does that monstrosity get? :)

A bit more than 4000 lines as opposed to over 13000 lines for x86 and ARM.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
