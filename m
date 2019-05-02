Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7198912347
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 22:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzNS3clQho5O1FoKdw4W9XwEJ9W90xSgRi+jHGCysWQ=; b=rhxM4GFV48QXSW
	cD3ZcSH9ltoj+gY/URNjrAoBNT8VawQ3/QROhBabESC3p1plUPmhIdn6Ve5Qnfze8dV6zjrmvChMw
	gFaMMvDrDCI+MKDN2LY/Ir9o3dY/LwzUnsEQdyDaYxsSVSjuD1jVIzNUTZ8gcn4I8pE/vuRvWA1K3
	h2EXqY5gVRlJJmYsgScDLIi8EUnbbufIzWKYzBu6VyDTcd4ditZa+TOFF9obKu05ll6St+ZqciCR7
	WLHs2a+C8ag1PjB3ZTsPiP5fuzhJSX8sRfvV5hQspAMsRprKjpmnEc27CGPWFVmubkhDVbEsEt2JG
	MlJ6WfZhbWczzq7JfbYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMIHT-0005oA-6M; Thu, 02 May 2019 20:26:11 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMIHP-0005nZ-U9
 for linux-um@lists.infradead.org; Thu, 02 May 2019 20:26:09 +0000
Received: by mail-ot1-x342.google.com with SMTP id r20so3346936otg.4
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 13:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UjYVT5cAdmQKUfv9t8ccIVDdyBls+aL8RkatsPsXvcs=;
 b=S/NLBkmmg3Md+sTx08gED5HrktmpwZikr8idsPoedLBx4NGY0vsICG/2JByh1OPLMl
 SoIkyImRxqPDEOFyC2ZMo66T4y64AzxZJe60LUPIIZ+2whbKVnm1u/h2cZWzkh0Pg7xc
 EXNw4yJNZ9fhJbGVtdrs9Sah16nUmTboVs4KkvhykHpn/i4zj9XsNumXBLK6Ynb0YPNG
 +tpKFc1Qf+4khDJxrAPPVZg4LS8WUK6j1vznFw5a8jr0zVqX9peLg5vYA1eBwQqixHhg
 xvPSDH5tHp5fJ/MAFS5gSf8uCUub0+kg9vZwn+lDYmBqYVC0qg8nx8pyREf5ogAUd63R
 E26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UjYVT5cAdmQKUfv9t8ccIVDdyBls+aL8RkatsPsXvcs=;
 b=ndnYHkOy9Zq1htwC8kXMY9Kzlee4YFufCV4mkQmqdGdCVCfJxjUIn0BIoDpxu4I4RJ
 16UKxvmMJWDhyNdAEGHZtCfnAxrjD7k1GHCt+YnyYkRdQq6n6sLiUA+XrPE3I7deNpPy
 oMr1T6dM4LdBSWd9rvyx3stYPoY9zhCz11iVjIl8qHa6ZexfK4l3DpZ9MBojLQ5lDyCT
 GsXh8UohhDMKyFMv6jV8V1I6G+Re9GrwiD20Ac7HCRL08KMUjIfCrKHvzgQnuy+GGq73
 xJhr9oHQjJm1X/WllHE1n7t0NqXB2yK4aq8haM1ojW6cYfsIgDOI6nTk1L/nnwKeEAS1
 F+RA==
X-Gm-Message-State: APjAAAWbwckThVOKHTjBPM1UFVZ71oW0FDNcCzGWffVKBfORsBVEm3M1
 t6tRMcQyoT1+7j7pKmho8SplxfDuT6HpwZccNDj1sg==
X-Google-Smtp-Source: APXvYqxyYrm8zG8OMTTxqGADAYUvr/vXQpVESafN7Cz0pZWyjDkgKl1eFOtZxYdb1jr2uV1YoMkUpLh/i+1PnNqQJjM=
X-Received: by 2002:a05:6830:204a:: with SMTP id
 f10mr3731908otp.83.1556828766432; 
 Thu, 02 May 2019 13:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-5-brendanhiggins@google.com>
 <20190502110008.GC12416@kroah.com>
In-Reply-To: <20190502110008.GC12416@kroah.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2019 13:25:54 -0700
Message-ID: <CAFd5g47ssM7RQZxQsUJ86UigcF-Uz+Kwv2yvKN_gZK-TtW89bA@mail.gmail.com>
Subject: Re: [PATCH v2 04/17] kunit: test: add kunit_stream a std::stream like
 logger
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_132607_993514_C4BD5025 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
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

On Thu, May 2, 2019 at 4:00 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, May 01, 2019 at 04:01:13PM -0700, Brendan Higgins wrote:
> > A lot of the expectation and assertion infrastructure prints out fairly
> > complicated test failure messages, so add a C++ style log library for
> > for logging test results.
>
> Ideally we would always use a standard logging format, like the
> kselftest tests all are aiming to do.  That way the output can be easily
> parsed by tools to see if the tests succeed/fail easily.
>
> Any chance of having this logging framework enforcing that format as
> well?

I agree with your comment on the later patch that we should handle
this at the wrapper script layer (KUnit tool).

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
