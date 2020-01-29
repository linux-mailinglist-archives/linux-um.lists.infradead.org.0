Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB9414C4AB
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 03:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=455P3RNlKUQsekMMMaXOiiEIQP/7oqPZdky0fV9Z5pY=; b=ouyFTvZh3c7lId
	9baTd6lZ1DzgHs4+/gkccy7rF+/GOW5gCW7yPY3n+qHnsnwCtLLyIMju6HAtOueyjYfXjqbjoxg0T
	S1uIQRQnk2y+Pu/qpHbx+GGkz/9NN6+GDOw3QxKBeWvovLzxfmy6g4DQBKOsprAHUV0l1Gjo0pExW
	iTdlcQyOREPTbmw6+giiCnEp6B2PmUO91dmaFBS/xmmyxn04vjrH/mmY0BLGcaRrqyC2wo2RPqbp2
	VDq8FdfXxLyDUdGpfWtXKYKuAofCCdb81yirCFGlQkLDYLjt5dMfNEulFdabCXugeeFvqSFlYKM5P
	cCAuSfWqjDW1ceEwqfRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwdCy-0003ec-4x; Wed, 29 Jan 2020 02:36:00 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwdCw-0003e1-1k
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 02:35:59 +0000
Received: by mail-lf1-x129.google.com with SMTP id y19so10699755lfl.9
 for <linux-um@lists.infradead.org>; Tue, 28 Jan 2020 18:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xKaKa4v/uLKsxDJmSSJEukA8v8wjYnguys66biR+79o=;
 b=X5BcoUZt/2wlQ1NK6ysY4+Sgw9AsvgwRumxSBuD6ZSRePNHoqdm3x8xz8YZVMKBq6i
 mjE6VgrmCNUVTA6uZnAd6LxDp5WhOQczQFZSInTO6IyCkNJz686lskGkXk61lbqiuHoi
 z+E3sre49DVpJD17N8p07ANfLx3b0QveQdv4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xKaKa4v/uLKsxDJmSSJEukA8v8wjYnguys66biR+79o=;
 b=tGW9CwAlGN4UcGhiKTqNt+X7/frLNugpkG0MjEzkE0WCG+nltXtEVu24qa4T17OU8D
 u8NhDLtYQyKVEWbfrcpxd08KN+frkYgaNp/lLA5EmHFJfKK9EBAI0QmfRku54sAcygHe
 P3nicM23CDeF508lVIrDbHtp3klJVJOpW0dGja2r8c2yRnaxYtblpZ/geWQtDkMqi11D
 b2ujoXflwa/ofUTNvA+ukr1Gh4izLD7Xg7ut9fGhstiOOr9CbSPESmjMErvQIk9gMCbm
 Pc222QKI1AxL5/myquwpcmSs/Uy3NVzCeSXLwrAvc8iOLk/f4nVN4u89LKNWTPmLPjlv
 jvkQ==
X-Gm-Message-State: APjAAAVjJPfz9SrRZCc3thAyH9uAc9nf4zpRqJIfin06EfKeoAi+YDHn
 PKKYui60IuLpwIKzROAqGk4mxBb0VbE=
X-Google-Smtp-Source: APXvYqwZMFZADQqHyz1DsnPYBPkijZ9AOcdOV9zRXeHCXNFZWUhf6OkHKWl3JDgk2IEXpXM6XcHVkg==
X-Received: by 2002:ac2:4909:: with SMTP id n9mr4122698lfi.21.1580265355032;
 Tue, 28 Jan 2020 18:35:55 -0800 (PST)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id r10sm177543ljk.9.2020.01.28.18.35.53
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 18:35:53 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id q8so12692773ljb.2
 for <linux-um@lists.infradead.org>; Tue, 28 Jan 2020 18:35:53 -0800 (PST)
X-Received: by 2002:a2e:9d92:: with SMTP id c18mr7936575ljj.265.1580265353277; 
 Tue, 28 Jan 2020 18:35:53 -0800 (PST)
MIME-Version: 1.0
References: <1224347843.24297.1579473209765.JavaMail.zimbra@nod.at>
In-Reply-To: <1224347843.24297.1579473209765.JavaMail.zimbra@nod.at>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 28 Jan 2020 18:35:37 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjupwymAN-aOytdtxz4EfyKH7MirmJJw40chDGzFQT9wQ@mail.gmail.com>
Message-ID: <CAHk-=wjupwymAN-aOytdtxz4EfyKH7MirmJJw40chDGzFQT9wQ@mail.gmail.com>
Subject: Re: Upcomming UBI/UBIFS/UML pull requests
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_183558_098105_BCA4C31F 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 anton ivanov <anton.ivanov@cambridgegreys.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 2:33 PM Richard Weinberger <richard@nod.at> wrote:
>
> due to traveling I won't be able to send you pull requests
> for UBI/UBIFS and UML this time.
>
> Therefore I've already prepared my next branches and one of my colleges will
> send you an PR as soon as the merge window opens.
>
> Miquel: UBI/UBIFS
> Anton or Johannes: UML

Heh. I just pulled from Anton's pull request, and noticed that the tag
was actually signed by you.

That's all fine, and this worked, and I have no complaints. But I
would like to point out that it's perfectly ok to just send pull
requests for the merge window early, since it was clearly all done and
ready to go. Just make it very clear that it's an early pull request
for the next merge window so that I don't get upset if I think I
should pull it during the rc series and it's not just fixes.

Delegating somebody else to send the pull request later obviously also
worked, but I thought I'd mention this "send it early" option. It's
not hugely common, but quite often I actually have one or two pull
requests that come in before the window even opens (exactly because of
travel or other timing issues), so it's also not exactly unheard of.

                Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
