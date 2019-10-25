Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE3FE560E
	for <lists+linux-um@lfdr.de>; Fri, 25 Oct 2019 23:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BkFBDacng5/aBqaUuc3UE3SsKLuw2jtXrCgmLfoiyQ=; b=a52tcNLLb+533Y
	ZYaz4KGsT3Kp8+e/ZzqkTCkulzh7bazo1nY5cAEulyijct8q88Xltz58Xfv9yVJN3ju+xmwrpDbx2
	P5EQQ/DVyNZJ8R1bNmRf0gxSV5duuEXIqR1o10JzhbAQ3zK9aX+avKtd/YKqMY+HxCBmu/o5/xI7s
	x30DJjFbjv3k/jCXWudMx7dz74q0k3XT/1Nk92aBBo6FaB5av2zwVaif/4h9q5q+t4rkbsX/McuDq
	35PIRbIFhcQnETC0gCFziLECdY9voOoq3dkaBWK/mDjORfTntnkiQxFKBZmklh9fVohLI6XNHYTJ/
	CjbNKoudoM8uv2BFH6eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7Jk-0006V3-TM; Fri, 25 Oct 2019 21:40:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7Jh-0006UP-VC
 for linux-um@lists.infradead.org; Fri, 25 Oct 2019 21:40:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id 22so3316702wms.3
 for <linux-um@lists.infradead.org>; Fri, 25 Oct 2019 14:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3+j3R6PK1FN/v2klWIVTyr6Yr/OlDLc7cERsr9jHr1s=;
 b=M275/00wuXb4QHYdEJIew5VXRToO1htVh/4wxCSkcEzg4GtTU49o2YEWG+7FiSpqOd
 BD914LnagFuiCJJzqTBeKQhflPWZI0QlawpiSr3xZHVzANY5AIjVOBlP7hd5arpm/cmr
 guFNrFVQD4kN5Fi8ygSc9nb7m9OKaptbQ2AvN2xwuKlqgEszYWvIfRGZj5UMBKiQT8aX
 xgcfg8PTWI7c0mxKQCG7pMTvO8OrqdMOz3LnEAO9tMEC9FrGpB28UoSnjH2XtlWyU/Ot
 KgWkb5Tq+mrCDwX2LIlW+wMdyruXgYEbL9wPfVsO3R6Is1so9o+LOdmnvmYcGgBOPSvL
 +D0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3+j3R6PK1FN/v2klWIVTyr6Yr/OlDLc7cERsr9jHr1s=;
 b=doGlEbdc3baAYKyoLe84xxZ1Gpci7PpKtWRiHhfDo4LhOtKSKGWYM67lkQcC41V9Kv
 OYenTue6iEjJEoOmp6Vi1GIvS+7gUJxDkVw8M/JTSV7b57MTg7W0FH7Mai08cSj2cclj
 JKZVTGpcfYGU3iGoVPTZ/csU3wPHb2kjhWC+6hABE1Col8alVHpIqIRyzXcCeFEtC0lM
 Fz/jLIjBPB3+ByTriSkFG2Elwym8ldq3gRH7Di8eNqdw5H2gVsHt1+tDwd2ZU7zMjbOD
 9RSPbX3+1Z4C91veqlPdcPi4+x7ZeRmJtUwzDj8kWIXVxHzePafkEQrfo6PfwRumHYdd
 G3Sw==
X-Gm-Message-State: APjAAAX0cBDXTxX9lqFYNP78zp6LVooUG8pFTv35sSwyBkld/HJfM7i9
 ubR6i8iW+Zsi8/Wrf2o0N2J0Mwc7xv5zGZXUB8I=
X-Google-Smtp-Source: APXvYqwKtGlQN1Juyu/GKh7ttlbyz3UICwpZ2AUNJKMIwumOkzcJceYGI/cigIuK/1oC7uCVCP5Ze5aKg+zusA7Wd3M=
X-Received: by 2002:a1c:5459:: with SMTP id p25mr1923137wmi.109.1572039616566; 
 Fri, 25 Oct 2019 14:40:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571798507.git.thehajime@gmail.com>
 <0b1464dd4904ee2b049fef624895ead3fe6aa555.1571798507.git.thehajime@gmail.com>
In-Reply-To: <0b1464dd4904ee2b049fef624895ead3fe6aa555.1571798507.git.thehajime@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 25 Oct 2019 23:40:05 +0200
Message-ID: <CAFLxGvzqPzZtUSzymWgnhGnr6qgcDe9ue6Q8ALMS-r_Y+KXVOw@mail.gmail.com>
Subject: Re: [RFC PATCH 03/47] lkl: architecture skeleton for Linux kernel
 library
To: Hajime Tazaki <thehajime@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_144018_033593_B672919D 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "H . K . Jerry Chu" <hkchu@google.com>, Levente Kurusa <levex@linux.com>,
 Matthieu Coudron <mattator@gmail.com>, Conrad Meyer <cem@freebsd.org>,
 Octavian Purdila <tavi.purdila@gmail.com>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Jens Staal <staal1978@gmail.com>,
 Motomu Utsumi <motomuman@gmail.com>, linux-um@lists.infradead.org,
 Akira Moroo <retrage01@gmail.com>, Petros Angelatos <petrosagg@gmail.com>,
 Andreas Abel <aabel@google.com>, Xiao Jia <xiaoj@google.com>,
 Mark Stillwell <mark@stillwell.me>,
 "Edison M . Castro" <edisonmcastro@hotmail.com>,
 Patrick Collins <pscollins@google.com>, Pierre-Hugues Husson <phh@phh.me>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>,
 Luca Dariz <luca.dariz@gmail.com>, Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 6:39 AM Hajime Tazaki <thehajime@gmail.com> wrote:
>
> From: Octavian Purdila <tavi.purdila@gmail.com>
> +LINUX KERNEL LIBRARY
> +M:     Octavian Purdila <octavian.purdila@intel.com>
> +M:     Hajime Tazaki <thehajime@gmail.com>
> +L:     linux-kernel-library@freelists.org
> +S:     Maintained
> +F:     arch/lkl/
> +F:     tools/lkl/
> +

The arch/lkl path is outdated.
So, you and Octavian will maintain LKL?

Do you want to be sub maintainers of arch/um/lkl and send pull requests to me
or co-maintain the whole UML ecosystem together with me and Anton?

I'm perfectly fine with both variants but tend to the latter one since
it is less overhead.
In case you need your PGP keys signed, next week I'll be in Lyon at
OSS, ELCE, ...

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
