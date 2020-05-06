Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9331C78C8
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 19:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7+4/rQNDMC7hNWJI6tm1syx8RNXvUu9SpeH9eCCs1g=; b=fv040uz8MQVjV0
	iZ1RMT/q7KR+rl1uYf73WWmut37juWKZXZ6yhCfzuVYd6YhWKFxaciGgKzKZdEyDn826KB27l/ABI
	6J9bFZUbT1r8K4+yx+Zuz0eI1O2zhq/3ULAF/t7Rqgq7DtingoTqESP/T1WhrMIrIUcfltPj5UrRJ
	SvVkeymP+Uc2fIdq01LOVaZv2/CxXphGcjxzj36iGq/xO9T7YxQtGwJW1VGxAHhO0PoDDshbPADGc
	OSA3SjHCIMiLGa0VFOr3gy1dGIAKKL6vPBw28EqxeVlauo30r+9y3ghYKd+nGtob/2R8l5qdj6sSz
	3n2eQJDFhiWY92/fk75w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOJJ-0008Aq-NF; Wed, 06 May 2020 17:58:21 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOJH-00089u-6X
 for linux-um@lists.infradead.org; Wed, 06 May 2020 17:58:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id l19so3338661lje.10
 for <linux-um@lists.infradead.org>; Wed, 06 May 2020 10:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=amhqtC0jx3Soa4PMXxAnnhfkbBJzW3RmXIKW7xjvTm8=;
 b=HgJKLXT1DdNyq51LO7Yajpy+kFP02OcEtgqoKUtFS1yGSN45VqntoJwH+X2ojFI5Yz
 VanVze+sYnLUdhLxZWaCjc0lht8OTs/pF6rfb8vQjJNFuC8VJ1vNt8Biip5j85VsAxzZ
 GcH0M+IVfjrqrmfFOzxxtIOPztNPNJHUO70hQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=amhqtC0jx3Soa4PMXxAnnhfkbBJzW3RmXIKW7xjvTm8=;
 b=RPC2StkeoIavgIismNHNeQYAPREeAXrLf9qEbtwLZT/ykrt+DW/oQ91xaNlVACi53K
 dhMxd+89SJ5Q2sIxP/HdkVHSSrN5B1ShDJ9MFA4HOwULZ3tjNLcVccZLZ56/UaG+Y29c
 vadlrf6q5ZIo2z/6VcwQ5VFaCG9TVzJsd8xcJON5jMnuK1mFx9RJbKAZ4CoBjB7KsbAS
 jZnJIhWhZiRhVr5SYZVOQcJUw1g8gRkCLCnt2jNJf7f8/4osRPXEHUNbTGYWO3JG9B4F
 nO6QEenUpsgh+0sMct+vTXX5hFrI/ueBL6XDL2aOLSokdOxn22VkULGDPayonfrq7xL7
 Nvmg==
X-Gm-Message-State: AGi0PuYqdqreZ8wKsTzSwPKS29QQNiWIc4Hqdn7zYXQ1RzDxa1zaxOMf
 ouf5jwBf1IvIthJll/VGe4qK5AmCjsg=
X-Google-Smtp-Source: APiQypLzrjl1Z1rUiaPwi2mVIFvbBs5K3cCeR3g6JNDEgtIyTOpYVc9aKzxap8OHzRHWJEat68rOfg==
X-Received: by 2002:a2e:361a:: with SMTP id d26mr5599346lja.171.1588787895400; 
 Wed, 06 May 2020 10:58:15 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com.
 [209.85.167.42])
 by smtp.gmail.com with ESMTPSA id v4sm1717962ljj.104.2020.05.06.10.58.14
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 10:58:14 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id t2so2127289lfc.3
 for <linux-um@lists.infradead.org>; Wed, 06 May 2020 10:58:14 -0700 (PDT)
X-Received: by 2002:ac2:418b:: with SMTP id z11mr6180281lfh.30.1588787893824; 
 Wed, 06 May 2020 10:58:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200506062223.30032-1-hch@lst.de>
 <20200506062223.30032-9-hch@lst.de>
 <CAHk-=wj3T6u_kj8r9f3aGXCjuyN210_gJC=AXPFm9=wL-dGALA@mail.gmail.com>
 <20200506174747.GA7549@lst.de>
In-Reply-To: <20200506174747.GA7549@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 6 May 2020 10:57:57 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh_tQpDnrODW0U1kd3+BzuGtan4353fu9AfWdrpMcv3Jw@mail.gmail.com>
Message-ID: <CAHk-=wh_tQpDnrODW0U1kd3+BzuGtan4353fu9AfWdrpMcv3Jw@mail.gmail.com>
Subject: Re: [PATCH 08/15] maccess: rename strnlen_unsafe_user to
 strnlen_user_unsafe
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_105819_239268_D59DA77B 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, linux-parisc@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 6, 2020 at 10:47 AM Christoph Hellwig <hch@lst.de> wrote:
>
> > The fact that we have "probe_kernel_read()" but then
> > "strncpy_from_user_unsafe()" for the _same_ conceptual difference
> > really tells me how inconsistent the naming for these kinds of "we
> > can't take page faults" is. No?
>
> True.  If we wanted to do _nofaul, what would the basic read/write
> versions be?

I think "copy_to/from_kernel_nofault()" might be the most consistent
model, if we are looking to be kind of consistent with the user access
functions..

Unless we want to make "memcpy" be part of the name, but I think that
we really want to have that 'from/to' part anyway, which forces the
"copy_from/to_xyz" kind of naming.

I dunno. I don't want to be too nit-picky, I just would like us to be
more consistent and have the naming say what's up without having
multiple different versions of the same thing.

We've had this same discussion with the nvdimm case, but there the
issues are somewhat different (faulting is ok on user addresses - you
can sleep - but kernel address faults aren't about the _context_ any
more, they are about the data not being safe to access any more)

Anybody else?

             Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
