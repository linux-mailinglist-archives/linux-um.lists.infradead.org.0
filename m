Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E03614C52E
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 05:25:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+4kPtknwsiqUW6dODcZVcjlt5dSh/Gl8kiPibCzFfg=; b=kbLlek6Og9hw1N
	WWhifqwUmKGwc78cvs0hWhls+cRvWcFk6QlEDTpwJNRhmvo8XyEGqT7fV+XiAYeJe5mpKdtPOwLqq
	rlv15lL4I7vr+kBfD/iVipEQN0H4WU7iTVhAKovNGfEq09wRHwOM8fiTmP3AHPs9tAURAFG47sdGj
	GOqPTUxhyzrjlLpIMxPRQuTj9spJkRNM1WSxtU/+YfGfik1jXaxSr+jL6ojE/xY9KYKtSVeK0ixm6
	3FUXBzslOAtDYhEnrXh49AnFOaZxPGT+7zCKC8k+xj7B2c6SSUdWcHrXQ7LSUx6Q2qhCrpj8HZ1HT
	a36bjdb/plyjU+MxuE4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iweuX-0005P4-BO; Wed, 29 Jan 2020 04:25:05 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iweuU-0004hQ-Bn
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 04:25:03 +0000
Received: by mail-qt1-x843.google.com with SMTP id v25so12247350qto.7
 for <linux-um@lists.infradead.org>; Tue, 28 Jan 2020 20:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eakBGQ1EfxNPQBSaXqT9vlsaKAmpZ5+kMa3s4kT1JN8=;
 b=K0eBBXdiKRQKb2Um1UxPIn+uPENTwBO73Ct4S7khM/WqZxfdTcHnuNaxp53t1tMVBo
 l9d3d7PL0LO9ZjFmSgfo3XDYniGhORhLXPrTildO5+2rqDwAWILhln/UqIRSkQdIHgS6
 RFERqWwekSHDpn6YcYxkPLeqfXLrfSFMKTbb14n94rOk/DKkDXyqH6sXX/GIiOeK8Bee
 y7ZoOGVarjuJnAOVKQOr8Wu1rR9ZN759TG+xWJ0OpkZN0fiN1P/gAOqp0sajV1klhTCK
 2SUTfP2c8RI4aVoMDN6KnBHnLgfxjgP7I8e0urSZ0UsF8pDDnSlFUjo8JTeFIBx3bJ7k
 sW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eakBGQ1EfxNPQBSaXqT9vlsaKAmpZ5+kMa3s4kT1JN8=;
 b=RV7kunyCxG27yWKEwTh4fEqNGnHg0lV7MQtWPeB0RxgnE0K5XSUsjW50/FOafDqU0K
 XYcSrKJhWNE5kq/QZ1+IEdM66i2hpIYbETrbjTNCugJgXIH5pvoabwutmCJqnnp+H5Fz
 BvAeZb5V82bLJPD08phI8gyLDq0TAlz4zSjyXvdXYNnV4HMB/LtLqwFdx+8Lft8OwdTi
 FsLQbvFgfuOALfVPNwA4Q0UwxF2fgjIjGcAiOhTOri6+k/CJW3bkJ4BIWQ2wgtPVAGcv
 eBAqQlr5gCqLoAymiwcD6jjbtACaeM9+11ynLfLChZIb3KxMslpqrE30cUBUp3tH8t8v
 vyWw==
X-Gm-Message-State: APjAAAXw1WfAbritIGmxb6h1NCTIeIIkmeLQ+e3LHzTSurnP9Mnmgx3+
 hiGP+ydO+4je6CpSg8R8sf4=
X-Google-Smtp-Source: APXvYqznV+gAHKK6MsOz+wnZrl/QqDx4om8+h40F66lxU7UeeC31wlbnLgo/pifdnYfPWmWnjBdfHQ==
X-Received: by 2002:ac8:6f27:: with SMTP id i7mr5201797qtv.253.1580271895195; 
 Tue, 28 Jan 2020 20:24:55 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id o187sm405516qkf.26.2020.01.28.20.24.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Jan 2020 20:24:54 -0800 (PST)
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch all
 KUnit tests
To: Brendan Higgins <brendanhiggins@google.com>,
 "Bird, Timothy" <Tim.Bird@sony.com>, Alan Maguire <alan.maguire@oracle.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
 <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
 <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
 <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
 <ECADFF3FD767C149AD96A924E7EA6EAF982C9840@USCULXMSG17.am.sony.com>
 <CAFd5g46Ut9Suptmp_bBspkp=KKt2GP+=1C5zLu0FXJY9dGJbFQ@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <dcf2d008-c044-f2d4-63b9-47151157eeb4@gmail.com>
Date: Tue, 28 Jan 2020 22:24:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g46Ut9Suptmp_bBspkp=KKt2GP+=1C5zLu0FXJY9dGJbFQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_202502_413467_18E7A0BD 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Greg KH <gregkh@linuxfoundation.org>, Stephen Boyd <sboyd@kernel.org>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Knut Omang <knut.omang@oracle.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, rppt@linux.ibm.com,
 linux-um <linux-um@lists.infradead.org>, Luis Chamberlain <mcgrof@kernel.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Iurii Zaikin <yzaikin@google.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 1/28/20 1:53 PM, Brendan Higgins wrote:
> On Tue, Jan 28, 2020 at 11:35 AM <Tim.Bird@sony.com> wrote:
>>
>>> -----Original Message-----
>>> From:  Frank Rowand on January 28, 2020 11:37 AM
>>>
>>> On 1/28/20 1:19 AM, Brendan Higgins wrote:
>>>> On Mon, Jan 27, 2020 at 9:40 AM Frank Rowand <frowand.list@gmail.com> wrote:
>> ...
>>>> we could add Kconfigs to control this, but the compiler nevertheless
>>>> complains because it doesn't know what phase KUnit runs in.
>>>>
>>>> Is there any way to tell the compiler that it is okay for non __init
>>>> code to call __init code? I would prefer not to have a duplicate
>>>> version of all the KUnit libraries with all the symbols marked __init.
>>>
>>> I'm not sure.  The build messages have always been useful and valid in
>>> my context, so I never thought to consider that possibility.
>>>
>>>> Thoughts?
>>
>> I'm not sure there's a restriction on non __init code calling __init
>> code.  In init/main.c arch_call_reset_init() is in __init, and it calls
>> rest_init which is non __init, without any special handling.
>>
>> Is the compiler complaint mentioned above related to  calling
>> into __init code, or with some other issue?
> 
> I distinctly remember having the compiler complain at me when I was
> messing around with the device tree unit tests because of KUnit
> calling code marked as __init. Maybe it's time to start converting
> those to KUnit to force the issue? Frank, does that work for you?

I have agreed to try converting the devicetree unittest to KUnit.

Now that KUnit is in 5.5, I think there is a solid foundation for
me to proceed.

-Frank

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
