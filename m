Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96A611C159
	for <lists+linux-um@lfdr.de>; Thu, 12 Dec 2019 01:30:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MqR3M0qNiVe66F9OUhVQyGz27ONc6ng6sWmYPd5qSQ=; b=MmP2tSOdSz6bZY
	ARuLRWMyx9dYmeiWd5qmuO2bfvZlOwsRjowTdCDsc+jX0V0FyAfABFq8tDD5iOeqNS8IOqTPtwZXl
	rBlWwwYCuyCRBjv3lytgnr2Zi9iOUNCpIQ+QvibauLAveVwo1sftCbWIGv23AUqybZxj3DRtkUWxB
	2iCUQ3HqvM2Cg+mQ83q7AcJNJwNjEmId+FzjOy3CI7plvr4Gx9xXfpaTcLreeiAi7CUnod9Q2PnZM
	R7Ki8uZ6KKE8qnIFY0R9U+Be3Oc6P4A6+FNIwZbL1uz6ExE/I1YmtTSlyFllS2NFMPRiyYfAuzUwM
	98fFbsM0CI3SsfqKj+uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCN2-0007yb-Je; Thu, 12 Dec 2019 00:30:20 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCMz-0007xL-TV
 for linux-um@lists.infradead.org; Thu, 12 Dec 2019 00:30:19 +0000
Received: by mail-pj1-x1042.google.com with SMTP id w5so244512pjh.11
 for <linux-um@lists.infradead.org>; Wed, 11 Dec 2019 16:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=98MiLyb51h/Cn9dLTiDsE8vJncDIeF6YECGtn7W0cKg=;
 b=lP5Q5crX7/86Q1Xp9XhlJT2FRQD7zC9MxT79L9+amXZP+PhH3+YyDU+ctYKmPb17dW
 Q2cO/iO/ITwDzdv1X2LTcZl2EBQL0lUpWBssaHesdTeOEJ7ZFWYHQqJRR+tUg4n+Calt
 iNFRm8QOAzdf4KF96xSvwJznLTkB4VYX8ZP3hfFaqjDjBiL6PkseF3kJB/r2Y8gU1TIi
 UlimAMy4UwP96pqrj1AMt5GHymW2cJwEa9U3nOF/qWGj3RAXjQ2hnCRvMWvmtZEvSp5B
 FMpsl4O4HQMYL6cr4l/B9Kizp0uceT4htzL1ROd3IO0a5ZjWDA1skCCReslvqApFuwTR
 6J+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=98MiLyb51h/Cn9dLTiDsE8vJncDIeF6YECGtn7W0cKg=;
 b=aVczK04XPQi2hBJPW7zRk4slqqavLOlyEbfuU9+sXgWzHLYIHRIYeFp6Su8Etk1eSi
 PbhI2lbfg4vPRjdTSkczVhheXRH4mC/QA+pfnfG1mI0J7sgnTeGVR4x+UxrUA9fRzFLw
 l89nIC3hcpB8UNacf/aWUrUQlJfhuAHiOm0l3zQ67IeGb2yxOk+skJCbzn9iOuYd9vpg
 ph1VCHSZ3GzcK1fi4NhoUUIAAFZjFyjUxBmwS9CS5L0NioAzXKcG+H6OcxqsphrKfPSG
 +Spc9a0KSMFyj4kA1klr/Kcih+d9zp9Y+GeTVp5elJnV5NuYZwkbik+k07Z1zJIbm5qT
 CMKA==
X-Gm-Message-State: APjAAAUcuj5laLXJdzx1obhwnkyyjvMZwwet/ORywWJfJLyczkBnW263
 yO8/rvZao6IzhiouocbGIQKLh+s1FJqcy6Az4yg2rw==
X-Google-Smtp-Source: APXvYqzq6Vm4MF0LJmgPetQ0HfLygKQDroi15h3w98cajYBED64kJb4iyOD59iDuYqSx2M7otcQUFs5SP10L1YECnr4=
X-Received: by 2002:a17:902:fe8d:: with SMTP id
 x13mr6600338plm.232.1576110614370; 
 Wed, 11 Dec 2019 16:30:14 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-8-brendanhiggins@google.com>
 <CACPK8XctCb9Q2RaFVHEDuWxKDXpCWMWs-+vnKZ=SeTa3xRnT_g@mail.gmail.com>
In-Reply-To: <CACPK8XctCb9Q2RaFVHEDuWxKDXpCWMWs-+vnKZ=SeTa3xRnT_g@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 11 Dec 2019 16:30:03 -0800
Message-ID: <CAFd5g45MFYMK-eZWPC5fhm2OkynUXKfArUVhbanYVH+qKRUwPg@mail.gmail.com>
Subject: Re: [PATCH v1 7/7] fsi: aspeed: add unspecified HAS_IOMEM dependency
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_163017_976263_CE7029A1 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, Eddie James <eajames@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Jeremy Kerr <jk@ozlabs.org>,
 David Gow <davidgow@google.com>, Alistar Popple <alistair@popple.id.au>,
 linux-fsi@lists.ozlabs.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 4:12 PM Joel Stanley <joel@jms.id.au> wrote:
>
> On Wed, 11 Dec 2019 at 19:28, Brendan Higgins <brendanhiggins@google.com> wrote:
> >
> > Currently CONFIG_FSI_MASTER_ASPEED=y implicitly depends on
> > CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> > the following build error:
> >
> > ld: drivers/fsi/fsi-master-aspeed.o: in function `fsi_master_aspeed_probe':
> > drivers/fsi/fsi-master-aspeed.c:436: undefined reference to `devm_ioremap_resource'
> >
> > Fix the build error by adding the unspecified dependency.
> >
> > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>
> Nice. I hit this when attempting to force on CONFIG_COMPILE_TEST in
> order to build some ARM drivers under UM. Do you have plans to fix
> that too?

The only broken configs I found for UML are all listed on the cover
letter of this patch. I think fixing COMPILE_TEST on UM could be
worthwhile. Did you see any brokenness other than what I mentioned on
the cover letter?

> Do you want to get this in a fix for 5.5?

Preferably, yes.

> Acked-by: Joel Stanley <joel@jms.id.au>

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
