Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AF755F15
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 04:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iftao7g2deaCfE3tuBKo9bS87Bi06Uj6Hyz34/z0Rm0=; b=HE8ZWLTvVX8qhZ
	nvg/hG8T9dQqduZ4688HaEgJPgGZdTAswh4VzoDWCy5jJVlVzPsukUJ9oEKOWDsTjc2TRsJrgmPgo
	iQktz9xTN/+1xrXWh8Hmj5r0fMd5/mNQTQZUTpiBfNWx6MbK3Zel1PGVlDRtYDR0Bj7KTRELDveLU
	r5ZeEvmyMSznAEDuoEJPawyVNZbU7iwOq99H7o5+qJLpIYhxe0uyC/Kj72ss7+ovHhOzi1h9BjI2Q
	C5pkj6ermeP5+FTDDzETGEDmuIwLbE8UzgpQZMmaCHrWMsX44Lm2iDtWtgas0IFQep82HepFOIKQk
	erQyNmfPorDp8040et/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxpA-0007Id-Nj; Wed, 26 Jun 2019 02:38:16 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxp6-0007Hl-SB
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 02:38:14 +0000
Received: by mail-pl1-f196.google.com with SMTP id e5so503653pls.13
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 19:38:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xyvmsuEmijKSbxFAnA4vq/E+5XBo5Wy44kba2nyP6go=;
 b=Kz20xXPrnRnnaiaTd2r2/sTtAv1SA6ldRbNejlyX4PaifBCPHFfUJHGhJfOl5rnWfS
 Arakf8SRBCA9ARZxPec0XWedX4t1ItFT1zHBKDaYiLGxU7Hs6Tw3YDBBrjxgvIR2MpR7
 oc/hGdJhejt+TVqzdbzHhchTdYRfm1dnUldTXbA69W65JzoQcBhRCJN1mV4sLOKNOQS4
 zcfppZ8inEWzzuCQCDCRWdF5WqPWALilpmO/ipqfVkGqiT7FSeFq8Sn9JebpdI2n0UXV
 rGEs24M0gMSDnpOGTGBv2Kaha513KNBr4uYbkx6haMDCZ9Qn/P+7EsQzM+mmB1LcHKuh
 3ylw==
X-Gm-Message-State: APjAAAW7jq69q2C9z7nRLue9t2FV0bho8XjxhWWOEbyEpH2DhR9Si5XG
 WFlX8lkmHdYTWfV4P769jr8=
X-Google-Smtp-Source: APXvYqzDq44Q6ELr7lMNQzzU3Ay+P/NMrvUlNETj0hOmt7FHk+liK3UY9V/aPmtCKjArXN7tpqRtdw==
X-Received: by 2002:a17:902:e512:: with SMTP id
 ck18mr2107905plb.53.1561516691699; 
 Tue, 25 Jun 2019 19:38:11 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id a16sm20081945pfd.68.2019.06.25.19.38.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 19:38:10 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id BC94340336; Wed, 26 Jun 2019 02:38:09 +0000 (UTC)
Date: Wed, 26 Jun 2019 02:38:09 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v5 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
Message-ID: <20190626023809.GW19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <10feac3e-7621-65e5-fbf0-9c63fcbe09c9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10feac3e-7621-65e5-fbf0-9c63fcbe09c9@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_193812_906406_B63D99A8 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
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
 amir73il@gmail.com, Brendan Higgins <brendanhiggins@google.com>,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 yamada.masahiro@socionext.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 kieran.bingham@ideasonboard.com, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 jpoimboe@redhat.com, kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at,
 sboyd@kernel.org, gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 06:17:51PM -0700, Frank Rowand wrote:
> It does not matter whether KUnit provides additional things, relative
> to kselftest.  The point I was making is that there appears to be
> _some_ overlap between kselftest and KUnit, and if there is overlap
> then it is worth considering whether the overlap can be unified instead
> of duplicated.

From my experience as an author of several kselftests drivers, one
faily complex, and after reviewing the sysctl kunit test module, I
disagree with this.

Even if there were an overlap, I'd say let the best test harness win.
Just as we have different LSMs that do something similar.

But this is not about that though. Although both are testing code,
they do so in *very* different ways.

The design philosophy and architecture are fundamentally different. The
*only* thing I can think of where there is overlap is that both can test
similar code paths. Beyond that, the layout of how one itemizes tests
could be borrowed, but that would be up to each kselftest author to
decide, in fact some ksefltests do exist which follow similar pattern of
itemizing test cases and running them. Kunit just provides a proper
framework to do this easily but also with a focus on UML. This last
aspect makes kselftests fundamentally orthogonal from an architecture /
design perspective.

After careful review, I cannot personally identify what could be shared
at this point. Can you? If you did identify one part, how do you
recommend to share it?

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
