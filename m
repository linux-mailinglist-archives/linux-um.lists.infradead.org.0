Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F411202C7
	for <lists+linux-um@lfdr.de>; Mon, 16 Dec 2019 11:39:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KY5Asn8rcjU607q82NaJXCyauq5iAguckCDnxDvG8Y=; b=q0cic/3sklEeQU
	6qMRGYiDWios6HlHEx9Z5vCpA+uGTpWph5HySiorCaZGvaYj4mW2fMriyGCik/69b6t1jDupOn6P6
	ea/CiwGyXCzIIz+2E+Nvn2tNlnEyAUpdwczpf2c5o02y2HcxDPESe6Hd1+9AuXznWgwghBLXYJVpE
	cgJebkySy+kqPQkD9BXgdKKssr12Tjz025ELCqZGi7dk2NduEoCVeT1cXPZxNxKBqUUzfWLEA63HW
	aEOMNbR/fyvHxbQZ3tpbh/qoYkV1iKE+OX3CFg3nK08zwnGUkS9CBUOSxpAmdgml1c05Ms7YZUpm8
	Bp5nYcvXzragtz1ht3YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignn6-0002Hg-Sa; Mon, 16 Dec 2019 10:39:52 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignn4-0002Fq-N5
 for linux-um@lists.infradead.org; Mon, 16 Dec 2019 10:39:52 +0000
Received: by mail-lf1-x141.google.com with SMTP id b15so3849849lfc.4
 for <linux-um@lists.infradead.org>; Mon, 16 Dec 2019 02:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eASUinPkaGZJHOgTIA6SaLKdBIe8ndKbRshIZuG4fiA=;
 b=gvMSEBB0eZnELFRmfIx+0Ef0369plyPv8mYJq1s4eaHxkEkW5VnmgwqeNz355t5TWl
 Sn+cFXB4DxEcHvFWI7u/LfZeMLEGqNlsyCnYcJp8bUraj4vhcVxezg0Dn86FM5UNxnmh
 FSOaLsLlCJHiE9/5Ins+lr6SDTlu88BPlvJwAG5AP7SlSiidb78l00dSDAhzJgtSnvX5
 lTut3TUCJ+O23llKsTL/fihV3fyGQQi4mkfQGkB5hadELN9w1ha3rPKL11fECr8lzCP9
 QhiWKUdJmBL98fMhEP1w1sU2at2NGKzQISN0OMgUzUCqFicb2X5kh7CXV543rRcmPfHq
 xygw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eASUinPkaGZJHOgTIA6SaLKdBIe8ndKbRshIZuG4fiA=;
 b=sjYJ/1PL0lhVS/ygKHdBP5FVCjqPK6ytLrP1pO1S2fW1w6W182eJEnCei56GaFu9s6
 RCnH5LaIECJttGZPggO3VPhiGzFbDVXPrDDIyBVBJk1TvMPS15QZfwkjZI3WbEsaoJdB
 m5y0wYx1h4e5ix9Mg3JzZm33qUl1H0yitpmecULIaXl3C9rGqkX3XKkMiOv5L81bgTcj
 klJ7pCW51x8PLRJ3PWFJ9PUqK9cSs/ky0gI1YHaZISdtmysG7WuzWBJrLkL2PvImGKCY
 zFphjjL/ue8YYBKDBVW+tyyLS6xAK6JZSQibC9kLxyq+aMYErpr8EF+HLO/irtyfs4Fw
 jyyA==
X-Gm-Message-State: APjAAAUMolewZXVS07TflM2KnKgVs8kq/KxZrTP/d4xKsvLsSwIujCeI
 ul10Tw/B4UzZ7NS+myyHFzYFdjXecIbNjOXnlT63NA==
X-Google-Smtp-Source: APXvYqxzt8KKeZI8wgfcQPj0YZ9QX8xthNB6bqmMjGdR0Pj43hONYwxcydmJ2yGX9OFyPLBM5DVYrwUa2gH8n7yfSjI=
X-Received: by 2002:ac2:5c4b:: with SMTP id s11mr15930092lfp.133.1576492788774; 
 Mon, 16 Dec 2019 02:39:48 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-2-brendanhiggins@google.com>
In-Reply-To: <20191211192742.95699-2-brendanhiggins@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 11:39:37 +0100
Message-ID: <CACRpkdaTJej2zFX0y7mAYymBdGNvHpp3VyU0kOd=ScA_gMAf-A@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] pinctrl: equilibrium: add unspecified HAS_IOMEM
 dependency
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_023950_769411_EE47947E 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>, jdike@addtoit.com,
 linux-um@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 David Gow <davidgow@google.com>, anton.ivanov@cambridgegreys.com
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

Patch applied but I augmented it with the recently added
OF dependency so it now says:
depends on OF && HAS_IOMEM

Yours,
Linus Walleij

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
