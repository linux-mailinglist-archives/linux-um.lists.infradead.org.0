Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622C51D252F
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 04:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEp6D9lH0YSiTF196sC5KgwyznDTOsox/ZKjDjqtaE4=; b=hrI+tf0v1EXazu
	LtwBvs+8RGuOI0pE5udVjDU1zUWpzJJDZIG/Hd3EI8Vpenq7PQWNUlj5kt2rZ1JFam0gKHevpav4F
	aYKWdGobmTXLp6HYN7zjtOk8tnMVe9j/ul/mcOXx6+W4Q4Kwi+jA2FesR/lxjX53npDFVJEGdi3Vw
	0CeM8b+w3AMlBkRYfVmNDjKCUkTekhxZthfPaLKgm5FQ555t9vXbQMrSfvVVdO1bBTem4mTS497XO
	cXts6KGWUjlxfzCxL/SiQpssZgECATeuJyLFf++3yfeaqwHCIZwvCKGGK2RmherVakk6M8gWOLMre
	k1D4x/9lwlx/jfA++gNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ3qi-0006Bn-6x; Thu, 14 May 2020 02:43:52 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ3qd-0006Aa-RY
 for linux-um@lists.infradead.org; Thu, 14 May 2020 02:43:50 +0000
Received: by mail-lf1-x143.google.com with SMTP id s9so1297780lfp.1
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 19:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L3In83ZNtvhCqrpK0vVjzsKNvprMyvL+zJ9ohua4z10=;
 b=RJxI7nc5/+qicT+av7MVnCPyCWQNYqEmo+1I8aEDjYrcgsKm1JO+ximEumc2BGCHG6
 IRKjgEiRjwQuoza3oL4WOrhIpbRc8zh7pT5r3iUQzrEjc7+dcHsaKetaMFqukCgIbr+Y
 1swtCFlefWtGVUfsLBR/jTXuJr1SgZ0x45QhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L3In83ZNtvhCqrpK0vVjzsKNvprMyvL+zJ9ohua4z10=;
 b=qGnKweTFxI+ubzKbQ8C3krGMdxiNb3ofIC7w1FKgvvdX8EAoveQ0bS5ZSNoFBnv+Ps
 fXnc5o4UvR3sX8ENoCAY9TfUWGWxxnlQXyGAWEMCOO24jpILcnRJw7a11A1W06n9xp5S
 zcW8QZZ77coQ/z+ZPmIavO11gkvdOKkiwQidbhfef/sFjn7ezy4LVTLMwDjxEx1/Ls6j
 7exoxrl8UuYkVPOdBR32wewQRBUVEzXQ2W/S6MV+Ub9JXGkxmJmC6eELBrphH0xxdFdV
 hjVg390Lhv/vGK0pjot0gsD0GldwzwpCuejfvU/qQW68WCkQeM2llDMIJQFrO5/FHTJg
 NOSw==
X-Gm-Message-State: AOAM532qLdMgjJ8Vn9stmgLB0DRToFGWIlD491reKmP02pRs5WYi3yM9
 uIzsrWmkc1R4M5E+vfWfFpA7q3nnhKk=
X-Google-Smtp-Source: ABdhPJwmRxybqHb8rmi/vCa8RqC0cQvqd6f1vnFzRLDgZ7rdtITrIw8eVrn2dpSFs01yMKZncbB3/w==
X-Received: by 2002:ac2:5450:: with SMTP id d16mr1647486lfn.54.1589424222431; 
 Wed, 13 May 2020 19:43:42 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com.
 [209.85.167.54])
 by smtp.gmail.com with ESMTPSA id a11sm620225lji.62.2020.05.13.19.43.40
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 19:43:40 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id r17so1257797lff.9
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 19:43:40 -0700 (PDT)
X-Received: by 2002:a19:6e4e:: with SMTP id q14mr1567307lfk.192.1589424220085; 
 Wed, 13 May 2020 19:43:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
 <20200514082054.f817721ce196f134e6820644@kernel.org>
 <CAHk-=wjBKGLyf1d53GwfUTZiK_XPdujwh+u2XSpD2HWRV01Afw@mail.gmail.com>
 <20200514100009.a8e6aa001f0ace5553c7904f@kernel.org>
In-Reply-To: <20200514100009.a8e6aa001f0ace5553c7904f@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 May 2020 19:43:24 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjP8ysEZnNFi_+E1ZEFGpcbAN8kbYHrCnC93TX6XX+jEQ@mail.gmail.com>
Message-ID: <CAHk-=wjP8ysEZnNFi_+E1ZEFGpcbAN8kbYHrCnC93TX6XX+jEQ@mail.gmail.com>
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
To: Masami Hiramatsu <mhiramat@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_194347_894953_587FBDF7 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
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
 Linux-MM <linux-mm@kvack.org>, bpf@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 6:00 PM Masami Hiramatsu <mhiramat@kernel.org> wrote:
>
> > But we should likely at least disallow it entirely on platforms where
> > we really can't - or pick one hardcoded choice. On sparc, you really
> > _have_ to specify one or the other.
>
> OK. BTW, is there any way to detect the kernel/user space overlap on
> memory layout statically? If there, I can do it. (I don't like
> "if (CONFIG_X86)" thing....)
> Or, maybe we need CONFIG_ARCH_OVERLAP_ADDRESS_SPACE?

I think it would be better to have a CONFIG variable that
architectures can just 'select' to show that they are ok with separate
kernel and user addresses.

Because I don't think we have any way to say that right now as-is. You
can probably come up with hacky ways to approximate it, ie something
like

    if (TASK_SIZE_MAX > PAGE_OFFSET)
        .... they overlap ..

which would almost work, but..

                 Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
