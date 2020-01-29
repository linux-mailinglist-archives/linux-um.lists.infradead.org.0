Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4EA14D260
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 22:19:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1kZgNdxfYI06LG/CyTD9xU9WlDl22ZsCmHQD6eQPbk=; b=pql4Mlxz8weV0q
	1Jcsc54GV36L9rvLnTY6PiPaVKJE19Gn1GXE9A1+mB7dtTIkPNHrDmVyXs3bIuv3xSZeq+ptdEmVX
	x810qbS274+nSxICXSLqf72hn2Qo2eb7MNlmtXpiSRwZBKi4uf4zAt18c4qOaqhniWtlFJXKUVPG/
	2yCsu6YDK+9oyIlH0Jr8fMUw74/SnpAoFIZXvPDxS0oqms7ATyxNNXHX7h5oHQnUJysiFAs34EJQV
	R4JRYt4NPdS1tqDVjJJT9OkuiEUEI+btYdgxlIBhkhqtRimGm35UUSnRrLAyg+BUUyIeNUjk/4kRN
	qMY3SFd7CMe6g3ZU/s3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwuk0-0007nu-Qe; Wed, 29 Jan 2020 21:19:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwujw-0007n1-OC
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 21:19:14 +0000
Received: by mail-pg1-x541.google.com with SMTP id x8so445739pgk.8
 for <linux-um@lists.infradead.org>; Wed, 29 Jan 2020 13:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+hDQAX34j2Scqm0cOO1CyUImmUew2WxU5247BGER7dY=;
 b=UxSawPEjuU8FcEVTFXeV+8fPyjejUz2O2GIiBAdoDAVFy9BgrpyDdwrWW/Qw/2J7ya
 FZ3Hx7C3W8oBpKsfbmp0gcB6UuG6HCj996xrlRomauFSWUUkw1WSDiYPt+gyeAvsDM8J
 KOcA9yUDtsyGqXt3j9CoaEHIZjsv5vX9WRJS+1BFVxd2ZZsKZ61Y5xn2O9TyueeSevNe
 3HynVm+hSZdJHxWhsiP6dcIrpF1AqWQTN1wm7n/YeICb9e29ywqkZW8GbIbfpGFKmKzZ
 fBgtZeeHipIaN5zsaA1KEPpdP38j6n64hmv3cpQViCU8n8pwKNaxkHJeeBc4f/NHQRvk
 NZJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+hDQAX34j2Scqm0cOO1CyUImmUew2WxU5247BGER7dY=;
 b=CP/QY4xCZ3voPd9+n0rlY5z7U8mVAbEeJor2vK1/E78BrR9NCBrD2v4baBNX1e71Cj
 TYZU3cIO6bujnAq7JJvQ02cNBThWf1C+sw5mTF7QXq8ktWM4c0+EECXSxiEgxm5Zh8To
 g0JryKfb48rOM23UNx1VqZupJGy313sEU9ThbwooyGWv/ljP28yhvzDwGFh+qc5bqOoF
 BgGY+90j3OYuwnqsf9GpzhriAA2TzYLna4lvvgvB0sobI3tdAwb4npN9vswNxuStW4rh
 F4gbUKdi/pmFucmy1GGrb82rP5FrCwbtHUiDXw/jzOp7i72u8+ul+W6xs2i6luoTWH1s
 aUbg==
X-Gm-Message-State: APjAAAUpEcz29BfSGRSE+MYxpcDPldEUlnob1Xlr95ndkNlwY3NQlKgI
 wng4l8Jj/Mx0V/DGdoofAqZwRxdiZbKQLNPrKoyuyQ==
X-Google-Smtp-Source: APXvYqz8Ek9aAZM7bbtF2TInvqPq0TxdAQovVbgPfNg0x3Ic53N8b+s11tC5qEwNcBJ6IzRzAQElzR1+afYbaPQH8+4=
X-Received: by 2002:a63:597:: with SMTP id 145mr1045907pgf.384.1580332747259; 
 Wed, 29 Jan 2020 13:19:07 -0800 (PST)
MIME-Version: 1.0
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
 <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
 <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
 <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
 <ECADFF3FD767C149AD96A924E7EA6EAF982C9840@USCULXMSG17.am.sony.com>
 <CAFd5g46Ut9Suptmp_bBspkp=KKt2GP+=1C5zLu0FXJY9dGJbFQ@mail.gmail.com>
 <dcf2d008-c044-f2d4-63b9-47151157eeb4@gmail.com>
In-Reply-To: <dcf2d008-c044-f2d4-63b9-47151157eeb4@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 29 Jan 2020 13:18:55 -0800
Message-ID: <CAFd5g45g7B0HFpcxd-fjpj4h4gaxijSQ+LZb1=6v3t_u_=192w@mail.gmail.com>
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch all
 KUnit tests
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_131912_791117_BB6FECD3 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Jeff Dike <jdike@addtoit.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, "Bird, Timothy" <Tim.Bird@sony.com>,
 linux-um <linux-um@lists.infradead.org>, David Gow <davidgow@google.com>,
 Shuah Khan <skhan@linuxfoundation.org>,
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

On Tue, Jan 28, 2020 at 8:24 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 1/28/20 1:53 PM, Brendan Higgins wrote:
> > On Tue, Jan 28, 2020 at 11:35 AM <Tim.Bird@sony.com> wrote:
> >>
> >>> -----Original Message-----
> >>> From:  Frank Rowand on January 28, 2020 11:37 AM
> >>>
> >>> On 1/28/20 1:19 AM, Brendan Higgins wrote:
> >>>> On Mon, Jan 27, 2020 at 9:40 AM Frank Rowand <frowand.list@gmail.com> wrote:
> >> ...
> >>>> we could add Kconfigs to control this, but the compiler nevertheless
> >>>> complains because it doesn't know what phase KUnit runs in.
> >>>>
> >>>> Is there any way to tell the compiler that it is okay for non __init
> >>>> code to call __init code? I would prefer not to have a duplicate
> >>>> version of all the KUnit libraries with all the symbols marked __init.
> >>>
> >>> I'm not sure.  The build messages have always been useful and valid in
> >>> my context, so I never thought to consider that possibility.
> >>>
> >>>> Thoughts?
> >>
> >> I'm not sure there's a restriction on non __init code calling __init
> >> code.  In init/main.c arch_call_reset_init() is in __init, and it calls
> >> rest_init which is non __init, without any special handling.
> >>
> >> Is the compiler complaint mentioned above related to  calling
> >> into __init code, or with some other issue?
> >
> > I distinctly remember having the compiler complain at me when I was
> > messing around with the device tree unit tests because of KUnit
> > calling code marked as __init. Maybe it's time to start converting
> > those to KUnit to force the issue? Frank, does that work for you?
>
> I have agreed to try converting the devicetree unittest to KUnit.
>
> Now that KUnit is in 5.5, I think there is a solid foundation for
> me to proceed.

Awesome! Last time we talked (offline), it sounded like you had a
clear idea of what you wanted to do; nevertheless, feel free to reuse
anything from my attempt at it, if you find anything useful, or
otherwise rope me in if you have any questions, comments, or
complaints.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
