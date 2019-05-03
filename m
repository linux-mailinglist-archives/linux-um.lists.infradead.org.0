Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16F3127E6
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 08:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLwjoh8X1OIRlVtYaWDO8tvy6bJp4lHPzqj8Ygk2/54=; b=gu2i9kc1YmeJJo
	16VFbYJe6DRuAbv6zFz03IkAwdQSt+W0zT09swcX9+k4ghUlflQsm05nqebTJIm7ZHwbMI5zn54jS
	xXcnGw1q8HrB0KnroEXhmWFNo4m5sADhwUUT1tWF+uogwRtYjrMe+NZwlZNTFKTz2Q427UJWUlQc7
	b9VK5QEbxSggvrIvk1b+rxMFko7HKczU/V+eMwtpuTSDuKz91QvHobr9fmwCflwMVa4qHrR1yd3Lr
	ShRmj200CFYAM5MYf136cbPN0t1l7TmEPBRptR2WrBQlYiuE5gHlgGTyqnIgZVn9akd/43z/yW3x3
	swCryhgf67ujdMBfgKlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMRtL-0007Pp-Oy; Fri, 03 May 2019 06:41:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMRtJ-0007P4-AX
 for linux-um@lists.infradead.org; Fri, 03 May 2019 06:41:54 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CC3D2075E;
 Fri,  3 May 2019 06:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556865712;
 bh=qAxjj5uiF5zEnzRbrg8NBWm/r/MITYyDqVpA7K94d04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T/xHj6l6GTULrzqty/QE9n+V3E7brgc1EE3YPacTpehUKVBEwYEB8Kjpj6eaNywET
 vOVTIu5pClz9D1ixUfyq2wi+fG23/JAt0fEXA4iWbz4fYGFM70dWGs3kIuIpiDPLE5
 z1ZErmGEyIuJkJ4kZlIVEyXnanSfyuAg225XdKNg=
Date: Fri, 3 May 2019 08:41:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v2 12/17] kunit: tool: add Python wrappers for running
 KUnit tests
Message-ID: <20190503064149.GB20723@kroah.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-13-brendanhiggins@google.com>
 <20190502110220.GD12416@kroah.com>
 <CAFd5g47t=EdLKFCT=CnPkrM2z0nDVo24Gz4j0VxFOJbARP37Lg@mail.gmail.com>
 <a49c5088-a821-210c-66de-f422536f5b01@gmail.com>
 <CAFd5g44iWRchQKdJYtjRtPY6e-6e0eXpKXXsx5Ooi6sWE474KA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g44iWRchQKdJYtjRtPY6e-6e0eXpKXXsx5Ooi6sWE474KA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_234153_404108_50434DAF 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 04:45:29PM -0700, Brendan Higgins wrote:
> On Thu, May 2, 2019 at 2:16 PM Frank Rowand <frowand.list@gmail.com> wrote:
> >
> > On 5/2/19 11:07 AM, Brendan Higgins wrote:
> > > On Thu, May 2, 2019 at 4:02 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> > >>
> > >> On Wed, May 01, 2019 at 04:01:21PM -0700, Brendan Higgins wrote:
> > >>> From: Felix Guo <felixguoxiuping@gmail.com>
> > >>>
> > >>> The ultimate goal is to create minimal isolated test binaries; in the
> > >>> meantime we are using UML to provide the infrastructure to run tests, so
> > >>> define an abstract way to configure and run tests that allow us to
> > >>> change the context in which tests are built without affecting the user.
> > >>> This also makes pretty and dynamic error reporting, and a lot of other
> > >>> nice features easier.
> > >>>
> > >>> kunit_config.py:
> > >>>   - parse .config and Kconfig files.
> > >>>
> > >>> kunit_kernel.py: provides helper functions to:
> > >>>   - configure the kernel using kunitconfig.
> > >>>   - build the kernel with the appropriate configuration.
> > >>>   - provide function to invoke the kernel and stream the output back.
> > >>>
> > >>> Signed-off-by: Felix Guo <felixguoxiuping@gmail.com>
> > >>> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > >>
> > >> Ah, here's probably my answer to my previous logging format question,
> > >> right?  What's the chance that these wrappers output stuff in a standard
> > >> format that test-framework-tools can already parse?  :)
> 
> To be clear, the test-framework-tools format we are talking about is
> TAP13[1], correct?

Yes.

> My understanding is that is what kselftest is being converted to use.

Yes, and I think it's almost done.  The core of kselftest provides
functions that all tests can use to log messages in the correct format.

The core of kunit should also log the messages in this format as well,
and not rely on the helper scripts as Frank points out, not everyone
will use/want them.  Might as well make it easy for everyone to always
do the right thing and not force it to always be added in later.

thanks,

greg k-h

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
