Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18721CC5CE
	for <lists+linux-um@lfdr.de>; Sat,  5 Oct 2019 00:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3sPMiOKTSVbrZiVyWe5pTi5aDrvzs9yOOBaKbd3qK4=; b=YT5orfB6so08qG
	sVKQ/S1hkz6jikPK+9DphaCJpN3p7nkUhb+6dSu8T7fqub4D5a6kLnb3qcdyChHHhjBkJExDmL74W
	l1nonsbMCpszx3eh5AjeTaWdOLtb0xEoWYtFno1yv3YeEBFKBtmZGbrMpWhNszh+6+MKy8ZaaWkEz
	KkFtmeMdtj41OpIM+7waaAUj9jWCQQuFvpiChItAA+G/LVSObhQ+nLcST46EsWKNfUVyHiTbeD3GF
	690hELQEugShiTGoUdgpbyXRK+nP23gNUunxhu0gyRyBkqo/MkJ4NTY6f9GwETcmf1Cs6un0dbuwY
	MjbzHxWHRyysIurS2qpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGW2p-0007ID-09; Fri, 04 Oct 2019 22:27:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGW2m-0007Gn-G8
 for linux-um@lists.infradead.org; Fri, 04 Oct 2019 22:27:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id y72so4702295pfb.12
 for <linux-um@lists.infradead.org>; Fri, 04 Oct 2019 15:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sGtC9Y61I0fWewzKpxnAs5yLawr9FrkTbXzFkx6uKAk=;
 b=YeeGuXR/EbMstIHwMR+WBpofOCJlBn7xcT75NgBfyAZoiHg/V1PWHpO2epGkRD81Ai
 4RW+gTAEC4WD2yQ2SDrd5K9D7fdDNSPo3UNYUZZ8Zf+ibkFAmTJbDVSYEarDpJ5oPg1j
 dg3dC2LmBlg/HcrMgqb9PfzfTOzDXYHOa+/PYROjQTT8qZENzhrzuulgnZ3jTVdd9CoS
 6vHXpukys6F6ZvGyvO/MC52uvNRRW1RrRmLnirND7BrQ4tM7+hSt8ILrukDjy2Zkorp5
 a2EePtRfrlsKmCyDjJa9T4B+oNHxvnazyX654xQc9H1YU9WC6Z9K9EsF5+8bMHzSZibS
 tMmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sGtC9Y61I0fWewzKpxnAs5yLawr9FrkTbXzFkx6uKAk=;
 b=CEsIzn3OzDz7IWjOd53arNLdqa+dUH8Cyvl9t0KQ3hj8P7S/fyYeHTNESgaZ3E/xSm
 1Bgl4r6+Uzl1NeOij1tsKIrRnrg3Rezw5LuiuyDe96DSb6JXsJbTrSYG2Ry+fYhpoPJZ
 kBS1wD+OYbI79eyKQ8ctd7Z8CXINg7yn3qdgFA5RcCqyfT9HPPa+7STAK1lmaaTdx73v
 1KcoRQ5wijBKjOIHYOXe8vIbTV01Wf/JCNtqjHMTQE7a3G2dAcMp5EMWAbUOmoEpvHKF
 jGal+DvNkeL5FRXC7DOhM3BpN9SS8ZWGM68KQSBcbDRp5V1phPbtmnfBPQMTaMmCog57
 ckfg==
X-Gm-Message-State: APjAAAVOxdumw5BEOCy2Qx+koccbgQGL8xF0/kDH0AMnpR7zMVhF1sgr
 fgwtjUjKz6gyG9Nwk7jrYuoyIQ==
X-Google-Smtp-Source: APXvYqz9/Um6buAfhCtRCPjLYgne6gcH8Y83qWem0TWomrvMdMPDQueWyrF35KAweIvctX7qICTVOw==
X-Received: by 2002:a65:638a:: with SMTP id h10mr8380897pgv.106.1570228039982; 
 Fri, 04 Oct 2019 15:27:19 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id w7sm5066788pjn.1.2019.10.04.15.27.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 15:27:19 -0700 (PDT)
Date: Fri, 4 Oct 2019 15:27:14 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: shuah <shuah@kernel.org>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20191004222714.GA107737@google.com>
References: <20190923090249.127984-1-brendanhiggins@google.com>
 <20191004213812.GA24644@mit.edu>
 <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_152724_563854_B8AA5114 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Frank Rowand <frowand.list@gmail.com>, robh@kernel.org,
 linux-nvdimm <linux-nvdimm@lists.01.org>, khilman@baylibre.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 jdike@addtoit.com, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree@vger.kernel.org,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Josh Poimboeuf <jpoimboe@redhat.com>,
 kunit-dev@googlegroups.com, logang@deltatee.com,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 03:59:10PM -0600, shuah wrote:
> On 10/4/19 3:42 PM, Linus Torvalds wrote:
> > On Fri, Oct 4, 2019 at 2:39 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> > > 
> > > This question is primarily directed at Shuah and Linus....
> > > 
> > > What's the current status of the kunit series now that Brendan has
> > > moved it out of the top-level kunit directory as Linus has requested?
> > 
> 
> The move happened smack in the middle of merge window and landed in
> linux-next towards the end of the merge window.
> 
> > We seemed to decide to just wait for 5.5, but there is nothing that
> > looks to block that. And I encouraged Shuah to find more kunit cases
> > for when it _does_ get merged.
> > 
> 
> Right. I communicated that to Brendan that we could work on adding more
> kunit based tests which would help get more mileage on the kunit.
> 
> > So if the kunit branch is stable, and people want to start using it
> > for their unit tests, then I think that would be a good idea, and then
> > during the 5.5 merge window we'll not just get the infrastructure,
> > we'll get a few more users too and not just examples.

I was planning on holding off on accepting more tests/changes until
KUnit is in torvalds/master. As much as I would like to go around
promoting it, I don't really want to promote too much complexity in a
non-upstream branch before getting it upstream because I don't want to
risk adding something that might cause it to get rejected again.

To be clear, I can understand from your perspective why getting more
tests/usage before accepting it is a good thing. The more people that
play around with it, the more likely that someone will find an issue
with it, and more likely that what is accepted into torvalds/master is
of high quality.

However, if I encourage arbitrary tests/improvements into my KUnit
branch, it further diverges away from torvalds/master, and is more
likely that there will be a merge conflict or issue that is not related
to the core KUnit changes that will cause the whole thing to be
rejected again in v5.5.

I don't know. I guess we could maybe address that situation by splitting
up the pull request into features and tests when we go to send it in,
but that seems to invite a lot of unnecessary complexity. I actually
already had some other tests/changes ready to send for review, but was
holding off until the initial set of patches mad it in.

Looking forward to hearing other people's thoughts.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
