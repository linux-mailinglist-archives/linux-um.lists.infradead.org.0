Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C390614009B
	for <lists+linux-um@lfdr.de>; Fri, 17 Jan 2020 01:12:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFMxnx6xqxZ545p97VIdLaoVa0PINLahTNQN4h6pIwc=; b=nfec6qKxBPNKVG
	5+LpeF+sbbPA7lxGk/JQGNMohSs3bsNeagbjZ0ZcWaxGZF2FjXN2abBv+lvZoGreGmYjYatxpuTcE
	dMPCYwieO5oKg+DReGJ3Uizw4st+0PknL0VLbkUMRqYSK6zGosb4VWD4wup0rx7GclGiiyjW2Ar/Q
	tB0XGSbHmbA0/k3f6CGwXwgEsWyriieNPJQHRhyshIjZP6QY4/GD/JL1gn/vxefxm34dpdCBSGbyu
	PrEqqLGgWHIIbMiCL5rxPng14o+3dDn8OK93irVnWi0CORnLScgDVFHpOZSVlhqB+8u0Zf19bQxf/
	h6kvRM497W7shsKINtLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isFFn-00078K-1Q; Fri, 17 Jan 2020 00:12:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isFFk-00077y-Gt
 for linux-um@lists.infradead.org; Fri, 17 Jan 2020 00:12:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so20989840wrt.6
 for <linux-um@lists.infradead.org>; Thu, 16 Jan 2020 16:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sW9GJJtS3r0rfOsE2akR9nsq8uqRMddnQuBnai/zpRI=;
 b=PQHzcFEwi5iLVrwpmxazY2ThTMGpLLwC4m7PDRdFQtZGFhCba1u9oC1PIa67JWhHul
 pLJyFZcXKRpiZXUyU1RHMJPg7TUAgVVfSmomJ0qfGu03Z0OLfSEaYtLMzUP9F9cpFWsn
 Y6cv3w9fWX3BPig4xuGPaBb0r37gd862zYucDfWVRE4pRwaxo2wDAQ6HPWzLJQre862v
 q7dX6iLP/ksN0K8TRtqXz97pFcB3QfEqZ7CyWGUqVHPeWPUDlEL1pSbKwSUbs3TJBo05
 GSGw8PSFfmiJ4G8VHcEPHqu+RrqohRi+f8DQ1tsSvIQdQCZhtQiID2lZdkHIYf1v/L4m
 2juA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sW9GJJtS3r0rfOsE2akR9nsq8uqRMddnQuBnai/zpRI=;
 b=oS/U8/wGeIYdxhTgfc8956sCWVH+CGG28423RaXfcG62VIfTJ/zMD54pzOVdqCqt1x
 pX0OLLnT405Pnx9CKroavM3eN2tamaL8H6KUQPHXzROMIFzttjmH1r+nSbCg8WaS7MZE
 m4KAyPQdPZ+RDPNom7r0PsMAZCV6L1Z9aL1zvUOZV6ANbWtpd/LIdYge9K5hi6Wv8O8a
 Z8x4ts2A1f+cCxGvIxFkD9cdcQ+0pvUETCAaNFSu86Otu1S+fjBPeQnVVvQLmKpgIw/j
 X7QpHCxGpXXWQ865WpIl3aKzFCZdEVP7Q+QOqa69Mq7gBty63Vtz/GirfZce23vPDGvN
 4+qg==
X-Gm-Message-State: APjAAAVfTpkqd9q5sBTtc56E3WRGz07tL0fx/DkR7ANy2HHUL62JHmJV
 Ivfc+Jvtl/WEF4Q8boimeM7WVgRkqqqiAkUezn0=
X-Google-Smtp-Source: APXvYqwUVxhK4jEa+K7rSVVi3aq0FsMfm+MgOSUONxJBcrdtupdYV50S839f2RHgMLFxGa1B6+kmgdGwSk5kg+DvQnw=
X-Received: by 2002:a5d:494b:: with SMTP id r11mr35538wrs.184.1579219962503;
 Thu, 16 Jan 2020 16:12:42 -0800 (PST)
MIME-Version: 1.0
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200104123928.1048822-1-amanieu@gmail.com>
 <20200105151928.qrmhnwer3r5ffc77@wittgenstein>
 <20200107123548.5fzu4v6czrlhrhmh@wittgenstein>
In-Reply-To: <20200107123548.5fzu4v6czrlhrhmh@wittgenstein>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 17 Jan 2020 01:12:31 +0100
Message-ID: <CAFLxGvzG4DJH5a7cAV6U+wPBqHUOJ6XQmy-u2ibawM3jsQXQBw@mail.gmail.com>
Subject: Re: [PATCH] um: Implement copy_thread_tls
To: Christian Brauner <christian.brauner@ubuntu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_161244_561616_9C93B6C5 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Jan 7, 2020 at 1:36 PM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Sun, Jan 05, 2020 at 04:19:28PM +0100, Christian Brauner wrote:
> > On Sat, Jan 04, 2020 at 01:39:30PM +0100, Amanieu d'Antras wrote:
> > > This is required for clone3 which passes the TLS value through a
> > > struct rather than a register.
> > >
> > > Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> > > Cc: linux-um@lists.infradead.org
> > > Cc: <stable@vger.kernel.org> # 5.3.x
> >
> > Thanks. I'm picking this up as part of the copy_thread_tls() series.
> > (Leaving the patch in tact so people can Ack right here if they want to.)
> > If I could get an Ack from one of the maintainers that would be great;
> > see
> > https://lore.kernel.org/lkml/20200102172413.654385-1-amanieu@gmail.com
> > for more context.
> >
> > Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
>
> I've this up as part of the series link in above ^^ and moved it into
> https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git/log/?h=clone3_tls
>
> If I hear no objections I'll merge into into my fixes tree today or
> tomorrow.
>
> An Ack from one of the maintainers would still be appreciated.

For sure too late, but better than nothing? ;-)

Acked-by: Richard Weinberger <richard@nod.at>

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
