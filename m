Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555A560C47
	for <lists+linux-um@lfdr.de>; Fri,  5 Jul 2019 22:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyPFOoYE7weLUfReavw4B9qUY0Prtl3cj2W5a1dMG8U=; b=UhmBJOmhpkE8ud
	xGs+qDj7ULg+hvSv7rhBUsrvTvJ0n1+4/wPpXKoUrvCFL2SMil/CoyLZoSgvzzn5J91wX1ujmdwy9
	VQF2CjQT4mlJNnCnMSSU7kV9rod10r9ueC3qVeY9Em0gNrcypjIKECcMXwNAQhWhd76mPEsLbRdVO
	onmdHI4RLosmw0DX0O8/odGxc3OG2dS6jODMxxoDNaH5XdoMdgWf0pR/CitVi5z1d0tC0zUMQt0Pp
	m1606zYT+7yArsHkuqU7IevpxV4z5Gd1IzoXA5LgeIsMYdg28fXCixwQsrAJJIhK21Pnf2q720Jyk
	W0Pq5cjSkfDPv61GSBGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjUhW-0001Hm-4f; Fri, 05 Jul 2019 20:20:58 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjUhS-0001Gr-Mi
 for linux-um@lists.infradead.org; Fri, 05 Jul 2019 20:20:55 +0000
Received: by mail-pf1-f195.google.com with SMTP id u14so3555764pfn.2
 for <linux-um@lists.infradead.org>; Fri, 05 Jul 2019 13:20:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=25Gxg4cOnHkRGBzoLvP39q6ZGr7xTfO8zZqC3Dmp4ao=;
 b=cK9LGS5fAM4SmFQGpHd3uDTlXyxKpT27oTHmzy98B5xGe0G1/gQBFFJ3k6mR9Acaj4
 dIneiLetFDxckUtpc0DKhSNqeRooFWFfsr0YYaoWBZsofjvyKrD2BFkKH96yDgauTm8I
 sKxJQZqbDBppAXy34Nh6pQmpgiq2LUxDOWX5hqafzxpiQrTYmUA61oqVWzKQ0D6Z50yi
 L2oDHaRwJCZfjxvQl3fGSC1ax/J2WOpgHCmvgbsNKmfW5N5vgBFDMKDHTBFCUG81r25g
 CH0r9+/JKvO4y1X0cEQex4+++2xUe+DkQOJQzitwQUCumay5Z7xNLetIDPOzzCZtJPRV
 pNfA==
X-Gm-Message-State: APjAAAUEpauCVYDTHCFGFsUA4brQmZBnY8YULUZ9tRet04078tExHqg9
 //CLSeZVHAPd88X9jfhPeQ4=
X-Google-Smtp-Source: APXvYqzDgP2UvvEnLjwLbSAV5+PRQhqdSDKK5VAZmMuJMa1jdDqx9hxhnLoRC5+cLLJisPXah8LMOQ==
X-Received: by 2002:a63:e506:: with SMTP id r6mr7427654pgh.324.1562358053447; 
 Fri, 05 Jul 2019 13:20:53 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id r188sm18308824pfr.16.2019.07.05.13.20.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 13:20:52 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id A47FE40190; Fri,  5 Jul 2019 20:20:51 +0000 (UTC)
Date: Fri, 5 Jul 2019 20:20:51 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v6 01/18] kunit: test: add KUnit test runner core
Message-ID: <20190705202051.GB19023@42.do-not-panic.com>
References: <20190704003615.204860-1-brendanhiggins@google.com>
 <20190704003615.204860-2-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704003615.204860-2-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_132054_743155_5298C3B8 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Wed, Jul 03, 2019 at 05:35:58PM -0700, Brendan Higgins wrote:
> +struct kunit {
> +	void *priv;
> +
> +	/* private: internal use only. */
> +	const char *name; /* Read only after initialization! */
> +	bool success; /* Read only after test_case finishes! */
> +};

No lock attribute above.

> +void kunit_init_test(struct kunit *test, const char *name)
> +{
> +	spin_lock_init(&test->lock);
> +	test->name = name;
> +	test->success = true;
> +}

And yet here you initialize a spin lock... This won't compile. Seems
you forgot to remove this line. So I guess a re-spin is better.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
