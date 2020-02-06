Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E51154C7C
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 20:55:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MX5kDnQSM2geGS0BrKzYVwXafY9sNuJQJ2LZl2HmRFg=; b=u14ohym5DicI6Y
	HftidFL8DG5TVWlcr/fqqKdm609uDOEPyPqZgFVbCAhZ4llstGONgEmvVteaBBgkyAdUjwne0JDJK
	/8wH+mPY/7CdJFeIbqaLr04nMjNfVNsduAoJR/vVfnJSuAdv8lJ0dS5LK8kDzezQNbbxdP2rcRRPJ
	PZHVVqdqYqmmUW3OafhA6fPeFy0hmXDoH33G4AkAPPNDEg2rvs5PhH0crgoBF43xBPpyCr8fqQZpq
	CDrfQDsQff6WvKZJQ8r1FHyg3L6a4jwIhaZJJYjsKONOMJRi5plpE3q4YMhdqA9FO9qrSpa+U6yvI
	Pr39/Or3q5nyOmfTafYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iznFf-0005Re-KO; Thu, 06 Feb 2020 19:55:51 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iznFc-0005RI-FP
 for linux-um@lists.infradead.org; Thu, 06 Feb 2020 19:55:49 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1iznFa-0062kb-UD; Thu, 06 Feb 2020 20:55:47 +0100
Message-ID: <51a008bc836a2630ee59e8d521cd3d1cc475a96d.camel@sipsolutions.net>
Subject: Re: [DEMO] um: demonstrate super early constructors
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Thu, 06 Feb 2020 20:55:46 +0100
In-Reply-To: <20200206204937.db680692f366.Ie05fc2ad440c8db59c1519194aeac356469efa72@changeid>
References: <20200206204937.db680692f366.Ie05fc2ad440c8db59c1519194aeac356469efa72@changeid>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_115548_515084_216C4725 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Patricia Alfonso <trishalfonso@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Now,


> +static void early_print(void)
> +{
> +	printf("I'm super early, before constructors\n");
> +}
[...]
> +static void (*early_print_ptr)(void)
> +__attribute__((section(".kasan_init"), used))
> + = early_print;

As you can see from the section name, I was obviously thinking of KASAN
here :-)

You had the following kasan_init function, and doing it this early will
be a bit problematic:

> +void kasan_init(void)
> +{
> +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);

This should be OK. I actually thought we'd have to know the memory size
even for this, but it looks like not, which is great! I guess you just
made it have a mapping that's basically large enough for everything.

> +       // unpoison the kernel text which is form uml_physmem -> uml_reserved
> +       kasan_unpoison_shadow((void *)uml_physmem, physmem_size);

This I guess you'd have to defer until they're actually set up, but
that's OK - we can only use them after that. So just moving that to
wherever uml_physmem/physmem_size are initialized should be OK.

> +       // unpoison the vmalloc region, which is start_vm -> end_vm
> +       kasan_unpoison_shadow((void *)start_vm, (end_vm - start_vm + 1));

This I'm not sure about, but again - I suppose kasan_unpoison_shadow()
really only needs the shadow memory, so we can do it whenever we
actually init the start_vm/end_vm variables (i.e. in linux_main()).

> +       init_task.kasan_depth = 0;

I guess that's OK, though it should be 0-initialized anyway?

> +       pr_info("KernelAddressSanitizer initialized\n");

That might be a bit dangerous this early in the init process, but I
guess we don't really need it :-) Can always print something much later
saying that yes, you have KASAN enabled.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
