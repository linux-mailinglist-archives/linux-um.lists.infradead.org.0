Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF518109564
	for <lists+linux-um@lfdr.de>; Mon, 25 Nov 2019 23:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1bDxUM8G6LYO4XoOX7p6QV7wK1L+a4COJqkTcsUKHE=; b=lyhdA2/kGGdtN6
	wYnLxiAcOQVsfszKSGwoZ0eZg85xSP1iXATBjRePTfNdj2UkRVGD311NQp8ZlMwUagpRU3LFVBunx
	QcI4GyDb4bjagJqF5C168CNk+WkBITJvzOmMFsltP6UzwtqFoB2rY7fTY9XHpUtNVYyEaSmEmYt+J
	pT3mtUMvC3hD8T4ICDUluQgYY9bAQ/U9vvDhprcRPe2snVz7ZlPmaq8A63eMxRGiwwSbvbrvfcrBF
	XpuWlwNXzH9j/m0jkSYK5soWfzDRpddLwF5WlpkuM9WpEKyFd7YQvCc+wbU2ryetOqCm5aI/ADRiK
	oX50GrCPyJE4WhZsUfSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMVx-0001Je-Hb; Mon, 25 Nov 2019 22:07:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMVv-0001J4-6P
 for linux-um@lists.infradead.org; Mon, 25 Nov 2019 22:07:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id s5so20052030wrw.2
 for <linux-um@lists.infradead.org>; Mon, 25 Nov 2019 14:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BhRJfC42Zy9yh+o0cz+bGXWAytZm/gsembohKgd7C0M=;
 b=Rv2c1m4VasDNY7QavJ8UGtdRPm21rpDCDn4wlaYRoqezXbbv3S0zKiZs9bgIDzNm/9
 wwmrPwZp75toICUvSLVlHJeELvXzJhK5xvkgpXbsdu0oo9i7zEsF8YnVCTvL3r4k5trV
 mU0/oYu1j75rO2Vyda7m6hCEJlt3h2aVwQM1kSElsxsi5ermabL8Gurzh0ilY2WwEdch
 nzJDBy6g5M0CxkAh3eX57+Sop5ZLg3pQkMtky89mSjmOQoKXHYRC2emdHsMNQJ9OAJDV
 7DXh6+cMiHaC+4i3Y1XP+VKQcE2wGcF8Qomb6FP4o4wMRy888HK95VW7lrg8Nsw4t6GQ
 nMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BhRJfC42Zy9yh+o0cz+bGXWAytZm/gsembohKgd7C0M=;
 b=tHBOnZNAGTW6Tpux5bSAK9rS1Uc0GgRFdrPbPdABG3gqhsxE14cUXCsaTYMTJVarZH
 wjOy0b9XrY8UB8HLnYttknMquJuY/MkZqVz8bMLpTPnBTsSl4ApsG9vdDfajDktyzZ4t
 AMFZ3aY7bMT+5hTQH1RRAlG6AZ/C97WVdWmjGHM96tUWs6QMqjBA7zkIGbLGaXsX3KGn
 71mDhhX75t3OOcWgqV8Lv5UElmUjiz1XHdazpknfQ2OqNCbBZpCJ639ULsIV5bMRzqJI
 gUwpHWo1YmE00C0+UPDmWihQ93TddSaLn64c8HYY9JSPhLHE55vspRI/dGs09zsmq1uH
 mnzA==
X-Gm-Message-State: APjAAAWvDxeFinOW630LgU5OSIW96XPa13K4h487zv4ZDg5EKv5NotVO
 dt6JD3D3Q0UfbkDiHbU0K3AYGh7WDupSenjIffY=
X-Google-Smtp-Source: APXvYqzDf4XZFKNVFfRylQQCZAkytmjoNRSXyQZ6ZF9o9MRS3qQePu6vCJFAg6p5j92Gh5wFNvkilhG5N22mDN3ygPY=
X-Received: by 2002:adf:de0a:: with SMTP id b10mr33969770wrm.268.1574719640469; 
 Mon, 25 Nov 2019 14:07:20 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573179553.git.thehajime@gmail.com>
 <1531c5f16a00b608635c9a62fa3951807075f950.1573179553.git.thehajime@gmail.com>
In-Reply-To: <1531c5f16a00b608635c9a62fa3951807075f950.1573179553.git.thehajime@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 25 Nov 2019 23:07:09 +0100
Message-ID: <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
To: Hajime Tazaki <thehajime@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_140723_260966_0567D7D1 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>, Conrad Meyer <cem@freebsd.org>,
 Octavian Purdila <tavi.purdila@gmail.com>, linux-um@lists.infradead.org,
 Akira Moroo <retrage01@gmail.com>, linux-kernel-library@freelists.org,
 Patrick Collins <pscollins@google.com>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>, Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 6:03 AM Hajime Tazaki <thehajime@gmail.com> wrote:
>
> From: Octavian Purdila <tavi.purdila@gmail.com>
>
> Add helpers for implementing host virtio devices. It uses the memory
> mapped I/O helpers to interact with the Linux MMIO virtio transport
> driver and offers support to setup and add a new virtio device,
> dispatch requests from the incoming queues as well as support for
> completing requests.
>
> All added virtio devices are stored in lkl_virtio_devs as strings, per
> the Linux MMIO virtio transport driver command line specification.

Did you checkout arch/um/drivers/virtio_uml.c?
Why is this driver needed?

Virtio support is rather new in UML, we definitely need a common
code base for LKL and UML regarding to virtio.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
