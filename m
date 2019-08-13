Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 952B78AE6A
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 07:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVo/jDsNtGGzvbBnut8UAo+8oxawM/RtnY/LxiPMByw=; b=obNMOEwXQcWP9E
	QanFRb9xLpy7G15Ist4mquY4RQyibQjHRbOwOKTBKBAewgPanPucfzJueamCDCxjgRRXgSX9WbRF/
	A4P9sVdJ9XrSBcmp6fnQLLQ5i4x31yJsF0zRDVAsRWqPVuYholSm/fJeCeB/tJlRSqf7dsnw3m3ea
	Cttd8qXU5kFAVfJFQFFIpeZRth4ZfChZWsxDo1LRhSG+ZySg4PVb2d7UP2b1kieoypF9l4U6xJABT
	LgvSqcGA/GHaPOihYBCzAgxURYNaKoW81gg9CyY7AphURWVd4MTPKFXFaTXs6qizzF/9KE29mEYVC
	sPqtMZfXXQKI2lsEd5Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOxl-0005vs-Fu; Tue, 13 Aug 2019 05:03:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOxj-0005vW-Du
 for linux-um@lists.infradead.org; Tue, 13 Aug 2019 05:03:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so44388636pgc.1
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 22:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4cO9jrOGgF5wujsFXMHtoYNXvgUhydDYlF08f1pq39E=;
 b=IJDEFp+tZg956HdkEB/yKpoKHOFoi1PcVpOx5zPUJll5AJ5C8M+CFwUO+F8F8Q/rit
 8HcowooFg6ntqkIFuj6R4k+GwmJgIitCqOV2QvGuxn7m9MQGXg9qvC85ytvNf5bcYus+
 EprLmHUXh9bThNArfUe3XOKZVbo/EBN6VgqZBcT95WmmKJTlRd528A9f6TQgIETjut1/
 wI8daRdYTmSq6wYQl4NTMhJ/qVqO63tEGOCbSOifsskf9GK6VMybLklO81hLBeB9tly/
 80uCE+R8Iy4Fzfqk20iE8S9pCq3TNIClCmZ4T12ccP5rxSYxtRJSh6xSaDrQfj2wM6vG
 UTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4cO9jrOGgF5wujsFXMHtoYNXvgUhydDYlF08f1pq39E=;
 b=N5BBOZuZJ9NhPugmeFDuLcDRp4mRLNodQGvRxT9w9/ws3iMPjHdp4GjVr1CSNICX0k
 E0awVXp2WS6ercFIdxp0qiIv9H/B+Cphl227j+rCUUch+H17ZY5wZ3FF0KdiE8Cj4Sv2
 ztv1HJG4zy9vM7h/LQP8tV2Njj5skGd/HFV2ov+qP5O2JtL2P8apSEtOZr2Kvn/Xc1J3
 czS+/y4iITZhRhGtrQRdK0a52oIH4mPhSDhu2TKWQHFy4rqgM/i/4E2lcGhgoo25tcWc
 /27+r7Jrb8BvfKMPSDyiJAr6svLHb4NVP+NqvYkoM7v4m4cpw4s/eOvC636cLmQSSymq
 t+Tg==
X-Gm-Message-State: APjAAAWM44QaOwkQpLT51h+f9E8aBK3r8+7/L+ofuNaIT3486D2yXptH
 DWnaZaBT5ghffB3flchbnT4dUVFuZFSvgq+BEeYUbg==
X-Google-Smtp-Source: APXvYqxe3Yuc1/IPYBDWpkhdxK9MrqBlpBCfUzv/UyMf8npsBcj76TlFOcJ9beMy4gx9z+/oMn0KOERMMEUsJXLW4tU=
X-Received: by 2002:aa7:8f2e:: with SMTP id y14mr9786090pfr.113.1565672590442; 
 Mon, 12 Aug 2019 22:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-4-brendanhiggins@google.com>
 <20190812225520.5A67C206A2@mail.kernel.org>
 <20190812233336.GA224410@google.com>
 <20190812235940.100842063F@mail.kernel.org>
 <CAFd5g44xciLPBhH_J3zUcY3TedWTijdnWgF055qffF+dAguhPQ@mail.gmail.com>
 <20190813045623.F3D9520842@mail.kernel.org>
In-Reply-To: <20190813045623.F3D9520842@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 12 Aug 2019 22:02:59 -0700
Message-ID: <CAFd5g46PJNTOUAA4GOOrW==74Zy7u1sRESTanL_BXBn6QykscA@mail.gmail.com>
Subject: Re: [PATCH v12 03/18] kunit: test: add string_stream a std::stream
 like string builder
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_220311_500367_E3666F61 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 9:56 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-08-12 17:41:05)
> > On Mon, Aug 12, 2019 at 4:59 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > > kunit_resource_destroy (respective equivalents to devm_kfree, and
> > > > devres_destroy) and use kunit_kfree here?
> > > >
> > >
> > > Yes, or drop the API entirely? Does anything need this functionality?
> >
> > Drop the kunit_resource API? I would strongly prefer not to.
>
> No. I mean this API, string_stream_clear(). Does anything use it?

Oh, right. No.

However, now that I added the kunit_resource_destroy, I thought it
might be good to free the string_stream after I use it in each call to
kunit_assert->format(...) in which case I will be using this logic.

So I think the right thing to do is to expose string_stream_destroy so
kunit_do_assert can clean up when it's done, and then demote
string_stream_clear to static. Sound good?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
