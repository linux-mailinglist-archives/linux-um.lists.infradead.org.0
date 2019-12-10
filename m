Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF971190E5
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 20:41:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wVhd7Yo72ptPC158nmhv/mtpVyzZa5lVfP9ikzttIM=; b=RzzrgWc4rjUbJ7
	okPLOt/yytVnkzy/qb4HgnHhw1ZH3Rig8oDSgLutyVeMhLRRiM75F6s96kWxBn6jsJd0RYbXYfJ80
	aahrjbS/fyO+HRNa2/DiGDz8z7p10/1WA5vXK0vG6f9DKSplBSYmhOVSlFDNb+gdgdQWskKklCU+Q
	/ltWrKHh0boOcbIrdvjNl9XVqMKNann0Zxi9ZQOmlN2Qee6i921e7FTgiNwuiX5tVONlKPxiF4417
	sRjMEptw4WivFG3INV64FfR6bzdBJhB7zC2aS2RqPPoP4U6RCy4zTdinhSElDzdqnnvIJZ2L8stLw
	uzrxg5dZl8uffs8+jtvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielNy-0001vZ-Ms; Tue, 10 Dec 2019 19:41:30 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielNv-0001uD-TH
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 19:41:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id s64so2657688pgb.9
 for <linux-um@lists.infradead.org>; Tue, 10 Dec 2019 11:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o7uMkuzgbyQCsMvQ/Drlo2S75EdUCH9EK+Z+tjRJbaA=;
 b=Bm+TYCHKBSAH8K+fKTnL9a1dcnPWa4StCeoZZbpjrtWso2LXEnvjf7DhlY0NIPH6jX
 CfPzw+9mih/7H1Bgl3mlZYAAxWQRfJHCZyO8R+W3ysmWWLa9BVKy2nnJrvJmTKu9mneZ
 Vqruzr72JK1B039hmgsV1AuoLBYG7rQtfAoE/4UJESaC2lmlyZrpqotcq6RAX+0X8f6E
 JH4GEoERwORLmPYBez7uOrEbet2gJA4PU8uRX+68IMpwhS7RsFV5MCe0R1PVwSoMSam9
 xsPrq2vMs8l0GxBOrqfzvQETxeYztP5IH/0vzxwb+28vnGB4HREp36lcSTcJVw6Hd8bi
 mdkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o7uMkuzgbyQCsMvQ/Drlo2S75EdUCH9EK+Z+tjRJbaA=;
 b=kntNOpyCHk1ssVDbHBr2YdCj1j0eh9ERpdADoLkMAo8yMl6qzqJMtfZoLp6lDK5Kk8
 5YzACaj/E1FYz/+IS6yWXaD5SoaRoz3DpwXaWvY7A7TY1+Ir4QosS8axxeFgY9518c7D
 NEMnHd07YG2i/W3gJ7pgskB/VZeBaA+lq54x9NXqUPQNnDXby5aQa8I+y1NEPAHWm5Wj
 JmhKlxg0pRZrIny+XCLtOQnd5wawq58+F1eX6gNPAEHlpc2pBJQI05uMBum5RN3zS9L9
 AjWfEilLFob45apue5Pp4Xas5nHFgZOgyezuTe0qlAgyCnc/YK0nxtE6bkPE4Kvb9oGK
 NWjw==
X-Gm-Message-State: APjAAAUcTbd0VihFe+GsVy744UHrok6Kv9O2d3ModURoDsdvmR22osic
 BfSLh4ZR6QPOTlj71a5wdNQ4YGndEBX10Wg7oOkigw==
X-Google-Smtp-Source: APXvYqyUGDua4OibHU6JIXr930bB4AxU+ZMFicxGlWEwKH9Ll7TkiEUXUCiO2nanSfeQ5wIjK6r71neTEsVhSgRBCwk=
X-Received: by 2002:a63:480f:: with SMTP id v15mr26099811pga.201.1576006886546; 
 Tue, 10 Dec 2019 11:41:26 -0800 (PST)
MIME-Version: 1.0
References: <20191209230248.227508-1-brendanhiggins@google.com>
 <1406826345.111805.1575933346955.JavaMail.zimbra@nod.at>
 <2eecf4dc-eb96-859a-a015-1a4f388b57a2@cambridgegreys.com>
 <346757c8-c111-f6cf-21d2-b0bffd41b8a8@cambridgegreys.com>
 <7da5a054f533eabf2ffa110c236f011bf9d23954.camel@sipsolutions.net>
 <f658f317-be54-ed75-8296-c373c2dcc697@cambridgegreys.com>
In-Reply-To: <f658f317-be54-ed75-8296-c373c2dcc697@cambridgegreys.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 10 Dec 2019 11:41:14 -0800
Message-ID: <CAFd5g46aCzJqpcj3mjCy3O7iSfUz3VBaPzivq-CVZ6fJs+Ybug@mail.gmail.com>
Subject: Re: [PATCH v1] uml: remove support for CONFIG_STATIC_LINK
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_114127_969264_AE96D868 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, David Gow <davidgow@google.com>,
 Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 12:54 AM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
>
>
> On 10/12/2019 08:28, Johannes Berg wrote:
> > On Tue, 2019-12-10 at 07:34 +0000, Anton Ivanov wrote:
> >
> >>> Further to this - any properly written piece of networking code which
> >>> uses the newer functions for name/service resolution will have the same
> >>> problem. You can be static only if you do everything "manually" the old
> >>> way.
> >>
> >> The offending piece of code is the glibc implementation of getaddrinfo().
> >>
> >> If you use it and link static the resulting binary is not really static.
> >
> > However, this (getaddrinfo) really only applies if you use the vector
> > network driver, if you e.g. use only virtio then this particular problem
> > isn't present.
> >
> > Note sure if we implicitly call getaddrinfo from libpcap, but again,
> > that's just a single driver.
> >
> > IOW, we could just make CONFIG_STATIC_LINK depend on !VECTOR && !PCAP?
>
> +1
>
> We also need to add VDE (wonder if anyone still uses that).
>
> We will need to add XDP when I finish it. If memory servces me right,
> libelf or libbpf has the same lovely features as NSS.
>
> This is not just NSS - it is creeping in with a lot of new libraries.
> Sometimes the libc guys fix that. For example, librt was like that when
> I started working on epoll and vector IO.
>
> Sometimes (as in the NSS case) they don't. So the static build
> containing those will be broken and we are better off making it conflict
> for those options.

No strong opinions from me. I am more than happy to submit a new patch
that adds the negative dependencies.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
