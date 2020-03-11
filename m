Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AA9181610
	for <lists+linux-um@lfdr.de>; Wed, 11 Mar 2020 11:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxd+h4lDtGjkv8+URaHWMFqtnCIOCu1Bvb88zyvMD2w=; b=IqOW2GgBQrawwT
	fV6sPIMocaL06sEIm6ymSX/YMl3Vzt7qjm2+QRNegAI0oL0fyyHvVgMCvUzjXoxVS92b8B2olQVzv
	1L0+y4MwOJY908QK3FBmeJoAweI3ok6+vQD1WiKwpl7KIac8eAFF6bTiiY9WkQOiChPE4Rwmge6Gm
	C2AZ5kac0ZJNiGFbQlZ7PUAMDklRmvh2fFLRg0fbcInPMfc7/5xc/SqzzV2hkeW5iQs1PuiCt7d+X
	JFPZtuaGRvoVgsXmqy8kQp6QIqSCsamv8iwTGGweeUZe8hW93JKhKxqp1i085MmkoZfZSJImIttho
	jgyv2xlOIKpUIvo6RiRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBysr-0005wz-75; Wed, 11 Mar 2020 10:46:41 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBysg-0005gZ-Uh
 for linux-um@lists.infradead.org; Wed, 11 Mar 2020 10:46:32 +0000
Received: by mail-qt1-x841.google.com with SMTP id e13so1152756qts.6
 for <linux-um@lists.infradead.org>; Wed, 11 Mar 2020 03:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q8RSBQ1awf7J0+pbXujt6gnSJdQq7hBnAow/IoAFi0c=;
 b=byWNOnaBSpcX4NgglDMaAl/iu/+Se3lc7hoi0h+nNEWULQmNMK1lsgjxTzb82gp/VF
 5cJCyhQrSwzYySv1MAkIjiotOuSnlZY1qtUV8cX5+o7aPYgFXBbgO1WCcDTn0gWrgmxI
 1cGW9tx0SckKW9lrIHfxte/TacXzDe/6zNeA8LjEEUWUVFUgehnf7irKNs3/piBl5Te3
 r8HV5dSUvdYp0qFBuXosUVXhlewJ4EBkzJxGHxrn1IdlERUO26R0Sa4U01MSYYOXqRsE
 a9ItxmXAH+fbjeibEqTPho121UE/eTz8r/SHy2CMuzJfodDlCXCO+eD2/Nb6kpl3Ge+2
 xi/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q8RSBQ1awf7J0+pbXujt6gnSJdQq7hBnAow/IoAFi0c=;
 b=cOEGomBFMBUQ1w4HnbtZ6LX+e7/RXAN+xJ3h0Ls8aqQDvNhmtJWLVYPTmpkvPFI2G7
 e4KEoNWetdUKfnQzhOGd5Qkr0gB9sxUdq+xCUzQNhJfQAMpULHRkA3kMZGnUnGijzCCv
 s3aiH2J5yyRwtnkk7PQR02h87AlioJV1N5pUdPHiYPczqlgcaO2YnB/s7yKmJpAqDbAZ
 TvAlFmagH2u2oFvrifGsxX5FFJRka+CC8POSGAByqADoyBT+hkuZNANdzAMTh/4dS6zG
 jhw7UWRhzGKRVloyfWhG4Bfodx39Mku2JcGyoG1YUU0TkBkmdMa9NQWsjoZZaTbO5Hgi
 b9LQ==
X-Gm-Message-State: ANhLgQ33CY4uStedQvi4h+iIPDSrbI+IU+EENLwXMMIX8N4NtVWGhPAy
 CUwh3EeLzXWqviIfmS7YalsEQqIXww6Jmg2zyBezAg==
X-Google-Smtp-Source: ADFU+vvPq796XwuNZCzNOH45PgR6QT2y52wU+cBX8IJQOGhpAaAOnl3rh8/h047At8I49vKAmG414LX/0zWfixX7xJQ=
X-Received: by 2002:ac8:6697:: with SMTP id d23mr1966498qtp.257.1583923582471; 
 Wed, 11 Mar 2020 03:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
In-Reply-To: <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 11 Mar 2020 11:46:10 +0100
Message-ID: <CACT4Y+ZypjEidZQ6E8ajY1yBU6XA2t6eVz56sJ1JaBjCniRMUQ@mail.gmail.com>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_034631_010569_B0942586 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 11:32 AM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> Hi,
>
> > Hi all, I just want to bump this so we can get all the comments while
> > this is still fresh in everyone's minds. I would love if some UML
> > maintainers could give their thoughts!
>
> I'm not the maintainer, and I don't know where Richard is, but I just
> tried with the test_kasan.ko module, and that seems to work. Did you
> test that too? I was surprised to see this because you said you didn't
> test modules, but surely this would've been the easiest way?
>
> Anyway, as expected, stack (and of course alloca) OOB access is not
> detected right now, but otherwise it seems great.
>
> Here's the log:
> https://p.sipsolutions.net/ca9b4157776110fe.txt
>
> I'll repost my module init thing as a proper patch then, I guess.
>
>
> I do see issues with modules though, e.g.
> https://p.sipsolutions.net/1a2df5f65d885937.txt
>
> where we seem to get some real confusion when lockdep is storing the
> stack trace??
>
> And https://p.sipsolutions.net/9a97e8f68d8d24b7.txt, where something
> convinces ASAN that an address is a user address (it might even be
> right?) and it disallows kernel access to it?

Please pass these reports via scripts/decode_stacktrace.sh to add line
numbers (or any other symbolization script). What is the base
revision?
Hard to analyze without line numbers.

> Also, do you have any intention to work on the stack later? For me,
> enabling that doesn't even report any issues, it just hangs at 'boot'.
>
> johannes
>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
