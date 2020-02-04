Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2282152309
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 00:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4d835HqM8hgYdF8Oh5xEyLfq/KhnUXeQGymLb3NLQxw=; b=sAG9vNQPuQkDl9
	z/679ULXIJqQHKN2FMM7mhbUVVA0szemovMGtuCMy1VKmPBS/cCwDyJwm5DlzGgu+fP7e7KkFYiej
	vNPrEj5+dKbZfsK4/3gy03FOErDyavfe3wPgl1IXx3mVYlJfSfh6CR9GZGsAFK06oct9Ztc3lw1Af
	mT1VVCgYwPoLogXx3NfTeQ5z6HBE43kLMQrt91+UrCmFplMIfh+YDO4rJjt7dSOjTnKUf2EVsdlzk
	4vgyl9Ck+j+Zi9xd0EGeLERPRfwKcvZm6WKOwkVSElta6EECcuknewVfVUQvkBNJCyFfanYvKmVjC
	rpyJfCISiLIqp2qrXI9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7j1-0001B1-W8; Tue, 04 Feb 2020 23:35:23 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7iz-0001Ah-BL
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 23:35:22 +0000
Received: by mail-yw1-xc44.google.com with SMTP id 192so730307ywy.0
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 15:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=a0Zh5A5UVxi7kLLHGfwoywGVILuqTGw6v50Ysx9v2pg=;
 b=pXCavDKVVuw9mEkjafbCaKO5pjGoKu6fDxeJnvd1MP4Ho/MclHwZFj5TW3BUrhBfmQ
 1SmqmXVWfty49DriNJQ95H35dObsy498Oq0YoIpQ4xoJcFv0qQQM42YWPwm1cuVFhRqi
 gwGbaDmTBoJgvutLWDYXQjgZvPTMGnASlyiY45aU8e7IrERrhJzIdzIYilgXMBI45TcA
 NZbjj1XZ83DjOMTwSxD1+p5WgZhPEX+LU5siBJWHTgRilJ7uHCRgjmbbG/BeQwqY3M7I
 mr//gJt8IbDaSMZ6o1EXESADBXmSj+iZbjbNuFBCJVG+KsPbFb6nK5xrG1maymE9EjS2
 Jwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a0Zh5A5UVxi7kLLHGfwoywGVILuqTGw6v50Ysx9v2pg=;
 b=lcA6DIRCUi4EGD9C0EvJmqeUoEHJ1vmI0UEXDowx6qdKILNJlxOlWQgE3D5RcWNBqg
 evhxRqw67VhZtPX9qlFU3JdNdZoE2x1GN3ce9yASsmngIhNVG3ZNBaGieciHHqMmQOFE
 XYV2yJdobGQEpf4knf20oo2Hb7sffiqQ3IqJ3wJeF3uQ3y0V9RRgXTf9iJXJjcnasJ+9
 zSr/8N/5xjiOPNXI1Pn6qif+j6dhA80J7J3UFt8JbxJcoavX2eELdK2ZDJYISKhc8D1i
 GYFEyZHES//mXiBHbUxNY4jDMTdgsesobSjvANEpEk31oONSj4e6T6Rt+ADkb548Xf9u
 GaGw==
X-Gm-Message-State: APjAAAXHEBaMK5TCsijyRfK6r2MXjFOk0hoXZD3QNQIFvIFpWMgMq/tb
 C2J21Wule5tF9UeAfzWxVWIpg1rE
X-Google-Smtp-Source: APXvYqxDpSKKSu2un/TP0Ysy4WFWa6lTEAL6/sexOdBqb4s9dfVx7yM35vus7F6YnJ3GRb+1LFZYCA==
X-Received: by 2002:a81:9912:: with SMTP id q18mr7487623ywg.383.1580859319894; 
 Tue, 04 Feb 2020 15:35:19 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id o69sm10579207ywd.38.2020.02.04.15.35.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Feb 2020 15:35:19 -0800 (PST)
Subject: Re: [PATCH v2 0/7] kunit: create a centralized executor to dispatch
 all KUnit tests
To: Brendan Higgins <brendanhiggins@google.com>,
 Stephen Boyd <sboyd@kernel.org>
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200204071915.AF32B21582@mail.kernel.org>
 <CAFd5g44ZG+E==gT24w49oKc6nHv4nBQFeipikKxXJH3oHdO99Q@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <4d0f42f7-8dbe-3d47-e0df-3e31cc8ebf52@gmail.com>
Date: Tue, 4 Feb 2020 17:35:18 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g44ZG+E==gT24w49oKc6nHv4nBQFeipikKxXJH3oHdO99Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_153521_414161_25DCB4F2 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Knut Omang <knut.omang@oracle.com>, Luis Chamberlain <mcgrof@kernel.org>,
 rppt@linux.ibm.com, linux-um <linux-um@lists.infradead.org>,
 Logan Gunthorpe <logang@deltatee.com>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Alan Maguire <alan.maguire@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 2/4/20 1:35 PM, Brendan Higgins wrote:
> On Mon, Feb 3, 2020 at 11:19 PM Stephen Boyd <sboyd@kernel.org> wrote:
>>
>> Quoting Brendan Higgins (2020-01-30 15:08:05)
>>> ## TL;DR
>>>
>>> This patchset adds a centralized executor to dispatch tests rather than
>>> relying on late_initcall to schedule each test suite separately along
>>> with a couple of new features that depend on it.
>>
>> Is there any diff from v1 to v2? I don't know what changed, but I see
>> that my Reviewed-by tag has been put on everything, so I guess
>> everything I said was addressed or discussed in the previous round.
> 
> Oh yes, sorry about that. I have gotten a bit lazy in regard to
> changing logs. I noticed that a lot of people don't seem to care. I'll
> make a note that you do.

Please ignore those who don't care.  Just always include a change log.

You may encounter bike shedding about where the log belongs (in patch 0,
in the modified patches, in both locations).  The color of my bike shed
is simply that they exist somewhere, but my most favorite color is both
places.

> 
> Changes since last revision:
> - On patch 6/7, I flipped the include order and removed braces from the if
>   statements.
> - On patch 7/7, I removed the periods from the short descriptions.
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
