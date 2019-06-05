Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08700354B6
	for <lists+linux-um@lfdr.de>; Wed,  5 Jun 2019 02:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCuCO8hwD7k+17oANpSyC5wSJ76GrtZ8iHYJBcAiPlI=; b=P9URRPTsirQpwT
	9j+XiH3+LCjTuxGkzbXa6pfW2x/Ob8Yh24w4mVw9I8MIYbRzFZuoq4qJElH1UY9Z4HnyNqaZPnbVn
	p2qCA/ZECXXw9g4l7CpO8vIS1pxnz/3uPcmTXvO2cbAuGSozFzrN5gvBMAgZjOYj1EYgA9vRcv/Cr
	7ahHB3u2cKHg6oS8xdorIquYsCCty3Bfh/X+KBwsy7S2pAGvZESOIh7cdImUrJJoEu9k6OcMQI2zU
	aruON2SvbHRSFYWu4Iu2SEF77nvGp0NXA02D51j1yi2TpbhofXADRHAwH0bBzKMqHXs95GCcSe+kk
	BUJRcMmn0O+1qCS8cK0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYJeb-0003vJ-9c; Wed, 05 Jun 2019 00:19:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYJeY-0003uv-IY
 for linux-um@lists.infradead.org; Wed, 05 Jun 2019 00:19:43 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so342794ljh.6
 for <linux-um@lists.infradead.org>; Tue, 04 Jun 2019 17:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wdmJ9l6dKN/M8KJKaReWlFRx3EElIyLoR59kmGQ0ajY=;
 b=mWp51IFY9ldz1n3pj1fKrjbn8ZSGPWgwyelkcW6/s7v+y0e0DR/V8GR1ZxM1BsBeAX
 mqVaa/tfXDd/6MEO1OGM22zX0t4jPSi2d71oCngZuhbWkZxio6+sFzeQvWqDrIYIpJuw
 nH2s7y3MrUSzM3dAVIORTn4j8f2hTE4FKXFXiB6vbyOyWM+8sm7qnuJAdZe0dYu2FmQB
 G/4Hd50+HcTF52V70z6ii5Z+BoWQp+0M49tLLSAs+EJ/ROKxeK9GHDSjTGCoNxZTB406
 eMV8PQsiA3EH2MFRRpS50GYwQWxdJ7xN9x1Gd1qekPsZCFSmXsLb0mvz92xMWF6zHTLn
 it2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wdmJ9l6dKN/M8KJKaReWlFRx3EElIyLoR59kmGQ0ajY=;
 b=EQcO1QxCk5dnIxf7qPz8JDxyb1itVT/NwchEq50RT2EK8LjxFV9JOAGZVqoKNcwe74
 aKaxOwSb+PzDGI9rDwcmoKml0IiCKVVcgm1dzR+cRo6r97tFVb7NJf65JrqwjI2pNnAP
 DMjVY7RQ2/loBULVySIG+UtOcy7uaJnT6Y3Cim/MfRfeLrM3C2VinLD2x4poCaq8+rIA
 0GtjLWywdZZk+m7ztPiG4QgF9VT8UM1PyhyvD/CGTfNLvtyNUbofUK/61LbMEYlt2p6h
 NpAtQtYZdy1g3Xq1EzXHyP4BVZTrPHkeTxN9Uphc3E9Y3plpccjmaD7kiMfbdfMP61zs
 NGyQ==
X-Gm-Message-State: APjAAAW5ys3ECvX0KQszuDsR0KQluucoQ/oMSbIqWhjkB3IXHrvaEk+J
 +G0i/jAphqtP0WqA5PP4xkZn5UaqeRsjCSNJJHlnzg==
X-Google-Smtp-Source: APXvYqz12ZqA7QhRnSs7NCGRounbiJim0N2d6mvCnGBaDXvxAiRpIwE1RpZWUzCT4YdYhAmjp6wliW9IQj3YJNSuaRI=
X-Received: by 2002:a2e:9e8e:: with SMTP id f14mr3500ljk.120.1559693980056;
 Tue, 04 Jun 2019 17:19:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190514221711.248228-1-brendanhiggins@google.com>
 <20190514221711.248228-4-brendanhiggins@google.com>
 <20190517174300.7949F20848@mail.kernel.org>
In-Reply-To: <20190517174300.7949F20848@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 4 Jun 2019 17:19:28 -0700
Message-ID: <CAFd5g45WrARi7eXsVKyq2eJH5j+wSrCCaHHSHrMptG7+MnNiTg@mail.gmail.com>
Subject: Re: [PATCH v4 03/18] kunit: test: add string_stream a std::stream
 like string builder
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_171942_632981_66566783 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Fri, May 17, 2019 at 10:43 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-05-14 15:16:56)
> > A number of test features need to do pretty complicated string printing
> > where it may not be possible to rely on a single preallocated string
> > with parameters.
> >
> > So provide a library for constructing the string as you go similar to
> > C++'s std::string.
> >
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
>
> Is there any reason why we can't use the seqfile API for this? These
> both share a similar goal, formatting strings into a buffer to be read
> later. Maybe some new APIs would be needed to extract the buffer
> differently, but I hope we could share the code.

I can see why you are asking. It seems as though they are trying to do
*similar* things, and it seems possible that we might be able to
extract some common functionality out of seq_file that could replace
this; however, it looks like it would be require a significant
refactoring of seq_file to separate out the file system specific bits
from the more general stringbuilder functionality.

In my opinion, a refactoring like this makes no sense in this
patchset; it probably belongs in its own patchset (preferably as a
follow on). I also am not sure if the FS people would appreciate
indirection that serves them no benefit, but I can ask if you like.

> If it can't be used, can you please add the reasoning to the commit text
> here?

Will do.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
