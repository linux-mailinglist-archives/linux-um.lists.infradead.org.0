Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBA11975EB
	for <lists+linux-um@lfdr.de>; Mon, 30 Mar 2020 09:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5+u1hXWLxlooQu8dDoHGQgbYMQLFTIONEFHGLcgXE0=; b=WTK/Kc4+jD2h7A
	F3v8iCM4ntr53oNLHFqTP/oyp9JqAWbQWqQmTxlI9Lw+0q8GWpEd5vHZ0q1MiK+Apv+4AhMKoCe9i
	yZ3mc1iouA99IkEV6MVIU01qP8EjSRfuLv6bDFGv6GdMa4RU4bJd3wg5VaUJDC7CsEpIM/qekDbUJ
	Xb3b20TeJ5Jr35FNPjFB02Q6HPN1oXQbfXr4+84kEspjbE+X/f1fPyq1vjBIiNbFY3pk+thnjN00R
	EZWw1kSEywh3EMHpQUsPJTR2dI0md9VmCHoAEbm5jAOmQrbeKXSyCe1o6+f7II6qJTKkU1TZcPYeP
	dodfjcGm+7QnlseCQ3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIp5k-0007St-HF; Mon, 30 Mar 2020 07:44:16 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIp5h-0007SJ-Jg
 for linux-um@lists.infradead.org; Mon, 30 Mar 2020 07:44:15 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jIp5V-005JU9-00; Mon, 30 Mar 2020 09:44:01 +0200
Message-ID: <2cee72779294550a3ad143146283745b5cccb5fc.camel@sipsolutions.net>
Subject: Re: [PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 30 Mar 2020 09:43:58 +0200
In-Reply-To: <CACT4Y+YzM5bwvJ=yryrz1_y=uh=NX+2PNu4pLFaqQ2BMS39Fdg@mail.gmail.com>
 (sfid-20200320_161845_514535_9A0BEF71)
References: <20200226004608.8128-1-trishalfonso@google.com>
 <CAKFsvULd7w21T_nEn8QiofQGMovFBmi94dq2W_-DOjxf5oD-=w@mail.gmail.com>
 <4b8c1696f658b4c6c393956734d580593b55c4c0.camel@sipsolutions.net>
 <674ad16d7de34db7b562a08b971bdde179158902.camel@sipsolutions.net>
 <CACT4Y+bdxmRmr57JO_k0whhnT2BqcSA=Jwa5M6=9wdyOryv6Ug@mail.gmail.com>
 <ded22d68e623d2663c96a0e1c81d660b9da747bc.camel@sipsolutions.net>
 <CACT4Y+YzM5bwvJ=yryrz1_y=uh=NX+2PNu4pLFaqQ2BMS39Fdg@mail.gmail.com>
 (sfid-20200320_161845_514535_9A0BEF71)
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_004413_648918_D367843A 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

On Fri, 2020-03-20 at 16:18 +0100, Dmitry Vyukov wrote:
> 
> > Wait ... Now you say 0x7fbfffc000, but that is almost fine? I think you
> > confused the values - because I see, on userspace, the following:
> 
> Oh, sorry, I copy-pasted wrong number. I meant 0x7fff8000. 

Right, ok.

> Then I would expect 0x1000 0000 0000 to work, but you say it doesn't...

So it just occurred to me - as I was mentioning this whole thing to
Richard - that there's probably somewhere some check about whether some
space is userspace or not.

I'm beginning to think that we shouldn't just map this outside of the
kernel memory system, but properly treat it as part of the memory that's
inside. And also use KASAN_VMALLOC.

We can probably still have it at 0x7fff8000, just need to make sure we
actually map it? I tried with vm_area_add_early() but it didn't really
work once you have vmalloc() stuff...

I dunno.

johannes



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
