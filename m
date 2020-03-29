Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74119197094
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdqYa/A3PRNa+sMld5LzGt+s7qlOZuZgUGReQUD34Lg=; b=KNVIpO8vruNfnK
	dQtuyUPmJqq65RJGgbAWL4bFsA0NjPugprh/Duj0vlO4AH77w1KCbtUkbq8D87osWN82Qy955aQh5
	MDBmTgpsHhjltGM56KBjp+QoJCc63snALxrrsSyff+pUy4b4z0CKOCWXsNVbNkbLObXp3CtHLSEVy
	ExMdHnTlBuJYrpz41WPyEp+IOAkPuAF1wk+rU2NG4ao06h2SQf8SJe3g7DFSIb3QEvwmQHG3iNDCu
	js4uJwDju/pWsUheHzDzgNnoIWQiGlG7E5FEzvZwFxTWo69KdsJfJWspGc5GSCPaCeU/U2OiX/iWF
	m6NPbXpcyE/qlosRz8mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfgd-0001ua-GH; Sun, 29 Mar 2020 21:41:43 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfgb-0001u7-8M
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:41:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id f74so8349517wmf.0
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Am6MQZe72IkQbz+igLTEEyX0AXnZ3Ned/hNiOH0Ey8=;
 b=TUI+WBkKyQvyWlClI3qStG1njdKrwTh2FS9WZhvHo0Eu84kPXivXhrGnAmQHqa/nbn
 vk2ee2ycWjvb5W34gx3L27+rUzEIsYM3C2U9Cjw7EZoWoH3byyADEB52utqvO1Z3rUn+
 x8JhkjvbSHd3BfILlGU5uirJxICDj+ZbcrIVK6liv7xfx29hRoROMzgGvYs7wb8Mi23T
 Lf9Xy2hgpSDiAMp1Fn/b5mvxfG0utcWaYouPodpv2F75sJ2/AMVXzFKTjgsjaR7DmPhz
 3IAmae77o4WI/c5xybHsDIMw1LMVVp6+W08SkemKT2ZkqvO4ps1mtED/Mzx9gf2JGFM6
 EwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Am6MQZe72IkQbz+igLTEEyX0AXnZ3Ned/hNiOH0Ey8=;
 b=cq4Cz855g+BIrC9fldpPTS4F/u2zPaTr4E7LjZXVoeWS0KDHOXfT19SqPt+JdR22gr
 9euKbNJmrUM/dR5S5tMtO5yCUWtnMbXPXGix3SODCd01ok2th3z4AnhnHACUnBhy1imX
 g9r5MVDU4Sajftw9nzCH4B7Q4Cw0kGGiE0ggDfG9GHlg/Mvi8efiFr+QvLFGhrQZA987
 bLqD5Hmhl/4i4PjSQzv600O24KL+fZtUJ59MMCUss609KBbPMiT/2CYYv4odJktc/aIJ
 OtNtgTKCRKBA57jg/ImnmANFPolfEwfvtLXMDX5DQ4lDCFstEF4jJkl389QcHMQ1QJMD
 9cxw==
X-Gm-Message-State: ANhLgQ0eC63eOs55uhQrgbLRK2kvNyxk+WPHBh2AavhpBHVhXoSOVnKd
 DRDsdbBDCNr2gdTx9rDmr4kCcE08MITvRqpNJqI=
X-Google-Smtp-Source: ADFU+vtrwRQ6BfChwf6D0caegIXYg+eHMkn7lJ+tQiDBelWCutxy+Nkel0RLYiLIZ6TOt3P3fhr9IC6aD+3Xu7dklPA=
X-Received: by 2002:a1c:2e10:: with SMTP id u16mr9437124wmu.143.1585518099817; 
 Sun, 29 Mar 2020 14:41:39 -0700 (PDT)
MIME-Version: 1.0
References: <1584466534-13248-1-git-send-email-alan.maguire@oracle.com>
 <2295c218-74a6-d785-f4b1-2046ee91503a@cambridgegreys.com>
In-Reply-To: <2295c218-74a6-d785-f4b1-2046ee91503a@cambridgegreys.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:41:28 +0200
Message-ID: <CAFLxGvypQCHnnuRi8RC15wL3yJ7yBJiUQGMHG8MRoPeNA6pAPA@mail.gmail.com>
Subject: Re: [PATCH] arch/um: falloc.h needs to be directly included for older
 libc
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_144141_298004_A011395D 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, "Berg, Johannes" <johannes.berg@intel.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 erelx.geron@intel.com, alex.dewar@gmx.co.uk,
 Alan Maguire <alan.maguire@oracle.com>,
 Brendan Higgins <brendanhiggins@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 4:58 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
>
>
> On 17/03/2020 17:35, Alan Maguire wrote:
> > When building UML with glibc 2.17 installed, compilation
> > of arch/um/os-Linux/file.c fails due to failure to find
> > FALLOC_FL_PUNCH_HOLE and FALLOC_FL_KEEP_SIZE definitions.
> >
> > It appears that /usr/include/bits/fcntl-linux.h (indirectly
> > included by /usr/include/fcntl.h) does not include falloc.h
> > with an older glibc, whereas a more up-to-date version
> > does.
> >
> > Adding the direct include to file.c resolves the issue
> > and does not cause problems for more recent glibc.
> >
> > Fixes: 50109b5a03b4 ("um: Add support for DISCARD in the UBD Driver")
> > Cc: Brendan Higgins <brendanhiggins@google.com>
> > Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> > ---
> >   arch/um/os-Linux/file.c | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
> > index fbda105..5c819f8 100644
> > --- a/arch/um/os-Linux/file.c
> > +++ b/arch/um/os-Linux/file.c
> > @@ -8,6 +8,7 @@
> >   #include <errno.h>
> >   #include <fcntl.h>
> >   #include <signal.h>
> > +#include <linux/falloc.h>
> >   #include <sys/ioctl.h>
> >   #include <sys/mount.h>
> >   #include <sys/socket.h>
> >
>
> Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Applied, thanks!

BTW: Anton & Brendan, thanks a lot for reviewing all these patches!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
