Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4930BE7EF4
	for <lists+linux-um@lfdr.de>; Tue, 29 Oct 2019 05:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n28CVucUlCgwy3EjEeYiaaNr6NlLWY5iUq1WA+Ii8wE=; b=ugmF9xLYA2ZpzX
	w2X9lwALbIOlwbMMS5bj6VuFtAOvY2V+6wocJ0JzgWaNIEwSjze/k4woCYi6Ta/0KB4c5xFOLai7E
	Epua0OWVcHZWjNnPS0pcpkjGxBXfsdj1Q/8UKVJ/Q0I3ASlrniMvXpzLsDi5wDyCL77DXq7phGOHD
	umgDTzvkK/8RwJik9rAKecqBt7BJ11Hh7FdHgoWucuHPgLv0l+Wx3G8aV/UuZM87f1yLfiZLJ1PIg
	8fyF0EUREN1FyY7DnkiIeHqW7oABJ4FT5EMuRRndHQ8WJ36doazKEzybEHiagQ+eim9P7ygr9Tzm2
	+YShC3iaKR3tr/UHmLBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPIkw-00069K-4f; Tue, 29 Oct 2019 04:05:18 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPIks-00068Y-Ek
 for linux-um@lists.infradead.org; Tue, 29 Oct 2019 04:05:15 +0000
Received: by mail-io1-xd43.google.com with SMTP id r144so13248074iod.8
 for <linux-um@lists.infradead.org>; Mon, 28 Oct 2019 21:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BVyY2bb1y1f3zbEQF0kB1OWMSoAc5b6mMNbzwhXoZHg=;
 b=VZaCONINII/HfAgvz5TaemptI5DrVYyfQazUaUA43i+LzZsT9umcUioFSss5oKDwVo
 wEqZ8JtcFJzxJVfLGVUQmI8tKWWhlbhWlzQtsBggQyZOqXfswugDbl3KDROvx3bC8tpH
 SUxCgiO7qqW3r3j0kg0QnJXb0bqt7MmOwpWNY+h8KG03372Kd/+19y0n4yvYcS0/wNEC
 mx87eYMRQIVL1TmIDfGq9bLuLP6OcfNRRRvFjbvYuIQuP9wTbHZ+sySKUa5D16aNRNFA
 sWnNlIgVJFaLHvzD8U6uVuka8pqKXMBuwILHdAh6PyE3QUn1EcmbzoUP5Jw6NpHHtmRV
 MoPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BVyY2bb1y1f3zbEQF0kB1OWMSoAc5b6mMNbzwhXoZHg=;
 b=OsIuxwwZ6mMEhEe4VNvxhCHwMxNv6jgp5nkuzF3eGF56PDIDK8z9QAfmqKyuLNjEyp
 Zb4W/tFT62sjSyAzcgFoP5tj2A5eHdEwuFqLUwZSkuRIFwW6QR4OYX1XZ5j+eFaJ85YB
 VnfPt9Eu5GIhoEccxOXWCbALRV5yN7EsoweNfY0kemWA5wKeRP4kjeqOSX2QDNIWQqdF
 3noFaagPdzzRN5aFpPcBXL/4wWHbYRnshB7lwL+qLXW3f3WM/V6BKzVCFbHhFQRjaEhL
 wST/bY4PFbghcqjSykneZKj5KhVZ5GAZ72gN6Q1SxAVqmK17FGl/u9OWRjMwGwI6rIet
 /9pQ==
X-Gm-Message-State: APjAAAUJHi4OwIcwSMAlbcGf62FuuV9YlcumMuFBd0o+n3R+wc77BcW/
 AiDjSClE0L9mGLXCJXFO6FBx8QOtayNroutJc/k=
X-Google-Smtp-Source: APXvYqwT3XkVJQQ5nkIWqi1AuaBGl7fD9XCXtwmzfDxe9nzE+jeYDaAdbWx6m1iiQsWO+bbKjhlta4aEeOUnYxbGZUo=
X-Received: by 2002:a6b:8e8a:: with SMTP id q132mr1463006iod.94.1572321910902; 
 Mon, 28 Oct 2019 21:05:10 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571798507.git.thehajime@gmail.com>
 <0b1464dd4904ee2b049fef624895ead3fe6aa555.1571798507.git.thehajime@gmail.com>
 <CAFLxGvzqPzZtUSzymWgnhGnr6qgcDe9ue6Q8ALMS-r_Y+KXVOw@mail.gmail.com>
 <m2a79mx6br.wl-thehajime@gmail.com>
In-Reply-To: <m2a79mx6br.wl-thehajime@gmail.com>
From: Lai Jiangshan <jiangshanlai@gmail.com>
Date: Tue, 29 Oct 2019 12:04:59 +0800
Message-ID: <CAJhGHyBy4ok+Sg7TyLaaksqEBDanmZgsk6ujRqXU1KFcu+DHZQ@mail.gmail.com>
Subject: Re: [RFC PATCH 03/47] lkl: architecture skeleton for Linux kernel
 library
To: Hajime Tazaki <thehajime@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_210514_546103_4310F091 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jiangshanlai[at]gmail.com)
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
Cc: levex@linux.com, mattator@gmail.com, cem@freebsd.org,
 richard.weinberger@gmail.com, staal1978@gmail.com, motomuman@gmail.com,
 linux-um@lists.infradead.org, retrage01@gmail.com, petrosagg@gmail.com,
 tavi.purdila@gmail.com, xiaoj@google.com, mark@stillwell.me,
 edisonmcastro@hotmail.com, pscollins@google.com, phh@phh.me,
 sigmaepsilon92@gmail.com, luca.dariz@gmail.com, liuyuan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hello, Hajime

I can't get how UML&LKL is going to unify even I read
the cover-letter of the patchset. After quick glance, what I
understand is that the patchset just puts LKL under
arch/um/lkl rather than arch/lkl. It is still separated "arch" for me.

Could you put me in more detail of the plan to unify them please?

Thanks
Lai

On Sun, Oct 27, 2019 at 10:36 AM Hajime Tazaki <thehajime@gmail.com> wrote:
>
>
> # dropping two Cc's since those are not reachable..
>
> On Sat, 26 Oct 2019 06:40:05 +0900,
> Richard Weinberger wrote:
> >
> > On Wed, Oct 23, 2019 at 6:39 AM Hajime Tazaki <thehajime@gmail.com> wrote:
> > >
> > > From: Octavian Purdila <tavi.purdila@gmail.com>
> > > +LINUX KERNEL LIBRARY
> > > +M:     Octavian Purdila <octavian.purdila@intel.com>
> > > +M:     Hajime Tazaki <thehajime@gmail.com>
> > > +L:     linux-kernel-library@freelists.org
> > > +S:     Maintained
> > > +F:     arch/lkl/
> > > +F:     tools/lkl/
> > > +
> >
> > The arch/lkl path is outdated.
>
> Ah, should be updated.  We will fix it.
>
> > So, you and Octavian will maintain LKL?
>
> Yes.
>
> > Do you want to be sub maintainers of arch/um/lkl and send pull requests to me
> > or co-maintain the whole UML ecosystem together with me and Anton?
> >
> > I'm perfectly fine with both variants but tend to the latter one since
> > it is less overhead.
>
> I was not thinking well enough for the maintenance procedure;
> I agree that the latter case is better, but for the early
> stage of this integration, I think starting with the former
> (send pull-req from LKL to you/Anton) would be nice.
>
> LKL is now on github and utilizes several useful features
> (CI test at each pull request, issue tracking, wiki), and if
> possible I'd also like to migrate those tools, or make them
> available to UML because this makes easier maintenance for
> LKL.
>
> What do you think ?
>
> > In case you need your PGP keys signed, next week I'll be in Lyon at
> > OSS, ELCE, ...
>
> I won't be there, unfortunately..
>
> -- Hajime

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
