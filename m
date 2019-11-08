Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44EDF4585
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 12:17:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dc5bFtR1EukfgQmmffwsZ19F5i1BxdG4VN72v78AZno=; b=s1WJenh6ltMWhF
	V76Oj2i92RyY4METE4WEGiOg2FN74h1T4SY7q0BX9xSmdznovM7IRNZOncWZ9PiUEftn40enTrhxX
	LTkfoxsiqEJQPgFJZmODZvmq/K9HD4RSD3/N64cXHFczCb7gzn4NSB2zaUJCwSvW91DPxgOmt8oOn
	v9rK8mZHmg5fi0dSH7uorzy7ZTdhBrC6iFKdMZte6gDlzbg2LLLIY0r5ZysGrkguKqI0FsZoSzlsP
	oIBUi195ScfUHKX4ybrEDebABDfZLhe5+0U1lRRpzxkNDrDGiVtRd9kSCI/wxSZaOZEYEz6zJok1d
	+PzqUdDy2tNKvp+p3b+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2GY-0006L6-3E; Fri, 08 Nov 2019 11:17:22 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2GV-0006Ke-CU
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 11:17:20 +0000
Received: by mail-il1-x144.google.com with SMTP id z10so4794210ilo.8
 for <linux-um@lists.infradead.org>; Fri, 08 Nov 2019 03:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1qQIKh0Kx09yt4UlfZE0QQimqZJs0HRuw35Gf2JD9II=;
 b=IVmR8kmezcJBZmhiWRutQsbwJUs8c5A02ZMQsI74eWnXopE6xN9Kmsofu1U8/Dz01Q
 c3n7sOSgQh11xtexkOR1DgTOKczAbkcdnnT62OQJL5/huG5dLZHCrt6sGuvYXEKdWbpF
 /NSQ3lGK9mtKu4KqVyf7ovhlczzCt5k8KfVuCzuqtW7Iwe5dKSjMUDufTBvOLczQCUVZ
 UEaje+bimWhJ3xGYLAAlToAH+PAAeYW7uSt3iwUlcC3LklYy/FTreUej6lujxpaTOcEz
 OKO00wgy41ZJqoYbUBlJ+xg3Ctb+O+iaQu62mo8NM1LnYQbgULw7LA2CWNVY5JUMUC14
 HZYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1qQIKh0Kx09yt4UlfZE0QQimqZJs0HRuw35Gf2JD9II=;
 b=psIi2Phci9YI8R9THthOalwRjRQVwTmtbqZ48otTFd8kIO8H1zn4wipY/OYsjXb3b+
 f28ILAK8aWreMMg/OfWhez+ytgEudYcuYXYN4Qq3UNQB0KMdg5qIRDwW7LrNybudLIGf
 tibViGPZPK/ltUFRHvleankcgpjpzQZEyY3KMKFc86niLkRafJGI4H9k55cycwnv2/HT
 i+n3CogBwNDVXdWPBagLtmN1rxTs529FdBIwZUzv+Hp+hfS1WJ62oZGcILNhImrXZGgY
 YuRpO12cE2qNtcHw623UJyfCkDrHa0b4qgwCwK+LGKoXd5mFgi8z7Wxs3KGa7jVRNpKa
 OKVA==
X-Gm-Message-State: APjAAAVKP2ffSP7p13/D46OngzDecFijS2k2I0FfUiEH8LZK3qj1O4AZ
 Qfef4enHzOjmXVGVgRDMUWDS9VuHHRPTIGqm5/g=
X-Google-Smtp-Source: APXvYqzwfYLNbik0CIvHznokXJnf6z56trdXVHdesXaKPD73Fgji+qOj96Mb9E45pfStlkOpQAWWF+Dd6gopE0z9Sxo=
X-Received: by 2002:a92:8108:: with SMTP id e8mr11444965ild.209.1573211837950; 
 Fri, 08 Nov 2019 03:17:17 -0800 (PST)
MIME-Version: 1.0
References: <cover.1571798507.git.thehajime@gmail.com>
 <cover.1573179553.git.thehajime@gmail.com>
 <a4d1cb5c-04cd-b6c3-bc96-c5ef08bbcffe@cambridgegreys.com>
In-Reply-To: <a4d1cb5c-04cd-b6c3-bc96-c5ef08bbcffe@cambridgegreys.com>
From: Octavian Purdila <tavi.purdila@gmail.com>
Date: Fri, 8 Nov 2019 13:17:06 +0200
Message-ID: <CAMoF9u0EA=D=mpMy2fZ8=Et3rxrjnjDmjGRdcz83nGhS2eOKVQ@mail.gmail.com>
Subject: Re: [RFC v2 00/37] Unifying LKL into UML
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_031719_448183_2FE6A7A0 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tavi.purdila[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, linux-kernel-library@freelists.org,
 linux-um@lists.infradead.org, Hajime Tazaki <thehajime@gmail.com>,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 11:13 AM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
<snip>

Hi Anton,

> I am reading the patch-set and I have a recurring question as I read it.
> It applies to IRQ, mmap IO, timers, devices, etc
>
> The question is: "What is the unerlying req to replace the existing UML
> code for the library".
>
> F.e timers in UML have been moved to an underlying POSIX timers call now
> and that can probably work on any system that offers it. If there is
> some presentation/documentation/etc material which I can read which goes
> through the actual choices it will be very helpful.
>

This (old) paper should help with some of the rationale and design
decision behind LKL:

https://www.researchgate.net/publication/224164682_LKL_The_Linux_kernel_library

> The same question applies the other way around too. I like the hostops
> approach, we can probably adopt some of that in UML proper to make it
> more portable and easier to have alternative implementations for the
> underlying host side operations.
>

The host ops part is not properly explained in the paper as it evolved
over time (they are called native operations there), so I will try to
give a high level overview here.

In order to make it easier to compile LKL applications for different
targets (OSes, architectures, user/kernel) we decided to use a two
step build process: a kernel build and a host target (+apps) build.
This helped us reduce intrusions in the kernel build system while
allowing to support the various requirements a host target has. As
part of the first step a lkl.o object and a set of processed kernel
uabi headers (to avoid conflicts with host Linux kernel headers) are
generated. These are then use to build a library (liblkl.so) for a
specific target. Here is where host ops are compiled in together with
the lkl.o object. This is the reason for the split between arch/lkl
(kernel) and tools/lkl (host target).

I think this build split is the biggest challenge in integrating LKL
with UML and I think once this is resolved it will be much easier to
merge the rest.

I am curios to learn what you think about such a split build for UML
and if there are any low hanging fruits we could start from.

Thanks,
Tavi

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
