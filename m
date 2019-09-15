Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BA8B319A
	for <lists+linux-um@lfdr.de>; Sun, 15 Sep 2019 21:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cuys6sDxkgXJmFgEYzTp2RiXdMiS69T25GYdjKNB/gs=; b=aSnGgNDqe60Dlz
	5DOixnouIw3E7/lfylZJifMCxQPL7cfFQ2lKQqfP1GX1TlJl0HJzozTi+vf0i8+Ipq9KayS5ZQ4rx
	NDTYxsbhpTg8s6nl5YdViFgjUnSBkUY6Mo7BYOfu7I+MzR/6M0X17QDD2aqQt3TeyJ0SWQi0iSIMC
	UDcc7+ilW8xxO+QDNoz26lvc2CY9gOYxxqo17HJD01FhWIueNG/rrB1RKlBhlgudS5pnZq44FmW82
	k9sB23aPYG/zuPYZC9poj9RXdCYhFjvIthTOTWYl/nUiTDIFLT5c9+P8dBCN273AyuvDhEzFn2DVc
	csLL3FoxR9t+NEaUYhwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9a61-0000lQ-58; Sun, 15 Sep 2019 19:22:05 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9a5x-0000l3-S5
 for linux-um@lists.infradead.org; Sun, 15 Sep 2019 19:22:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id r17so5762771wme.0
 for <linux-um@lists.infradead.org>; Sun, 15 Sep 2019 12:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5IRTgAP2ww02WZHSkznOPyUPvQXeQrb2JfOWayZibhY=;
 b=nZ9W2ZRl3vG2aNXJ1bZL+3KMCQa44MbMMu77DRl2rEM4g3ZR2JsCa12X7jrv/MNcXA
 wCi0N6zNjfqAl7ZwRa95PAygLkX47GVLtKwJdRVCFjM20OT7tEwocfpTW7bRpRbpJuJp
 cQf2Bgly1N2F/YnP7mMNwPCrfyb9MDUNPC6kJ+bcv9bSGn2+6zwPKB6gBhs5gFTtl/Z4
 t+nXH9BlIu2fm/jfHyvqjpIOMBQFgJiudUpbrPoPPex1v92mmSKpfxhNVz4QS0RUatr8
 O2WcX9GnDCUbRl5+NLxk5LkbfkW2wUR247Ap9/8G46JmwoqMDiHpOVR65Tt/tJdU7KHh
 UJHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5IRTgAP2ww02WZHSkznOPyUPvQXeQrb2JfOWayZibhY=;
 b=tb16sPCcwUNpqfZxz7n3Z5IGBI3Juh12ixdHimWa1zRPr53vE5B2EXIG5twGM6pHBg
 5qVIyFUFYn5G2rfMKvAAQtGbjYVPQAfyqGRl8OT4NnOg5ThP2bM7xDSrqpKWtOFcPQUr
 teuNlP7mEYejXv4PwPWccFKLJAOZZ6WoFkqhGbUqRiTUCzPOpkvdsh2oHilnEWwAifQb
 O+J3iDL+h+jSlPrBOq34lVJ3oZEQL7iJTsyXC6wAzdWniAN32PHbuNDrhr6cyp0KvrmD
 YWFXoHz1oN4pzaalLXj1ywUOzWLnVpyuGMQctk0iEi0/rECwHCkw8b4NQeoxDt3PGWye
 BDHQ==
X-Gm-Message-State: APjAAAVzP5Or9IPjLsrARfXsAxgqXRcaOkSvxG+iu3c0cYprQXMdsahU
 SWy/GtoV7MPgLoq1OMga5LLWLdV7WA3E7NlCAeBUNw==
X-Google-Smtp-Source: APXvYqzl5Xc644rtHC5mZC8JSSbMmRQtym2mikpWPMjws4gMfhAWmE83OdeoV1paQ6CkN5I+EeS3fsTZ5q62EZgNFcA=
X-Received: by 2002:a1c:eb16:: with SMTP id j22mr5800724wmh.176.1568575318032; 
 Sun, 15 Sep 2019 12:21:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190911125122.20772-1-johannes@sipsolutions.net>
 <2b6ac17c16113892e27e82df9802264ef934d4d8.camel@sipsolutions.net>
 <3ccfa0c9-7b5c-6135-693e-a9700dfdd19f@kot-begemot.co.uk>
 <9e8e9db8-eafb-9132-21a2-762ea09b501a@kot-begemot.co.uk>
 <69bf4022f3c6b7af20b2188673d3c0563c340f5e.camel@sipsolutions.net>
In-Reply-To: <69bf4022f3c6b7af20b2188673d3c0563c340f5e.camel@sipsolutions.net>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 15 Sep 2019 21:21:46 +0200
Message-ID: <CAFLxGvypG+CN2+groNOnkx0OYmzPOd-du2YwThHh9i6zD2tdNA@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] um: virtio support
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_122201_938444_0D884EBD 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-um@lists.infradead.org, Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 10:16 AM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> On Fri, 2019-09-13 at 09:14 +0100, Anton Ivanov wrote:
>
> > It does not build as is at the moment, you need to add
> >
> > EXPORT_SYMBOL(uml_reserved);
> >
> > to ./kernel/um_arch.c
> >
> > I could not find that anywhere in the patch series so it is probably
> > lingering in your tree from somewhere else.
>
> Oh, no, but I've been using it built-in rather than as a module, sorry.

This can be fixed after -rc1.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
