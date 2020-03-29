Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7CC196FBD
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 21:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5A1y/mBlrRzV68ChPjVsfcDt6ajRr1lYg0Oj/LXzDjY=; b=b2oG3XXcKDzXY1
	JP+pQDAuiXA2rC4G48HOnmrjsjCJgWEWI2NOjMAWZSI1mP5oXeQgJGD1wrG0aWJxP6tPSXXmB9F5A
	uHHyHvqhkjz+g6sffGaTL3qJOs7AwjSLSXEZ3hKnja3pbw9VciFljf6iXIoAhufnDb6KNCzF5eOKd
	IlMeJGQzLLP7LctiTN4F2aQsZwHMwwxv22wQjSeM/Pg0NgQjVZAWfTxVQFLRTc5W+34zwtyRKPRPb
	um0qb0LXqS4hZ7WmuAReRQGjLIOYskHe1TUnXQnA9fMyjix/42EJ87GueuyDFtyAeqDzBkfXU9W8S
	3FQ1xctj0uAi8exPEuWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIdjk-0006yE-KW; Sun, 29 Mar 2020 19:36:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIdjh-0006xm-K5
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 19:36:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id f74so7913928wmf.0
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 12:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ta2hSKMRpS/AN9gegerBk7ytjm8i2ZxKCOjJ8lOLIds=;
 b=ihHLZXjmhq8lwJEkPsDM7q34/eEjT85N0YoJ7iasSRmlFMTbu1eoLFt22XgneSGtVq
 UCezat+vFSuPwwzzthBSorQPwKmZvbR1ryofJbK9bqrVySgHsTBsskapqKXUc1n0/wnt
 Ii9tGyVJTBs/A3y9D9xbzPQmnlRp61+Gnc3Zvopz+QXmg9QV/GH2JMnyH4FgIrS6x2AZ
 1OQ702R4cOvovqGT3lHN4D9n9RAzq3nXX11qJV553FzVsjdBb009D37YamJA1+FBfDc5
 +cZH43meeMa4W27yXSaEyfj7zLygtmEunw0Cy7IdQ0t2k1+60oTk9QTcwukC7MxhN2Ne
 cIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ta2hSKMRpS/AN9gegerBk7ytjm8i2ZxKCOjJ8lOLIds=;
 b=COonllO20CofZlthHJVgezuoXbKuT0rFdtxyD4wSoh6gY6nhLBB4K4IwsuzMzaPzf3
 1en0Oc8Bwx9JIVTKaY002OrNfYR1XLC0aSgr7cBR4dqXcejW+9dbTUiMSZMHHBwQv1Ov
 E035JJFjQhdBkdQKc3Li9YMroTnOfdjLKzzmnSuJqbiDU+FlnN7MLAy8nc/nbMUeVg3L
 seS8Pu5bkQK5lI5ZBaqTDWO9zZ14cgtHGA/+7XLaBQHLZWGTEKRjRSxtkw98tbGdvNCG
 6Nc3VxY1jSuqPR0KX/rJ3hPtGPXg1c3DVNNVAdwOq/tFEFp81+fM31XpKoYfPtPyhh8y
 xeng==
X-Gm-Message-State: ANhLgQ2xKHSHPiKYJH9H8ntGdo6qJonJJFUVB4+x3RN6BA7+A5cNSTwC
 1s0prcj+k9xf8gJNPsChDNn95TZR4B6uaLLiv00=
X-Google-Smtp-Source: ADFU+vtgjWi68O/FIMGHDjh/M3FenKGoULHXrDFwn5McGfDwhoYjjYJKt25GQsqKvuE/sjuu5p9rqQt2XUlar41yFR4=
X-Received: by 2002:a1c:2e10:: with SMTP id u16mr9071920wmu.143.1585510602721; 
 Sun, 29 Mar 2020 12:36:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200206204018.98f745aed1a1.I986f68ddedf1cb4ef59abf4fbcb5931ce99bc2e8@changeid>
 <CAFLxGvz+vs+zD8=Y+eE1RA=QhkWYPea5R9o5vrhLs3jz4G-wGg@mail.gmail.com>
 <738a7f3393e1b161521777e3422513f9b6ac7c7b.camel@sipsolutions.net>
In-Reply-To: <738a7f3393e1b161521777e3422513f9b6ac7c7b.camel@sipsolutions.net>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 21:36:31 +0200
Message-ID: <CAFLxGvw7ucjGr0xv2_KRg3G7jBmL+bv+H3jMqFShFbWpP-xxbg@mail.gmail.com>
Subject: Re: [RFC PATCH] um: implement CONFIG_CONSTRUCTORS for modules
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_123645_686218_761933B8 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Patricia Alfonso <trishalfonso@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 9:32 PM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Sun, 2020-03-29 at 21:31 +0200, Richard Weinberger wrote:
> > On Thu, Feb 6, 2020 at 8:40 PM Johannes Berg <johannes@sipsolutions.net> wrote:
> > > From: Johannes Berg <johannes.berg@intel.com>
> > >
> > > My previous attempt at implementing CONFIG_CONSTRUCTORS failed,
> > > in part because it was badly done, but also because we just need
> > > the gcc/libc constructors to run really early for what is really
> > > a relatively normal userspace program. For some more details, see
> > > commit 87c9366e1725 ("Revert "um: Enable CONFIG_CONSTRUCTORS"").
> > >
> > > On the other hand, we *do* need constructors for modules, if we
> > > want GCOV_KERNEL (and eventually KASAN) to work there, since the
> > > constructors that gcc emits will need to be run.
> > >
> > > So here's another attempt to implement CONFIG_CONSTRUCTORS: don't
> > > touch the ones in the main binary, and don't do anything in the
> > > main init code (do_ctors()), but still allow enabling the symbol
> > > and associated code for modules.
> >
> > I have to admit I don't know all details about constructors.
> > Do I understand this correctly that constructor code is never code which
> > depends on kernel internals? So it will always be gcc internal stuff?
>
> Yeah, more or less. You *can* mark something as
> __attribute__((constructor)) and the compiler will emit it properly, but
> that's not really something we do in the kernel.

Yeah, I grepped for that gcc attribute and didn't find anything because first
I thought the main use cause of CONFIG_CONSTRUCTORS is supporting
such things.
As soon this is the case, UML will fail badly. But this can always happen. ;-)


-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
