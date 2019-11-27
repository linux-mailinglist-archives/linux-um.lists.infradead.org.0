Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61EB10A7B8
	for <lists+linux-um@lfdr.de>; Wed, 27 Nov 2019 01:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BU6U7+H1D2qSIQAlXKAvB+z8n6r3LGaVLGqWGj2HiDY=; b=KTN58jZqwAAQCC
	1OciMU+A9SnDQOTYqcDJrQb2Y5vgGZa8U3rlpfwulvcxRSFlY6+4fzka9NeQNAvBWtMkkS7egiMVz
	3OTeLsnNJnpFRKXz+7Y/O9p1mkD5YkqmVx4yLGS07Yud9Bcya45zRzQwOCY/8SDxIXuch+NQhXGNZ
	/vqf3MFF+30DlQxoiT8HURwdVAWVJQbFOQklxxXP0IVjU5q5kjsko5L41ZgoNO6gtVCvuTXJmIu4b
	xvYo1o/RbC2T9QESGVzEimyoa0VlgcWCtP5zmsvQd94PWUamOJTCgUEp9bTkWVhQmkas6jRxkR8W+
	DmZ2tTnyHjIGiBTrUDpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZlfw-0000I7-6C; Wed, 27 Nov 2019 00:59:24 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZlfn-0000BR-Ew
 for linux-um@lists.infradead.org; Wed, 27 Nov 2019 00:59:17 +0000
Received: by mail-io1-xd44.google.com with SMTP id i11so22807056iol.13
 for <linux-um@lists.infradead.org>; Tue, 26 Nov 2019 16:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=VbU/38+yNJ+zfC9u+frCXiwxMQpfNcWxp5XLS8niF1A=;
 b=A10E0Zkk+zRrcOORDMMGCsKvy9BHFgf9FxT8Q5Z+F9T0wHGy8ix5R/AeW+qpfr2BLY
 AuSpKXkAJKbWFrfzzgtr9gXIip0OYbus86/WG9/IaIKfRq2eNqfUL4oW0gSl7kAGiLKC
 hpLn9uWQyeaELHETva1e3D83DjU/edfu7aUWAOAV7ru9LRkEs1dfRabuSYfIFDcLaDFu
 IReRx9b2JQ1INbGgMuTdZECfpMi3o8NeOqWOkz82VQhy4PIh54PN+jRYK96gnq2z7w4q
 ywrDF0yv5vR+B5AzLX9VjE216xTiY7ZcEEGWPiRNZbxy8JRTu5eTmdXKEHIE7XLW7Xbq
 V6gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=VbU/38+yNJ+zfC9u+frCXiwxMQpfNcWxp5XLS8niF1A=;
 b=SQGOAPlIXYFySDK1rsXpHpgCyN3h02CC3Ny/HyYDpirrbE8mGlAVSdnwoeKqamWTLZ
 tXCqYBSLY1blowDFhWZmIl4Zg8x47KZl79NFshJvwDnamtckhFzN/X5DmWkG07P0/5Q6
 /F4mL5BFdT5Qcf4691V01XtARhnW2sbMR1zB7R5MpDUWuWhdl/EMPWu2YHWkl+B0ccGk
 aA4KKk9hrwfmKYohB1O3gS292qbvnEE31gwvKyUM8uR0ENI0vwWqCQMeXslRs/GYoXa2
 atuZDyaZNXaqijHtlkq/ayOlojLB9eGmAyN/OSQR5KvuirFhveEPkC6vGLhuz/D2ReCS
 uFfw==
X-Gm-Message-State: APjAAAXROiQRt2I3WskdUKFtHaUtF9pc24Hfm1Os2wJJOuD5cBUwmlFP
 3QpHDp5boSkQ9hqX2lmg/InvyA==
X-Google-Smtp-Source: APXvYqxCcCkr//QkJqo4RilDXTt5UmXBfkRr7b/U5pz2/bN55Ik8XDB5pe77KNzYh8fyijKcertCWA==
X-Received: by 2002:a5d:9b08:: with SMTP id y8mr36537219ion.108.1574816354041; 
 Tue, 26 Nov 2019 16:59:14 -0800 (PST)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id k20sm3215043iol.3.2019.11.26.16.59.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 16:59:12 -0800 (PST)
Date: Tue, 26 Nov 2019 16:59:11 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Kees Cook <keescook@chromium.org>
Subject: Re: [GIT PULL] seccomp updates for v5.5-rc1
In-Reply-To: <201911260818.9C5DC1E@keescook>
Message-ID: <alpine.DEB.2.21.9999.1911261656110.23039@viisi.sifive.com>
References: <201911260818.9C5DC1E@keescook>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_165915_630014_D472D538 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Shuah Khan <shuah@kernel.org>, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Daniel Borkmann <daniel@iogearbox.net>,
 kernel test robot <rong.a.chen@intel.com>, x86@kernel.org,
 Yonghong Song <yhs@fb.com>, Borislav Petkov <bp@suse.de>,
 linux-um@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Will Drewry <wad@chromium.org>, linux-parisc@vger.kernel.org,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tyler Hicks <tyhicks@canonical.com>,
 bpf@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019, Kees Cook wrote:

> Most notably, the secure_computing() prototype has changed (to remove an 
> unused argument), but this has happened at the same time as riscv adding 
> seccomp support, so the cleanest merge order would be to merge riscv 
> first, then seccomp with the following patch for riscv to handle the 
> change from "seccomp: simplify secure_computing()":

The RISC-V pull request that contains the seccomp change has been sent.  
It's here:

https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1911261311520.23039@viisi.sifive.com/T/#u


- Paul

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
