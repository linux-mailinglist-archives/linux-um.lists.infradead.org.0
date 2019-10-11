Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74382D3CA5
	for <lists+linux-um@lfdr.de>; Fri, 11 Oct 2019 11:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yd5i/oaQvXFu5J/es0552+Eeqtm2OZWBv5jL6s6X0FQ=; b=pFgTbyf+D0bJHW
	gKfYIEl6aoTDQ5hK23VSzrzJBkhArmbOLMhE59Xd6WU+3X+r+XJgTy86F9xK3Pkh5S09weGeBUdtm
	Zgpj02UbSKbiJkSQUTiH5+ys/geHSD9Gp+oF/AnwV0p2wrysltAThkMywDZLec8dt85Zuhr8OVv4r
	U6ag23gOCcokybeSlvr4seCDYrI4367gxklumufvu2rVQUJk99zM1XNOD7hBQ7+ZnFp0aQ47tXBuw
	Cvrd05siawBLnmn5S520WWE7QTNiChAH1fLEWexfh3k8COUft/TJj+FrXGFAV37ITbWEoeIs4ZuAq
	Hl4xAUCz554TVB4C4+kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrUV-0007xU-0N; Fri, 11 Oct 2019 09:45:43 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrUM-0007pF-7r; Fri, 11 Oct 2019 09:45:35 +0000
Received: from v22018046084765073.goodsrv.de ([185.183.158.195]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iIrUH-0004RM-Md; Fri, 11 Oct 2019 09:45:29 +0000
Date: Fri, 11 Oct 2019 11:45:28 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v1] seccomp: simplify secure_computing()
Message-ID: <20191011094527.ftevtkeitjqafhdd@wittgenstein>
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
 <20190924064420.6353-1-christian.brauner@ubuntu.com>
 <201910101450.0B13B7F@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201910101450.0B13B7F@keescook>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_024534_418699_97A5F717 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, wad@chromium.org, linux-parisc@vger.kernel.org,
 x86@kernel.org, linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com, Borislav Petkov <bp@alien8.de>, luto@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 02:53:24PM -0700, Kees Cook wrote:
> On Tue, Sep 24, 2019 at 08:44:20AM +0200, Christian Brauner wrote:
> > Afaict, the struct seccomp_data argument to secure_computing() is unused
> > by all current callers. So let's remove it.
> > The argument was added in [1]. It was added because having the arch
> > supply the syscall arguments used to be faster than having it done by
> > secure_computing() (cf. Andy's comment in [2]). This is not true anymore
> > though.
> 
> Yes; thanks for cleaning this up!
> 
> > diff --git a/arch/s390/kernel/ptrace.c b/arch/s390/kernel/ptrace.c
> > index ad71132374f0..ed80bdfbf5fe 100644
> > --- a/arch/s390/kernel/ptrace.c
> > +++ b/arch/s390/kernel/ptrace.c
> > @@ -439,7 +439,7 @@ static int poke_user(struct task_struct *child, addr_t addr, addr_t data)
> >  long arch_ptrace(struct task_struct *child, long request,
> >  		 unsigned long addr, unsigned long data)
> >  {
> > -	ptrace_area parea; 
> > +	ptrace_area parea;
> >  	int copied, ret;
> >  
> >  	switch (request) {
> 
> If this were whitespace cleanup in kernel/seccomp.c, I'd take it without
> flinching. As this is only tangentially related and in an arch
> directory, I've dropped this hunk out of a cowardly fear of causing
> (a likely very unlikely) merge conflict.
> 
> I'd rather we globally clean up trailing whitespace at the end of -rc1
> and ask Linus to run some crazy script. :)

Oh that was on accident probably. It usally happens because I have vim
do whitespace fixups automatically and then they end up slipping in...
Sorry. Thanks for removing it! :)

Christian

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
