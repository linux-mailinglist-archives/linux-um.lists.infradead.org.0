Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EAC10D797
	for <lists+linux-um@lfdr.de>; Fri, 29 Nov 2019 16:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2lAZs3mQQ733g9exhTEYBYKi27+O47ijAQoR86v864=; b=PzRTzAQzuICD6O
	J/swORHPj8Ahd9m5N9pu7PwdDMuGKkRbiyLrcclb7zqsA21J6sUqrP23+Ma+HxNE9rAiz72EHALcF
	oOautOeOAzGV8ekw2lMWkwbuJyRc/lNjENrhmV2tHADVQuTRgrwnVKjuUmvGiKmwE+0kI6ArF9/hD
	Pw+7gFXfeYvV+7V8JwvlneEbHq1JrK7lzj/biPSFCHc++oWZAJSucCt+8/lz3AfgfGNyxgCTmohKY
	q6DXHwFgrb4wKlk6s96EgRX7wEOjvxYpQ7mg9DWwh2RzWa/BfTGH+i2lZz8tUWNA9FCcudFnecKrv
	4ZR9L0Up8Yf2zWcoYtGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iahq3-00047g-6D; Fri, 29 Nov 2019 15:05:43 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahpz-000470-UJ
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 15:05:41 +0000
Received: by mail-ot1-f68.google.com with SMTP id o9so4007260ote.2
 for <linux-um@lists.infradead.org>; Fri, 29 Nov 2019 07:05:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bRcvjxIIjEZih8VYxBj30KwcjodGusv/EyhYljS03Vc=;
 b=CEpxM2npgFqteip7DFsOtcCzlz+UZnjyyVWAijzv+KIVzlb+PUtUTOU5FGXW3WCatl
 jamyrCYLamDoePM7jYMOFzwP56yy8yd0kwgSh7qtAsMIdwrXRHh0Wfx520OIWiP7CjB5
 3LRZr4osyHP986I15uuGw2FWcf5UcReE5czBqHYcRP1YxOsA9X06yGoIh0er/5pNyJhQ
 NKw5cqF7jIjZBGy2ZITZEZAxonWn/VDLIUikaei4cpPBUq0FpdbFocKi1plteh7A/689
 1/7m09aDMFoLqcSjhnd37E60wDBSa5Duqs9xaVqjviHOHXibjth8/MbsGNH6bhrmMnVH
 pFig==
X-Gm-Message-State: APjAAAVzbo61ZscwWpUntjqVGq48b1LYYky3dGi7qiK6Nuz84Cg6mJ83
 zco+poOmzGp6/krs0BXyyL+9V+rWFIMEIh6zh5c=
X-Google-Smtp-Source: APXvYqwWF3t8EYS0x+BV7h7j3XejTzmbumB8fb57+vtw/xrfLMe7xyQJ2qo4LNIXOjcNh7mJRvlYcSm7csN7GnPOph4=
X-Received: by 2002:a05:6830:2363:: with SMTP id
 r3mr11579300oth.39.1575039938424; 
 Fri, 29 Nov 2019 07:05:38 -0800 (PST)
MIME-Version: 1.0
References: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
In-Reply-To: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 29 Nov 2019 16:05:27 +0100
Message-ID: <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
Subject: Re: 64 bit time regression in recvmmsg()
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_070539_975134_CF79830E 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: linux-um <linux-um@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CC Arnd

On Fri, Nov 29, 2019 at 3:34 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
> Unfortunately, it looks like the recent year 2038 have broken
> compatibility for one particular syscall interface we use - recvmmsg.
>
> The host now occasionally returns -22 (EINVAL) and the only way I see
> for this to happen looking at the source is if when it gets something
> bogus as a timeout.
>
> I think I have eliminated all other possible sources for this error.
>
> The picture can be observed when using a 64 bit host 5.2 kernel on a
> Debian 64 bit buster userspace (glibc compiled vs 4.19 headers).
>
> The code as it is written at present retries and by sheer luck and
> perseverance it manages to work, but this needs to be fixed.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
