Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8926E109575
	for <lists+linux-um@lfdr.de>; Mon, 25 Nov 2019 23:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSuVashYG3z4EYGF3rro0c3ThNDBpwjRgSRJaPL0umM=; b=pt3krt0sVSNpl6
	8l7AGabaJNK6V6GWJHYBWNr9kDs9EGoBVeNCmsj6Csq8qj3FNxjacBtfuOYtJmUwIYXEVftP2pKBT
	krxI8DWoVaKZYWPZiUiE7iOVRx/LPXDq0jCmiwDYERXaLIpIDj4s4t+q+CsI54YGb/i1GqxpNYvXf
	z27u/KJB75P45JQnVg6KEU04opo0+adQPbiDp7X5BxmcabRO7Dh2EYnUoyYbyUduTNc6rkPYf+hLX
	NtEv4+DMWmL4PCxdQhjdU4VrMCjFmXuuq5TV3i770O6PQJ/kZonI+PEdOqqBcwSEgP+ImGOV+nUUs
	q08mx+OJzF4SpWUmLRiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMcU-0002ua-RZ; Mon, 25 Nov 2019 22:14:10 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMcR-0002uB-Ms
 for linux-um@lists.infradead.org; Mon, 25 Nov 2019 22:14:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so20064756wru.3
 for <linux-um@lists.infradead.org>; Mon, 25 Nov 2019 14:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JnocSK9XyUn0ZqlRMZJ3ltGSG/toAyjUkuU9NoNKaus=;
 b=iqKrqJ467f0yKnyUk2TEn7njBaXQRj8M0Rc/aiVW6T+ie+T8RsfiYEC/b24uI03x+K
 d4eMcHF5Q3VuQTSvaN6z+JJ4GTJaOkzM1o2Wk7Pi8x6YOXguasuFUA9uUiNGJ+kLZI52
 yNHiTW2kFN5GVkaw6WDD6LvojEoWIdVRCJncWIRjCVdZstoS3Eci6Vcf8KsIFMtYg7Kv
 YBs7A5D4cPhZ1fgT+FVsHHd9gUO8QS1suwko/fcaK9m1d15i1X+eM+TklmEN8IQxhXUt
 ELuEqrqXpsc6quoQQeq50wNtSu2CQ0tmJ9gQ9Si/P25T0+fw6c/DztYozjKYxVfH9O8u
 h/og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JnocSK9XyUn0ZqlRMZJ3ltGSG/toAyjUkuU9NoNKaus=;
 b=lXU4YarcnDmNLaKB3k6YqZKyP08ky6zY270iIwr4mcfEWkIZvhbuyzpXasmXOSOrQw
 LcEAIakBWjqDTMJupFsWTkZojkbagGcjHr99lARdn6cBX/SCTi9f9rfYuW6K98qS3J0o
 It5rTnbTlcECAu3QDJi6BW5VBIv3SE6xmK6hI614sFvcIFqHp8gH9+aPHE2XhAONOm8x
 HQlD3dzzA0LL/LjTZ6/mAcWtOSTRyOxej6YhqN8fR7yDyH8UO0z96iet3Gv1xPY7KQLf
 xHOY1UYPrquLEzZWq2V2qycmJgbjXGVxtqwvz5kytRmW63XvsoU1tVSgFrrzMEPGqGkn
 DhVQ==
X-Gm-Message-State: APjAAAVQd+r/Cb+S8htkVWQh5mciBN9FAwriflEyXwm/Nyi/+1i5Puxz
 z3qYPUzRpjFxYY9yKhSkNskm3Qj+BLJOa7gspcM=
X-Google-Smtp-Source: APXvYqw+SM8WZpl4YyskjYCiWihobJQJUzJayThi9uiNUzS6AIGMAqFkbfBfF/nWqznjg+i0hGz/etrio18EQLRbYUA=
X-Received: by 2002:adf:de0a:: with SMTP id b10mr33987695wrm.268.1574720046298; 
 Mon, 25 Nov 2019 14:14:06 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573179553.git.thehajime@gmail.com>
 <567fd4d5c395e2279e86ca0bfca544ad2773a31d.1573179553.git.thehajime@gmail.com>
In-Reply-To: <567fd4d5c395e2279e86ca0bfca544ad2773a31d.1573179553.git.thehajime@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 25 Nov 2019 23:13:55 +0100
Message-ID: <CAFLxGvxytmS4WSFj2ibyJKCuR5TbspdNf6MvHNvzh9dtKx2rJg@mail.gmail.com>
Subject: Re: [RFC v2 07/37] lkl: interrupt support
To: Hajime Tazaki <thehajime@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_141407_771567_19F2B19D 
X-CRM114-Status: GOOD (  10.26  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 Octavian Purdila <tavi.purdila@gmail.com>, linux-um@lists.infradead.org,
 Akira Moroo <retrage01@gmail.com>, linux-kernel-library@freelists.org,
 Michael Zimmermann <sigmaepsilon92@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 6:03 AM Hajime Tazaki <thehajime@gmail.com> wrote:
>
> From: Octavian Purdila <tavi.purdila@gmail.com>
>
> Add APIs that allows the host to reserve and free and interrupt number
> and also to trigger an interrupt.
>
> The trigger operation will simply store the interrupt data in
> queue. The interrupt handler is run later, at the first opportunity it
> has to avoid races with any kernel threads.
>
> Currently, interrupts are run on the first interrupt enable operation
> if interrupts are disabled and if we are not already in interrupt
> context.
>
> When triggering an interrupt, it uses GCC's built-in functions for
> atomic memory access to synchronize and simple boolean flags.
>
> Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
> Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
> Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
> ---
>  arch/um/lkl/include/asm/irq.h             |  13 ++
>  arch/um/lkl/include/uapi/asm/irq.h        |  36 ++++
>  arch/um/lkl/include/uapi/asm/sigcontext.h |  16 ++
>  arch/um/lkl/kernel/irq.c                  | 193 ++++++++++++++++++++++

Like I said before, this also something to unify with UML.
I'm aware that this is easily said but we cannot have too much duplication.

Feel free to ask if UML internals give you headache. :-)

--
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
