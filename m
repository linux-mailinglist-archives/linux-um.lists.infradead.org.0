Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA2A197098
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsyzgEdZMbNKrMbjSRwmHG0V9urWqXTK6aoqKBzCMJY=; b=pj3J9oiLIVGVBJ
	XHPtkgSlmiKPbBvs8pdjidv/sDz3drqfD0RRIlXWRS0+722otQ8i+dOaCCxrpT8J/Ev6heHs1Fs+W
	F4FcUZmSvTPGkIiBEET8DcxLMVbqrjpMIC0XOhbAKSUU+ClpO8ObNJWhb9sXxwlTtIWU0l9Y5TWPM
	R6JDU3gTKJzBqBkJODJnV5unG/DNWpPGSMo4ZteM2RPL+jc/8S+j/MJtcnGIYF7sHrW9OWon1HwEp
	lElcllXTJkNHtKfE1y8X5uP/I/vsvLtill5QIWYNx+A44L/M44ExiJ+sTYA1xwGxLHfeGhGHXtKRu
	tT8l038sXyLdRLbNY/6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfnq-0003b8-LT; Sun, 29 Mar 2020 21:49:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfnn-0003aj-JX
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:49:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id c81so17718999wmd.4
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qt441fKemi5qqxlhMH2aYR1ggSIwhGBrP2eycSnfKQ0=;
 b=KPSy9MXw8uZf7Ai5iIrbMS7fdlz+bBtPt5uAMObLxcP8BUOK2q+7rWXhHGgk2JDecC
 xvyvXfhsVT2FZoL9f+znGNY+5dwCeNTHCuLbVxhPolQyc+Rrf6ACe4eIsdKzWsb8a3mT
 9thKk+rELGqWl7PLRAYRoMiCKDDOlgr0Vy4KH22iKBO9TSGliODbzHqdSH/T/vqYF9gN
 sjae06nMUjVCP6RmOObxgLBPSkDv6VTGrfbxxx4CTNXISy/hDkZakt49Fhq/oiQbKLFQ
 vmb8lh7sL2PdYA0LIIcv3PmYaVbXamzyT9B/jtE+uti/LtJ1ZtwDIqSZvXXejnrkpCjE
 rydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qt441fKemi5qqxlhMH2aYR1ggSIwhGBrP2eycSnfKQ0=;
 b=ZZezq8L+fBniNUY2mwzfbUvb2ZMS5bUXqgopTC7ALYTEF9Gacxc5ytTYJ6rUEdUg8W
 kq+Si25wi+mknaWRttt7q9yOXN6W2I/dOYuvRcWlfL3hFn+NUrYaNeOEScDb68TtP/0j
 K0NujOOGhhf7jFuedEzbbsxlaCF+HdHfiFnkVq4lvbwAVXOvNxD03OrCDlXDt/gt87wq
 oylYlFOmmqYIfsrMzzrljIwLZFE/PeYb+ceCvP2mHPUflopjAOuMXdK5QtjOK4FY4iC1
 JYiRyzDA1xSeubPRHbQm2+3SBO4BhPqm9Nsfh7/arrkph9IdWCw5anOA8okCZf0FmqZ6
 E3Ew==
X-Gm-Message-State: ANhLgQ1MMxtLC6v0h7bWw2B442EFg7mqxeITszpb5toln6zynt0W3jwU
 i5i+0yHYszFjF6JkODrHSGvPHDa9dSsKjXSVua/3ww==
X-Google-Smtp-Source: ADFU+vsT4Y3poY0BXSS54+1z1DAJ7LIxTusEZZnFIKaQ+79V+QEnVP+ktUuLcZqgLhCzrs/tZbdptM2Vhfb2QRrnK3A=
X-Received: by 2002:a7b:c050:: with SMTP id u16mr10798521wmc.68.1585518545980; 
 Sun, 29 Mar 2020 14:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200213132651.20506-1-johannes@sipsolutions.net>
In-Reply-To: <20200213132651.20506-1-johannes@sipsolutions.net>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:48:54 +0200
Message-ID: <CAFLxGvx_BvBYNDqxCfBBvciGFCxs8Fw00iDz6RNLVw9GF-eomw@mail.gmail.com>
Subject: Re: [PATCH 0/6] um: external time travel
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_144907_668438_B5B576AA 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 2:27 PM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> Hi,
>
> Here's a respin of this - I've been testing this for a few weeks
> (and some of it months) now and things are working really well,
> so I think it's *almost* ready to go.
>
> The only problem is patch 3 - the vhost-user spec changes *still*
> haven't gotten merged :-(

Since the vhost-user spec is now merged in qemu we can also merge this. :-)
I removed all internal commit tags.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
