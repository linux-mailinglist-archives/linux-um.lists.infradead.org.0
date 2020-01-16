Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4648E13D626
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 09:51:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8OEIMohpMV6w7VlT/q13NxFV74/T3/E+gh3RCGLark=; b=Rprx3BbHUXsNrG
	m2VpMo1Kw4rCiv92u7HgLLrH+ihlESc9YiqRJUYSEGX4/Fc7zUgrSYWdgjXFbAS1a/+w+zWEz6S+Z
	QJwZuaXS3XIesMPseTDONMz4IPYV/K8QQw/Zrs79CsV4029zcRhnVnuSF12f3+L4wjhDou7f/SdmY
	nsFrHzPHncLpYkxOp09f6bQgz+KsQ0RDHESdXkeRklovlPcdxxWKpIMT77q2338q2EVMi65d/vRMq
	UbdsW076Hx+udXuScLqEg3BnIlBKKDXd+NwxeAdfwmpFim8WCMvorz2KS3tQpXW+mEzOmEpMegEyi
	h6duT40vrsX2YzotNjkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0s0-0007dP-Uk; Thu, 16 Jan 2020 08:51:16 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0rt-0007bW-Oo
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 08:51:15 +0000
Received: by mail-qk1-x743.google.com with SMTP id z14so18395743qkg.9
 for <linux-um@lists.infradead.org>; Thu, 16 Jan 2020 00:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+h6b4jmAptddyium2DNixs0SA2T98LtobyUWbV5HXPk=;
 b=cEP6hLoUDDCAQBbgMAbebWuqtACfXmf5wW6edBHv09T3etgbPPYT/FdGhKb04CfIYU
 eQl6wKYdaiyUSbMCjmVFc2sQ3VaVkFjJAzX5Q6ZWRo+sVD5xVrkJj5pKd6WoN56aXMLR
 8+YivdWqZ/smqzObp0Cx4087TduAqWhuSEwthMEvTgzXx6MlYIbUmXXs3YmWCV6Y89IU
 uksCLAXvgz8IFZgAwYu45bqeb0xsyiLRzzBCZsHuUHIpGUAYM1ELyO+bAEFsqp51TL+3
 0h3rNZjwJY3pPVJLSqVen1k6gw2/GZe199PQYah6mYAE/rwQ/jAOammuh9USA8qAw80l
 ifeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+h6b4jmAptddyium2DNixs0SA2T98LtobyUWbV5HXPk=;
 b=g6w8Hg9fT4fV1knFZS0pmOwS+P2BwsLkUykzQc7se6t6tHtVUtba4+mhgo7wG4aiAd
 OxT6phvNoVXg8erODibXehcyXfpf8efQh38ScVZLIBfcf+RydpsrAOiYFYpqkqWZjaox
 Mx6JB1IPv+e8KfgqvnkyQhkqpWEpsWSZoEPWjePn9GyKlCHpdO85sG19MNsHBptpV03I
 Ry1ccnu0reZXrR+l3FrKnCMmUSVP0nGHWPAtgrqQcsi3tqq7deiSLfTVhtlzZW364O1n
 JRMzL9gj013aSixqcG4rrALfDydeDh1Py0q3DpoKws0s6Nu4FcCy1JPNdw9o1NihQUe7
 zDdg==
X-Gm-Message-State: APjAAAVmGsw+y58WhyAF9neT7sbJP9ZOf5m8uZPbtLsXxyLLe82Oe9k7
 ppy0mkrER52pJmvpPqCe8p3b/MvkLfx2XFVHc1opjw==
X-Google-Smtp-Source: APXvYqwVV+ZjH+7ImSbUTopEXLagRm1XNqLA9lSgvbh2sUqBYEr6rH2tk6Xs0k3/Bz6og7jZ66aco8yKXf4tMGtExgQ=
X-Received: by 2002:ae9:eb48:: with SMTP id b69mr31096328qkg.43.1579164664973; 
 Thu, 16 Jan 2020 00:51:04 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
In-Reply-To: <20200115182816.33892-1-trishalfonso@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 09:50:53 +0100
Message-ID: <CACT4Y+aLYjJmGHPGN=vRTv9LUxC1uxR1CkP_rrY0958cpQaqhg@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_005109_811828_6508B919 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 7:28 PM Patricia Alfonso
<trishalfonso@google.com> wrote:
>
> Make KASAN run on User Mode Linux on x86_64.
> diff --git a/arch/um/kernel/Makefile b/arch/um/kernel/Makefile
> index 5aa882011e04..f783a7dd863c 100644
> --- a/arch/um/kernel/Makefile
> +++ b/arch/um/kernel/Makefile
> @@ -8,6 +8,9 @@
>  # kernel.
>  KCOV_INSTRUMENT                := n
>
> +# Do not instrument on main.o

It's always good to explain why. Otherwise it will be stuck there
forever because nobody really knows why and if they will break
something by removing it.
This comment is also somewhat confusing. We don't instrument the whole
dir, not just main.c? Should we ignore just this single file as
comment says?

> +KASAN_SANITIZE := n
> +

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
