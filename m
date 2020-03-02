Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170721766DF
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 23:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBi/KGzPHtijKxttwvtsv4HQ3JLOLf1C7wSCVIiePrw=; b=oktGqz30lKh7Kn
	ft49hYLQPVazw5vIOuljv6F52FsSFzumjAkJH9iazcwtKCOJ//XFgAORJZDdxxH8rKtxNF8A0TVKH
	AEdemhyr6ILswVSfqPqoh0uO/F6uejPi6BqoIUe42EObsL8AOkvzXA3oCvP9xv24Xmba4kSdLVnj0
	MhbsPnvCsVH9RCY4uHNRwV17Mi/29PD7ISRnG5s62cv6T4g9JwZMxvIDAciMxXgsMl1pR+YXf0jY8
	eVQYssEkdBIPKqCV1zTEy62Bg2c2h1EArJuvLbLxOuUibHZF156FrLwmcbUp+hn9IqSNgq3CgWow1
	OsMKFPLervdyod9osTEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8tVW-0003Ht-KM; Mon, 02 Mar 2020 22:25:50 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8tVU-0003HT-BS
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 22:25:49 +0000
Received: by mail-pf1-x42f.google.com with SMTP id y5so390239pfb.11
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 14:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6efxeA5g+rwuMvQr8ytRhTu98WaYVw12E5bJfbsJYZ4=;
 b=CtlFLiEgdgOJIvHde7LjiTVdMr7XEM5pCx2TL4QzVEgZNJ26I/KZvhJiBpfLhzBr4H
 UqDukDl1036Z2VoAjaYootIOlpSy5Ab5+4z+fJ6+/6G2q/7IDtBSkXgSNhp5DMc1yVVn
 ndR8/cg135lWM5cabo5z+wg9hmQJcQAalzllyhxCMwuLhkQdp5Ry5oE+ri7hoo7d/ICx
 dVleXyhu2b65FbQg9s0PnRuIMtIjI5QW/mIRhOoMIEWS+aeoSB9R79ieB0FhUzpqr7qz
 qy9FEMri79p7n6p+hRr6rMTU+Le0Go7qVbs2nbVEcB9fOY+bwem9CLw2CKfdp33zM+UP
 pk1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6efxeA5g+rwuMvQr8ytRhTu98WaYVw12E5bJfbsJYZ4=;
 b=DLNSyJDzqfZlHMoPRh469xVCqAPXdFTGNNobFqnl8c/MLW6Lxw0BQrpE6gePStL8zp
 g0Atb2SyoZm2syRcXHULEZpihiOaURLVjeCGz6coPYPFrJVbyJ8/42MsKCARaISi9OmE
 f4mICU3LHGZ4CZB6G3o049/Ne8kCC8s7cr7KGndr7pMB6NAqsREID3QfUKHG/4j+hBMD
 ymdz5BSzgPfsBt67RPk6Ms7Gq4Xng1/MfG5aL5RoOU8uFyCsIAwu3R51TktTcQTG0h31
 erXmVVJ0Um7UY0oAv2VcZmqZiPBYB+TfVoJHpNbs0byZ5ThmNJH2rx/gZsA5TYJDlFmp
 H1Ew==
X-Gm-Message-State: ANhLgQ2jYVt0U6L08Ivg/yEaLB+9XDIcP2KHo0FKNPiGtznSdA37a/Og
 LoTXRZJrStWXJha/iThfYMYOs+ZT80HyXE/ekrUS9Q==
X-Google-Smtp-Source: ADFU+vuIlSusFAlLcQ/Qbkm1zRK4hcRHHhfsZtG+4e7FhIOMG8G0a1QMZ5iwpVJnxKXi+rUWnFzSQvPpdZO9ZY2n5s4=
X-Received: by 2002:a63:dd06:: with SMTP id t6mr987590pgg.384.1583187946657;
 Mon, 02 Mar 2020 14:25:46 -0800 (PST)
MIME-Version: 1.0
References: <fb0fcf4ffddaabc7eae82e25d7ec5ea9c37eb2ae.1573179553.git.thehajime@gmail.com>
 <20200123193315.132434-1-brendanhiggins@google.com>
 <20200302195116.GF11244@42.do-not-panic.com>
In-Reply-To: <20200302195116.GF11244@42.do-not-panic.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 2 Mar 2020 14:25:35 -0800
Message-ID: <CAFd5g44+PD9FM6Vhy2uFAkSvgsOdxjy2gcP6duBzuhJGJaddgg@mail.gmail.com>
Subject: Re: [RFC v2 21/37] lkl tools: "boot" test
To: Luis Chamberlain <mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_142548_416835_827CDD32 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Mark Stillwell <mark@stillwell.me>,
 Conrad Meyer <cem@freebsd.org>, Octavian Purdila <tavi.purdila@gmail.com>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Motomu Utsumi <motomuman@gmail.com>,
 linux-um <linux-um@lists.infradead.org>, Akira Moroo <retrage01@gmail.com>,
 Petros Angelatos <petrosagg@gmail.com>, Yuan Liu <liuyuan@google.com>,
 Aleksa Sarai <cyphar@cyphar.com>, linux-kernel-library@freelists.org,
 Thomas Liebetraut <thomas@tommie-lie.de>, David Gow <davidgow@google.com>,
 David Disseldorp <ddiss@suse.de>, Patrick Collins <pscollins@google.com>,
 Luca Dariz <luca.dariz@gmail.com>, Hajime Tazaki <thehajime@gmail.com>,
 KUnit Development <kunit-dev@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 11:51 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Thu, Jan 23, 2020 at 11:33:15AM -0800, Brendan Higgins wrote:
> > Luis,
> >
> > Does this kind of match what you were thinking with the syscall testing?
>
> Without looking too deeply into the code, it seems to be the case.
> Are you going to expose / port kunit to tools/ to allow usersapace
> to run kunit tests?

Yes, I am thinking about this as a distinct possibility. I think it
only really makes sense in the context of syscall testing, probably
via LKL (assuming this works), but for general end-to-end testing, I
think kselftest has that area covered and users would be better served
by just integrating KUnit with kselftest.

> > In any case, I am excited about this. Please keep me posted in the
> > future!
>
> Yes please Cc me too.
>
>   Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
