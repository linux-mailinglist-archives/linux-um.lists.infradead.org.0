Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18A6153351
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 15:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZT65eiaGv9ZnyfD/abwe8rbuyGFNUfWTwypiETYxS0=; b=F61Strq0MRMp0P
	7DFn2QHTIB28+I/xqHfWWD1vdoONK3e31U40O2OLI8wDNHF37cCYEurTyV9q3IBII73L05vkXasgI
	TUBaCIEgN57L6BkZWcwShu0o+MlmBhCXroqeLI7/0zitkNBQVpRvz8SDWqADPkVRjRg+zXi8fV7XD
	5gZA4gfd1E8TOcICLxil/tShxQMsneUkmSm4qdbryXSKrby/qvMdGxhbjCYzRXbzsIpfGvnja3HYs
	7gfriuEz7WxPBssbap2vTo+2oe0Y1sY5dIMCRmmOmS+RtDvIZ9r72GfB8B2vAq0xTo/561aR9ivyH
	THLSByuaHEfOQyz5Z4OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLx2-0008IZ-5K; Wed, 05 Feb 2020 14:46:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLwz-0008I1-Ie
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 14:46:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id x185so1322586pfc.5
 for <linux-um@lists.infradead.org>; Wed, 05 Feb 2020 06:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :user-agent:mime-version;
 bh=VnerVuFYSXJ3ZDrE3RGGG9WiyeTQgleX/15FBOen3I8=;
 b=I015MiL9KC1urIe7DFnBGSFKyfqHbslIUoRYLua8ldlRQciyw0LJvRjERmi2JEYRb4
 wr+f+x4+pakJs+ZgmlFelnhxu8q05m93bWsQ/I/7SohWPBIqJefs3yxFPKW220x/2VNp
 Q1WY79IpZKds4OqQBMD1f6AR/7Lek60RRKMFYlM9rK12fDrSZX/hfIZLPJZBX6n/6rbT
 t3wSU32EHeCT99bzFHufYdX3H7EOnY78f6tQnLya3v9JmeKTCwai8e6j4vG1ZcCSYmnO
 8itnrZSBGcOCi7OdzE9NH1PUX5UkeIcyARq8bH0fn2WMu+RWjJ5Eu+2b9PX7UTaZ+gQy
 1LbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:user-agent:mime-version;
 bh=VnerVuFYSXJ3ZDrE3RGGG9WiyeTQgleX/15FBOen3I8=;
 b=IX4Kb3XtmH/HY8och3+GPLjZXc4koLzXvuKBuyTl5xyMeby2Mr34eOdLCo4wwh5bYF
 Ov/wBTDB34z11bLhFBpmbwqwnIGX1mMX0C9m4PEL7HdQDbJ4cSxkH2hl/hALIhJfjmDS
 0/ZYtosIaeShfwPMTPXSlFrEdboMNi15dvArtFv/PVVm9/15gB7arbm7NO40oSgPOqDh
 xk5z3m8pSH5YVHOmIiuZIF0IyKvkO3B7ry5+4KCvR3BKHVC1aIvOGJmpP9m+s9DSxMqA
 OKzmubgD5+rybq8Zc0PlMn19ooo0BdwA/M7DSw+if9XUG4CqlZY75OKCE0NXJhb2Tpcn
 V6/g==
X-Gm-Message-State: APjAAAX3OsjdpGzmaXPB3YD525spoCjXTvhC8W6mM4smDuLNKZisjIIK
 9PSfmP7uuRUW5XWFNWN9DHQ=
X-Google-Smtp-Source: APXvYqwg+V1rUWDUZItb3nJyAP9aMYWiRKvRFgk1ALOuRoQUXFflGcSxRsWz7jHNQKe1kGNy1i/RCA==
X-Received: by 2002:a63:d24b:: with SMTP id t11mr27009003pgi.443.1580914004684; 
 Wed, 05 Feb 2020 06:46:44 -0800 (PST)
Received: from earth-mac.local.gmail.com
 (219x123x138x129.ap219.ftth.ucom.ne.jp. [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id x28sm27610pgc.83.2020.02.05.06.46.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Feb 2020 06:46:42 -0800 (PST)
Date: Wed, 05 Feb 2020 23:46:39 +0900
Message-ID: <m2eev9qegg.wl-thehajime@gmail.com>
From: Hajime Tazaki<thehajime@gmail.com>
To: anton.ivanov@kot-begemot.co.uk
Subject: Re: [RFC v3 07/26] um lkl: interrupt support
In-Reply-To: <800b1132-68df-8c63-5371-015bfc83a511@kot-begemot.co.uk>
References: <cover.1580882335.git.thehajime@gmail.com>
 <9d6f93f061b2b248c0fa0a7f1530792936f8e7be.1580882335.git.thehajime@gmail.com>
 <800b1132-68df-8c63-5371-015bfc83a511@kot-begemot.co.uk>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) Emacs/25.3 Mule/6.0
 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_064645_616420_C3ABE881 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.3 TO_NO_BRKTS_FROM_MSSP  Multiple header formatting problems
 1.5 FROM_MISSP_FREEMAIL    From misspaced + freemail provider
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
Cc: linux-arch@vger.kernel.org, tavi.purdila@gmail.com,
 linux-um@lists.infradead.org, retrage01@gmail.com,
 linux-kernel-library@freelists.org, sigmaepsilon92@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


On Wed, 05 Feb 2020 19:47:36 +0900,
Anton Ivanov wrote:

> > +/**
> > + * This function can be called from arbitrary host threads, so do not
> > + * issue any Linux calls (e.g. prink) if lkl_cpu_get() was not issued
> > + * before.
> > + */
> > +int lkl_trigger_irq(int irq)
> > +{
> > +	int ret;
> > +
> > +	if (!irq || irq > NR_IRQS)
> > +		return -EINVAL;
> > +
> > +	ret = lkl_cpu_try_run_irq(irq);
> > +	if (ret <= 0)
> > +		return ret;
> > +
> > +	/*
> > +	 * Since this can be called from Linux context (e.g. lkl_trigger_irq ->
> > +	 * IRQ -> softirq -> lkl_trigger_irq) make sure we are actually allowed
> > +	 * to run irqs at this point
> > +	 */
> > +	if (!irqs_enabled) {
> > +		set_irq_pending(irq);
> > +		lkl_cpu_put();
> > +		return 0;
> > +	}
> > +
> > +	run_irq(irq);
> > +
> > +	lkl_cpu_put();
> > +
> > +	return 0;
> 
> Isn't that just:
> 
> 	if (irqs_enabled)
> 		run_irq(irq);
> 	else
> 		set_irq_pending(irq);
> 
> 	lkl_cpu_put();
> 
> 	return 0;

Thanks, this is much cleaner.  I will fix this in the next turn.

-- Hajime


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
