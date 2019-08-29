Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A911A1D1E
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 16:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRh2KRruSh/ihPsezuRc9j96WUDE9ebF+a/Eit5IImM=; b=NE3UO6oIcUO+hP
	6ysetacvC8ldn6FxfhopnixSbLLHiqChDEGRKzp+tgU0PnCG1zJH21lcrbMwME6f5gKeq8ohSkMIN
	x+5eSJyXpUCHQYUxMJWXsoDXBZLVMQE5AbxCb0pGXy3lz7P6bsxUe1GYRC6Ou/aSM8UTvlrg1lkYb
	uZ9sAfBSy4YAydjGfkKp1mckIiiRLOYbPV3nUEYxDvBhQ8JC93XUIlvHrdtDLjT3VzpUM8r71SR7H
	mxzhIJQpexLGRQ1L31RVGNYI1UZRnXS4e72YZyvzaTsRTk2V6G65ubVoRNi32aHKiJm8D7+dbXRO8
	1W0euaOrqoh1ERp1EsTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3LXc-0007sp-2y; Thu, 29 Aug 2019 14:36:48 +0000
Received: from mx1.volatile.bz ([185.163.46.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3LXX-0007sR-Cs
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 14:36:44 +0000
Received: from thedarkness.local (unknown
 [IPv6:2600:6c5d:4200:1e2a:a077:9bc9:2f0:8eb9])
 by mx1.volatile.bz (Postfix) with ESMTPSA id 2E8E32F44;
 Thu, 29 Aug 2019 14:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=volatile.bz;
 s=default; t=1567089393;
 bh=dIygAd+GskXlJd02wsFKTXP3LiBbYusrlSD4b5VFWc4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=fs9EH6dXvM3d12xH4cTty5GccnQcwDxZti5Ktd3Qshd982Aw7CBfXQ2KUH6JHp4Zg
 QBmxZFX2t/D34+0MZAZwyyqVpDOseNtgLodKzrtzOd2mSSPDitw/sylEUqMa3sDi1k
 9J4PJuFYlxq8Q5glBMt32VbXPeaeUX61ILdJKk5w=
Date: Thu, 29 Aug 2019 10:36:28 -0400
From: Dark <dark@volatile.bz>
To: Richard Weinberger <richard.weinberger@gmail.com>, LKML
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] um: Rewrite host RNG driver.
Message-ID: <20190829103628.61953f50@thedarkness.local>
In-Reply-To: <CAFLxGvyiviQxr_Bj57ibTU4DQ1H5wQC4DE5DNFBtAFoohcgbsg@mail.gmail.com>
References: <20190828204609.02a7ff70@TheDarkness>
 <CAFLxGvyiviQxr_Bj57ibTU4DQ1H5wQC4DE5DNFBtAFoohcgbsg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_073643_632938_144DBE62 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.163.46.97 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>, linux-um@lists.infradead.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 29 Aug 2019 15:26:24 +0200, Richard Weinberger <richard.weinberger@gmail.com> wrote: 
> So, you removed -EAGAIN handling, made everything synchronous,
> and changed the interface.t
> I'm not sure if this really a much better option.

I should have been more clear here that I'm using the interfaces 
provided by `drivers/char/hw_random/core.c` for consistency with the
other hardware RNG drivers and to avoid reimplementing stuff that's 
already there. 

It might be a bit hard to see in the diff, but I pass the file 
descriptor to `os_set_fd_async()` to prevent it from blocking.

For the -EAGAIN handling, I'm passing it onto the caller. Since you 
mentioned it, It would be better to handle it in the driver itself 
so I'll update the patch to address that.

> Rewriting the driver in a modern manner is a good thing, but throwing the
> old one way with a little hand weaving just because of a unspecified issue
> is a little harsh.
> Can you at lest provide more infos what problem you're facing with the
> old driver?

Most of it boiled down to it silently breaking if /dev/random on the 
host were to block for any reason, and there was the userspace tool
requirement to properly make use of it. With that said, the interface 
was also inconsistent with the other hardware RNG drivers which would 
require a rewrite to address anyway.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
