Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB79319708D
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E16O3DxPIRhyLcyGYFM9+wcqPEJjHrM5hsFxVVVpZ6U=; b=IXHTtcu6KjjYhL
	oolwT404ACtRju1ficzZRFYtI566srFL3xt50/FZa95O0bkC3YmJ65CvRR0EvlJVOFHx+UhSMZgfH
	dxXN7dU6walc5YyZOlm7Lhn8uKyfozSjYlARkpkVW4Mc9mUamUW2vA59mO9mELg1UNHcz9hygvCGW
	EY6IdBQKo7h+MeJKxKveMt/tX/YGnna2y4GDUOSDv0ceu/J2wRPPDPhvkJveLejIdyR9V6MSPVPqV
	Rmgp5zk+OHxSy6D8AarF+ihGirRswkzaukg1hTyiiP/0XA/KdGuwLDHbus7LRTn2m9JMieV3/qmb1
	fFZLhsV7kfrF9ids9ILQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfc8-0008Fo-EP; Sun, 29 Mar 2020 21:37:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfc5-0008FP-Qp
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:37:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id t7so18808481wrw.12
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fiUq/Qy0Jdk4C25RTWkCSIXuydqQLZBXcphbJ1plnSI=;
 b=FwswQBNnaTnHkDu+nF4LRju2mmY5DyXrGU2YtlP5s+q37RXFJk/9rueUYGcUeY5COO
 qj9MaDnD/LwuBD/A/g9Y2oYNxyT1IyJM/KXEx6umU/3YfIhgd1+MMe86OD1Y+vHWOFbQ
 GyX597omps6lqAzktrGfA7ARq7t1sgJqzFuyauuECL6mZ5q2Y+zztaXu/cI4iBn0V8Mm
 BzDpWvdS/b0liOgODUHSK7NK2olKLn5JKYou4tYJ2CWv71npxI8XaQO4PfNe8ab37j6L
 702yPM4oH/q/2CiECX9YfVDGolEoypDw5nO52MxS7+lz5x/1PTTeDYvIeoIGdDx98R1i
 sg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fiUq/Qy0Jdk4C25RTWkCSIXuydqQLZBXcphbJ1plnSI=;
 b=GYxHtj76dqPfD5vmLjvl2e4Hcujahk8hJZ6NTmXKJThb3UTwPHKUzIUPTjh1ueaRpH
 s0laR+8CpSi7E0OCmkBHWNusB8A6GZSCGylcJLp/SKgGlV6+2kIOjHr7UQbAuD1r2sv5
 KDwV9DwVyg6OHtvAkbf01RC4QmzmoPOG+CGV6ujSors/tlWnogISNMoBa5vNxdHkKcIr
 JzY0qURa+tJm/Jo3Fnm1nekkxTsWqP23YWPyXfQ/6TWuOjjh0ONPefElkmBj5u4tfJVT
 zIQasFON6WFHk9zUt9RRRKp/WQdOOvFy1TnMEk2sxnbEdmW587ZoPamPiJim8WCsWn13
 Befg==
X-Gm-Message-State: ANhLgQ0TldX1sa0Gs/zklBbwJO837pr22nBY6Fwbarzwnf3shRDVeHl0
 /wsQmBOA7cspwZqYnDJ7uqSx6KwE9+Lo9CzT4FY=
X-Google-Smtp-Source: ADFU+vvW7szreVrhXA/L9mNLZwPdJwXKaL3VD6AJpZZsSKxl/TZ7Ds2gZK1mvqDe5q8cruL9wkyLMxUVT4DTxsFKOvA=
X-Received: by 2002:a5d:4885:: with SMTP id g5mr10993253wrq.93.1585517820035; 
 Sun, 29 Mar 2020 14:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200219134442.68744-1-wenyang@linux.alibaba.com>
In-Reply-To: <20200219134442.68744-1-wenyang@linux.alibaba.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:36:48 +0200
Message-ID: <CAFLxGvyZ3k=v0KWNn6GR9gqDsW5dz0F5CHo_4R11G+bUNaB2+Q@mail.gmail.com>
Subject: Re: [PATCH] um: fix len of file in create_pid_file
To: Wen Yang <wenyang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_143701_870675_5A377D3C 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 linux-um <linux-um@lists.infradead.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Alex Dewar <alex.dewar@gmx.co.uk>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 2:45 PM Wen Yang <wenyang@linux.alibaba.com> wrote:
>
> sizeof gives us the size of the pointer variable, not of the
> area it points to. So the number of bytes copied by umid_file_name()
> is 8.
> We should pass in the correct length of the file buffer.
>
> Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
> Cc: Jeff Dike <jdike@addtoit.com> (maintainer:USER-MODE LINUX (UML))
> Cc: Richard Weinberger <richard@nod.at> (maintainer:USER-MODE LINUX (UML),commit_signer:2/2=100%)
> Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com> (maintainer:USER-MODE LINUX (UML))
> Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com> (commit_signer:1/2=50%,authored:1/2=50%,added_lines:27/28=96%,removed_lines:9/10=90%)
> Cc: Alex Dewar <alex.dewar@gmx.co.uk> (commit_signer:1/2=50%,authored:1/2=50%,removed_lines:1/10=10%)
> Cc: linux-um@lists.infradead.org (open list:USER-MODE LINUX (UML))
> ---
>  arch/um/os-Linux/umid.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/um/os-Linux/umid.c b/arch/um/os-Linux/umid.c
> index 44def53a11cd..9e16078a4bf8 100644
> --- a/arch/um/os-Linux/umid.c
> +++ b/arch/um/os-Linux/umid.c
> @@ -220,11 +220,12 @@ static void __init create_pid_file(void)
>         char pid[sizeof("nnnnn\0")], *file;
>         int fd, n;
>
> -       file = malloc(strlen(uml_dir) + UMID_LEN + sizeof("/pid\0"));
> +       n = strlen(uml_dir) + UMID_LEN + sizeof("/pid\0");
> +       file = malloc(n);
>         if (!file)
>                 return;
>
> -       if (umid_file_name("pid", file, sizeof(file)))
> +       if (umid_file_name("pid", file, n))
>                 goto out;
>

Good catch, applied.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
