Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0539355C3A
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 01:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3z/+FD47x6gDCJpHzYLjAWH/0/L91wYgvER5jrcMX4=; b=tfjxTvOnLIp5Ps
	5HO+K/LAE928FVBwfNSt5Rcvxz5G2qh0LkP2Xi27YZlU9Nf7InldlgC97XmRzVeIM+QuD5u0mOTyl
	/CYvf6bWITRCWWYPFEDO2Rao6jppU98NtPVea9+fIDOCFxeAbGl/jSgPjjwJ/M8+13/VzrzzoTsaI
	8hGzbZMXokmuFRRuup+8nGHXexMyRle5JZzd7sIoUZN0w9HlOghqYdQkCCQASusC1Dt3ULbyxtVj5
	FwRyCqUOmUhTr1JIODT5ovvVruF0JfzF4MfEXVFzEvq7imDEjdZdXLvRisxgqfur1RROLeslbIup9
	2DsV9kNikG8pwotChnow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfum8-0003lU-QK; Tue, 25 Jun 2019 23:22:56 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfum5-0003l9-Ca
 for linux-um@lists.infradead.org; Tue, 25 Jun 2019 23:22:54 +0000
Received: by mail-pf1-f195.google.com with SMTP id q10so200464pff.9
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 16:22:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fn8uhj8tc3U3pScoaEkKu7HBQ+Qs1BqmjB6lHJFC6hE=;
 b=WTgUQNbNOZMBoXbyiUP/l3FxRvD+mJU4voy8RFyCINg4cJV5cGpQVRjkYbu8siMnVF
 jvwtXjqzbBsd97JjgLmQ2XEYUgV28uu22WvoyzNjMxDKoK6/2gkH9GEzHCHE0NHEWszB
 KmqD6O/mTFqyVO1r7St4+wAnCW7O910R2Qm0iGOhm7CBaOk7TITGD74sRs7M0nIFfFL8
 qyJGdBrCZN//CKEaWbNT0z+3kvfiw+aH1axtsMEN0wQWGunP00pohGx4AZvRWJxoZoCp
 52K2kSPCsRGJPyqNPOJD5lYV1XjQ4XkXwVlHVBOLbQOqjLQYTexVEayYEFvW8G15Byp3
 hKnw==
X-Gm-Message-State: APjAAAXzmBW6i1K27AvCzpaUZZZHycz6j1aZ4a/WRhGI5Pi+Xy1U9yWk
 TJz8sBg0gK64bJDx39SqAuE=
X-Google-Smtp-Source: APXvYqw6Otr6YJTjtY/OOBjSfZ7I1hNT7sLUZRcJRcDWNwR1ZNzZuSus00kEpYiN835NFFYZuHxFdA==
X-Received: by 2002:a63:8f09:: with SMTP id n9mr40832306pgd.249.1561504971968; 
 Tue, 25 Jun 2019 16:22:51 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id 5sm15215827pfh.109.2019.06.25.16.22.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 16:22:50 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id D058A401EB; Tue, 25 Jun 2019 23:22:49 +0000 (UTC)
Date: Tue, 25 Jun 2019 23:22:49 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 07/18] kunit: test: add initial tests
Message-ID: <20190625232249.GS19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-8-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617082613.109131-8-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_162253_426181_03BAFE74 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com, khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 01:26:02AM -0700, Brendan Higgins wrote:
> diff --git a/kunit/example-test.c b/kunit/example-test.c
> new file mode 100644
> index 0000000000000..f44b8ece488bb
> --- /dev/null
> +++ b/kunit/example-test.c

<-- snip -->

> +/*
> + * This defines a suite or grouping of tests.
> + *
> + * Test cases are defined as belonging to the suite by adding them to
> + * `kunit_cases`.
> + *
> + * Often it is desirable to run some function which will set up things which
> + * will be used by every test; this is accomplished with an `init` function
> + * which runs before each test case is invoked. Similarly, an `exit` function
> + * may be specified which runs after every test case and can be used to for
> + * cleanup. For clarity, running tests in a test module would behave as follows:
> + *

To be clear this is not the kernel module init, but rather the kunit
module init. I think using kmodule would make this clearer to a reader.

> + * module.init(test);
> + * module.test_case[0](test);
> + * module.exit(test);
> + * module.init(test);
> + * module.test_case[1](test);
> + * module.exit(test);
> + * ...;
> + */

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
