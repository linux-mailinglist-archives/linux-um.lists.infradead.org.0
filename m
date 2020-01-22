Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91535144CA6
	for <lists+linux-um@lfdr.de>; Wed, 22 Jan 2020 08:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFlBVk0uF6Qeua1giMfCZeOmVLS96siw9+9guU6iiJY=; b=OVp0GwmRA1WR0o
	m6E9oO2c3m53zXbGJqM5ARhwx6ehh+m0n3g1J8tb2WbumJ15kAwsajAtd4SwKW3UcIQcBzWyERl9N
	OoU4fiF59YIqLu0hq0O6tYXzdWKEDbRAQImyyHruu16+M7qoLAOqJospINFmgwvAEwp9XXfCnXHYc
	HjM6i3pC3A72cGzsCuDAsBoRRC27C4c8u1TKs1ZWhuS2LzZ84calKa+UA8/wiKlJUZkojleP/lCm8
	2IK2sC95p9TwrKbjEqcXmxkCHIvr/lYcltW3qTsTtdy8MifaV9BQk0d0PZTqAlzLT9mUYuhzJzdW4
	cpditMSGuhHJ0PGzr6ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuAoM-0002Oh-2u; Wed, 22 Jan 2020 07:52:26 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuAoK-0002NV-3o
 for linux-um@lists.infradead.org; Wed, 22 Jan 2020 07:52:25 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1iuAns-00C9NK-Ot; Wed, 22 Jan 2020 08:51:56 +0100
Message-ID: <946dd98f6597cdc9e75cce1929991ca3c6d6b12d.camel@sipsolutions.net>
Subject: Re: [PATCH] overlayfs: print format optimization
From: Johannes Berg <johannes@sipsolutions.net>
To: liuyang34 <yangliuxm34@gmail.com>, Jeff Dike <jdike@addtoit.com>, 
 Richard Weinberger <richard@nod.at>, Anton Ivanov
 <anton.ivanov@cambridgegreys.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Alex Dewar
 <alex.dewar@gmx.co.uk>, linux-um@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-unionfs@vger.kernel.org
Date: Wed, 22 Jan 2020 08:51:54 +0100
In-Reply-To: <9e77421d905f0eda08753cf7a7b40f51b5b8c688.1579676323.git.liuyang34@xiaomi.com>
References: <cover.1579676323.git.liuyang34@xiaomi.com>
 <9e77421d905f0eda08753cf7a7b40f51b5b8c688.1579676323.git.liuyang34@xiaomi.com>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_235224_159806_FB331C65 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: liuyang34 <liuyang34@xiaomi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


> diff --git a/arch/um/os-Linux/umid.c b/arch/um/os-Linux/umid.c
> index 44def53..54246b7 100644
> --- a/arch/um/os-Linux/umid.c
> +++ b/arch/um/os-Linux/umid.c
> @@ -349,7 +349,7 @@ int __init umid_file_name(char *name, char *buf, int len)
>  	if (err)
>  		return err;
>  
> -	n = snprintf(buf, len, "%s%s/%s", uml_dir, umid, name);
> +	n = snddprintf(buf, len, "%s%s/%s", uml_dir, umid, name);
>  	if (n >= len) {

Huh, what's this?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
