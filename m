Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 001C514E5A7
	for <lists+linux-um@lfdr.de>; Thu, 30 Jan 2020 23:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbzI2LQFCrwEVO7DqmCjhp2+IM+0PncIY3CT7hmT3p0=; b=D7Ly9k9kzDHVfj
	xLRxSqsMiaHR/DUBkR1SjQkfq6IgwY7A1ow2qOlGAeYIcj0lExnFWXx3JJnNVtuYdLh8OiY6GCT0d
	k4UEuq2aEO4mK9j4VS1ckH+mWL68fp1cBqLsHaF2vNTLqDa99fUbublw4VwGrPwdYCRpnsfxaRnec
	H3A7cz/1kClERMMKjR297lRMhyILV2riAN8m7nSo10erZ3G+daM0/H2S8Ivu7zubfYSRxktIszYln
	HzXpwVx9dr3xevmj8ZPz9PGY0eOI/QKkywekDqKZG7uvz5UKM6Tv+g4l5fN/5wFUqaa1gX7aMm22C
	I0lRXrNrYwABf8SKRyFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIeR-00009R-Dw; Thu, 30 Jan 2020 22:51:07 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIeO-00008M-8q
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 22:51:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id x8so2402167pgk.8
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 14:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nm7q/eqnnGMhJ4cSfabctzSKxn0MOorqNV0sKFngedQ=;
 b=TMfOq3Cm7tFFkVWajkEH/mOlfghX4QyLqQHqYZZWR4V20ArmjrlHpz0d8+8xSByinZ
 hdNbCAldYk6XW/2l4H6+W+D99nfYFDFdlo1JF1zsEkJxE9vw/m1xetfRlk4B1wB04LUf
 vgQJJnXFxYGn+sGKkA8pUh58KRPmTHCO35p+LwSV7Wkci1t0zGgCnSKFVsD3CJRVFyCo
 Hx7zchW0IfdwQSjwaOeDPLPmvT/qzRZbY0PFmpfI+3jsVs5e+ZwXMFUc5OJY345A6bMq
 pB48aI/3uWmIP/mXK6bLsZAtTLERYf85LGN/IzjM9ZEQtYWVvQ1wOCqgnYJxKRvVLiz2
 DaBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nm7q/eqnnGMhJ4cSfabctzSKxn0MOorqNV0sKFngedQ=;
 b=N/BCmQDztsTJNlzbJD3Hoqf/MRuKOtuuquFzgBYWDNhRayl0XWMAQRqqhIRw7X6kbp
 xBT8/17mWakS4lt8LTEyW4/x8itnsaNVKdYc56RlTN3PFnK4HuErFRYJqSDpjWAQF1vh
 MbWDCe1kGqDQTl8Tb7x0o9PDRRR+6ddb7DyLwfQEpq/88E+FoGIcHSW19wPo8KO9n6pS
 L0Z7DzbjAiPv5bJ1rGJzgb1XKh3XowfQbBJ0Io+kIon4EcpkQ1Y4SGGofziZUsV/sJL3
 Tj6P2o+fMv6bZ5NpUiCJfriDCupMhSCTQ+xGbC0khKGQ2FtoJXjjHU2ek9vCdvPtAROD
 S0tw==
X-Gm-Message-State: APjAAAWdT3Mp4HxFSgKkCh4kekzMq+HXhmCsO2ZD5ZSoVTbxTvvNR2En
 s2edAs6HFkIJKce61An4cn9j/DpB6n21YuUSxduX0Q==
X-Google-Smtp-Source: APXvYqx0i4HutGZ0NwffQW6YWyeSX4LgIJj846OBe2RwSGkQlJX/8HwMxqcna9y1bwf7blHqEu8eaWZyufGuXP7EBl4=
X-Received: by 2002:a63:597:: with SMTP id 145mr6755667pgf.384.1580424659726; 
 Thu, 30 Jan 2020 14:50:59 -0800 (PST)
MIME-Version: 1.0
References: <20200128072002.79250-1-brendanhiggins@google.com>
 <20200128072002.79250-5-brendanhiggins@google.com>
 <20200129063836.6C2A62064C@mail.kernel.org>
In-Reply-To: <20200129063836.6C2A62064C@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 30 Jan 2020 14:50:48 -0800
Message-ID: <CAFd5g440ENddSAGA=CQhE-RZQAC8Hh1_+EOmfx2oDueB-EZXLw@mail.gmail.com>
Subject: Re: [PATCH v1 4/7] init: main: add KUnit to kernel init
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_145104_313009_780F2C0A 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Richard Weinberger <richard@nod.at>,
 Andrew Morton <akpm@linux-foundation.org>,
 Alan Maguire <alan.maguire@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 10:38 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2020-01-27 23:19:59)
> > Remove KUnit from init calls entirely, instead call directly from
> > kernel_init().
> >
> > Co-developed-by: Alan Maguire <alan.maguire@oracle.com>
> > Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
>
> Although, why can't it be squashed with the previous patch?

I think that this is pretty much the smallest logical change that
doesn't touch just KUnit. I figured it might make it easier for people
not interested in KUnit what changes I am making to init. I assume
that people don't touch init willy-nilly, right?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
