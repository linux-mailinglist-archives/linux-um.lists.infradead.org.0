Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 211D01492F8
	for <lists+linux-um@lfdr.de>; Sat, 25 Jan 2020 03:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFuNd7uyCF3ACHFeP9zo9l8xWZkpF/vxididUUC5IPk=; b=s25nhZUXav89zK
	nq+V+qhep+gHMlZJQpJo3CwDJZBqZjXoRHZmMsNkEepqX89gaowibD0oPbwx+VvMUrpial9sq1C7I
	gRXxX6Z7gemQplPFhW6qWG5NJCsQ2B36/m4eCgCYgWtceWgtfmJapG8vU7WGeA0YsCLpFKugJFJQK
	vQjWAijZQ+unMLbv6+DeEvb7sfOntsI6V2Tl3ZVIK2Vet/9Ai7RIA+hs9EETn9goT0oc6pF1PybdE
	SX1QaGtetWcnBFVmzutTydOqX49UljshkMkFt3u/4A/8dThGxZdKN7mxmp6Af/J8n66MzSntvITIt
	sdeBoLW6HiMwt/oePCrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivAw1-0001bq-Uk; Sat, 25 Jan 2020 02:12:29 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivAvz-0001ao-7E
 for linux-um@lists.infradead.org; Sat, 25 Jan 2020 02:12:28 +0000
Received: by mail-pg1-x543.google.com with SMTP id l24so2059557pgk.2
 for <linux-um@lists.infradead.org>; Fri, 24 Jan 2020 18:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EXFe/vfnLkzT3mAWRy5NBHmIc8Oyyk9Ad0WMoNwuPt8=;
 b=TkxDWTfMZU8Eqr69fjAxX4wvjaAyxwoq2CL2Bwlr1AgGV5D4EqkcCvbwxqxtk5oWQ7
 Vu3iQLbxn7OwbKzTe4BtiWx7Bvvg/IeY5IAdi7Ep3DVIs6SknDPSxgtbYjPOKkFOA9vy
 x1TB7CkGJlRbp0gzWpmXSkdZjh1hUhNKqoS0ZI9xK2qxCiNwtuYiAc1T7ywm7J2boTXa
 Tv6qkmoVmv2ZmykEokMRBxmoaGc+RIaJSM0dV/GnsSeGscoWaVB3Y7CcmRsz4HdsSgGR
 XWDLWKezF32jOsGs4kkhN3bUgl2Kd6ojl3ufz90tx6eQvHHL80yzoBsAUbi7t9WCXnAw
 6Rkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EXFe/vfnLkzT3mAWRy5NBHmIc8Oyyk9Ad0WMoNwuPt8=;
 b=RhX5EQPdHH+CM/zf87nwsq8f/GnnkH787QP1vbfxBc4ECeeZ4DVqc6KYY16ReWDRz4
 oz9yi/1w5F9F790apEgLJFaA3nz4wnblzmUH2S0OudPCK4CcN0mFHF+SOzEPFmr8iNPm
 z/K8maLh3FW2jGj7xgfo/q2wQkSrw0VLdLXJ8JM4z8W6gJ6GnQGdXa54u220iLGW/8Gu
 krbARvBQKgzUZ5MFYCbmlYWIP0LKw2MLrPoTcOsXwnlcuCatGmcyZDuB9L1CCWx1ZETC
 PypmmpA5gHtSePghaQw8RjtVPpIf2oIeq1XFfvrtM2P+n+HDBY4MDeTcgSEM1YpoBL7N
 XcOw==
X-Gm-Message-State: APjAAAWy1yFt9ER0gKJlvOCmbO5dfnJHnO+ptmaUn+HF9Pm3B+6vN/wn
 lgXvaYncxrDSBDRq4dUlWltg1b1Nfz0ixhuFdC7Z68MG56E=
X-Google-Smtp-Source: APXvYqyW0SmPK4KpuQbLoeF3vRxy+R+++4XuYWmuDeTZM4oxe/ppV3OLeGSF+O7JLzqqRY0RxLFKybydDDRXm7DDRfA=
X-Received: by 2002:a63:cc4f:: with SMTP id q15mr7565027pgi.159.1579918343489; 
 Fri, 24 Jan 2020 18:12:23 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-3-brendanhiggins@google.com>
 <20200109162303.35f4f0a3@xps13>
In-Reply-To: <20200109162303.35f4f0a3@xps13>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 24 Jan 2020 18:12:12 -0800
Message-ID: <CAFd5g47VLB6zOJsSySAYrJie8hj-OkvOC89-z2b9xMBZ2bxvYA@mail.gmail.com>
Subject: Re: [PATCH v1 2/7] mtd: rawnand: add unspecified HAS_IOMEM dependency
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_181227_280562_332777A9 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, David Gow <davidgow@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 7:23 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> Hi Brendan,
>
> Brendan Higgins <brendanhiggins@google.com> wrote on Wed, 11 Dec 2019
> 11:27:37 -0800:
>
> > Currently CONFIG_MTD_NAND_CADENCE implicitly depends on
> > CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> > the following build error:
> >
> > ld: drivers/mtd/nand/raw/cadence-nand-controller.o: in function `cadence_nand_dt_probe.cold.31':
> > drivers/mtd/nand/raw/cadence-nand-controller.c:2969: undefined reference to `devm_platform_ioremap_resource'
> > ld: drivers/mtd/nand/raw/cadence-nand-controller.c:2977: undefined reference to `devm_ioremap_resource'
> >
> > Fix the build error by adding the unspecified dependency.
> >
> > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
>
> Sorry for the delay.
>
> Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>

It looks like my change has not been applied to nand/next; is this the
branch it should be applied to? I have also verified that this patch
isn't in linux-next as of Jan 24th.

Is mtd/linux the correct tree for this? Or do I need to reach out to
someone else?

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
