Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B5219ED80
	for <lists+linux-um@lfdr.de>; Sun,  5 Apr 2020 21:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h2zg24PrQuXoEIiyz5BuzCMPICutCrUaBHeI8lHRD+I=; b=BwdCgjWRWHRwLO
	YqpdSr5SzLlh1enEA0IHa9j2exAtfy+rW0bxt6rXnYyeY0VxxXlBwG17HIW24RRDs5Yf5n1upCBvM
	epekiWO+xR++oHe2Xrq/LfUGK8VhoG7HWTUP3ycFJMIMKOyZwr2XFiZyYywTf5rYQ6/3R37p14Clm
	zexxlfNNJQU/VnE7TLbsuGiPMqIMcMmcdiwBdWnz44Of/jrizkg8PaheiEulPqkgmoJE2N0bRDh9a
	2CRwu7UOgN1EPz2iJzpP5OyZzitcDQ/3oIeBPBxqRrbgYAiLOqiQNYYqVxML3U7Rd/tC1vhAiSMrm
	KxE2pr71X1jtPy758DYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLAoH-0003RL-Le; Sun, 05 Apr 2020 19:19:57 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLAoE-0002pa-3j
 for linux-um@lists.infradead.org; Sun, 05 Apr 2020 19:19:55 +0000
Received: by mail-wr1-x42a.google.com with SMTP id 65so14878060wrl.1
 for <linux-um@lists.infradead.org>; Sun, 05 Apr 2020 12:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h28565Fh+ZJVZvObw9Qjn9QQzjam81F09HELt16EBdo=;
 b=pRpn8RGRE0y69ZQh58PJgmKS5LBkg313dWOJ6vszKTTy2VlMdCu0nnMieTHE6/uLP3
 p6URNp0coCfLWhF7L/Mk0CdmKT3RDwK/rgyBPsb8vI7hBT4mUeXT3rj1vlVqG7bAy2Iu
 x5rpBr+dLfew/hJOW+hsBF5Q1blfD1IewhBRZFk4wXpKBIDrdYm4peFiDsAGtsTrOxuM
 SEtTK2pt3a+NbJEC35ceFx0VupAcGsx8QJFt71la6+evoIaxm7KNnkk02R8MDE5LynVW
 UnYp5dNQ7rY0yew3JZK2rcir3oD7VlAdkO8NqRUkFa02DofToROidUx2GgIJo8fQV2WW
 jlEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h28565Fh+ZJVZvObw9Qjn9QQzjam81F09HELt16EBdo=;
 b=kvwRBwDcwMhS0v5KYIdfdLscgjtvtQ/cxFoimtRo6DUOccBB59xZbM9uDxXPOBhiOh
 LxhGm2+pSR0m14WkC9cAEB18YRgLRoHqdntspXmMyjRXswi6m0/oVNsBUcTYO9rmGExz
 DuA4/M9HEtyZGKlHtKCYSzlAojUGmot6wVgfemLugFZfplVrldNo1F+c0vnn3mIAfLfV
 K9rAVXB1Kqf61PppV1O+/DyWogHyh7hs4C2zSqyey+cjavlrwJqGGshun6/d1iOVsHY5
 DhJED75dzvvQghwCyujjWDq/Kr43kvl0anHYCvXSgaGb7nTvZ7/eShyd3U6TasykHpkx
 wQvg==
X-Gm-Message-State: AGi0PuY+kvbu9b7oQ6qpmE6f01c5DB9qPiEryuavK3EFww/Ww2Eioa6U
 DqXzbXmd0zLY/F08whSSUoBsSa9Sil/kPsk+KTQ=
X-Google-Smtp-Source: APiQypI/2NIkQScpfADLqbtwa6O/3aQAznpIdomyZ+mhbyAOLOGqsQxwpt9duv6P24CPA4qtfZrtziFqgrTnyAfMa98=
X-Received: by 2002:a5d:6a46:: with SMTP id t6mr19428975wrw.93.1586114391229; 
 Sun, 05 Apr 2020 12:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200405045030.sslbedviyt7zqwhi@lynus-laptop>
In-Reply-To: <20200405045030.sslbedviyt7zqwhi@lynus-laptop>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 5 Apr 2020 21:19:40 +0200
Message-ID: <CAFLxGvx0STbGdxevzJZJmtaOirednP=yDeCynoM1KXSWYcy78Q@mail.gmail.com>
Subject: Re: Clean up scripts/tags.sh
To: Lingyu Zhu <lynuszhu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_121954_187185_4D2D16D9 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi!

On Sun, Apr 5, 2020 at 6:50 AM Lingyu Zhu <lynuszhu@gmail.com> wrote:
>
> Hello. Yesterday I asked on #kernelnewbies IRC channel whether um supports arch
> other than x86, and I got the answer that um right now only works on x86.
> I consider scripts/tags.sh needs a little cleaning up. First, this script fails
> to collect files under arch/x86/um to produce tags. Second, it collect the
> extra files from the arch/$SUBARCH, which I considered pointless. Since
> um only works on x86, it's better to collect arch/x86/um for x86 um build,
> and output error message for other cases.
> Also, I wonder is it proper to send the scripts/tags.sh patch to this list?

Did you test your assumptions?
UML shares code with $SUBARCH. And not just arch/$SUBARCH/um.
See arch/x86/um/Makefile as example.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
