Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC3796889
	for <lists+linux-um@lfdr.de>; Tue, 20 Aug 2019 20:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fB+qhDpqlgt7+29baU6fHeG5TUzLb4ocEvohn8pgsZM=; b=PSZ3tlOk/Rwwf1
	B0h7Fdu1BapIGW9HOc7FI3mBlIus25ODYJTeGL/Q0dlVUg1fpfhmFdywOVuioUQAv1mH0RK4NbrWr
	UtgY0aQAzUz+MW/87loUFQNhG0njmPWHhkPIbAHuy0mjW2gpjZZovlD0FVLvXAiOJV09qKOcTYHsl
	uMyAwRSra7oY3lELyCDBP7CYKXXzom1ivWCI/IccBF/Rmw1Une1nK69SLqBWAeAZNDSOpFDNBc5Sj
	6RR+kychuBgfMF8yvyKxbQyGvxuBsooGmczBgWgoqN+BjGOU/nDpSsgZgDX4tyaq6vd6IfrMZz/oW
	3QEi/cP1ppaj0aw/pA0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08oa-0006Jw-DZ; Tue, 20 Aug 2019 18:25:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i08oX-0005pv-Bb
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 18:25:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id f17so3869873pfn.6
 for <linux-um@lists.infradead.org>; Tue, 20 Aug 2019 11:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=54TsZDfDW3TriN1nqx27Ow/a4BBsLJIgLp0TtrQghOk=;
 b=ETn6ov6vEQVZ6Z8d+QOJIR5ZdOHT4ZDivDB2VkpQ0qnDIs9MQrQ638udwnr/9nsV39
 Q9CE1bjJjQqBou8vTO6RAPzU8X9Tiq1MLFyQK2/DJWm5diN99WuwayJaLt2azZswGQO6
 PgJRFVxL4YQGtCWP5gy6mT//u52PocvwVbmI1tMnbwHSew1qhj9G4kLkgm0cfOXOG/+z
 KBuOacguM7Ku15bvGQe9U+2RVhwBdPlfoBEveO5qY2aaNvMSGTBP0IPNRwdL5M9uwBLI
 rRbk5djqLbCbCvoJbmUcAx9Gb5ONtUGkfOKYOiRtBndtwfw3IyR9R3OQOevfv1X/iVGx
 ii2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=54TsZDfDW3TriN1nqx27Ow/a4BBsLJIgLp0TtrQghOk=;
 b=l9DQnY3MNUOkeCE9nX6bU7h9Hyqfyi3wpsMLKYY1CR70GsrgYdH4fwH2hZnB41V34g
 btMwySaEwnJD8HIvpgcT6GxyO5b3KgqrKZ58Q3Mr91OLPEVD5X7mSaM1ndhaKH5Mzl8z
 BpUvDyg8xhfavUcBjUBrfuM1twzSS9GCSW6auEuEn2M44raQeoxZB6sTQH1ew56wPEni
 24Ms4HM4iL+VwEnAFtYCUX1AfJQFHbxwDLOIntSGhB0at3g8R2wMerK6TKNspg3F/lz7
 KIZ8Lsn28lSO5p3Nzykkr7dhRY4sr2m+7UbbA769Wc+T1RzJcCf006HXHOObmDq0aXsq
 2k0Q==
X-Gm-Message-State: APjAAAXXRxdG9v1Jt7+bG5rzmSzGXolTlaGWL4hF7shzyc97riHJYPvc
 Zj/vgFdKeT+20DmLIWggeSeM4w==
X-Google-Smtp-Source: APXvYqz6e4UEkK1ofDpL52W0zxkSIj5ZMAzgsILYeZML13HEn/+04ibT+w1ZAtBgHDGP+VY3TZZ4jA==
X-Received: by 2002:a17:90a:3aaf:: with SMTP id
 b44mr1312628pjc.87.1566325496873; 
 Tue, 20 Aug 2019 11:24:56 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id u16sm20305376pgm.83.2019.08.20.11.24.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 11:24:55 -0700 (PDT)
Date: Tue, 20 Aug 2019 11:24:50 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: shuah <shuah@kernel.org>
Subject: Re: [PATCH v13 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190820182450.GA38078@google.com>
References: <20190814055108.214253-1-brendanhiggins@google.com>
 <5b880f49-0213-1a6e-9c9f-153e6ab91eeb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b880f49-0213-1a6e-9c9f-153e6ab91eeb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_112501_400772_BE2E0C82 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -12.5 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 3.2 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, frowand.list@gmail.com,
 robh@kernel.org, linux-nvdimm@lists.01.org, khilman@baylibre.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 Bjorn Helgaas <bhelgaas@google.com>, kunit-dev@googlegroups.com, tytso@mit.edu,
 richard@nod.at, sboyd@kernel.org, gregkh@linuxfoundation.org,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 daniel@ffwll.ch, keescook@google.com, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 11:24:45AM -0600, shuah wrote:
> On 8/13/19 11:50 PM, Brendan Higgins wrote:
> > ## TL;DR
> > 
> > This revision addresses comments from Stephen and Bjorn Helgaas. Most
> > changes are pretty minor stuff that doesn't affect the API in anyway.
> > One significant change, however, is that I added support for freeing
> > kunit_resource managed resources before the test case is finished via
> > kunit_resource_destroy(). Additionally, Bjorn pointed out that I broke
> > KUnit on certain configurations (like the default one for x86, whoops).
> > 
> > Based on Stephen's feedback on the previous change, I think we are
> > pretty close. I am not expecting any significant changes from here on
> > out.
> > 
> 
> Hi Brendan,
> 
> I found checkpatch errors in one or two patches. Can you fix those and
> send v14.

Hi Shuah,

Are you refering to the following errors?

ERROR: Macros with complex values should be enclosed in parentheses
#144: FILE: include/kunit/test.h:456:
+#define KUNIT_BINARY_CLASS \
+       kunit_binary_assert, KUNIT_INIT_BINARY_ASSERT_STRUCT

ERROR: Macros with complex values should be enclosed in parentheses
#146: FILE: include/kunit/test.h:458:
+#define KUNIT_BINARY_PTR_CLASS \
+       kunit_binary_ptr_assert, KUNIT_INIT_BINARY_PTR_ASSERT_STRUCT

These values should *not* be in parentheses. I am guessing checkpatch is
getting confused and thinks that these are complex expressions, when
they are not.

I ignored the errors since I figured checkpatch was complaining
erroneously.

I could refactor the code to remove these macros entirely, but I think
the code is cleaner with them.

What would you prefer I do?

NB: These macros are introduced in: "[PATCH v13 05/18] kunit: test: add
the concept of expectations"

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
