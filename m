Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46691C78AC
	for <lists+linux-um@lfdr.de>; Wed,  6 May 2020 19:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yR8WSaaCLyU/IUOc8PQy1O1X5zFAZuq7ABEEB7oH/Xg=; b=ABY2Ms2QQKowKU
	CPm4bvzanBHTeYLtivZ8QRdGL19BPschgZaiwbwXDxcDrzhGulC/wvN/L8r3l9ORWppyCUMuk+rxG
	VWCOBcOuVCzscqQzcIWmduzyQfhXeI/W5pINlCHcqFWNYGzTIPoCwAAx3vQsQ8jZAHVHo+vol9gIt
	yZ9GXc9FjBcZaeIyMdyqtZPZetCAakJKxbEJARg4o9GAWGUIGxwsbvCvS+NAPaxbL4m66samL/2WV
	FX9Rfxxxs85Mbv1CU+Bwb7JDfw+olkddpKfieJ/VephpEBLBHJxz00K10nid4fXpqHTD7ZtkaDOkJ
	OiMQS4M4g9FLjm8LXGaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWODO-0004Y4-Ey; Wed, 06 May 2020 17:52:14 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWODL-0004X5-VD
 for linux-um@lists.infradead.org; Wed, 06 May 2020 17:52:13 +0000
Received: by mail-lf1-x141.google.com with SMTP id a4so2089786lfh.12
 for <linux-um@lists.infradead.org>; Wed, 06 May 2020 10:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3iDM/PlD1cl2Emprrc8UkVlx+lvpjZ6KITj+kMZS4vU=;
 b=Onj6RpBSdppxiHflDIfnU8/+fh2nF8mikY4k8DOvMwZvX/ZFfIXNMSG/+sP3oK2sr9
 mIhcfJjCn3ECmIQwwRaGtud3qgvzJv+DPfXc8ePIDpNWfdp4Yhjfmi+BT3ywIKw7jV7e
 fK1DuRTDXTp/q9VjTTMWhXsXHEy4B8ih7FSH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3iDM/PlD1cl2Emprrc8UkVlx+lvpjZ6KITj+kMZS4vU=;
 b=GFA70wWTFWdb5mMNCkvriNwLO+EUwcwKCVlsLiJmVcff3DC7X0xpgnbPGde4xYd5El
 DoIYjawLJvLq68kiGgHY7VERNTS6QK9Q7XNGH+ZfzZVY7JgdOrKpafKshLgnN21Kf1N4
 FZWKMzw3Y9PAn2DrbUuq5LFVYQAgxNwa2I2GX2h7o7oy4Oa9kityMjeouzw3/h1v199N
 r/+RecNOjLnoxdzFcBTK6C45mlJkNL7+wsQO7+d9jgYoBVYqbSXcg19otpKxEPVfQLG0
 21dtl3Wn+uCBYsZvCVG1DKeH2nf9EuPRwTicApb4nG2m/2e4WJh7fwvG4oB8I8uUOnkG
 C5OQ==
X-Gm-Message-State: AGi0PuYViXyzBQuUlMu/bXoAaoLPEMcqkizp847coHJ4uDhDNy0L/x3E
 As1iKJhDeZQ5un36EessOQe5HRQrcGc=
X-Google-Smtp-Source: APiQypKwkEDuk17rx9PJvm2X/me1sCjkr8sZSiMfB2CM7ANepDMpZiFh3Hi4rXrqbCjdLkVMm87rKA==
X-Received: by 2002:ac2:4304:: with SMTP id l4mr6065937lfh.87.1588787529639;
 Wed, 06 May 2020 10:52:09 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com.
 [209.85.208.169])
 by smtp.gmail.com with ESMTPSA id 16sm1753153ljr.55.2020.05.06.10.52.08
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 10:52:08 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id w20so3363303ljj.0
 for <linux-um@lists.infradead.org>; Wed, 06 May 2020 10:52:08 -0700 (PDT)
X-Received: by 2002:a2e:8512:: with SMTP id j18mr5893926lji.201.1588787527821; 
 Wed, 06 May 2020 10:52:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200506062223.30032-1-hch@lst.de>
 <20200506062223.30032-16-hch@lst.de>
In-Reply-To: <20200506062223.30032-16-hch@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 6 May 2020 10:51:51 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi6E5z_aKr9NX+QcEJqJvSyrDbO3ypPugxstcPV5EPSMQ@mail.gmail.com>
Message-ID: <CAHk-=wi6E5z_aKr9NX+QcEJqJvSyrDbO3ypPugxstcPV5EPSMQ@mail.gmail.com>
Subject: Re: [PATCH 15/15] x86: use non-set_fs based maccess routines
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_105212_014739_54771C26 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

On Tue, May 5, 2020 at 11:23 PM Christoph Hellwig <hch@lst.de> wrote:
>
> +#define arch_kernel_read(dst, src, type, err_label)                    \
> +       __get_user_size(*((type *)dst), (__force type __user *)src,     \
> +                       sizeof(type), __kr_err);                        \
..
> +#define arch_kernel_write(dst, src, type, err_label)                   \
> +       __put_user_size(*((type *)(src)), (__force type __user *)(dst), \
> +                       sizeof(type), err_label)

My private tree no longer has those __get/put_user_size() things,
because "unsafe_get/put_user()" is the only thing that remains with my
conversion to asm goto.

And we're actively trying to get rid of the whole __get_user() mess.
Admittedly "__get_user_size()" is just the internal helper that
doesn't have the problem, but it really is an internal helper for a
legacy operation, and the new op that uses it is that
"unsafe_get_user()".

Also, because you use __get_user_size(), you then have to duplicate
the error handling logic that we already have in unsafe_get_user().

IOW - is there some reason why you didn't just make these use
"unsafe_get/put_user()" directly, and avoid both of those issues?

              Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
