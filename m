Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9181C518
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 10:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRkmOIM4+oNYwgcfhzmSQKbAnInASk6bGYcudviePxc=; b=TzUGoVETRvJjmB
	VS5WghVNhf+Z3++eELywITQyZLohZ0brpFE0cmJVJtjIvZvjFiAIjNvRxDh3opmI9BFaD/b48Bp6c
	DahUgPce5QCluzuSR80ZmfTFeaK4pLqLZwIcPulmm39rbAfF+m2SUhMrygir9UKh3CwPaTTjbOBQN
	G9RLWnS4dsr68mQMJ6D3mDJOxoerMplzOmobBwv3i8XMGFe3C4psZhYub7VJX2NMl2u3EbT3Sl6xX
	1RZwo+sTJnYKF60fBItFf8lj5gVSTzVSDY6QD1Zz4OGpdz52dVEwqGuxF/n3SygLStxOAhuY9t5AM
	IoIMBu+ALy/MezRHtWyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSxC-0003xi-V3; Tue, 14 May 2019 08:38:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSxA-0003xJ-2k
 for linux-um@lists.infradead.org; Tue, 14 May 2019 08:38:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id t187so8242627pgb.13
 for <linux-um@lists.infradead.org>; Tue, 14 May 2019 01:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=igN9DgvcsdnnQcED87MufBXYemaWzI/btuCv4zC86yk=;
 b=GyRIMQHWrRSVtwP9IB5pyhtzqC4lPgeL0Y6beT6Qu4IZvr3gGiC9moimim+D9LkzvQ
 MEEZopp3jLTd3NW9rr2av+zcSv5sG6yxATJxZch96iyR7Vt5O8iVVR9KeDDdv3u44RDl
 UaYKlPaw3B25/ilDWdybyms52YrdOWkcCimnCd0rzMk7lbnW3wG7xJD+7Y1cPxm3eo8x
 /IcHai8RyaPGpuO10KNBGL34tDo7TgLJzFqFXMzrzaYkd6OZrO9RZjsPnFXRWFxr8t0z
 83455vvpULAaytz3l+5A0IgFjdYbPuwM+AftAn4nKNFSHLn0MwKll6hrPVQk06gNdVTQ
 mAhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=igN9DgvcsdnnQcED87MufBXYemaWzI/btuCv4zC86yk=;
 b=k+Vbe+HdxYMfyIkgVGI4S48wW099dfuX3jGc2t153JQAmMwgqPPPp+Hbd2P/zl2GmD
 ZSmkdoRJj+OKQxTK2CJix4dbjvXlWYkmWj2knMj6a1NWmr1FTuTKZ41eGIxriQvizOoi
 pmxJLrb5D+qPGwcVY9dp7/Fm9Vf7G0DIBPwHv3EjoDfXdy7/hLbdP4U+GjzSlI9dVxO1
 xBvqoE0M9uIRO6nVsh+1yJCDU8GBX63pSpjM3mUiGbSBX6u5nrj1SVlj7N7kRMIzqUmo
 Q0hcz0ImBpz1pWI4uFlHX4bif3jNQ8kfgQvSTocz8TfDizVtZJyBiD0eilaVhMbgT7ux
 ZMog==
X-Gm-Message-State: APjAAAUwLXIJ+BX1EOlvaRwujNvAM9PzxDlyNFicvgkEpQuXe5hVY0Fr
 l/d63mCiEmbQmS2+9ISEI4oiMQ==
X-Google-Smtp-Source: APXvYqyqn2NOwOEZgtTbGy9WkrWx9lpJrCvlzVQwgRZJjBLJCvhNFSg43dsH15YYKmWUEQTHx4ScMw==
X-Received: by 2002:a65:578a:: with SMTP id b10mr20396367pgr.161.1557823106177; 
 Tue, 14 May 2019 01:38:26 -0700 (PDT)
Received: from google.com ([2620:15c:2cd:2:d714:29b4:a56b:b23b])
 by smtp.gmail.com with ESMTPSA id j184sm18479757pge.83.2019.05.14.01.38.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 01:38:25 -0700 (PDT)
Date: Tue, 14 May 2019 01:38:19 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190514083819.GC230665@google.com>
References: <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
 <b09ba170-229b-fde4-3e9a-e50d6ab4c1b5@deltatee.com>
 <20190509233043.GC20877@mit.edu>
 <8914afef-1e66-e6e3-f891-5855768d3018@deltatee.com>
 <6d6e91ec-33d3-830b-4895-4d7a20ba7d45@gmail.com>
 <3faa022b-0b70-0375-aa6d-12ea83a2671f@deltatee.com>
 <d148a554-2a71-a5a4-4bb2-d84d2c483277@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d148a554-2a71-a5a4-4bb2-d84d2c483277@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_013828_166518_D402AEC4 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -13.1 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 2.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, khilman@baylibre.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, Theodore Ts'o <tytso@mit.edu>, richard@nod.at,
 sboyd@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 mcgrof@kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 03:13:40PM -0700, Frank Rowand wrote:
> On 5/10/19 9:17 AM, Logan Gunthorpe wrote:
> > 
> > 
> > On 2019-05-09 11:18 p.m., Frank Rowand wrote:
> > 
> >> YES, kselftest has in-kernel tests.  (Excuse the shouting...)
> > 
> > Cool. From my cursory look, in my opinion, these would be greatly
> > improved by converting them to the framework Brendan is proposing for Kunit.
> > 
> >>> If they do exists, it seems like it would make sense to
> >>> convert those to kunit and have Kunit tests run-able in a VM or
> >>> baremetal instance.
> >>
> >> They already run in a VM.
> >>
> >> They already run on bare metal.
> >>
> >> They already run in UML.
> > 
> > Simply being able to run in UML is not the only thing here. Kunit
> > provides the infrastructure to quickly build, run and report results for
> > all the tests from userspace without needing to worry about the details
> > of building and running a UML kernel, then parsing dmesg to figure out
> > what tests were run or not.
> 
> Yes.  But that is not the only environment that KUnit must support to be
> of use to me for devicetree unittests (this is not new, Brendan is quite
> aware of my needs and is not ignoring them).
> 
> 
> >> This is not to say that KUnit does not make sense.  But I'm still trying
> >> to get a better description of the KUnit features (and there are
> >> some).
> > 
> > So read the patches, or the documentation[1] or the LWN article[2]. It's
> > pretty well described in a lot of places -- that's one of the big
> > advantages of it. In contrast, few people seems to have any concept of
> > what kselftests are or where they are or how to run them (I was
> > surprised to find the in-kernel tests in the lib tree).
> > 
> > Logan
> > 
> > [1] https://google.github.io/kunit-docs/third_party/kernel/docs/
> > [2] https://lwn.net/Articles/780985/
> 
> I have been following the RFC versions.  I have installed the RFC patches
> and run them to the extent that they worked (devicetree unittests were
> a guinea pig for test conversion in the RFC series, but the converted
> tests did not work).  I read portions of the code while trying to
> understand the unittests conversion.  I made review comments based on
> the portion of the code that I did read.  I have read the documentation
> (very nice btw, as I have said before, but should be expanded).
> 
> My comment is that the description to submit the patch series should
> be fuller -- KUnit potentially has a lot of nice attributes, and I
> still think I have only scratched the surface.  The average reviewer
> may have even less in-depth knowledge than I do.  And as I have
> commented before, I keep diving into areas that I had no previous
> experience with (such as kselftest) to be able to properly judge this
> patch series.

Thanks for the praise! That means a lot coming from you!

I really cannot disagree that I could use more documentation. You can
pretty much always use more documentation. Nevertheless, is there a
particular part of the documentation that you think it lacking?

It sounds like there was a pretty long discussion here about, a number
of different things.

Do you want a better description of what unit testing is and how KUnit
helps make it possible?

Do you want more of an explanation distinguishing KUnit from kselftest?
How so?

Do you just want better documentation on how to test the kernel? What
tools we have at our disposal and when to use what tools?

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
