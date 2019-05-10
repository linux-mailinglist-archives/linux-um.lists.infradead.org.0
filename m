Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B2B1A45A
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 23:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3RzXgqj8yZpxAE9z4OC6Av3qYD3E8NpZUtc6lBJ4Fdc=; b=siD1JavfUaCqLnTZZeIMu27dVF
	ItZqH+Vfb5WXZG5LjntSmCVC9lUOvneqoBKAXNShyQYNdu3+es4XVLFNS6o2Fei7n2u62/X0QbqnW
	j5BjclSRkpIKAhjkt2ZVOiVSIGB661ghOpdYAmfcFuv/PkRyVowZIlODjO9Vp8L0/kAQPo2nFERiI
	LvWxG4z6Qx7tFxDTDGe7xXpylOBqPGih0IkUetcGrNKtR1oouhfUt4kT3QTIxC/WX6brtuBaEqOwX
	YfaONrC0uyIJNGAVbzOJtQIMhC4NFEO+WWKSBCqE2f9JemOhzAOS0/PN95e93v72yS88pLs/Hvmot
	sqVyUW4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPCox-0008Jk-4h; Fri, 10 May 2019 21:12:47 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPCou-0008Iw-9j
 for linux-um@lists.infradead.org; Fri, 10 May 2019 21:12:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id 13so3841066pfw.9
 for <linux-um@lists.infradead.org>; Fri, 10 May 2019 14:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=+ESw1rm0vOQ8XrrTL92EUV44kZc8ZXapKKTT6DaubOw=;
 b=abQaEAUT/PwZVqII0uePTmS9FBR01d5OlkiCxRNEH2BX3NkEApVpdySLV3IoMgo3eE
 MP1rCnCnuCPSjhTkzHIQIu9EjwponUbG5NaVheL2B404JO3C7VDo9y+Mqy+KY7Lg/zk4
 HZTfCWvMUNfLp0nVXqu1vIXWG6DicO5EafSNtq2E9JGj8YNzk+9a7zc27b0qnafPNljm
 IM58BuLw+T91Vgkv/o68Z8iYzoCT3SgFEQ+60d0CSXdbj6HfDIyr/aisHXQJRc+XYuor
 tOktoH4JOGyFwmXPs1QyTI/Nhvaq7L9FFdinnXWtQ6JoCZdVbpWiloLrGBNB+AoVHD1q
 8ApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+ESw1rm0vOQ8XrrTL92EUV44kZc8ZXapKKTT6DaubOw=;
 b=MaSyY4tXpwlMbw8VvS57YPUoowWHcLE0RtHatP3tKtYvKBoM3SAikQ8EQtnjS7H3kZ
 HcSnyv/4Qa7LqluxmrEsoY9/64+XLA6NSMmtbocdyCCu31S3tRTH0LK4jSwZBJXPBZ5G
 Peho5ZWBfrBZJUeq1lkj2abdJbEEvUw6aOl+zesTR2nubd+UDvJlEsGL/SqjRPJfJliV
 /IuzfHPqLOqg+8AeWs7jkCAa6f8cEsFkgHydgSkblAQ94Q9uJMKoyZ5BeMApIIE+TWE4
 jp3sd0vHF6nuHPNVi5SJ50KmSEFQbIzWfiA8uVU+XtoeRdCCo+dKTBF0YNRWDM6FMbL4
 LxTA==
X-Gm-Message-State: APjAAAVGdXN4b5fByFSJWNjdLm0I2rtEhdSCtxs5u5KakFiWVe44JjhK
 iWFGQge4n/Jpbw/jvzRahUk=
X-Google-Smtp-Source: APXvYqwYkJPgFPW1Q2jECQKvaMp3I+Sd6dA//ZzL+oYRc3FbXlWvh0CqFEtZZOyMry0CoGOK+X3rcA==
X-Received: by 2002:a62:6842:: with SMTP id d63mr17487032pfc.9.1557522763176; 
 Fri, 10 May 2019 14:12:43 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id r8sm7860997pfn.11.2019.05.10.14.12.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 14:12:42 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Theodore Ts'o <tytso@mit.edu>, Tim.Bird@sony.com, knut.omang@oracle.com,
 gregkh@linuxfoundation.org, brendanhiggins@google.com, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-um@lists.infradead.org, Alexander.Levin@microsoft.com,
 amir73il@gmail.com, dan.carpenter@oracle.com, dan.j.williams@intel.com,
 daniel@ffwll.ch, jdike@addtoit.com, joel@jms.id.au, julia.lawall@lip6.fr,
 khilman@baylibre.com, logang@deltatee.com, mpe@ellerman.id.au,
 pmladek@suse.com, richard@nod.at, rientjes@google.com, rostedt@goodmis.org,
 wfg@linux.intel.com
References: <54940124-50df-16ec-1a32-ad794ee05da7@gmail.com>
 <20190507080119.GB28121@kroah.com>
 <a09a7e0e-9894-8c1a-34eb-fc482b1759d0@gmail.com>
 <20190509015856.GB7031@mit.edu>
 <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <20190509032017.GA29703@mit.edu>
 <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <80c72e64-2665-bd51-f78c-97f50f9a53ba@gmail.com>
Date: Fri, 10 May 2019 14:12:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509214233.GA20877@mit.edu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_141244_366856_2E369EDB 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/9/19 2:42 PM, Theodore Ts'o wrote:
> On Thu, May 09, 2019 at 11:12:12AM -0700, Frank Rowand wrote:
>>
>>    "My understanding is that the intent of KUnit is to avoid booting a kernel on
>>    real hardware or in a virtual machine.  That seems to be a matter of semantics
>>    to me because isn't invoking a UML Linux just running the Linux kernel in
>>    a different form of virtualization?
>>
>>    So I do not understand why KUnit is an improvement over kselftest.
>>
>>    ...
>>
>>    What am I missing?"
> 
> One major difference: kselftest requires a userspace environment; it
> starts systemd, requires a root file system from which you can load
> modules, etc.  Kunit doesn't require a root file system; doesn't
> require that you start systemd; doesn't allow you to run arbitrary
> perl, python, bash, etc. scripts.  As such, it's much lighter weight
> than kselftest, and will have much less overhead before you can start
> running tests.  So it's not really the same kind of virtualization.
> 
> Does this help?
> 
> 					- Ted
> 

I'm back to reply to this subthread, after a delay, as promised.

That is the type of information that I was looking for, so
thank you for the reply.

However, the reply is incorrect.  Kselftest in-kernel tests (which
is the context here) can be configured as built in instead of as
a module, and built in a UML kernel.  The UML kernel can boot,
running the in-kernel tests before UML attempts to invoke the
init process.

No userspace environment needed.  So exactly the same overhead
as KUnit when invoked in that manner.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
