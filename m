Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D962B1253B
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 01:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPWgyvFezyiJxzU8DsA1dv5ve5lrv548dMtshhN30q0=; b=hEtYPEvYPZNmIz
	IzmtcS+S4GwLQYb6RugN0FqAI+y4TTqkLS2UDcRwbTDDjPZ+Itc/waU9Z/wzF3IKYvVZhewu9n2KY
	VS7O8dBRIitSj6fke/imVrWCKv8zZUSqQwinwYFJtsbA2UFPVMbnBUUpE+WrR7KNVAwmriRm2JoqY
	CaLPpwJfa/jtwK/NUmngE/Mh/CSsF/wOpWmdhPQKH9WhMKifiS11a//zCrrDmElU9lKXgzGEyYveW
	lv53/emweeLRiirCR43n0M6Tp0xJKMUw0+bKQp/SuerQC+Ef1QnUtTz3CI0cqo1CpyHqxPRV5GDCG
	pZnnh31M49Oq/p/N1TpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMLOc-0000BV-EP; Thu, 02 May 2019 23:45:46 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMLOY-000092-Bi
 for linux-um@lists.infradead.org; Thu, 02 May 2019 23:45:44 +0000
Received: by mail-oi1-x244.google.com with SMTP id l203so3166212oia.3
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 16:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ylV5gAlOXI2nFNZnhMPfqqvANEP1/evAl3taiRkcInQ=;
 b=OrjlPAypoDuLTmMWabsyH76U4J0Mgjkpr3DQnHBX1C/sWw9dQWGJZqdGNPLs+jVmSg
 c3bYyd65ExNrwdSzAF9/C3j2TwsTXUxo6mYRYKux2ifXavoN2kS9n00OiZWShZJ2VN9E
 Jey0nYLCGUng4+ySvL4+XGzNZ7sYP4XCUNcymRLj9xf6jLOnFx+3mvowrkn0pYKwRyZg
 3M2fA5czV+OipZELphNhEy5iD2t61ukDrrNzVoHA9OjKJNH0VGnLzAHCbuiCf9QjtvzN
 IDmzum+SPe0jeiAShs/g76LnFAxiI2OcVPBTp+1OnYkCXtTKkvmMFQSC+CcJJLS2aj7L
 YRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ylV5gAlOXI2nFNZnhMPfqqvANEP1/evAl3taiRkcInQ=;
 b=J9S3bn/cv2PHKY/8zJypWsk/Bi56IVIpsorO08ngU2BkS589BKuJhkLblenr8iR8DK
 nOtCY7E18xLNIBZopCtqWs5y6QYjsy3wgo0up9kSQC0VjfXPiU89R3mwln1J4Ctci257
 uA432MB5hPqtpCTxfKATRNHY98ym4aUd7HYKRNXfjrtwCGZXe0q93r+eZxXM/kxnAifa
 AcBUTZ0fixbgRP9433UGkOi/fF0JgeMNj+XxQMULxg7Nmm2qTcwLccdHsEtoDPv9CGIp
 FT5La6qc1hlaSfhh8meUiPtdzLlhhwpz0/9hKHiVmpYvdc4lU5EVZv/C7xnkGfsY84iY
 Upqg==
X-Gm-Message-State: APjAAAWF/artlDZTaxNHcA159HvEoOu0yk+HLg5l74IPIuku1/+2QJ4W
 Y7tBaOAbKocUsLZiAsbLJAKhYe4MNV0DqBkGDwV/qA==
X-Google-Smtp-Source: APXvYqza1ahwn/TDeWwW8NfzPMf/2RsvBcbxrAIWRnpkKGe/w6LvErCEtGQm7aaUbxq8tyCdcrjFzojfQN03A2rWnss=
X-Received: by 2002:aca:57d8:: with SMTP id l207mr4208582oib.44.1556840740661; 
 Thu, 02 May 2019 16:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-13-brendanhiggins@google.com>
 <20190502110220.GD12416@kroah.com>
 <CAFd5g47t=EdLKFCT=CnPkrM2z0nDVo24Gz4j0VxFOJbARP37Lg@mail.gmail.com>
 <a49c5088-a821-210c-66de-f422536f5b01@gmail.com>
In-Reply-To: <a49c5088-a821-210c-66de-f422536f5b01@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 16:45:29 -0700
Message-ID: <CAFd5g44iWRchQKdJYtjRtPY6e-6e0eXpKXXsx5Ooi6sWE474KA@mail.gmail.com>
Subject: Re: [PATCH v2 12/17] kunit: tool: add Python wrappers for running
 KUnit tests
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_164542_552468_D74D40B8 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 shuah@kernel.org, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 2:16 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 5/2/19 11:07 AM, Brendan Higgins wrote:
> > On Thu, May 2, 2019 at 4:02 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >>
> >> On Wed, May 01, 2019 at 04:01:21PM -0700, Brendan Higgins wrote:
> >>> From: Felix Guo <felixguoxiuping@gmail.com>
> >>>
> >>> The ultimate goal is to create minimal isolated test binaries; in the
> >>> meantime we are using UML to provide the infrastructure to run tests, so
> >>> define an abstract way to configure and run tests that allow us to
> >>> change the context in which tests are built without affecting the user.
> >>> This also makes pretty and dynamic error reporting, and a lot of other
> >>> nice features easier.
> >>>
> >>> kunit_config.py:
> >>>   - parse .config and Kconfig files.
> >>>
> >>> kunit_kernel.py: provides helper functions to:
> >>>   - configure the kernel using kunitconfig.
> >>>   - build the kernel with the appropriate configuration.
> >>>   - provide function to invoke the kernel and stream the output back.
> >>>
> >>> Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
> >>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> >>
> >> Ah, here's probably my answer to my previous logging format question,
> >> right?  What's the chance that these wrappers output stuff in a standard
> >> format that test-framework-tools can already parse?  :)

To be clear, the test-framework-tools format we are talking about is
TAP13[1], correct?

My understanding is that is what kselftest is being converted to use.

> >
> > It should be pretty easy to do. I had some patches that pack up the
> > results into a serialized format for a presubmit service; it should be
> > pretty straightforward to take the same logic and just change the
> > output format.
>
> When examining and trying out the previous versions of the patch I found
> the wrappers useful to provide information about how to control and use
> the tests, but I had no interest in using the scripts as they do not
> fit in with my personal environment and workflow.
>
> In the previous versions of the patch, these helper scripts are optional,
> which is good for my use case.  If the helper scripts are required to

They are still optional.

> get the data into the proper format then the scripts are not quite so
> optional, they become the expected environment.  I think the proper
> format should exist without the helper scripts.

That's a good point. A couple things,

First off, supporting TAP13, either in the kernel or the wrapper
script is not hard, but I don't think that is the real issue that you
raise.

If your only concern is that you will always be able to have human
readable KUnit results printed to the kernel log, that is a guarantee
I feel comfortable making. Beyond that, I think it is going to take a
long while before I would feel comfortable guaranteeing anything about
how will KUnit work, what kind of data it will want to expose, and how
it will be organized. I think the wrapper script provides a nice
facade that I can maintain, can mediate between the implementation
details and the user, and can mediate between the implementation
details and other pieces of software that might want to consume
results.

[1] https://testanything.org/tap-version-13-specification.html

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
