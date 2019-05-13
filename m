Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E921B8E8
	for <lists+linux-um@lfdr.de>; Mon, 13 May 2019 16:45:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pq2t45HnGn9/nW7F4NKlEVmqfe6+61A6MjjJxvazILY=; b=PF1Xh7a/1SOySc
	4JdGRISmATJEPn7hOlYIuSYSrKAp1eTLnHmQAow6s0/5olWuYW9rGfZmz2U9gtJrBU78ASmy6b62H
	RLFaqFGwrZOLPVU+4Kyos0qAFHbo14ZW1BFdmHdsmkhK2UTspZNhFf4GUGuMV3q2fTQwXjbpSww5A
	Uhv38c6Oj3EmEHZas7ldk8Tsokr4WIx8ZC9ycKZzHDHwwMxBc1PE3L7aZPGa2qOFTeLJq/VZsfATg
	shxfLlbZiIcDK9WfWZ8whkeYflvIXxDGxBA3bfDZQDGrY2T/qBpDXkvAi2wsdvc2QPsalTD8HmWnD
	79woXKmB73GDBUZDeAPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCCM-0008FI-76; Mon, 13 May 2019 14:45:02 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCCI-0008EC-Qh
 for linux-um@lists.infradead.org; Mon, 13 May 2019 14:45:00 +0000
Received: by mail-ed1-x542.google.com with SMTP id w33so17932576edb.10
 for <linux-um@lists.infradead.org>; Mon, 13 May 2019 07:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oa11tgFM6isQYlc2/lSr8+dtL7dz0FGS2ImXszdei94=;
 b=lkK1jfdXRSWG4EOPXpNEsgoMZb8lUzm2FfYavTsrFBTY7w3Z4FVJ9cp/fBcnbUD9bK
 Frxw45KRQigXleUJaVccMl3gMpsrT0DKhj92T3OICo7PFH1ZWYiDKuhrJn4Bo6DXp0gB
 BN+9OOpk6LCzBYskBvabimkY7bAvWM5tFDS84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=oa11tgFM6isQYlc2/lSr8+dtL7dz0FGS2ImXszdei94=;
 b=uhCWNFG6xer0V+ilHuCVAYLew34WdW5frGYt0s6WENFTw2IMl5ncjQ0UVxT/6IXIwB
 Geljnu7bB2DRyYzBpNNMVQUYXqrF0HgMvsxyf+AYh8/w2rzCQ2bz1pU1w2eOBORy9FkS
 nZXVvmktH3zafXUSocx+E3AIL5LALv/TPD08gnD0vYU1YytG3JEzImZP0TgO2P5hyy2i
 Bv7YGi50MfctEzYorZ+4rmtKy+7aefJGFBzpbzvkYuaVaj3RVYTb8/jvxg7lTuMigqjK
 qY+W2relIYH+99M7v165F1N4U563G4Hnq50/qNNoSegg3bnUQIG9RcOsD/1oMrBDA/Kt
 /HhQ==
X-Gm-Message-State: APjAAAUqS0kkZvSya9nOBDNwJ19O3jbpdPhmABHczrZItyQDrJNyHt6w
 mTpfISA4ZNg4H/Buv2ImuJQ84Q==
X-Google-Smtp-Source: APXvYqzazE/ARkr3DfLFYQv2UcXLE6AXccxEO07VmSzGlXapLczjo2jaDfA5V6TtDA06sVwBcw/rGw==
X-Received: by 2002:a17:906:18b1:: with SMTP id
 c17mr22862891ejf.196.1557758696660; 
 Mon, 13 May 2019 07:44:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id ox15sm1844293ejb.52.2019.05.13.07.44.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 07:44:55 -0700 (PDT)
Date: Mon, 13 May 2019 16:44:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Theodore Ts'o <tytso@mit.edu>, Frank Rowand <frowand.list@gmail.com>,
 Tim.Bird@sony.com, knut.omang@oracle.com,
 gregkh@linuxfoundation.org, brendanhiggins@google.com,
 keescook@google.com, kieran.bingham@ideasonboard.com,
 mcgrof@kernel.org, robh@kernel.org, sboyd@kernel.org,
 shuah@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 amir73il@gmail.com, dan.carpenter@oracle.com,
 dan.j.williams@intel.com, daniel@ffwll.ch, jdike@addtoit.com,
 joel@jms.id.au, julia.lawall@lip6.fr, khilman@baylibre.com,
 logang@deltatee.com, mpe@ellerman.id.au, pmladek@suse.com,
 richard@nod.at, rientjes@google.com, rostedt@goodmis.org,
 wfg@linux.intel.com
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190513144451.GQ17751@phenom.ffwll.local>
Mail-Followup-To: Theodore Ts'o <tytso@mit.edu>,
 Frank Rowand <frowand.list@gmail.com>, Tim.Bird@sony.com,
 knut.omang@oracle.com, gregkh@linuxfoundation.org,
 brendanhiggins@google.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 amir73il@gmail.com, dan.carpenter@oracle.com,
 dan.j.williams@intel.com, jdike@addtoit.com, joel@jms.id.au,
 julia.lawall@lip6.fr, khilman@baylibre.com, logang@deltatee.com,
 mpe@ellerman.id.au, pmladek@suse.com, richard@nod.at,
 rientjes@google.com, rostedt@goodmis.org, wfg@linux.intel.com
References: <20190509015856.GB7031@mit.edu>
 <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <20190509032017.GA29703@mit.edu>
 <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
 <80c72e64-2665-bd51-f78c-97f50f9a53ba@gmail.com>
 <20190511173344.GA8507@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190511173344.GA8507@mit.edu>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_074458_942152_AB459DE6 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, May 11, 2019 at 01:33:44PM -0400, Theodore Ts'o wrote:
> On Fri, May 10, 2019 at 02:12:40PM -0700, Frank Rowand wrote:
> > However, the reply is incorrect.  Kselftest in-kernel tests (which
> > is the context here) can be configured as built in instead of as
> > a module, and built in a UML kernel.  The UML kernel can boot,
> > running the in-kernel tests before UML attempts to invoke the
> > init process.
> 
> Um, Citation needed?
> 
> I don't see any evidence for this in the kselftest documentation, nor
> do I see any evidence of this in the kselftest Makefiles.
> 
> There exists test modules in the kernel that run before the init
> scripts run --- but that's not strictly speaking part of kselftests,
> and do not have any kind of infrastructure.  As noted, the
> kselftests_harness header file fundamentally assumes that you are
> running test code in userspace.

Yeah I really like the "no userspace required at all" design of kunit,
while still collecting results in a well-defined way (unless the current
self-test that just run when you load the module, with maybe some
kselftest ad-hoc wrapper around to collect the results).

What I want to do long-term is to run these kernel unit tests as part of
the build-testing, most likely in gitlab (sooner or later, for drm.git
only ofc). So that people get their pull requests (and patch series, we
have some ideas to tie this into patchwork) automatically tested for this
super basic stuff.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
