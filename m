Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A87B10F169
	for <lists+linux-um@lfdr.de>; Mon,  2 Dec 2019 21:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWSzn9HAM+fapS3WG074DiDk0L+uECEpSxpC8B4NbeM=; b=iwb043lGsHeYGL
	AJCaCD0MG3u0s7UupS0r+UrecrVl88ELQ7sahhRoueqRsYZJPPDfeaNkd3vs3MXPIQYgFf7pkOdOU
	dkNyOwlLaYaknLtq2GGSKJ0Nt6jTOhDMYPNtEkNDKySozqQ7CS0aDH+zgWY0ShTYJaA6Xh4fJMnEU
	QoxML6LKYdPLQZrY9KLgMfEk2G820kw9dwOP7D+5lICX5glOXtd/3ebss9g4cSfAMAG94Z3zSHxRc
	iFZ+N2WDx6XuN/K+bVxASWAm2EcXkoy+er3dRztfAQjOCPevRnZbFwsb+R5IVberGcpD7jXmAkU75
	fQLKgWm9ngG+VSv3Qyfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibs5c-00080j-9v; Mon, 02 Dec 2019 20:14:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibs5Z-000802-Js
 for linux-um@lists.infradead.org; Mon, 02 Dec 2019 20:14:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so835692wru.3
 for <linux-um@lists.infradead.org>; Mon, 02 Dec 2019 12:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=diT/erWtpH8xOnNc6h0AHmnOF8X9usFtfRPRf6T499g=;
 b=j4pZVbTZ+YRVwFq9zrumv3iPeTKb7pU+jkMVjU4Ad2XKqvtBNrHAsxv/dhjIuh0npc
 4yC3Aww7ePrHnyN44fBYVf07YDJU/FOC+lp75KVJXjjlDbjY3hpvcQKw0GiNAJDEowNv
 zjxr9ZP37SvCwzfskIJoV4uE8+MNXGB2QS8VYa4x4S27MlUXoAsyo7qiQT37AyTNO19q
 XeMAQguNM+jQklJp+TXhF/RpBMqLD6o+Hf7OhbsEmXSng9vW7OuBTvrG3anDY8cBuN/b
 KLRmuy1qo6WBGVJjrTRPrdr+NJCRw4AQVt8GXa46i/Ir6Jv0DljWIaLh4W5DNWCfnnF5
 MB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=diT/erWtpH8xOnNc6h0AHmnOF8X9usFtfRPRf6T499g=;
 b=WQIBqXHmWNtEW1Axr4foj3Wqz0bxtzruOhuZI5JIFRFipPMhCimKFScVRYd/tQldVA
 fAKCPBGbpF4OrWJ9ykxUFZ3AdIxZQzD38d22QbWmHwWgjNT2KkptVAi0f7IPsXnQui1Z
 8RkgWZvIpHkdNQL5/ocM2YvJKkQG84hE9/jh6OHfxquctFm1hbkAdPLESn4JnW2Sr2y4
 w5RZ22UQIpX87alffvWvI54ECFekeblb9OSR25qPx7mj6obMtde4tEwZgbSbLbq+GYO8
 xNxBEnlNN21A65IGjo3wZiCF8cVNYoA9QLpdwbtTlkqDUDi1gU2z7Ob5mSbRRVVlshzg
 /JGA==
X-Gm-Message-State: APjAAAVvJL65vvgvs3Fx/kLHaiQcFZmc3LRWtLF/RpuDDZ/TNalLZMrQ
 47705GsGg4hJGYyNGxUOh3yfK9i/Qe1IGQYejWSetWoY
X-Google-Smtp-Source: APXvYqyi10cbPz/2mSbnjrIieEhcHyNzaWmoIC9vghhzD+vjbqSFsoyUhTuAMRz9mnhuRD7Ihv7PVLlGkNoFz9IFvrU=
X-Received: by 2002:a5d:480b:: with SMTP id l11mr869035wrq.129.1575317671439; 
 Mon, 02 Dec 2019 12:14:31 -0800 (PST)
MIME-Version: 1.0
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
In-Reply-To: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 2 Dec 2019 21:14:19 +0100
Message-ID: <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
Subject: Re: I get 5.4 fail to start
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_121433_655601_BC81DED7 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Nov 28, 2019 at 6:27 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
> Hi all,
>
> I get 5.4 fail to start. 5.4 gives:
>
> Checking that ptrace can change system call numbers...check_ptrace :
> child exited with exitcode 6, while expecting 0; status 0x67f
> Aborted
>
> And stops right at the very start.
>
> I do not recall anything there changing in the 5.2 - 5.4 timeframe so
> this is weird.

Hmm, I don't see this failure. What is your host kernel, your uml
kernel .config and commandline?

I agree that the macro usage is odd but why is it failing now?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
