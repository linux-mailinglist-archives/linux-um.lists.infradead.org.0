Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB419BBF1F
	for <lists+linux-um@lfdr.de>; Tue, 24 Sep 2019 01:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CNYjPD2ajGWi77KtDcsVoxifnB/Im072atbt4Dg+QI=; b=irY2kAmGd9BW/4
	Ovpt+eReBw+D1M8mVxnGee/zGCKCaBVq3Jhcz+cc7fRKsZhmboMJQMJ7rvAFnEw5EXl4KZ/EJjVXU
	DdoHyJA02IJdX8LBIKtk1D/oLLutJxP+2IXVFN0vr9DDmzkl4OeJdPFMeY1LznWSdMsdFOtTog5kO
	v9Z9W9v8Zfab4q2Z9wDPjZd17k5fZ5F9wOIqC3Vci9rjeSoC3yxf/eV15shSRDcMOjs+yX6D7cWMN
	HBPEM5hYaGZE7zra5VseIr7seIcG/QuE+1yZ/WZVb1b8eZv7YSsJdj8h1xFo5tC7O7XsUHFnE2+a1
	YOSUmv1H+9k313I8+9Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCY7P-00045s-NA; Mon, 23 Sep 2019 23:51:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCY7C-0003vY-W4
 for linux-um@lists.infradead.org; Mon, 23 Sep 2019 23:51:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id u20so61140plq.4
 for <linux-um@lists.infradead.org>; Mon, 23 Sep 2019 16:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XsWEYEMa3OUxN/rIyJmCXyYBeWS8+cU9XND539Ca4bw=;
 b=E/y9NXZybs6vA4vrlalGFLTtZlxrC7FtgNZ3guYdN0O/ZGcGF24vZNUnIPI9RNeUSU
 KG2oaE52Aag0Vkpz8/5DKgjwGlCVtVq1vVyhPWrz1aox1UxP7nt4VCA8fvKlCohfnkIs
 mSJV6kjx7O2bDKd2DZFiUTXqHAySN3KKJ4g6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XsWEYEMa3OUxN/rIyJmCXyYBeWS8+cU9XND539Ca4bw=;
 b=JlWYKf90afomemDyDw/NBx6RoSdpJMxfoOO8x+gkWmKNY3+2mZAb4riXRZG31YZzqz
 1WuLg4StzvX5Q6WgIexeArpFmjcanWaYzR/BJfpgQWs7DxXGaK0UreQHwii9TH2z0V+N
 fAKxQzynTPbooFRjWqv7m4t5eScGCia6eqd8yENxTLPAnswoNPqYjMSfaMcv+Jj4A+4V
 +qs8RyRubfbzQDyoEr1RVZzkPMDmc7wk1+RP2Ji6MTR+f9bvJRkMdyc4TytESl+7m76L
 VOOozqFtZ1+9gHbFl8r9wN39Gf1vdUO3QWZkNF798P1/hfu53pv3EhvmMmvGPxyghW/v
 LG6Q==
X-Gm-Message-State: APjAAAUoDYhZCOTwbnRv8bLUg/y0Rs1d+KkmwMeZxzagZq+8+Ce9Izc+
 FJMUviRI5GpjOJftWDD5VAY33g==
X-Google-Smtp-Source: APXvYqwU0BW/btrE2Yva2gh7adQAX91dLGmJKvlNr/ftvqFACr7SANo+L9CNSieSziIXVJm4hCuctg==
X-Received: by 2002:a17:902:36a:: with SMTP id 97mr2247384pld.75.1569282694325; 
 Mon, 23 Sep 2019 16:51:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m4sm5126340pjs.8.2019.09.23.16.51.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 16:51:33 -0700 (PDT)
Date: Mon, 23 Sep 2019 16:51:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH] seccomp: remove unused arg from secure_computing()
Message-ID: <201909231650.1CCAFBA6@keescook>
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
 <20190923094916.GB15355@zn.tnic>
 <CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com>
 <20190923193446.GL15355@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923193446.GL15355@zn.tnic>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_165135_054702_B41D2E9D 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-s390 <linux-s390@vger.kernel.org>, Will Drewry <wad@chromium.org>,
 Parisc List <linux-parisc@vger.kernel.org>, X86 ML <x86@kernel.org>,
 linux-um@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Andy Lutomirski <luto@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 09:34:46PM +0200, Borislav Petkov wrote:
> On Mon, Sep 23, 2019 at 11:41:59AM -0700, Andy Lutomirski wrote:
> > On Mon, Sep 23, 2019 at 2:49 AM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > On Fri, Sep 20, 2019 at 03:19:09PM +0200, Christian Brauner wrote:
> > > > While touching seccomp code I realized that the struct seccomp_data
> > > > argument to secure_computing() seems to be unused by all current
> > > > callers. So let's remove it unless there is some subtlety I missed.
> > > > Note, I only tested this on x86.
> > >
> > > What was amluto thinking in
> > >
> > > 2f275de5d1ed ("seccomp: Add a seccomp_data parameter secure_computing()")
> > 
> > IIRC there was a period of time in which x86 used secure_computing()
> > for normal syscalls, and it was a good deal faster to have the arch
> > code supply seccomp_data.  x86 no longer works like this, and syscalls
> > aren't fast anymore ayway :(
> 
> Uhuh, thanks Andy.
> 
> Christian, pls add that piece of history to the commit message.

Yeah, this is just left-over from the "two phase" seccomp optimization
that was removed a while back. I'll take this clean up into the seccomp
tree. Thanks!

-- 
Kees Cook

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
