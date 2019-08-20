Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8EA9675F
	for <lists+linux-um@lfdr.de>; Tue, 20 Aug 2019 19:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/EtJnaruR7QwyDYNSwgpaXa7DmNhRybnaOV1EHBgvu4=; b=Z1grplQOdFo/mvN6qP/d6HqWw
	hwdONxG4hCeWnpMHxatsP25DOWYPExoPB5+338miiP+geXooa6qHxzRZl2V1/jYZn34wg/8A3SFmB
	wY1diNoZ6k0FRKV1lPqA/R7hpJgogp1j1QyhJMz8h9VB+7zC6xPqvySaEeF2/PLZTPROIRlUnWGeI
	ptejJ3UoG9QUW4GaGNAQMFaA191HuZstMKK1NV7C29+hbN5XHWGXQvD77cZEQb24shDuQcqO6lmVP
	uqwU0r19oPBzMZDTqtinliUBQnCTQVw6gFKUxy+RYIpNt5jj0bqWxYCOVpq2LZ0hkwSuu75L3Yyan
	VeK7wM3tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07sL-0003eG-Fk; Tue, 20 Aug 2019 17:24:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07sI-0003dI-6c
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 17:24:51 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D3702054F;
 Tue, 20 Aug 2019 17:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566321889;
 bh=32bftUSKN3Wtl2ZUSwOigociAvrqIpLWLd4sbLVVuNs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=mNf7pt3nluqjn7wPRl9oxtXsVnuSZaSCBUZomyCyPzzn86pMm1C66eV2ovN537fzs
 twDIX2TwIIhksR2hUFeG2rerO7ZyNg5kILiIjocQMh8JrJt3TqkiQ7ehTmVji22V5G
 ZtcCI3OBDRsHFfQ2uCdN2ixEmqYcj9rmuODIJfnw=
Subject: Re: [PATCH v13 00/18] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, jpoimboe@redhat.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, peterz@infradead.org,
 robh@kernel.org, sboyd@kernel.org, tytso@mit.edu,
 yamada.masahiro@socionext.com
References: <20190814055108.214253-1-brendanhiggins@google.com>
From: shuah <shuah@kernel.org>
Message-ID: <5b880f49-0213-1a6e-9c9f-153e6ab91eeb@kernel.org>
Date: Tue, 20 Aug 2019 11:24:45 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814055108.214253-1-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_102450_444339_0BD24F61 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 linux-kselftest@vger.kernel.org, shuah <shuah@kernel.org>,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, Bjorn Helgaas <bhelgaas@google.com>,
 kunit-dev@googlegroups.com, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 8/13/19 11:50 PM, Brendan Higgins wrote:
> ## TL;DR
> 
> This revision addresses comments from Stephen and Bjorn Helgaas. Most
> changes are pretty minor stuff that doesn't affect the API in anyway.
> One significant change, however, is that I added support for freeing
> kunit_resource managed resources before the test case is finished via
> kunit_resource_destroy(). Additionally, Bjorn pointed out that I broke
> KUnit on certain configurations (like the default one for x86, whoops).
> 
> Based on Stephen's feedback on the previous change, I think we are
> pretty close. I am not expecting any significant changes from here on
> out.
> 

Hi Brendan,

I found checkpatch errors in one or two patches. Can you fix those and
send v14.

thanks,
-- Shuah

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
