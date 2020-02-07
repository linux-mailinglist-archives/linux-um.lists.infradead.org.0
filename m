Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED30154FC2
	for <lists+linux-um@lfdr.de>; Fri,  7 Feb 2020 01:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOgIHR0tMrPN9iPiviZtAjPOjLkwPh3rMazP7BOMagU=; b=XAWK8nxfTzbHeY
	dR/FixddzQRW1aucVjAxPYNLtIdZm5edy/WLdbScZSVFEIJ+faZIVrZBNC8rc7UjuviTlv10n9AUV
	vQP9e5EvphmcjeIENyI9lbga5e2RQkBJXSkUuTRHBipBJq5PAL/Bv/QgvaD/iN2zSmB8dlNkCXqrF
	kmk937L8/vA4VPBEF0+zLSG63FhMP13bhX5gUmXZ5g/9aSRw6NrcfkkfIi4goYVf4g4SyZAoz82it
	PgZPJq/o8euiMeYRTQ29p17fUHOBON1bkP2efS06vPR/kD+CECpc/j072pn29O1Qq3ypjoDc766gE
	BfPYq2OsL5kq/mkndUYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izrYP-0006ZU-PM; Fri, 07 Feb 2020 00:31:29 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izrYN-0006Yz-HQ
 for linux-um@lists.infradead.org; Fri, 07 Feb 2020 00:31:28 +0000
Received: by mail-wm1-x333.google.com with SMTP id a5so832711wmb.0
 for <linux-um@lists.infradead.org>; Thu, 06 Feb 2020 16:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vmm/EZzIfCongbK+J6Gx4IV6kjEcg7P18y1H7poE+fs=;
 b=OogvzV4WNDHPBV2dJ+H3IgbtmSAUWd6Mfm6mNf3AdjdJHNRHEUvJQoqgex2i3SUvtn
 ymW2ADPD/vNHbizswWkZmSR2e9WTsE+u6NmTPOV3nWtJHgbnUqB5qf2o+AGM/GaZ6ZC5
 7fBONHPzQw8nmfl8LjYGZHFRdlzu22Z/+Sxd/Br7ltP5n21RQynedn2bxSKgNZClv9Bh
 L41NyDNih1Q8ZTOrwzmuoalbv3W0t1TaY49aJF3Y+TQi12Z/9GaM16KThikTwrNur/ef
 LSZAEENCg7cU9EHO34qIBeTmjhlps2BEvOzrYDZMec62q8+AYL4O+iUL+MMlcg5A2TNi
 At+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vmm/EZzIfCongbK+J6Gx4IV6kjEcg7P18y1H7poE+fs=;
 b=FNRqiRfBbz+4y5z16S3krvbWDJw0FYf9d4/jlDECzBggQrwWDl82IUQgPVpU+S7dax
 y1dir9Rf3qOPe2peGyLIZDPlRO3xCOcZiMvsrLAqQsp7/hUfQ1GrvEY35raTnIzTjjAB
 ztk0kTE9HxVFojAuCs41SfunWt73wnkhgrYYlI0ubhHMmOPrtdf4YTtF5v9Pdvx5NLLS
 eslzorQz/ie19/APWs49/xT9ykleyqPuB/D1FzOc3eLGVb+rcY7IwfJX+qGV0rm1kP6y
 tBGM3Kj1mUYTOA67OEJn03VHqZKamxInmXSCAJYpLRKf5DuVmNoA6HNFX3lYXGUCHpwv
 bW4g==
X-Gm-Message-State: APjAAAVGR7wiZAgIqkP+FCMZgw0rFn7aSN/XXge9x+u4lXGSvwxvLibV
 6ovvLfR0+i04e2Pel+BWcJRJBQqQfjpMKjXvAWiuSQ==
X-Google-Smtp-Source: APXvYqyImfxaGaAfxn8U3zaIriPRxTDdk6xZyODpoeTUhJfnTJRk1p6u8avrPaoF/4t+kHWZQqFo7g36cDEftIdnV3Q=
X-Received: by 2002:a05:600c:214f:: with SMTP id
 v15mr530171wml.110.1581035483437; 
 Thu, 06 Feb 2020 16:31:23 -0800 (PST)
MIME-Version: 1.0
References: <20200206204937.db680692f366.Ie05fc2ad440c8db59c1519194aeac356469efa72@changeid>
 <51a008bc836a2630ee59e8d521cd3d1cc475a96d.camel@sipsolutions.net>
In-Reply-To: <51a008bc836a2630ee59e8d521cd3d1cc475a96d.camel@sipsolutions.net>
From: Patricia Alfonso <trishalfonso@google.com>
Date: Thu, 6 Feb 2020 16:31:12 -0800
Message-ID: <CAKFsvUJzj-DXe9sDumyYmSr2WqrBCK6Xiuon+G1w8Jeycsc7tA@mail.gmail.com>
Subject: Re: [DEMO] um: demonstrate super early constructors
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_163127_600649_D20E0B6B 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Feb 6, 2020 at 11:55 AM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> Now,
>
>
> > +static void early_print(void)
> > +{
> > +     printf("I'm super early, before constructors\n");
> > +}
> [...]
> > +static void (*early_print_ptr)(void)
> > +__attribute__((section(".kasan_init"), used))
> > + = early_print;
>
> As you can see from the section name, I was obviously thinking of KASAN
> here :-)
>
> You had the following kasan_init function, and doing it this early will
> be a bit problematic:
>
With my new changes, this actually works great! Thank you!

> > +void kasan_init(void)
> > +{
> > +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
>
> This should be OK. I actually thought we'd have to know the memory size
> even for this, but it looks like not, which is great! I guess you just
> made it have a mapping that's basically large enough for everything.
>
> > +       // unpoison the kernel text which is form uml_physmem -> uml_reserved
> > +       kasan_unpoison_shadow((void *)uml_physmem, physmem_size);
>
> This I guess you'd have to defer until they're actually set up, but
> that's OK - we can only use them after that. So just moving that to
> wherever uml_physmem/physmem_size are initialized should be OK.
>
> > +       // unpoison the vmalloc region, which is start_vm -> end_vm
> > +       kasan_unpoison_shadow((void *)start_vm, (end_vm - start_vm + 1));
>
> This I'm not sure about, but again - I suppose kasan_unpoison_shadow()
> really only needs the shadow memory, so we can do it whenever we
> actually init the start_vm/end_vm variables (i.e. in linux_main()).
>
These are actually extraneous lines of code, as pointed out by Dmitry
Vyukov, because mmap
always gives zeroed memory so they're no longer a problem.

Thank you so much for this patch!! I have been trying to find an
elegant fix all week and this is perfect!

-- 
Patricia Alfonso

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
