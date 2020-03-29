Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A60619708E
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/WO+gr6O11N7Pm3/qlYZG5aT6H+WjOi0+NYfRb9Rqk=; b=Ib7WcxwxX+59oT
	PG2+dEa6oJjtgJqh9kch2yP4+1ty8pGoDzTNyfvfPuGLH3L+lfx03VW/+685asYLO/KoO5Jh6ryDb
	Vxd7qwSYxGueRq1tSKnB0r4TwGsS2+OAa+R44Ooj0KoLt/c4a2haXj19Ho/HTdon8UtP7q/Y8iwk0
	hK+S6DhLeNxiPKRczWgJp3xH8HacZ1BNPsIp0+tAKwEK4b2ahB37Ay4NpX29YfeHIVr1pCFloz+/T
	DFuyfeI85GtxlgAbFTG0ou+blyaV05JkwC82XVtTo+IEGh7nTxyMeHeUTlCL/wjykDWWzHVhrJkgb
	UEYCC2CUQIz3n4vR65YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfdR-0008NC-MG; Sun, 29 Mar 2020 21:38:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfdP-0008Mo-1Z
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:38:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id a25so18903755wrd.0
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y0qS/RdlAZkvWc1revWZfolS79bBZLVEOxY3s45eemY=;
 b=q7F3ronpVCrZS6jNOT/AADzq7zsySJ09tOiDa8ms/qjQJTrnkwTH+pH+UFn8fkC3qD
 KxIt6OhOKQ2Dy3GydKTo9JGqzQDGk0L3mNfCg/XYSqOlomTGxwNgnh7WtXKoCdg3gc2a
 gZ//gnX9bhbyRV2sNJltpprcR0bDo0JP5SminsjKEmY0lAfQKPLh+GUAgTQccDEW1OER
 Voj/HjmzLKUUAaSdMgdTa/BwrxRWq8e/qun4nd0SzKsILQaObGjKFkuesQxQOLzw3pN3
 rD0RbuNVwXhzgd2PhzMlHk52YA+OiuhiKkaaBloR+aW1MDRrLSigpbmWTMj90pBRPlyj
 usYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y0qS/RdlAZkvWc1revWZfolS79bBZLVEOxY3s45eemY=;
 b=M67yBRCfDkmxNFUWTYTE33tVlQ/1naAK1PQSaYeFpBqOph2E9x0R0H2Cxoxh07fXHQ
 1kXykvJVhvfrp3nsMQz2QbU/0FPR6VTtj2jXBLE8QHoS13dvQ4EsP4mQ5DMIrbr2yHzy
 P8o35lqYEXFn5npPvYtXmSdnUBymr6wDrFUQ3ULvUn58heQ5u+FSIa4KVfJEVrTJo1Xd
 10m3oQiAst7nFO99NMNlfxm6iCwBACwA4yPdiCLTMW+7m0SEo8LF9vywegnP6TSUzyoR
 /SoktlSiJZ0fj/1fPmNFdZDnhCblaKog+piZ83gq/k0/K8KH+iG+X3FjZ9dKWpAmIhyO
 +e6g==
X-Gm-Message-State: ANhLgQ2xuT8iiVxYo/ZaAAvjQGvaWZ1W1Yazmi61mGnwYGR59Z+vPgNJ
 7nI18H7mqy4cCnj2wt9saPyqgmV3lwD3xdR3LUQ=
X-Google-Smtp-Source: ADFU+vuIz7HO6ZylVa9R7Rl5TKm1UynOIeDI30XyrYJ+VyAPL8Q4BMYiyKriSTiuPgCT3QdtFFwBI+v6OugUnwPvbiA=
X-Received: by 2002:a5d:4a4d:: with SMTP id v13mr10851970wrs.85.1585517901586; 
 Sun, 29 Mar 2020 14:38:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200220084014.238768-1-leon@kernel.org>
 <20200220084014.238768-2-leon@kernel.org>
 <3857ae89-3cfc-a409-e0d6-ce2dab008d9b@cambridgegreys.com>
In-Reply-To: <3857ae89-3cfc-a409-e0d6-ce2dab008d9b@cambridgegreys.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:38:10 +0200
Message-ID: <CAFLxGvxem_z-0sX4THYzqZnEW0xXjsXW1zP99VZeDRJXvZYjvQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] um: Don't overwrite ethtool driver version
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_143823_088141_19B15268 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>, Leon Romanovsky <leon@kernel.org>,
 Leon Romanovsky <leonro@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 8:35 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
>
>
> On 20/02/2020 08:40, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@mellanox.com>
> >
> >
> > In-tree drivers don't need to manage internal version because
> > they are aligned to the global Linux kernel version, which is
> > reported by default with "ethtool -i".
> >
> > Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> > ---
> >   arch/um/drivers/net_kern.c    | 1 -
> >   arch/um/drivers/vector_kern.c | 2 --
> >   2 files changed, 3 deletions(-)
> >
> > diff --git a/arch/um/drivers/net_kern.c b/arch/um/drivers/net_kern.c
> > index 35ebeebfc1a8..af07733c2dc8 100644
> > --- a/arch/um/drivers/net_kern.c
> > +++ b/arch/um/drivers/net_kern.c
> > @@ -266,7 +266,6 @@ static void uml_net_get_drvinfo(struct net_device *dev,
> >                               struct ethtool_drvinfo *info)
> >   {
> >       strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
> > -     strlcpy(info->version, "42", sizeof(info->version));
> >   }
> >
> >   static const struct ethtool_ops uml_net_ethtool_ops = {
> > diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> > index 0ff86391f77d..9693dfca7651 100644
> > --- a/arch/um/drivers/vector_kern.c
> > +++ b/arch/um/drivers/vector_kern.c
> > @@ -46,7 +46,6 @@
> >
> >
> >   #define DRIVER_NAME "uml-vector"
> > -#define DRIVER_VERSION "01"
> >   struct vector_cmd_line_arg {
> >       struct list_head list;
> >       int unit;
> > @@ -1378,7 +1377,6 @@ static void vector_net_get_drvinfo(struct net_device *dev,
> >                               struct ethtool_drvinfo *info)
> >   {
> >       strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
> > -     strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
> >   }
> >
> >   static int vector_net_load_bpf_flash(struct net_device *dev,
> > --
> > 2.24.1
> >
> >
>
> Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Both patches applied, thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
