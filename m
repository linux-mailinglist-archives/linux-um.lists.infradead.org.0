Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4986A8CC81
	for <lists+linux-um@lfdr.de>; Wed, 14 Aug 2019 09:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4LsaymfnQH/2VQYoSrM1Lybb6V9KTPF92dt7+Lg1yk=; b=h6aztMlWXtmKSL
	poOw2NgIyvhmkrjPwhgHr1U1TBjHhd2AHo4TSBN3PHP2Egnjj2Z3S1gXIz8nvMUmKh110Xo+Awi5g
	7CyRGK519J9YoYC2na2F1vIaVWhcTzRU/Zwgv7PBkqZWzk5nDm7uUaBOC2XcsuQNB3JYC2EKYxAom
	NsZpNNioSRa9ldDvO2R+Xb9FXnjW8EvMKt2BaMBbEzvwjfgkceGdItdk+3TNKFxc5ikufpUqKUkHS
	UUr+Uhz1uj2fsivSwC/KnSt6stLSb1otQHPEbok5FELEbfbKl4ADCn+hWBl4ddDU2YfIcuVBMikAr
	P95EHoHR5HtlhKOlgZEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxnYS-0001w4-Kb; Wed, 14 Aug 2019 07:18:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxnYP-0001uA-BB
 for linux-um@lists.infradead.org; Wed, 14 Aug 2019 07:18:42 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E76072054F;
 Wed, 14 Aug 2019 07:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565767121;
 bh=pa8ZM0cB7Ynd5h1v6jDVACGMr40DuVATemDtrICxNrI=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=gFnMnbltojWFSsXrQHAtHzmV8Q0rNvZIWkw018qtr3Fxuh94zPr/qzmIgXjlo/Pzb
 ueeNYjpdxcdtYM/fj/HS0Gzo8HhvRxS/Pbf3S8gXc0JRsgzdUsUzYLi6pw/xzuct4F
 D32CJqllklCakBmqBQMSV8Swqw4sBNLi+YJG9e0o=
MIME-Version: 1.0
In-Reply-To: <20190814055108.214253-13-brendanhiggins@google.com>
References: <20190814055108.214253-1-brendanhiggins@google.com>
 <20190814055108.214253-13-brendanhiggins@google.com>
Subject: Re: [PATCH v13 12/18] kunit: test: add tests for KUnit managed
 resources
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, shuah@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
User-Agent: alot/0.8.1
Date: Wed, 14 Aug 2019 00:18:40 -0700
Message-Id: <20190814071840.E76072054F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_001841_451308_25BD792D 
X-CRM114-Status: UNSURE (   5.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 Avinash Kondareddy <akndr41@gmail.com>, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-08-13 22:51:02)
> From: Avinash Kondareddy <akndr41@gmail.com>
> 
> Add unit tests for KUnit managed resources. KUnit managed resources
> (struct kunit_resource) are resources that are automatically cleaned up
> at the end of a KUnit test, similar to the concept of devm_* managed
> resources.
> 
> Signed-off-by: Avinash Kondareddy <akndr41@gmail.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
