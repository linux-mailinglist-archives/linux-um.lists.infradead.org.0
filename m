Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82E61A22D3
	for <lists+linux-um@lfdr.de>; Wed,  8 Apr 2020 15:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHj6FAZ8k5Bm0cYr2iaqZVueO9Q+nMv61JS/QYv5tN8=; b=QWCZk0MD4yXEXM
	tPvPRG+VwfGhtXeKxwCTrOH9N/5v/P2pTTGoXAP9Ub1JZ3Vjdpjf7N8uOX9uCFoNt288gNfUx9EN3
	ZfdrY9c7k19G/zj3Ia6quSuQtS6EXs4fb0PbOWyNksscxlfqFjndUzhlk5YcNd6qkb+5VdWCEm883
	sadG4sWwJNF2BtGT88gDzh30QPUnHgRNlf7MELCH+I/OGdC3mGY3EeIgim4MJbkUQOtCvpX8Eh3d7
	4H8M8SwhLVHBzOapoLeP4JkFfrWY0js+LCqUn4JeReqgJ04oH/Ac3rirG6O1jEhXgZ9MF0lIphCX4
	ZeRrxHQFuH5ZKZfgqgDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAdh-0007og-Ef; Wed, 08 Apr 2020 13:21:09 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMAde-0007m3-R1
 for linux-um@lists.infradead.org; Wed, 08 Apr 2020 13:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586352061;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/JEu+NBXmr2ZH2EZ5Dwljf2sGuJtz5qK7X7tCmQwgb4=;
 b=gvYzdZjcaWTpHO81uCiES4u2xwhz61Nwe+W4bbkBb3PO84OU6qrxWdGoemcJIZXIsYqXfY
 txWHsAe/pOOpTmmnMnhhlNybMfjyDEqiCxq8T8PAiZHtJ488cnRPpNkWC7T623b0Qlbml5
 HmnYqH7zhLbflV7VZV/OGhmdI8v2WNY=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49-Vd6PKJm9OGCEsCYz22V9VA-1; Wed, 08 Apr 2020 09:20:48 -0400
X-MC-Unique: Vd6PKJm9OGCEsCYz22V9VA-1
Received: by mail-io1-f69.google.com with SMTP id v13so6118958iox.6
 for <linux-um@lists.infradead.org>; Wed, 08 Apr 2020 06:20:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4EqjCiS8uGFXr3/y1qxsffsf+H6pFkodoUvYXiVMxXU=;
 b=QypGx9BlfjypFaQBdFeMcUf/EkUU+I+IL+dEkcGfBP6c5PHz3HC6eQcd7cuLcZAASU
 nQdf+OYxXk7TEhNheTISEwKjBTTgdFRkh7w+VSrO6gS+CZe3d08k+hPcTXSUIOh6R+rx
 1942huPq+ArRKLZgtn7Eg8YfygCYBXiEDfiYrNF5ca/p9SLnXmTCtplXehHqNFunhcuD
 SmI2Jcg/faATUCfqWZdj5cdjVNcSWQFN0VRfXulDHD9AzMneHqz5vx6K8Iz0ASgSNJv5
 j2SD5VthQQma89R7k5SRTGb+eIr8w1wMVEqJBjbfTI0grL2nPkpzk9GLxMIolvCUu0py
 YsHA==
X-Gm-Message-State: AGi0PuaYItdQwb8+g+d+jY0uYJXknAYt5mB/XaTTPa6dW8TolSLgswJj
 b1b+L1Gjl6P3LMbRdJrN+7w2GJ0iQEElvfCz5Wj4pz0sQUfT5UPuLodCFJPqfhODlc0IiNTEnjD
 gxd28CI7ay/I5M2pCykZva/y3thRKeiVE128hqxlt
X-Received: by 2002:a92:bbc4:: with SMTP id x65mr8240478ilk.82.1586352047677; 
 Wed, 08 Apr 2020 06:20:47 -0700 (PDT)
X-Google-Smtp-Source: APiQypKcO5MxAfVwBmbFqWPlTl8D4//UqxvMBKZ6uLsJtaxj9DQuwITWguZICY6GyJaE8iAapSjykwEr3RAKa7tLz5E=
X-Received: by 2002:a92:bbc4:: with SMTP id x65mr8240452ilk.82.1586352047350; 
 Wed, 08 Apr 2020 06:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
 <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
 <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
 <c6774e9e-7811-cbbb-eea5-83e5045b59e9@kot-begemot.co.uk>
 <41e0199cf2ad126bca3047d18e14493ab903bbe6.camel@researchut.com>
 <f64a6f99-8e20-9825-75eb-358054935807@kot-begemot.co.uk>
 <ac5e36bea0200b8613849ef529d84de54b3afe70.camel@researchut.com>
 <CAMuHMdWTOg9MR73qUEFtDB4fsV0Q1Li4+ZH+cQCfzxwXw2jBtg@mail.gmail.com>
 <aeefc761-30ea-e753-8d58-eb180e372d24@kot-begemot.co.uk>
In-Reply-To: <aeefc761-30ea-e753-8d58-eb180e372d24@kot-begemot.co.uk>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@redhat.com>
Date: Wed, 8 Apr 2020 15:20:36 +0200
Message-ID: <CAMxuvazQa0fUPUvyEiV0oace1=ZHhkqw4kNGE1i7rAWBwWwbtA@mail.gmail.com>
Subject: Re: Documentation for UML Vector network
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_062106_952027_A96A8E96 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-um <linux-um@lists.infradead.org>, rrs@researchut.com,
 Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Anton

On Wed, Apr 8, 2020 at 2:59 PM Anton Ivanov
<anton.ivanov@kot-begemot.co.uk> wrote:
>
>
> On 08/04/2020 13:40, Geert Uytterhoeven wrote:
> > Hi Ritesh,
> >
> > On Wed, Apr 8, 2020 at 1:05 PM Ritesh Raj Sarraf <rrs@researchut.com> wrote:
> >> On Tue, 2020-04-07 at 17:36 +0100, Anton Ivanov wrote:
> >>> I am happy to handle proposed changes as pull requests.
> >> Thank you for following up on this one. There's one item I felt could
> >> be expanded. I created a PR for it on the Github repo.
> >>
> >> I felt this was worth documenting because UML's prime selling point is
> >> that it can run as a normal user.
> >>
> >> https://github.com/kot-begemot-uk/uml-howto-v2/pull/1
> >> Netowrk configuration privilege
> > Network
>
> Thanks.
>
> >
> > And then there's slirp...
>
> I know... it is something I need to figure out on how to do with the vector framework.
>
> The patch proposed yesterday to add a generic fd transport goes half-way to fix that, all it needs is sorting out the helper to do the actual slirp processing.
>

Yes, I started writing a spec for slirp helpers:
https://gitlab.freedesktop.org/slirp/libslirp/-/wikis/Slirp-Helper

With libslirp-helper (from
https://gitlab.freedesktop.org/slirp/libslirp-rs) or slirpnetstack
(from https://github.com/majek/slirpnetstack) you can simply specify
--fd= with a socketpair connected to the vec driver.

I also started a discussion for easier/better user networking for VM &
containers with NM:
https://gitlab.freedesktop.org/NetworkManager/NetworkManager/issues/382.

Your input is welcome!


> >
> > Gr{oetje,eeting}s,
> >
> >                          Geert
> >
> --
> Anton R. Ivanov
> https://www.kot-begemot.co.uk/
>
>
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
>


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
