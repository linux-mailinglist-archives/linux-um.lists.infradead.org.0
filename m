Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76513CC530
	for <lists+linux-um@lfdr.de>; Fri,  4 Oct 2019 23:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRin955t6B3s4RnjCS29bnLshygmyEsfsMzan6oxAJg=; b=BOiajBRjlwQtc2
	Qr+g8hQOUrzbfl6NUrjYESw+CcrDw7lwORGiY9rdzbEVwllLZ49nyiMyXETefl2F7bmlq+0UnCLfE
	8iYlyH8LMk3yQjkH6rtfOZkiSMZu5yje1FvICG9dZW2mAi/7PClBoIU9j1K8fX1M6xPOQZNuoTsHZ
	HjwIptELZSHCTylUmexEfRjNcDpmwySzLGFE7rfEo70zURRj6xwPRiFHoDFWGHZWyVFlesXYrkba3
	EvqRdKYnV9VW1W3OwfrHh+4lncko8s/RdvzIZBw0fOuDvN4vsBeeO4Q8F5u8zF4sQh9B7O/rPXBRf
	eHZ991K4rrCiPF28skVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVRV-000365-Q6; Fri, 04 Oct 2019 21:48:53 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVRT-00035j-Ft
 for linux-um@lists.infradead.org; Fri, 04 Oct 2019 21:48:52 +0000
Received: by mail-lf1-x143.google.com with SMTP id x80so5476721lff.3
 for <linux-um@lists.infradead.org>; Fri, 04 Oct 2019 14:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kSvi6bN3MgmA9q6zMgIL0cUcdQWLY9tbHblghBTgstI=;
 b=hBuewRInP5i+6gtlRLW9UtlDY0YPe0z67E0xbXSSSKYA7biQf+uXTlrPp7zLuAUPeq
 5uQ2rwixtXebf99m1RfUdMDyjGKPh3VgF3DuF8NvshRtQGRa2wNkvwDCWMNQ0VKjXHWB
 ZmI6XqYkyQwmdmiffnmLI1+ZMJ0oT9STysqR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kSvi6bN3MgmA9q6zMgIL0cUcdQWLY9tbHblghBTgstI=;
 b=oT0G+SQI9gyA9Y5g2Zi3vmY3DMZZxNRRHSSDBkXUHKi9THR41rvzAnIUioUr8/Bm3v
 L84QD6oibexzJMZYurUCGyi+fNjEZ66mPGHKtUo+qKtSJXW3ib6hZlUEvgnPJeYfHA3t
 7Xc5fg6Wchg4K3ymqq1gXjnuEhFgxq2SOickjF0aZ9EwVDUVfHOsbVY3YR4be53Cn/fH
 i7i/g3C6XX1ECBSazpYrg6YBAlIAiWaWiAqVPEvF1XsZhs+15kIODymnenpzyz/z1XEF
 ImbomJdmUqz0+nOmMXgLS9sPCv4fX0ibrBCgAwDgqSzoJxiw1t3i8AuZCqUrYm9Gdp6c
 +Jcg==
X-Gm-Message-State: APjAAAX1LnAVAvLWbrSYXpxH81FV4f/SRIUA3AfQAOlNUppSIo4re5n4
 JROGbFgSN2kl1lWPA8NMpb1leAzC6aQ=
X-Google-Smtp-Source: APXvYqy7Du4m+tfBoihTjhJf6X2sPDzRn9ariQzrSTVrrR5e/LlaHm6nvrjv6k0UhMga/SuRMP0qQA==
X-Received: by 2002:a19:6504:: with SMTP id z4mr9859797lfb.123.1570225729433; 
 Fri, 04 Oct 2019 14:48:49 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com.
 [209.85.167.48])
 by smtp.gmail.com with ESMTPSA id c21sm1347068lff.61.2019.10.04.14.48.49
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2019 14:48:49 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id u3so5436292lfl.10
 for <linux-um@lists.infradead.org>; Fri, 04 Oct 2019 14:48:49 -0700 (PDT)
X-Received: by 2002:a19:7d55:: with SMTP id y82mr10113290lfc.106.1570225353484; 
 Fri, 04 Oct 2019 14:42:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20191004213812.GA24644@mit.edu>
In-Reply-To: <20191004213812.GA24644@mit.edu>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 4 Oct 2019 14:42:17 -0700
X-Gmail-Original-Message-ID: <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
Message-ID: <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: "Theodore Y. Ts'o" <tytso@mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_144851_530726_493F15DE 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, robh@kernel.org,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, knut.omang@oracle.com,
 kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 jdike@addtoit.com, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree@vger.kernel.org,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Josh Poimboeuf <jpoimboe@redhat.com>,
 kunit-dev@googlegroups.com, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 logang@deltatee.com, khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 2:39 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> This question is primarily directed at Shuah and Linus....
>
> What's the current status of the kunit series now that Brendan has
> moved it out of the top-level kunit directory as Linus has requested?

We seemed to decide to just wait for 5.5, but there is nothing that
looks to block that. And I encouraged Shuah to find more kunit cases
for when it _does_ get merged.

So if the kunit branch is stable, and people want to start using it
for their unit tests, then I think that would be a good idea, and then
during the 5.5 merge window we'll not just get the infrastructure,
we'll get a few more users too and not just examples.

             Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
