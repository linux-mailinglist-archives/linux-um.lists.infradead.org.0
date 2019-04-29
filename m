Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942F0E2F1
	for <lists+linux-um@lfdr.de>; Mon, 29 Apr 2019 14:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5De8a5uO8l2n15AxFOUUjJ2cTyehFb41fCrkeBOBfPE=; b=s9wAWPYxtXAy0r
	9Lo1CgXEpbsOjUlXWQNxtc3cFpCR8t3MAGCTphxd+uHZd+gRl2EoMiq3xQktyqpX92Be1K4748y1U
	LbzZtkuuPReXbv+xVgyIq2/MfUKXZY0dfbzNj4MQcrobXoOoaw0L46Wlt9/tSbCJxwB2+lXmx6ChY
	wBEwgIe5ijV4jKFgCYkcn495m3hox6bk0zDlvG+XAOec19n7fAW+rl2fbxa2HpKkBChUsnJ6y6SDm
	jNi7hlbQKeAP1FqevYnRQ3Rc8E8SgeEGkjqzHASJQx+k9bbQSg1ax0D91hR/sfbW4XIVWhQXVYQ58
	L+wAkrL/yF7WxaSMJv7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5dD-0001eB-JL; Mon, 29 Apr 2019 12:43:39 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5dA-0001dM-Hn
 for linux-um@lists.infradead.org; Mon, 29 Apr 2019 12:43:38 +0000
Received: by mail-qt1-f194.google.com with SMTP id p20so11629951qtc.9
 for <linux-um@lists.infradead.org>; Mon, 29 Apr 2019 05:43:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SqNvNUMJEdexVr3hF+SW8m4hwxFpjhomBgbdEJazb7w=;
 b=YocCkZlH7ZObcZK9VHDMLyrIJ16jYajS/NI3HE1Q1yycI0RF4eCnB7EyUXndKNe6cI
 OmBeAz+feWKNj9hAImeoRklkEIEmICx7Vkd/XR7NWTHus8/RIa8Nv1Qj31eRs4SyErY7
 A1gGNUSh+LGIxuEmAX6u3uDAu5hgKGSK7b4ZKTxCKd5M3vEHjlbfMMRCMBF3FRFH2maP
 W4Voh0hIzBTalz/S/PPiR0c4To8ZUspIFOuSm5zObDSMtGAg4w1MclZvSj9Ep2rIVSb1
 YRllnOKaRD1WEgojuHGcCSXp7sNWo82qDkLtunsbA/cn6ZaOa1SppALEfFfp8hgVWzMQ
 8LuA==
X-Gm-Message-State: APjAAAXxGZXm1hpmivqxBBB2bHBSKhO4g01/PTscpRWJbDdP2ljV02sx
 cc7H78dFG5YyAKzt8XeKgrYbd60MBPNb/tNe8Mw=
X-Google-Smtp-Source: APXvYqxN+jezyo2Yt09ge37OQJJuo/uOJcb8r6doEQ7wqS9DeRlWthXGnE4ncJ5t7cuNHdEH8H49xZyEeaQ6MnvohQM=
X-Received: by 2002:ac8:29cf:: with SMTP id 15mr8626476qtt.319.1556541815414; 
 Mon, 29 Apr 2019 05:43:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190416202013.4034148-1-arnd@arndb.de>
 <20190416202839.248216-1-arnd@arndb.de>
 <s5hk1fthx9u.wl-tiwai@suse.de> <s5hv9yxjnp4.wl-tiwai@suse.de>
In-Reply-To: <s5hv9yxjnp4.wl-tiwai@suse.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 29 Apr 2019 14:43:18 +0200
Message-ID: <CAK8P3a1CbQsyTBykXkZv-35M_zQx97aOubtZD2YuzyPV94+4=w@mail.gmail.com>
Subject: Re: [PATCH v3 20/26] compat_ioctl: remove translation for sound ioctls
To: Takashi Iwai <tiwai@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_054336_583991_0D6B9DD6 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 y2038 Mailman List <y2038@lists.linaro.org>, linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Vinod Koul <vkoul@kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 9:05 AM Takashi Iwai <tiwai@suse.de> wrote:
>
> On Wed, 17 Apr 2019 10:05:33 +0200, Takashi Iwai wrote:
> >
> > On Tue, 16 Apr 2019 22:28:05 +0200, Arnd Bergmann wrote:
> > > The compat_ioctl list contains one comment about SNDCTL_DSP_MAPINBUF and
> > > SNDCTL_DSP_MAPOUTBUF, which actually would need a translation handler
> > > if implemented. However, the native implementation just returns -EINVAL,
> > > so we don't care.
> > >
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > This looks like a really nice cleanup.  Thanks!
> >
> > Reviewed-by: Takashi Iwai <tiwai@suse.de>
>
> Is this supposed to be taken via sound git tree, or would you apply
> over yours?  I'm fine in either way.

I was hoping that Al could pick up the entire series to avoid the merge
conflicts, but then we had some more discussion about the earlier
patches in the series and he did another version of those.

Al, what is your current plan for the compat-ioctl removal series?
Are you working on a combined series, or should I resend a
subset of my patches to you?

       Arnd

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
