Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4C315BAF5
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 09:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArRBmRv44C42+i0adr53iSMuaQG95DEMNYWsZDZR2ZA=; b=uogQAz+bK+glS2
	a2d0ZZ5XFHP7krGseLA0efRnSRr8lCEaIycCXZOIFPNZ8mSpnxSKwDq1Fhhmf6FlS2x3bjQSMfvKH
	KoYgdW3N6qmMgCPKA2pAX56abZPqALU+hzJ6zc1WhwzyYsjOaV86n0SJIt+dYzOXxUjuOL2trRx8S
	NV/hGj4Tlo11FSbdIgtsVWsY0ILfy6r1cKgHVBYdPGPjKZa2Y/ZkJxIBFFupem9fivZi0slxqAjFo
	TQGlXhcYnDgHnLmHw/VOozrVSUqs2gDudP35Dx2h7kz4RP+rWl5tL8/HaOTA5fs+p1pAXZK8BqdZA
	6pDzNxgIoStGSwHrYdHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2A7D-0000t1-JU; Thu, 13 Feb 2020 08:44:55 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2A7A-0000sA-R1
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 08:44:54 +0000
Received: by mail-qt1-x844.google.com with SMTP id c5so3811343qtj.6
 for <linux-um@lists.infradead.org>; Thu, 13 Feb 2020 00:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KOSVM3SCrmejITCMr3GluXgYMymHjzYiqiilJMCtfIo=;
 b=NPtaUJUrHrgkXufReVIevgow9DgZl2OKuyPO8hT6d+F7xLGlqPXjQh/3lcHQQlw6Ai
 P7LyDIUQM8v6bMydOpYp6lGLTQTuYskdEkSfgYDRV5OSzBxsf8y001ygJgNSwxx5/YON
 32oVmuKlslI3S7NGNaaCgn4PrGeySYRDP1pThEOrV0H4dszmfQ+mjkn2ioQTX4FHGxih
 T5dVeKVECRVjebE+UEmRT4VG18wci/MtxXD+cvaHnE2y53WnfOwOo5VX/ShWB4rcRk6h
 JIRRGUPe6raHp0YkROsKIBiTGim39fD2i6vuzecV+d+bDQBVi3ve4KvoxWWtWOEksW7G
 gm0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KOSVM3SCrmejITCMr3GluXgYMymHjzYiqiilJMCtfIo=;
 b=f6d9NN3qJY1lZmgyD20DO1l2dKHU89rAF5k2eY5uz7IaGK8CJ1vYSlYCmdrYgcI4pu
 onoiS61veN/cm6CqLB9/a9qlnA8ERbZ2bJm+WFGK0iCfsZQI0RwqjwrGNYroCQE6a2TB
 hmNjW0cSVgZuxRVTCAIDfHBF9CRp2lw4lB0/LmtokMYR/cm43RRFSD7xDp6SGPJw2CCR
 OoTX4yYFA8FvYdcEyBFZ0l0O5VSVJ3ozgP+are4A5Tzagpt/0ojGdlj7G15SpXcL1wx+
 QezlrwO9SYkzOHhJKQaZwRVxUBi/rQWklKRBlk6IsKoa2xuK2euYzCLOAPjlLgzYEIS2
 H0Aw==
X-Gm-Message-State: APjAAAXvo59CzKTBWMbDM1540h+lJp+mBj3RYkUZwpgusez+mj23A3JF
 ZXZZprxrtSqsbSaO/O4YNIEaTf7Vi/B4XJqdASluUQ==
X-Google-Smtp-Source: APXvYqwTXPB+FUSQKadoYbcOvs7B3qGJ4Mo5mlSnKnJ0BfgU7IBIkH5raq8Z2SPywrGqXYc2w/C48w5J6X39jBMYPTg=
X-Received: by 2002:aed:36a5:: with SMTP id f34mr10288280qtb.57.1581583489053; 
 Thu, 13 Feb 2020 00:44:49 -0800 (PST)
MIME-Version: 1.0
References: <20200210225806.249297-1-trishalfonso@google.com>
 <13b0ea0caff576e7944e4f9b91560bf46ac9caf0.camel@sipsolutions.net>
 <CAKFsvUKaixKXbUqvVvjzjkty26GS+Ckshg2t7-+erqiN2LVS-g@mail.gmail.com>
 <e8a45358b273f0d62c42f83d99c1b50a1608929d.camel@sipsolutions.net>
In-Reply-To: <e8a45358b273f0d62c42f83d99c1b50a1608929d.camel@sipsolutions.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 13 Feb 2020 09:44:37 +0100
Message-ID: <CACT4Y+ZB3QwzeogxVFVXW_z=eE2n5fQxj7iYq9-Jw68zdS=mUA@mail.gmail.com>
Subject: Re: [RFC PATCH v2] UML: add support for KASAN under x86_64
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_004452_903303_151952C6 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
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
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 9:19 AM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Wed, 2020-02-12 at 16:37 -0800, Patricia Alfonso wrote:
> >
> > > That also means if I have say 512MB memory allocated for UML, KASAN will
> > > use an *additional* 64, unlike on a "real" system, where KASAN will take
> > > about 1/8th of the available physical memory, right?
> > >
> > Currently, the amount of shadow memory allocated is a constant based
> > on the amount of user space address space in x86_64 since this is the
> > host architecture I have focused on.
>
> Right, but again like below - that's just mapped, not actually used. But
> as far as I can tell, once you actually start running and potentially
> use all of your mem=1024 (MB), you'll actually also use another 128MB on
> the KASAN shadow, right?
>
> Unlike, say, a real x86_64 machine where if you just have 1024 MB
> physical memory, the KASAN shadow will have to fit into that as well.

Depends on what you mean by "real" :)
Real user-space ASAN will also reserve 1/8th of 47-bit VA on start
(16TB). This implementation seems to be much closer to user-space ASAN
rather than to x86_64 KASAN (in particular it seems to be mostly
portable across archs and is not really x86-specific, which is good).
I think it's reasonable and good, but the implementation difference
with other kernel arches may be worth noting somewhere in comments.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
