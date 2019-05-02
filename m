Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0731312407
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 23:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UusQrn42CFd/aIVnZomlmbrlBjq4izkSj/ICDYRueLg=; b=iGeaq8uneOItRc
	mOvFeXNd9390Oji05kTQ7ouDPVLIHrncPthx5ZfhN7k3+scI1fyaErQGaVeweg6A6N9m3pZksIcfE
	TklIStEZVPmc3/sCG9vdnCiqTvgA4mSpAOOlpfY7xQmpBckcIJfY3WGn/R7THF9f1xQnWi8nCqZ+b
	uvoiv7Vei586pHLCcAqooBBXpIbFyGoXBjD/z0n2fh5S4ghUqmS5QSzqNKvphARZperO879BN93oS
	UIFdoY3XHMHEj/NdJcaQHeHqSMXa9h/8Yaud6ivQcjvGcETT2T88PJyoxHfMRm8JVyDcA3WcX7TBn
	fe3cJDc5ZY9YOEOKRVDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMJ6a-00084b-8k; Thu, 02 May 2019 21:19:00 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMJ6X-00084E-Gm
 for linux-um@lists.infradead.org; Thu, 02 May 2019 21:18:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id h1so1640281pgs.2
 for <linux-um@lists.infradead.org>; Thu, 02 May 2019 14:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IMDXeiJnZScTm/Z2fnilFyDCMvT/so814pMi9HZOjlE=;
 b=F6aEAFFTMEY1A2qy1v4j/PN2GP6GkE/6G2UBiv6QtH3csxGy/tWQz9UyALBQT0H1TD
 MeqU6hM9umqY0cg0Apce+C6xD7p/xobhUeh9MvWiRshhDTYwjMCFPRJXDlmB1nI2J9BP
 OzIBfpWyS6JYvMDV31/EOZgJHoSWDTYYtNA+I4V1u8ppBrJn22kX8LSoN6iqCo9WhEY7
 d+Gb6Xl5Xs5otxILTZsg9XkKBj+kf5e2zhHYN3mehnTBbPBGx+Rmo9Huu3e7g+KZRBMy
 FLtK+ZKMR1Bm1xie5Eekig7pGAK9pe7NuFPMeA4bw49W6KmIoFN+i8IYZC8Mr/CFaKXa
 I9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IMDXeiJnZScTm/Z2fnilFyDCMvT/so814pMi9HZOjlE=;
 b=kEBugNWuMlb/6nsRSpswI1PB1IBbQJtj33uACdTN9CGyCZ0/0Ks+2kffBPTrKT8gzJ
 is73M3vf6i1SUIY3tYYG4fojTeC5n9iAm6+6tjylZDm9/37wQuYxLrx2KPtOwAknXk2A
 XfQ/qZq7a3UQrvbVGeCEPq/XLz5MC3s9CwEI3TacQymdjCTySSNXLet1gmDEB2lAuDve
 IaPJvv8ANEwbjeRzgMoqi/x9alCMl0sTJn/AEWTu7wm/0goKPDumddXBHWVZ3V9GSKqR
 /lAxEvpCqzNKYCht2QhQ8NE4BP8u6eVLbr5+hGb/D3wvAVWyQ5AFIQNsoazlAxMG4F9b
 IzKw==
X-Gm-Message-State: APjAAAVZMgf24f7YKXU+VMpkEzby4FAdC1tK9pz3Ne1xCToxo228q/YE
 c1WJhUf/ISbykGMnYW9UkBc=
X-Google-Smtp-Source: APXvYqyX3j/ct3IijwmpxxuiCJMGeDGeHP5eVJgN3Sl6Ovmj2WM37sI+ZAhRzZjNxXrFUHk4WRTuBA==
X-Received: by 2002:a65:5089:: with SMTP id r9mr6248599pgp.14.1556831937028;
 Thu, 02 May 2019 14:18:57 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id l1sm232976pgp.9.2019.05.02.14.18.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 14:18:56 -0700 (PDT)
Subject: Re: [PATCH v2 04/17] kunit: test: add kunit_stream a std::stream like
 logger
To: Brendan Higgins <brendanhiggins@google.com>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-5-brendanhiggins@google.com>
 <20190502110008.GC12416@kroah.com>
 <CAFd5g47ssM7RQZxQsUJ86UigcF-Uz+Kwv2yvKN_gZK-TtW89bA@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <6fcf1218-a026-fd7b-236f-ea95f6312e1d@gmail.com>
Date: Thu, 2 May 2019 14:18:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAFd5g47ssM7RQZxQsUJ86UigcF-Uz+Kwv2yvKN_gZK-TtW89bA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_141857_558861_E0DF78E7 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: Petr Mladek <pmladek@suse.com>, linux-doc@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linux-kselftest@vger.kernel.org,
 shuah@kernel.org, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>, linux-kbuild@vger.kernel.org, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Richard Weinberger <richard@nod.at>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/2/19 1:25 PM, Brendan Higgins wrote:
> On Thu, May 2, 2019 at 4:00 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>
>> On Wed, May 01, 2019 at 04:01:13PM -0700, Brendan Higgins wrote:
>>> A lot of the expectation and assertion infrastructure prints out fairly
>>> complicated test failure messages, so add a C++ style log library for
>>> for logging test results.
>>
>> Ideally we would always use a standard logging format, like the
>> kselftest tests all are aiming to do.  That way the output can be easily
>> parsed by tools to see if the tests succeed/fail easily.
>>
>> Any chance of having this logging framework enforcing that format as
>> well?
> 
> I agree with your comment on the later patch that we should handle
> this at the wrapper script layer (KUnit tool).

This discussion is a little confusing, because it is spread across two
patches.

I do not agree that this should be handled in the wrapper script, as
noted in my reply to patch 12, so not repeating it here.

-Frank

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
