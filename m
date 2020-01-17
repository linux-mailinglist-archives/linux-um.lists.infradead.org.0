Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6481400A2
	for <lists+linux-um@lfdr.de>; Fri, 17 Jan 2020 01:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXe8FWuxACcYwdORLbpsyzse9YlbcGRwP0mT0Een7s4=; b=cAIt6GhdLzwR6B
	vgtXGPyeVQLNpOBJNzxwDC2AyqMPFJiJhbj/MFjsxeAvZz/YUUZ/oK690t0VWQrSK1exAEEnbbhEB
	mRWVFaNpOVTjOO/j9I8Raf1XfdD5omPD8qgvicX2SshwWD4bduB5OrKK6XBkwzbX12EAz7orx95sv
	ehARJYt2zrRBdMwlj65VtviXy9MrEoffF9jcc2c85XllLj22A47OEEMEuyYatGAVxtwbjVOI+KVcj
	8x27HQ+ei+jBbtEO6R5OQvvqj1keB+t7rpAGXwfn1NjzYQjF1cPK81hGPK/PTxnGPu4rhkx1DMDGc
	bJrtQCTGmx2Ztg7xm9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isFHy-0007Hx-Eq; Fri, 17 Jan 2020 00:15:02 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isFHv-0007Dz-9S
 for linux-um@lists.infradead.org; Fri, 17 Jan 2020 00:15:01 +0000
Received: from ip5f5bd663.dynamic.kabel-deutschland.de ([95.91.214.99]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1isFHc-00012t-UB; Fri, 17 Jan 2020 00:14:41 +0000
Date: Fri, 17 Jan 2020 01:14:40 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH] um: Implement copy_thread_tls
Message-ID: <20200117001439.zshbw3anlzx3yzqd@wittgenstein>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200104123928.1048822-1-amanieu@gmail.com>
 <20200105151928.qrmhnwer3r5ffc77@wittgenstein>
 <20200107123548.5fzu4v6czrlhrhmh@wittgenstein>
 <CAFLxGvzG4DJH5a7cAV6U+wPBqHUOJ6XQmy-u2ibawM3jsQXQBw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFLxGvzG4DJH5a7cAV6U+wPBqHUOJ6XQmy-u2ibawM3jsQXQBw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_161459_468701_F73AA99D 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Amanieu d'Antras <amanieu@gmail.com>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 Christian Brauner <christian@brauner.io>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 01:12:31AM +0100, Richard Weinberger wrote:
> On Tue, Jan 7, 2020 at 1:36 PM Christian Brauner
> <christian.brauner@ubuntu.com> wrote:
> >
> > On Sun, Jan 05, 2020 at 04:19:28PM +0100, Christian Brauner wrote:
> > > On Sat, Jan 04, 2020 at 01:39:30PM +0100, Amanieu d'Antras wrote:
> > > > This is required for clone3 which passes the TLS value through a
> > > > struct rather than a register.
> > > >
> > > > Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> > > > Cc: linux-um@lists.infradead.org
> > > > Cc: <stable@vger.kernel.org> # 5.3.x
> > >
> > > Thanks. I'm picking this up as part of the copy_thread_tls() series.
> > > (Leaving the patch in tact so people can Ack right here if they want to.)
> > > If I could get an Ack from one of the maintainers that would be great;
> > > see
> > > https://lore.kernel.org/lkml/20200102172413.654385-1-amanieu@gmail.com
> > > for more context.
> > >
> > > Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> >
> > I've this up as part of the series link in above ^^ and moved it into
> > https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git/log/?h=clone3_tls
> >
> > If I hear no objections I'll merge into into my fixes tree today or
> > tomorrow.
> >
> > An Ack from one of the maintainers would still be appreciated.
> 
> For sure too late, but better than nothing? ;-)
> 
> Acked-by: Richard Weinberger <richard@nod.at>

Still worth having it. :)

Thanks!
Christian

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
