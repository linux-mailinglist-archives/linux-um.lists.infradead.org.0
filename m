Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BEA120137
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 10:32:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2BG9bnUl2icWqHchoe0EAxfJ7RPy4ag6U0zwhJrTmM=; b=eHNxrIRfL7dqCz
	n4YNhorv7ZhhjWe047rwMhXD3tfsDpBX3XQdMcJnfk1gIXzu3k5HYS3AELfREZLgNTbDOfQgfv5wB
	DhC8TPvF5D9Tx86bIIrJ2MS/pPc4NvcOwjJNOf8be7Zgoh0ny4XU0XCcjJ4rC6Y5xHCIvmsTu9vA9
	Qk6olUOe8wkAUxwbs3JfevjwPpG7pZUDljo8+QVQ3Ftg3a+/kxblygw58c8lqyH7qF7jpL4zaPLHS
	jm3x+fSyUoboU/JJIGQRWs0u1pi9H5uuJr9QC9xe1EYHe7M464BYcx5RF7fdHWvWYA4KjGdO2sAnb
	8ov5kTLpj/B+IbY7GeyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmjh-00040w-2x; Mon, 16 Dec 2019 09:32:17 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmjf-000406-1V
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 09:32:16 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M6UuX-1ieJkp22PJ-006vt1 for <linux-um@lists.infradead.org>; Mon, 16 Dec
 2019 10:32:10 +0100
Received: by mail-qk1-f180.google.com with SMTP id z76so1672261qka.2
 for <linux-um@lists.infradead.org>; Mon, 16 Dec 2019 01:32:10 -0800 (PST)
X-Gm-Message-State: APjAAAV2tDwyHjGF2ARLSbTZiew80bhsDUKdQvIGdE9ez5Fqae2rvgAH
 K6Gjc6mQjp2wM5j0QELnAM5Crmxu9O13SlcNOiw=
X-Google-Smtp-Source: APXvYqwuzamOhZBYiDPEQvUuH61OaN//oHdb3a5zh9ui1Ily7sfB3Sje5/4gH8Qq5N4AYR9tRtDkKEXgkMXoCI4p5kE=
X-Received: by 2002:a37:2f02:: with SMTP id v2mr4724084qkh.3.1576488729412;
 Mon, 16 Dec 2019 01:32:09 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-2-brendanhiggins@google.com>
 <CACRpkdarwQT=6iSvjaTufSF9O7KcSkFxBwcvmchQ67xRddLs2g@mail.gmail.com>
In-Reply-To: <CACRpkdarwQT=6iSvjaTufSF9O7KcSkFxBwcvmchQ67xRddLs2g@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Dec 2019 10:31:53 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1o0y5zWj3kye4o2uDVVJE6ejG0yGDJGDfZ4BK3t_rKMA@mail.gmail.com>
Message-ID: <CAK8P3a1o0y5zWj3kye4o2uDVVJE6ejG0yGDJGDfZ4BK3t_rKMA@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] pinctrl: equilibrium: add unspecified HAS_IOMEM
 dependency
To: Linus Walleij <linus.walleij@linaro.org>
X-Provags-ID: V03:K1:yO5diLOY6kBXwFs2GnxrLSaiDSdQpQ99oAmjTMYD/+IUz1miMSR
 +Kl94n8T6QnphxPYr3qnRSqZxa27WIMocq6KV0iGPtrvpRmBWVpaNRKGNvzTRmHl6qxHytu
 SIf3tadjFkybxxn+ldnS62cTqdltHtsPSa9wONqlnYRUtqjAws9vFu5hqoTGpLbB0vp2Qlj
 8J/Sc08Oew6BhJVq6Ff7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:r5QAEyPt7dQ=:xQEauhrdDx80SWeRkLRAOB
 x3xhZS5t9/z+BM2mqiKQfdB6XUxmMk1FCHVnvzsz6nEvqhPWNGSnDZ08en1KHEIa0OEVFWEav
 1UBe/pYQKUlpQaZ3MqkrXZarXfsaCDrGn6it2RTNW79CZj06Ov0EM2G3VCRh424WP0MB7R32J
 /rgNshmlstvz8QGKFqZ1QszdkB+yoGEhika6tu2zp/FhtO+03WgTp/T7G/MD3fdOK7lUt90bR
 W9MLALtaubzSer7lj3nQlB3dNslMCQZsZj1CWJRYNQAQAqUwi0GrnDBYVzKELZYcHSEhRI2oq
 D0UhbbwzRkH6sO2Xn1zlKSE8lERd/ox7yIZWwqj9zT6bgC2cZ2hFzGEnRTKv9EvqrT6zHfD86
 9+fL5+rnDHSSE2NcTbMEf4iW1B53VwW+xBJ2HjM3SEzyedpxlGewlr1bY4F67mrvo2UsnZtV5
 VwGpTIN6WppC0D2mESL4uaMFhoQ+3MjcCabVQoitdGnrQcAHtDdFwzRzpR6/E4yS3YHZ1AHoR
 FbzOjuduapyoyeAhkvQJ5iqCHbyeIUcMgAepDs6tF0cMsrInVShaZZwGHPKdHdEtfA8LmoPIX
 6lh+StsCMEL2JP80K/inE+xT3N3dhUvzWVnMCA3pJZA8uulkOZwmzxvdKLgvmf1Kb6fIrup+Y
 HCx+HEl4OjMwBgtXs4M3pvPXTpyQS4h9qO6pys8ZMCB5QV3nRiYlZ5/4NKQmy/TbapbyFxrKO
 qF5OW96ZUgFKIxsRCBnOrWyzXlk/okc3MlRc9B6T/Tgd7AUkiZ7NdmDNzhPVdYrPj3Jb0CujL
 jpARysPePTRx3qGzWmFa/6aME7jVBD6B9Ax5aNaBdYaru019aPSK61eyqFOkGHP7iwfeWEmKG
 0mnnQl9X3c95h1OOmZDw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_013215_377032_4807CBE1 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-um <linux-um@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, davidgow@google.com,
 Rahul Tanwar <rahul.tanwar@linux.intel.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 9:42 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Dec 11, 2019 at 8:28 PM Brendan Higgins
> <brendanhiggins@google.com> wrote:
>
> > Currently CONFIG_PINCTRL_EQUILIBRIUM=y implicitly depends on
> > CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> > the following build error:
> >
> > ld: drivers/pinctrl/pinctrl-equilibrium.o: in function `eqbr_pinctrl_probe':
> > drivers/pinctrl/pinctrl-equilibrium.c:908: undefined reference to `devm_platform_ioremap_resource'
> > ld: drivers/pinctrl/pinctrl-equilibrium.c:223: undefined reference to `devm_ioremap_resource'
> >
> > Fix the build error by adding the CONFIG_HAS_IOMEM=y dependency.
> >
> > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>
> We recently fixed a compile error by adding
> depends on OF
> and I think OF implies HAS_IOMEM so this should be fixed
> now.
>
> Can you confirm?

I'm fairly sure it does not, so both patches are needed.

      Arnd

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
