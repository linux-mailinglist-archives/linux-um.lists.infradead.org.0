Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFE1120015
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 09:42:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z53kRrKmk47TsbCsW3SkZK6p2X58rtuMU8+A9fN9BX0=; b=suAN2uUHKOX8kS
	SZvRnaTYZQmznSRVSI6HAdR49uTR4KHQf9q8V3C51WXJF+qfcxhN7AaHMUrlbqCzSwdip3oPM7wAK
	CHY5Xgyd3ZgraOlB2RzIn6gGeR+jpUZ7kUgHzDZu1jKa2nz2+ds6vOcxmnt73CCqCflI8o1SnfsXb
	85VHifkpD5FUrA1nswbWTok+pUDMQ1UfzvpB/vjK1xDZwRmvFnB/6EB+Z93xJXHM8+JllKrtbAA1r
	bI8jAd8Ebnj2pOEvG+fYIxS031vghl+VcBNiu+E+1XNmS4aK5yfTUjEl1eHv0I3yEpD3HzIPbFoDA
	t2Tc1lqMELWI0Oa8dE1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iglxu-0001bf-CZ; Mon, 16 Dec 2019 08:42:54 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iglxr-0001ap-LD
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 08:42:53 +0000
Received: by mail-vk1-xa41.google.com with SMTP id h13so1380951vkn.10
 for <linux-um@lists.infradead.org>; Mon, 16 Dec 2019 00:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eQNp7WdEHGDcdwZTBmF8OW1IvH+A0vnK1qvS4gy4RD8=;
 b=JsX0EOCFQpEiBIgwEhl/g4zVsVoSKPn8iLymWZehHBj7Uh/VTJ/d9CbE4uZaVzuYTB
 w5IiJHE7A7gYMo/g4KF7Pdd0ps1VbhopQDceyQtlWz658JV3DoUwazIGmaalqKBeClks
 9eKbYBBWTK8ErCl1JUdJj0lXntSt0KYr6uM/E1GQEmBdOrZyB8OLDsSZwSaMk6jZUA7T
 Qq6LGIoXPlVOucLZRwpQbssKV9UwV6WlIVCsBIo4qxsR//2Yb0pICA8AcZ+5hzO1Dl5p
 m9d/UZs6y2o4WkL1RbA+eC+xLVvCJm1l0Sij8v+CmIBUf9C0wbpKckaU6IK2A3Bl221L
 m5/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eQNp7WdEHGDcdwZTBmF8OW1IvH+A0vnK1qvS4gy4RD8=;
 b=Ht3bymxpBma3t0anjc0zFU4KhcTe27+sPvAfwc29Hdigv7d7a4pz/uNpXJya1aD1ZM
 4T/ST8sQfzGJpcmnhLa1udhbtefTpqrKYMWEvNLz4p5bIShkncRZp7OqtbzrF5JP1CgZ
 0/rkWCC9/J0qOxR0WQ7CewO90rvrS/PWEr/YkMvwD/ZWgvjYrL1sc50ADxCgkMGsavyg
 nSluMBRvclXoSmEmKiof/R7m0pG3baI5ZITxSQU7kGrfkXjj6QdjzQWsxWPAka54Bckn
 2XJ7K/SBxwY3TEIxYs9zqK8r8RB9p+rF9oUhA8DBPobllv1RMwhHK6oK9tIuZjtoUDME
 NyhQ==
X-Gm-Message-State: APjAAAVhv64LAA8Kd41YGOyZiBpdLop+JJdfOj7aHmM0MXlxbZXB6W1L
 tCZmYQvyq7lIsERK52Ug/qzlVdYq/AtoP3WdaConNg==
X-Google-Smtp-Source: APXvYqxSMRUWCpLigSnJ2HhQ+kJiuwNEHl9riiOJPkbXcQ7uYPMpwtCI2iqMkQSBGgcfiIQqPNPOPnCHfjFza9NDkFk=
X-Received: by 2002:a1f:fe4e:: with SMTP id l75mr23648218vki.18.1576485768974; 
 Mon, 16 Dec 2019 00:42:48 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-2-brendanhiggins@google.com>
In-Reply-To: <20191211192742.95699-2-brendanhiggins@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 09:42:37 +0100
Message-ID: <CACRpkdarwQT=6iSvjaTufSF9O7KcSkFxBwcvmchQ67xRddLs2g@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] pinctrl: equilibrium: add unspecified HAS_IOMEM
 dependency
To: Brendan Higgins <brendanhiggins@google.com>,
 Rahul Tanwar <rahul.tanwar@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004251_827906_FEABF6EC 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>, jdike@addtoit.com,
 linux-um@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, davidgow@google.com,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 8:28 PM Brendan Higgins
<brendanhiggins@google.com> wrote:

> Currently CONFIG_PINCTRL_EQUILIBRIUM=y implicitly depends on
> CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> the following build error:
>
> ld: drivers/pinctrl/pinctrl-equilibrium.o: in function `eqbr_pinctrl_probe':
> drivers/pinctrl/pinctrl-equilibrium.c:908: undefined reference to `devm_platform_ioremap_resource'
> ld: drivers/pinctrl/pinctrl-equilibrium.c:223: undefined reference to `devm_ioremap_resource'
>
> Fix the build error by adding the CONFIG_HAS_IOMEM=y dependency.
>
> Reported-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>

We recently fixed a compile error by adding
depends on OF
and I think OF implies HAS_IOMEM so this should be fixed
now.

Can you confirm?

Yours,
Linus Walleij

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
