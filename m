Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312171E611
	for <lists+linux-um@lfdr.de>; Wed, 15 May 2019 02:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yMEFJncS8PU4+cMhHsSuWDIseCrIlBuu5FankBec5lc=; b=pB5z6x9g7U8q4PtPR4Rcyg+nNB
	HcIm21THhCu78cksATcrVC1V5+Ba5PnW0jSMd7UppoyRY+vwSWkSidEzZtTf8bSFfLQukfjLmNBS4
	7HBbBxiE/i1QRqb9Zuviar9jxyWdBn72xBGxKyGmX2/Qjvb9ewzdiIIk/maGcjLSe8QLRu5QoBMfw
	0Wpib9sgjr5XTxJaRP9d6zhDMy7ar888p4vEYRnJvToi5yI7xhAMQNH2rHWjZ+X61YxaSZy91sbWe
	30X3nrfN/ThlNqKPowMvWVKn6CC90BGIJS0tOe3jv/zS8c7CGM285CfsRSxqorjkf5CvSQb1MAf/N
	VakEcmjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhl1-0002PM-Qr; Wed, 15 May 2019 00:26:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhky-0002Os-OW
 for linux-um@lists.infradead.org; Wed, 15 May 2019 00:26:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so354635pfm.12
 for <linux-um@lists.infradead.org>; Tue, 14 May 2019 17:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ypDVsaFFOykr6yuKVx2k2XaJyOr+u5tERYjVpiOjyiw=;
 b=IuVZ2l4O+MIDyXpYgUM5qQQYoX7Y/sJsvGPvmvehKAC4lwwIGDudhzngFBjnRWN5ci
 k8JCzwMxo0FPATgnUf4u2R2YAGB3ucoMe6dvaUUgS8cW7nlEYr0d+QFwmikIyWdOae9X
 BS5/vwSRCViiC8xY3hAHYh4bpV2zhvnq0blTNTPWsFb+XmhdfxM+Bo2jZReJurV/GrST
 8fIBxa0ZCqTTyE7l8H4cMfsveUZmMSCHTxDv7jz/q6pmMaZ1VAUfFLnS/1mPPZOC7zye
 iSrgkJ/pxklMI6fKQALs4Yf/9f1VNfTv8Na0CM/+Hu116UCn5U7KYQb+xYIHEY5zeGUw
 h+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ypDVsaFFOykr6yuKVx2k2XaJyOr+u5tERYjVpiOjyiw=;
 b=WGGkAs8V1+RzIj1CR5rCpHHf2/A1bar50fpcPw+HbwTjKa8ETSYY418NKWTXGgqZt9
 vyn+ByZDAVmckW6+bns3kjA48JNopdCbSHpKmNtm0DKwah3bTmzZQmMN7wQv7Hoi6X5C
 E0p+EALdfe2THnnvHu3cYLBOERzsOVFpWU0J982/T7FnzRVS0pCBY74CtBf+5r1oCTMe
 VVEeeyr5brEuuusM3VlnOax2gOFJyBTEEQ+aA5k3VUTFdQnv+Ox67ESETqM/EZ1VHPb9
 gPj7paoMCVJ7Njc5WOSP+BCcNBrcJs9TERjgTKAFyHR54lGwpv19elaVK6qJ5y17ujFy
 4/FQ==
X-Gm-Message-State: APjAAAV2kZWgx5i84DeNnL5wRuCZUQwIeY6r0WH1rxdSxz5I06o8eZFY
 AyTcb1XzJx9x/b5odyyoq84=
X-Google-Smtp-Source: APXvYqzd3JNtsP3FkyXRtoQpQjmSxi6gP+3fyLytxrHZq7D+o9iT6N45YBj70jF10Gduz840x4f9ig==
X-Received: by 2002:a63:1c4:: with SMTP id 187mr13725679pgb.317.1557880010775; 
 Tue, 14 May 2019 17:26:50 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id 204sm272559pgh.50.2019.05.14.17.26.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 17:26:50 -0700 (PDT)
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
References: <a09a7e0e-9894-8c1a-34eb-fc482b1759d0@gmail.com>
 <20190509015856.GB7031@mit.edu>
 <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <20190509032017.GA29703@mit.edu>
 <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
 <80c72e64-2665-bd51-f78c-97f50f9a53ba@gmail.com>
 <20190511173344.GA8507@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <a305c732-9953-8724-b4a4-25aa50c89365@gmail.com>
Date: Tue, 14 May 2019 17:26:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511173344.GA8507@mit.edu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_172652_800603_6DB76006 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 5/11/19 10:33 AM, Theodore Ts'o wrote:
> On Fri, May 10, 2019 at 02:12:40PM -0700, Frank Rowand wrote:
>> However, the reply is incorrect.  Kselftest in-kernel tests (which
>> is the context here) can be configured as built in instead of as
>> a module, and built in a UML kernel.  The UML kernel can boot,
>> running the in-kernel tests before UML attempts to invoke the
>> init process.
> 
> Um, Citation needed?

The paragraph that you quoted tells you exactly how to run a kselftest
in-kernel test in a UML kernel.  Just to what that paragraph says.


> 
> I don't see any evidence for this in the kselftest documentation, nor
> do I see any evidence of this in the kselftest Makefiles.
> 
> There exists test modules in the kernel that run before the init
> scripts run --- but that's not strictly speaking part of kselftests,
> and do not have any kind of infrastructure.  As noted, the
> kselftests_harness header file fundamentally assumes that you are
> running test code in userspace.

You are ignoring the kselftest in-kernel tests.

We are talking in circles.  I'm done with this thread.

-Frank

> 
> 				- Ted
> .
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
