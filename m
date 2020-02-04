Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26A7152231
	for <lists+linux-um@lfdr.de>; Tue,  4 Feb 2020 23:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKA+rkVm6xfWbYR2s/2W4RDzlcDmDqroW3GBRTDcBjs=; b=dRTO3I5x7QAv7O
	n1zoPeVsvlENb1bAMos7CSUX28CZ59d7EhsoJZQPMrlKHsK2GFj07V1z9bNfFdnsl5qrE9dxN9rMD
	BsnLltDpy5dH73dBEQ+i9zlN9avdeqp58g+so/LG+x2pj6IndZBAXy/iAomz4NqJqZXn5EV7A/jb8
	MbV22EDloTD9owHMF8BiLCROAwaAaQ1jK5BqD2g9hGAWZRMj2qHvwXZ+AXfSU01vDOj2VNw5M9m3M
	kKXv+3F+jxRRPBF42Mn7U+biGZ7o5xrwm/dxq+fBXyoQ/+y989tu7/XyKu2gP1KlXZBthcXFcu2nb
	f2dp5pPE0wGP31QxweRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz6GT-0001XT-1j; Tue, 04 Feb 2020 22:01:49 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz6GQ-0001Wk-5j
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 22:01:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id d9so7841465plo.11
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 14:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2gbLrEwk02zWD7CENpU+Y79Z4g6lABXP6G5204ZKfF0=;
 b=E0oUbKMeJ/0TYgw6tXi/MO3OscDACPIaTiAsWEZIXsQv1vNqtOobaC90NrPhXEpUYJ
 VssEyhthK9sByNSf/0MA5pn1q0+p1fv5/odVot189qFvsw1AJiFPZ1PMYV/iI4RKyOLp
 HJpmQkUZn4rwRCt+vIJZMS33fKHuIoaYsQ/BiBHFLf2hnVTthuZv7xXW53bOzIkoQXZ2
 82EOY+PI8EH9bdWbEInMwvP96+SdY1qHoHdF4wCgQ6t3r6pqFjL5pRm/JztJrnVDKGI5
 Lqtcr5XKBzE8EOobYkPpHanqQUdwU/9+0Aawc8tVHXQ0jI2uBbrwh9o6mCiu9iY0TSI1
 HlxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2gbLrEwk02zWD7CENpU+Y79Z4g6lABXP6G5204ZKfF0=;
 b=NB5thiy8CYa8ebsa0Z5NuPDyM+2aY0Am76lAV2ZdkkXOPydE3cbM/w5msDS/QMJAHp
 tvTAG6CZYfVK9nZTBNXvLTtf4u8HVC42DcdmPI34ZcDJ48bW8vCeviG4iaPAkzosu3wO
 Dde1nGXfzX13FHXh7JhIw1gxSfZUO9VUwfp4xAVJyq8CNYGQ4Bnvi+mJ8OOQHGIs0i+A
 7Q+m42M9Zc1F4MMWhFKE6oJEb/+Mvkt8tQzGWrSd6qKbUY04ATw9t88wB6qYxiOroR/f
 NsLtmEu/RirTXWMtfhQ/ov5/EFD1n679QOvxIsMFUWOqnTLQ09vMEn2db8uM+yyMpKAW
 IesQ==
X-Gm-Message-State: APjAAAXZ0Su3mnkdZwkCI+BGCOzemt4MgKtHUGfPOWQdls87aF8THM2y
 XW9oZP+17G8HWvN0A8nbeltHBTbc6DXoZGAVir8pRA==
X-Google-Smtp-Source: APXvYqxbz4sx3QIM2DYLthc3QPGt7xVW390CJ1zhH8z0BnZ3BPAOQ4lgq+vVdXkWYRiV/OfTJYB2C5zBqBukoNrw4CM=
X-Received: by 2002:a17:902:fe8d:: with SMTP id
 x13mr32553040plm.232.1580853704991; 
 Tue, 04 Feb 2020 14:01:44 -0800 (PST)
MIME-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <9e203718-dcca-3145-bc28-28979d41c278@gmail.com>
In-Reply-To: <9e203718-dcca-3145-bc28-28979d41c278@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 4 Feb 2020 14:01:33 -0800
Message-ID: <CAFd5g45MQqGLY2xCjAmJz4-xxHwBo9DBPphZdnQMHDe=d-2K_Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] kunit: create a centralized executor to dispatch
 all KUnit tests
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_140146_240608_AD4133F2 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Alan Maguire <alan.maguire@oracle.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 1:18 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 1/30/20 5:08 PM, Brendan Higgins wrote:
> > ## TL;DR
> >
> > This patchset adds a centralized executor to dispatch tests rather than
> > relying on late_initcall to schedule each test suite separately along
> > with a couple of new features that depend on it.
>
> And the "couple of new features" are .... ?

Sorry, I thought I addressed that in the next section, specifically by
calling out: printing the test plan, and adding the new kernel command
line option. I will call these out here in any future cover letters.

> > ## What am I trying to do?
> >
> > Conceptually, I am trying to provide a mechanism by which test suites
> > can be grouped together so that they can be reasoned about collectively.
> > The last two of three patches in this series add features which depend
> > on this:
> >
> > PATCH 5/7 Prints out a test plan right before KUnit tests are run[1];
> >           this is valuable because it makes it possible for a test
> >           harness to detect whether the number of tests run matches the
> >           number of tests expected to be run, ensuring that no tests
> >           silently failed.
> >
> > PATCH 6/7 Add a new kernel command-line option which allows the user to
> >           specify that the kernel poweroff, halt, or reboot after
> >           completing all KUnit tests; this is very handy for running
> >           KUnit tests on UML or a VM so that the UML/VM process exits
> >           cleanly immediately after running all tests without needing a
> >           special initramfs.
> >
>
> > In addition, by dispatching tests from a single location, we can
> > guarantee that all KUnit tests run after late_init is complete, which
>
> That the tests will run after late init (and are guaranteed to do such)
> needs to be added to the documentation.

Yeah, that's reasonable. I am not sure where I should put this in the
documentation, however. This seems kind of a technical detail, and all
the pages I have now are more of how-tos, I think.

Maybe I should send a patch which adds a page detailing how KUnit works?

I would like to get some other people's thoughts on this. Such a
technical guide wouldn't provide me a lot of value, at least not now,
so I want to make sure that something like that would be valuable to
others.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
