Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C135115967
	for <lists+linux-um@lfdr.de>; Fri,  6 Dec 2019 23:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qPyWrHu/nQuUP1Lq+6mFNn34bkiKAi/v8zZOF9j7Ds=; b=NoN6L1nwrrT2CN
	pgLnu6KUfCc74tgaq1pRaqGj1uWeBWgpGO+VtqG8aE/OzrWq3b0B4P0WMsVHDt8taJwncYfsdYcoK
	QOQotJ+NEGCi8ZzshdFd1z2MWQQHNJJtp/+VqMfv3Mg9KIWbTWF6jIwsYBH2BBQ4B1W3+23pGJPR2
	Tb+VkIKWPNwTd5On2TWio36QtTo5PognyaSeGx6T660j6BI+pdahw3dqQQaqGztKzm0PBEQ0cCi7f
	8gEcM426E175Uj3ct2jjdhuBLkBEhJYvFjzIyRX4NFejCMJi8bCCsRHYnyEt5EhHiyAx8r/oqu3F/
	gi+Ab0e5oDmAgRrZqmSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idMQP-00064s-JA; Fri, 06 Dec 2019 22:50:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idMQM-00064J-Rn
 for linux-um@lists.infradead.org; Fri, 06 Dec 2019 22:50:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id w7so3315954plz.12
 for <linux-um@lists.infradead.org>; Fri, 06 Dec 2019 14:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0riUqAQ9KJmR0KLv8Y1JmTN4AxBmbDidTAabyI8WLM4=;
 b=CvjmPGaHYt7Fk59w4IG3gtg0H9jfBUJVTLvrLXYNwz4/vYsyQCo/BqVFbHMBCdohie
 m1wjjW1JIZrxT+rnv7yLmtkImyIg8S3FR4+/tTZHVh8rx5vH/OnbKrjhrEeh8s5lbga+
 wcEAeIvHfLLKUZzgERgHazKD/Fv0y4D54zAo0Yx08lw89jvflreRxCzTt8doK3NjGW4Q
 sJV3nNzOfX9/WTfasTD9cp+KQRGRIG3smUZFkjF71SFrlpTzMmFPjWFUdLo1ae+BdoP0
 LsrWqzgOKTnDXeuoLdREH0M3rq6+DTRfPjXrPYubssoe+l+m59gmOpRwDv4j+cTH+X5e
 1a4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0riUqAQ9KJmR0KLv8Y1JmTN4AxBmbDidTAabyI8WLM4=;
 b=cg3uBFVWyf+KX7g3ECqQXIG8VWjkr/I32P7kz74HBa1MnvjBIiWxByakzqBerGniSF
 xd+ArpuV5/eqtmWlXIf/1/8fbwR38t5cvxsUbPm+FTVXNGP2gghr+NGvC1244uNYxUdu
 jucQiUrUoo+9xEXPXMdYEVOu0guwB61CdMHJynhC97ZGe5B9dq5ZyIjS1/EQAdDnW9DR
 yUp+VkzCD0giVM/Pk80CTSw/c9JLUHFzeOm2PbEs5EomQgWueHi/gxHLZHmcgWfAL8k5
 KcgHJLPH0aBmw8mwyTR8XeKM99WCmJ8QdWXFRVaXQJJTRqLYET7tu2RlZwZGWxF+WU7/
 2F8A==
X-Gm-Message-State: APjAAAXb/8/tbESnQUeGZyFtX2UgNx/1ceNX0Tt+C4JScUh1hwqDMmtP
 qv+lAnJSknvtdw8QM65yFx7SghIMsE0ptenH9iyEjw==
X-Google-Smtp-Source: APXvYqxZb3qZLhT/tPljxS+wFVdxBrtjVSf2AfNUhesSCCcb0yeSN/+DZmHjqUhdO00p3A87s0OdCw0SaLG7Ya7glf8=
X-Received: by 2002:a17:902:7c84:: with SMTP id
 y4mr16526668pll.297.1575672606927; 
 Fri, 06 Dec 2019 14:50:06 -0800 (PST)
MIME-Version: 1.0
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-3-brendanhiggins@google.com>
 <aa7b77aa-bf3a-6919-ed66-37af00d856d2@cambridgegreys.com>
In-Reply-To: <aa7b77aa-bf3a-6919-ed66-37af00d856d2@cambridgegreys.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 6 Dec 2019 14:49:55 -0800
Message-ID: <CAFd5g45_PaL_rSbhrUD1RJ1ZWasptG+z7TO9_B4-Qafs90L2KA@mail.gmail.com>
Subject: Re: [RFC v1 2/2] uml: remove support for CONFIG_STATIC_LINK
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_145010_925893_CD7B99B6 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: johannes.berg@intel.com, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 11:41 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
> On 06/12/2019 02:01, Brendan Higgins wrote:
> > CONFIG_STATIC_LINK appears to have been broken since before v4.20. It
> > doesn't play nice with CONFIG_UML_NET_VECTOR=y:
> >
> > /usr/bin/ld: arch/um/drivers/vector_user.o: in function
> > `user_init_socket_fds': vector_user.c:(.text+0x430): warning: Using
> > 'getaddrinfo' in statically linked applications requires at runtime the
> > shared libraries from the glibc version used for linking
> >
> > And it seems to break the ptrace check:
> >
> > Checking that ptrace can change system call numbers...check_ptrace :
> > child exited with exitcode 6, while expecting 0; status 0x67f
> > [1]    126822 abort      ./linux mem=256M
> >
> > Given the importance of ptrace in UML, CONFIG_STATIC_LINK seems totally
> > broken right now; remove it in order to fix allyesconfig for ARCH=um.
> >
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
[...]
> The ptrace check was discussed on the list this week - it is the enable
> constructors commit in 5.3-rc1.
>
> A patch reverting it was submitted by Johannes yesterday.
>
> I did not try disabling/enabling static link - good catch.
>
> Otherwise, I agree - static link should probably go.
>
> Adding PCAP throws even more warnings and the AF_XDP work I have in
> progress generates a whole page of them. Considering that the resulting
> executable is not really static there is no point keeping the option.

Sounds good. I will send this out again as a non-RFC patch.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
