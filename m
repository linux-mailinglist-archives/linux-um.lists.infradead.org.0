Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D743F12733
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 07:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gakAA0hypdby1IzqLlHXKONWkePEEldBG1GvzwXnvY=; b=mVlEyRckEc4DZJ
	7RsmrJSJ64gKMrcwo1V96b7ivG6V9I2vSUxGNG4UVP2i8gE3JEOQVYHYxqjAc89eMmmDkeMLSFDL6
	ELu8J4aa+szhyQ/kcgRT5BIEj8/PzKTDOyHwGYSoxuETqd+j9g8aZ2WSCAE9czjepJx77p+JIQxmd
	g6zAV1mQL1tlJy08zy7eJAfGUgyoMpUlyMapGQZpPtkB9ATr9bS7oMON52eyB8I19WZ0WC0XlHBGs
	kCGm0vArlW5MtXOFr47FKKYmRnpqthLIxIvhgj5V3iTEhPAonAOjAMpd6OLwvHXhhHynbm8zc9tt5
	ZQXePDiE/e1+ZNzzV5RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMQrr-0004yg-IK; Fri, 03 May 2019 05:36:19 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMQro-0004y3-6w
 for linux-um@lists.infradead.org; Fri, 03 May 2019 05:36:18 +0000
Received: by mail-oi1-x244.google.com with SMTP id v10so3599826oib.1
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 22:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kZWOLSmvOPvmN0LeT+tozEpaTTHy3QTyz4qZIAIbmM0=;
 b=N7EFpotFYGg4C2sBd5zzI2avRwh3PPTx3fD4+H7oEJe8ZfsOy0kgGpfPxkA4zmoBx2
 jJNqMAkUJ8FNDn54/se4qXPA6zQHWWw/V/DPcF5SExi470sZ3c8qBLiDASkBwv7VdzOj
 SIqPwQSNWmticSh9jNC2HhIJfL5ALhPh6L2T+GBBW/bRLFZagZUXqj/PNkxkLIxfW03w
 8JzD9/K8cjzuKxhXhpNfz0za/Y8NKzXa71tNWqgRxrVxR+QCApC61zPI5B6tTTYCJtpa
 TLr3KchoBTwIZnnrkZI2Ja4yZyY/3yr3UmYGVA3EV+h8Wvpgczoumb123yy7Tncadwh5
 ZKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kZWOLSmvOPvmN0LeT+tozEpaTTHy3QTyz4qZIAIbmM0=;
 b=aGkrwerFUNeotkuEciaJ851hlisPocbX654pB71YkyQ+TOjgDeseFsnI3+JGJn0x5V
 c1OSCTg86imyiBKnkfQu8Yh40nL9UGfsLArvZZOCAh4/17+LKk8Ad2XaQFO0SAJjoDxd
 AjG39L6g/fXc2ngNevg7zuWrIuu3Nj4hHPMSkVvcK+fpPvPBpRNEh6/IZKsV9IcpXF/R
 nh0A2+NvukXB8xbOtdBDTz0sG3mOXAkr54gaR+65y4PLkbzTNGnEiLctU43bYwZb8tPy
 I4A1h0/aM1nQkzIVeWnwyFbfzGufeHYiimFYfkQvSYrcJ2SFN0Xz9sW5CLzQJPlhjrqy
 8V9A==
X-Gm-Message-State: APjAAAXYuunKnLdhopmhAdoePMZnaf4Cyh8viO9CFt7luz4PBnzPX8YI
 7kQafI3pag4qpRteYvm9/eNROM2507rT7o1rzZ2H7g==
X-Google-Smtp-Source: APXvYqzgI0MWh9qumhQ+Pt83byN9EbBZESn1gMYXecxqoFA0hw4aqXCw172gMFrw0qdID+M5pziE3w/mJY/ioNSsiHk=
X-Received: by 2002:aca:4586:: with SMTP id s128mr4643568oia.148.1556861774441; 
 Thu, 02 May 2019 22:36:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-13-brendanhiggins@google.com>
 <20190502110220.GD12416@kroah.com>
 <CAFd5g47t=EdLKFCT=CnPkrM2z0nDVo24Gz4j0VxFOJbARP37Lg@mail.gmail.com>
 <a49c5088-a821-210c-66de-f422536f5b01@gmail.com>
 <CAFd5g44iWRchQKdJYtjRtPY6e-6e0eXpKXXsx5Ooi6sWE474KA@mail.gmail.com>
 <1a5f3c44-9fa9-d423-66bf-45255a90c468@gmail.com>
In-Reply-To: <1a5f3c44-9fa9-d423-66bf-45255a90c468@gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 22:36:03 -0700
Message-ID: <CAFd5g45RYm+zfdJXnyp2KZZH5ojfOzy++aq+4zBeE5VDu6WgEw@mail.gmail.com>
Subject: Re: [PATCH v2 12/17] kunit: tool: add Python wrappers for running
 KUnit tests
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_223616_281819_BE44AD2C 
X-CRM114-Status: GOOD (  38.21  )
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

On Thu, May 2, 2019 at 6:45 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 5/2/19 4:45 PM, Brendan Higgins wrote:
> > On Thu, May 2, 2019 at 2:16 PM Frank Rowand <frowand.list@gmail.com> wrote:
> >>
> >> On 5/2/19 11:07 AM, Brendan Higgins wrote:
> >>> On Thu, May 2, 2019 at 4:02 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >>>>
> >>>> On Wed, May 01, 2019 at 04:01:21PM -0700, Brendan Higgins wrote:
> >>>>> From: Felix Guo <felixguoxiuping@gmail.com>
> >>>>>
> >>>>> The ultimate goal is to create minimal isolated test binaries; in the
> >>>>> meantime we are using UML to provide the infrastructure to run tests, so
> >>>>> define an abstract way to configure and run tests that allow us to
> >>>>> change the context in which tests are built without affecting the user.
> >>>>> This also makes pretty and dynamic error reporting, and a lot of other
> >>>>> nice features easier.
> >>>>>
> >>>>> kunit_config.py:
> >>>>>   - parse .config and Kconfig files.
> >>>>>
> >>>>> kunit_kernel.py: provides helper functions to:
> >>>>>   - configure the kernel using kunitconfig.
> >>>>>   - build the kernel with the appropriate configuration.
> >>>>>   - provide function to invoke the kernel and stream the output back.
> >>>>>
> >>>>> Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
> >>>>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> >>>>
> >>>> Ah, here's probably my answer to my previous logging format question,
> >>>> right?  What's the chance that these wrappers output stuff in a standard
> >>>> format that test-framework-tools can already parse?  :)
> >
> > To be clear, the test-framework-tools format we are talking about is
> > TAP13[1], correct?
>
> I'm not sure what the test community prefers for a format.  I'll let them
> jump in and debate that question.
>
>
> >
> > My understanding is that is what kselftest is being converted to use.
> >
> >>>
> >>> It should be pretty easy to do. I had some patches that pack up the
> >>> results into a serialized format for a presubmit service; it should be
> >>> pretty straightforward to take the same logic and just change the
> >>> output format.
> >>
> >> When examining and trying out the previous versions of the patch I found
> >> the wrappers useful to provide information about how to control and use
> >> the tests, but I had no interest in using the scripts as they do not
> >> fit in with my personal environment and workflow.
> >>
> >> In the previous versions of the patch, these helper scripts are optional,
> >> which is good for my use case.  If the helper scripts are required to
> >
> > They are still optional.
> >
> >> get the data into the proper format then the scripts are not quite so
> >> optional, they become the expected environment.  I think the proper
> >> format should exist without the helper scripts.
> >
> > That's a good point. A couple things,
> >
> > First off, supporting TAP13, either in the kernel or the wrapper
> > script is not hard, but I don't think that is the real issue that you
> > raise.
> >
> > If your only concern is that you will always be able to have human
> > readable KUnit results printed to the kernel log, that is a guarantee
> > I feel comfortable making. Beyond that, I think it is going to take a
> > long while before I would feel comfortable guaranteeing anything about
> > how will KUnit work, what kind of data it will want to expose, and how
> > it will be organized. I think the wrapper script provides a nice
> > facade that I can maintain, can mediate between the implementation
> > details and the user, and can mediate between the implementation
> > details and other pieces of software that might want to consume
> > results.
> >
> > [1] https://testanything.org/tap-version-13-specification.html
>
> My concern is based on a focus on my little part of the world
> (which in _previous_ versions of the patch series was the devicetree
> unittest.c tests being converted to use the kunit infrastructure).
> If I step back and think of the entire kernel globally I may end
> up with a different conclusion - but I'm going to remain myopic
> for this email.
>
> I want the test results to be usable by me and my fellow
> developers.  I prefer that the test results be easily accessible
> (current printk() implementation means that kunit messages are
> just as accessible as the current unittest.c printk() output).
> If the printk() output needs to be filtered through a script
> to generate the actual test results then that is sub-optimal
> to me.  It is one more step added to my workflow.  And
> potentially with an embedded target a major pain to get a
> data file (the kernel log file) transferred from a target
> to my development host.

That's fair. If that is indeed your only concern, then I don't think
the wrapper script will ever be an issue for you. You will always be
able to execute a given test the old fashioned/manual way, and the
wrapper script only summarizes results, it does not change the
contents.

>
> I want a reported test failure to be easy to trace back to the
> point in the source where the failure is reported.  With printk()
> the search is a simple grep for the failure message.  If the
> failure message has been processed by a script, and then the
> failure reported to me in an email, then I may have to look
> at the script to reverse engineer how the original failure
> message was transformed into the message that was reported
> to me in the email.  Then I search for the point in the
> source where the failure is reported.  So a basic task has
> just become more difficult and time consuming.

That seems to be a valid concern. I would reiterate that you shouldn't
be concerned by any processing done by the wrapper script itself, but
the reality is that depending on what happens with automated
testing/presubmit/CI other people might end up parsing and
transforming test results - it might happen, it might not. I currently
have a CI system set up for KUnit on my public repo that I don't think
you would be offended by, but I don't know what we are going to do
when it comes time to integrate with existing upstream CI systems.

In anycase, I don't think that either sticking with or doing away with
the wrapper script is going to have any long term bearing on what
happens in this regard.

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
