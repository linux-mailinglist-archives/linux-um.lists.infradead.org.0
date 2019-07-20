Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC416ED1D
	for <lists+linux-um@lfdr.de>; Sat, 20 Jul 2019 03:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4ZPVImLmnePC+ItAC5J9hjZEE6PBr96F1nBgm1al6Q=; b=nyV+gWgx5CqJsv
	g0mc4py1+yZll5OX8bejgXc2ZVSDuVtDQwHzq8MwjlRjYv9ebA8LJJ5zmjRbjlwL71PUB6FQSuzl8
	nYEAEabMc7VyOAFRG0ObQ7DSSzIU06Hox3buMsP0+f1e5sxpfwnXT4zYADCYKn6St/STRBCYdZ5QT
	rhnhBXW0jSOqQjW4jvmDqvLRD0SKENdVk5WwRwVq+IyI7ypRmyxDTJnnbUTNR+zxbMkxgJmNQTINf
	cwPu3FalSCTZKZviMVKXmGWp5zf6yywlE36VDIzSPpN/ayg1uCvSuyhjXltrjf38psbbGk4rpFTUS
	+V/A7g9HAopFFDsFGQoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hodtv-0004hg-SU; Sat, 20 Jul 2019 01:11:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hodtr-0004gu-SI
 for linux-um@lists.infradead.org; Sat, 20 Jul 2019 01:11:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so15162798pgi.6
 for <linux-um@lists.infradead.org>; Fri, 19 Jul 2019 18:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rmh+y6hot9hcEi9vqVFVuAHcH2VM8ePzslqICrNZbFM=;
 b=Hg16BEEqA1IOwGIfxORkx62hkVjyp3OdvkbrGsEumA3d03FEU7JiGZz52Im2PhGKKy
 LXty27cX5Dt3rH1Os28px/Lqwarz90wP47tlsukSj0jCRp1ktaBRVYB3CKEgaBp2hKtZ
 Hwyts1qFw7C4zKWZ1PC0xzFbthTPZqdlFp/eFjbeZduKK2LploOgh03hDE9S2L0S/Arv
 qRQsTPBtexvAXjCaxU+KQMuBX81VDRCIIUB7elcv6TU9kp7AxCOKdH/y9NmKZKlKk3Sh
 0ub0JvM6xRuI33279PY7KF1grhx8CFHFNS12JhA7Ls+oI2AjOynnn162WDZYBazDonyw
 PCow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rmh+y6hot9hcEi9vqVFVuAHcH2VM8ePzslqICrNZbFM=;
 b=IcDUSkF302yfzgvQv3KV+IJeYixl0I+blcK6Fu6OyLh5/bDIfxaKxUpP27Ym4XAw4L
 OWi364rR+V4eDOF2k+QmrmyaFyVvy/IxJrnAT7ocXlRwRVZV89UYLNY/f0TGWZDBIh0f
 sepkfXd80JJhMTPHXqa+K2hci3/giJK3LGXocQsQe6cgbe0JknwneI+Ro0wsxVWzorW6
 9VdLAMPqXCQzxL7rctmLarJXUPBpXA+eAKmsG+KRWpd7LbkjWTMp3HI2g+m4U5jDhUPK
 dLQK1ZU9kNehObioqFJG8lw+GXZSORIsfoHWAGb0WzYm3mzWsYvTpU4UeQBcRyILBe4Z
 rTBw==
X-Gm-Message-State: APjAAAXO4smIecBIdgAsMjCjK5p0Tvh60dLZ4GcU7obJ1sQRKINmrZ2B
 vDwo0YOiL5CXjVUDfg//gEpHwV0DAsjq0t8DYY/FwA==
X-Google-Smtp-Source: APXvYqyMNLruaYizEYtaQ1s0oCwEyfDXi4uDG5/ktH6aSoe1wxSt8kaRN67MS8hktfnspYggXp4+HUE4f8WdHAsvXlM=
X-Received: by 2002:a63:eb51:: with SMTP id b17mr55475657pgk.384.1563585055733; 
 Fri, 19 Jul 2019 18:10:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190718012136.GA135592@google.com>
In-Reply-To: <20190718012136.GA135592@google.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 19 Jul 2019 18:10:44 -0700
Message-ID: <CAFd5g46YthkN=8Qsdb330b1Z2E=qadT3iW6WFz1FFvrAi7Oydw@mail.gmail.com>
Subject: Re: UML GCOV fails to produce *.gcda files
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>, 
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_181059_942979_E624278E 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Darya Verzhbinsky <daryaver@google.com>,
 Daniel Latypov <dlatypov@google.com>, Maria Ignacio <mariaignacio@google.com>,
 linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 6:21 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> Following the instructions here[1], we have been trying to get gcov
> support working under UML. However, despite the fact that it seems to be
> configured correctly (I see it producing *.gcno files), it does not
> appear to be producing *.gcda files (or *.da) files when we run the UML
> kernel.
>
> Sor far we have mostly been working with v5.2.
>
> Running make with KBUILD_VERBOSE=1 we see that gcc is being called with
> the appropriate gcov flags: -fprofile-arcs -ftest-coverage
>
> As I mentioned above, we see that *.gcno files are being produced.
>
> We also see that libgcov is being linked into the linux binary:
>
> readelf -s linux | grep __gcov_init
>  29312: 000000006041d070   200 FUNC    GLOBAL HIDDEN    13 __gcov_init
>
> To ensure that __gcov_flush() is actually being called, we manually
> inserted it in the kernel's init (just to see if we get some coverage
> information). I copied the patch at the end of this email.
>
> And yet we still see no *.gcda files being generated.
>
> It looks like it has been a very long time since anyone has touched the
> UML gcov code, so I have started looking into building an older version
> of the kernel where it might have worked, but have not gotten any useful
> results back from that yet.

I have an update on this!

I tried building the kernel with gcc-4.9.4 when I discovered that gcov
*does* work with v5.2 of the kernel, just not gcc-7.3.0. So it seems
this may actually be an issue with gcc and not UML.

I will update when I learn more.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
