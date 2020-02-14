Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D70EE15D35F
	for <lists+linux-um@lfdr.de>; Fri, 14 Feb 2020 09:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EYCxVkvw/g83F/SF5j38vWvc2Q6RdIiat2s1wJ6s+g=; b=Y2/pLVXnHeP+UQ
	50sOXy+dk5s/JxTEsJtsqf8BrQsNSjzbXs2FiKDGKu3dmnINwq/g8JJKhw4XIGfTNR8i+vixAqZ0Q
	7O2aEqG9XjSN5vfz4/28dpHWiBwyfSeBuBpSNUvYcujQ55PIWjrS9kFbPxI+rYNVmDJ58mnRKvBvt
	KNUXNljvl97tBAWgC1P3VBTtSmIYn4W4aE62ylpIbc4ZYmfV0hxBJBl1tfJt5EiVgs4bONk8V1uud
	vJ/PR5RPmFyGQLEqPm2HZgP2ro9OtfbdpRWOZl7ErpLzLcyYZl1W0egyAtsnxdfjhg8K6yZAdwerc
	3QRTr3e+p8yX/ykXaRxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2W0r-0002Eh-HC; Fri, 14 Feb 2020 08:07:49 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2W0o-0002Dx-Aa
 for linux-um@lists.infradead.org; Fri, 14 Feb 2020 08:07:48 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1j2W0W-00B5oY-In; Fri, 14 Feb 2020 09:07:28 +0100
Message-ID: <d8151ac6b1e590d6c49d8c890604a08685cd2303.camel@sipsolutions.net>
Subject: Re: [RFC PATCH v2] UML: add support for KASAN under x86_64
From: Johannes Berg <johannes@sipsolutions.net>
To: Patricia Alfonso <trishalfonso@google.com>
Date: Fri, 14 Feb 2020 09:07:27 +0100
In-Reply-To: <CAKFsvULfrFC_t4CJN5evwu3EnbzbVF1UGs30uHc1Jad-Sd=s9Q@mail.gmail.com>
 (sfid-20200214_015457_457274_397896E3)
References: <20200210225806.249297-1-trishalfonso@google.com>
 <13b0ea0caff576e7944e4f9b91560bf46ac9caf0.camel@sipsolutions.net>
 <CAKFsvUKaixKXbUqvVvjzjkty26GS+Ckshg2t7-+erqiN2LVS-g@mail.gmail.com>
 <e8a45358b273f0d62c42f83d99c1b50a1608929d.camel@sipsolutions.net>
 <CAKFsvULfrFC_t4CJN5evwu3EnbzbVF1UGs30uHc1Jad-Sd=s9Q@mail.gmail.com>
 (sfid-20200214_015457_457274_397896E3)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_000746_366132_8E4400D0 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 2020-02-13 at 16:54 -0800, Patricia Alfonso wrote:

> Okay, so I'll rebase onto (1) and just add the lines I need from the
> [DEMO]. Are you sure you don't want to be named as a co-developed-by
> at least?

Yeah ... it's like 3 lines of code? Don't worry about it :)

> Yeah, failing loudly does seem to be the best option here.

I just ran into that with userspace ASAN yesterday for some reason, so
yeah.

Perhaps good to tell people what to do - I couldn't actually solve the
issue I had in userspace yesterday. Here, could tell people to check the
address where it's mapped, or so?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
