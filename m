Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB40CD42F
	for <lists+linux-um@lfdr.de>; Sun,  6 Oct 2019 19:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtRASVjzTVTY7XcTOr7I5O40NKP5NnBGgZJpEw01PFo=; b=j7FMUINoKYJeLs
	/OvFabkK3YoHl4Ghj2TISUetFGuUH2c6Fc9+FFVn+8PveS3P6iBfqnpWzIRdrHvf0HEyPEdSk6aGs
	UXMhtfAGMp3vRaO7zxDrTDOhOD/xkJqkeshJI8IbQCYmLbXAxXnkCY+QwJF39/H4cSkS/Xi5pFS90
	FovrAjssYikiybuLHSKmDBtK+WZpGPjTdGK8MGdCWJJMLg5+GHCdnu15j5oKD6F3zsoQd+lSTzLfZ
	SWRfdc43cy60zHEOjPRpkDPgAu7taD0wFTpAnAmKfl7wu3svkMJoCZVsLh78ouvMh5RWu4gg01PU5
	kMO9dQO9J5lBoPw1/Ajg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHAGm-0007Zu-Q3; Sun, 06 Oct 2019 17:24:32 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHAGj-0007Z9-5l
 for linux-um@lists.infradead.org; Sun, 06 Oct 2019 17:24:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id 7so11224535ljw.7
 for <linux-um@lists.infradead.org>; Sun, 06 Oct 2019 10:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nqhtcbRfDvEQJJkAJFzv4RBTuiXKftvmCXLEi1f3srQ=;
 b=RFX9iEr5oOWgtzp3IBXT04OndQR1DU0EDSHmP2z8P81qc5WnlH3q3z+H6Fn+Q2bRDQ
 H0mj8t0g+mmdm8jwf4l9ysW9y9jx14fPTmNboT3xsSFw9Hg+XXFMXj7P26RjheVyaX4i
 ysqZhaJqY2V93IZXO8nKnxagXIV7guXuOEkKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nqhtcbRfDvEQJJkAJFzv4RBTuiXKftvmCXLEi1f3srQ=;
 b=tS2EFTUDueP6ZcMQqVhoFVRm62Men3cBpUuy9pFrH5gT7TSBjyYg24RjE0eFTvYWlz
 kl4VzcSbT+t1A6lIjGEKVMhv8cfVimV/ahhjCtKvWqhjUNfUztTWXhdzBC0DuPgt9X6S
 /HVHVVAF8eviVxDR0+5pA/9GxhyynblX7+LfCNgOPgP4yuvMTI7m2vq7xzLA1s85jVYp
 9jBe7kaf2voOboNgrAEJMPVpFTXUQ5UbxY/HIM5iuiXZU1Ch+knjIQMwk8nysgxzVLPg
 3h45AzLmNBnfYDxph2cBPgx2ySNmSs6U4ftKALiog//h1dDKDkm1JOT4nqZc+oDozjrY
 +bJA==
X-Gm-Message-State: APjAAAWTYH9vFSpmq8JhO0hSXU/h6GlSOS9kbf2Yd9pbd6fE8R7Hl9yY
 JnODiW74HkScYipUQnbjm9xF/VXtbmM=
X-Google-Smtp-Source: APXvYqzM0t84EfLONAEc+NdEFNLwFsf2D+9anEGa59ocn0uNTvHx2KPl7zQM1QaeXCcQHIg06MYjVg==
X-Received: by 2002:a2e:412:: with SMTP id 18mr15995337lje.96.1570382666117;
 Sun, 06 Oct 2019 10:24:26 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com.
 [209.85.167.48])
 by smtp.gmail.com with ESMTPSA id u21sm2753474lje.92.2019.10.06.10.24.25
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Oct 2019 10:24:25 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id y127so7667765lfc.0
 for <linux-um@lists.infradead.org>; Sun, 06 Oct 2019 10:24:25 -0700 (PDT)
X-Received: by 2002:a19:741a:: with SMTP id v26mr14509292lfe.79.1570382307072; 
 Sun, 06 Oct 2019 10:18:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=whX-JbpM2Sc85epng_GAgGGzxRAJ2SSKkMf9N1Lsqe+OA@mail.gmail.com>
 <56e2e1a7-f8fe-765b-8452-1710b41895bf@kernel.org>
 <20191004222714.GA107737@google.com>
 <ad800337-1ae2-49d2-e715-aa1974e28a10@kernel.org>
 <20191004232955.GC12012@mit.edu>
 <CAFd5g456rBSp177EkYAwsF+KZ0rxJa90mzUpW2M3R7tWbMAh9Q@mail.gmail.com>
 <63e59b0b-b51e-01f4-6359-a134a1f903fd@kernel.org>
 <CAFd5g47wji3T9RFmqBwt+jPY0tb83y46oj_ttOq=rTX_N1Ggyg@mail.gmail.com>
 <544bdfcb-fb35-5008-ec94-8d404a08fd14@kernel.org>
 <CAFd5g467PkfELixpU0JbaepEAAD_ugAA340-uORngC-eXsQQ-g@mail.gmail.com>
 <20191006165436.GA29585@mit.edu>
In-Reply-To: <20191006165436.GA29585@mit.edu>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 6 Oct 2019 10:18:11 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjcJxypxUOSF-jc=SQKT1CrOoTMyT7soYzbvK3965JmCA@mail.gmail.com>
Message-ID: <CAHk-=wjcJxypxUOSF-jc=SQKT1CrOoTMyT7soYzbvK3965JmCA@mail.gmail.com>
Subject: Re: [PATCH v18 00/19] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: "Theodore Y. Ts'o" <tytso@mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_102429_239705_3091A946 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, shuah <shuah@kernel.org>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Oct 6, 2019 at 9:55 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> Well, one thing we *can* do is if (a) if we can create a kselftest
> branch which we know is stable and won't change, and (b) we can get
> assurances that Linus *will* accept that branch during the next merge
> window, those subsystems which want to use kself test can simply pull
> it into their tree.

Yes.

At the same time, I don't think it needs to be even that fancy. Even
if it's not a stable branch that gets shared between different
developers, it would be good to just have people do a "let's try this"
throw-away branch to use the kunit functionality and verify that
"yeah, this is fairly convenient for ext4".

It doesn't have to be merged in that form, but just confirmation that
the infrastructure is helpful before it gets merged would be good.

               Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
