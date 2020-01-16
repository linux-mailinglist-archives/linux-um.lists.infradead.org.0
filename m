Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE9413D573
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 08:57:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50cXoMmbeYORZfwlido/hWDb8Y6TWojJS6sgRYXMq4k=; b=BUsweGvCOh42fG
	dKmajwUvfvCQpSTNfHs0QcNe7DKlJ6eE25q1I/+2Fu/A8kp1QEcbJgVk8d2UdyIIy94P+bm6EvTgk
	3GNDnotcWSaCtHfJv+AqC5GlERdUFopCDiNf7D+Br7rbsItOAjW2tYEpdaqg85Fwv9fuJiTlDsso5
	SWG93qQnzGkoIVWkaK+sX7Sm3WMNM906vUu7mgqnDIz6vPxMKgtIb+u8sDoXxaJxJ2Yov73BKa2mu
	JIeMqFywqhfPsumZhb1+Hi9aiNcXWmguGyb3INvMguFPN2vKdh0AYVgtuBy913+qI6rlcJ+CYylBN
	3Ce4alQEwog0Q2g29C8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is029-0000a6-Jg; Thu, 16 Jan 2020 07:57:41 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is023-0000ZE-I2
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 07:57:40 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1is01s-00BVg7-C7; Thu, 16 Jan 2020 08:57:24 +0100
Message-ID: <4f382794416c023b6711ed2ca645abe4fb17d6da.camel@sipsolutions.net>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Patricia Alfonso <trishalfonso@google.com>
Date: Thu, 16 Jan 2020 08:57:22 +0100
In-Reply-To: <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 (sfid-20200115_235651_948442_0F0A0073)
References: <20200115182816.33892-1-trishalfonso@google.com>
 <dce24e66d89940c8998ccc2916e57877ccc9f6ae.camel@sipsolutions.net>
 <CAKFsvU+sUdGC9TXK6vkg5ZM9=f7ePe7+rh29DO+kHDzFXacx2w@mail.gmail.com>
 (sfid-20200115_235651_948442_0F0A0073)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_235736_516422_6F629AB4 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: richard@nod.at, jdike@addtoit.com,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-um@lists.infradead.org,
 David Gow <davidgow@google.com>, aryabinin@virtuozzo.com, dvyukov@google.com,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

> This seems like a good idea. I'll keep the #ifdef around
> KASAN_SHADOW_SIZE, but add "select HAVE_ARCH_KASAN if X86_64" as well.
> This will make extending it later easier.

Yeah, that makes a lot of sense.

I think once somebody (Anton? Richard?) start applying patches again,
they will pick up my revert for CONFIG_CONSTRUCTORS:

https://patchwork.ozlabs.org/patch/1204275/

(See there for why I had to revert it)

If I remember correctly, KASAN depends on CONSTRUCTORS, so that revert
will then break your patch here?

And if I remember from looking at KASAN, some of the constructors there
depended on initializing after the KASAN data structures were set up (or
at least allocated)? It may be that you solved that by allocating the
shadow so very early though.

In any case, I think you should pick up that revert of
CONFIG_CONSTRUCTORS and see what you have to do to make it still work,
if that's possible.

If not, then ... tricky, not sure what to do. Maybe then we could
somehow hook in and have our own constructor that's called even before
the compiler-emitted ASAN constructors, to allocate the necessary data
structures.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
