Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8F6FA6B7
	for <lists+linux-um@lfdr.de>; Wed, 13 Nov 2019 03:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7AnTANgtmt4z5Up4oyfdIUWPXhd00e3He+JCJcP4cg=; b=Z78xbvOQHu74vf
	JWHTu4bqEpcHAFUS5Fp+iiHp5Zv+KYCWQaP1YwQ40dc1GwR9xsC1q5lBq5tTTVqV1QRWhKCjCbbcD
	MH7RvHP+cAsvIAM4YrUDRIzseAlqNt+WQq/rxYY80khETTIHboWJkv48JsMnSYjg+MJSNYHf8m0Oe
	bRheV6D9ji7FPc9KeKzX1bXypXHzr8gnLaP0tYHOuw30YDtjmaWlQA2jKoOpkQsPSMMJZaJUte5/v
	Dp+rv23z+F8AI6BqO74QpRK9Vai2hF072BKKKHJ744NuH6DDWX6SZBJVOSezSvyTBlh39TjQaiBoo
	Gas8euPAR2pc+ZfVDz9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUibv-0006ED-Fd; Wed, 13 Nov 2019 02:42:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUibr-0006Be-Bp
 for linux-um@lists.infradead.org; Wed, 13 Nov 2019 02:42:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id p24so559144pfn.4
 for <linux-um@lists.infradead.org>; Tue, 12 Nov 2019 18:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9ewNkq+k7WzF7N7FeKsJZWJsQUcIf4AaWPjf05A0Fco=;
 b=httZFalB2VvN+DAYr6xQfb8CS2lpW4CgtAeEsAWgjkvbyyGvCmjTLAPAEMfF/JCr7/
 c8P9raTPSqNexy65EPzsFOdG6kVk1K592cMDIy0cHhBebJPWF8fQ9egPpzwWXfBWSrCz
 Jk1zAXvG+gTTHY9iuktiuKZH9vWWl//5vaZrlx7ppzhO4sTAZlX2C/T/kVZYDrElUqcN
 VIOq5oDXrk5HHYGKLT0+ff2WZ+LnUZTUWEqoGOOJeX0XdIUXtb1PCt6iQWGnVWpEOeHv
 9p5PFEhwRvitpIH0ba4n5ClWOCwYigDV+TgMORDfM82fnMfxgxqmD7OSd4a8lnQJEp7K
 YgYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9ewNkq+k7WzF7N7FeKsJZWJsQUcIf4AaWPjf05A0Fco=;
 b=I9h/eYeVA9TDRBbY+Ftw04fNolGwMPVHVKTtl/VoxYsIWcrsHl450ePMNehm4Evft7
 JtMm6LvkUnFwHgjiF0NKQHkWyjvb94t2fBPu3ST14C9Ln/h2NBUUIhbNST7E7o3RBOT3
 VdeYLWVedQHld3xfGgzNJPrT90r1JpwdSzdW0Lth68ay8yQHfAktsx+ZWZNYh447RHDA
 pGDnXjRwdV58vLlAjleKoXGP5bqj3kJMmpysm+FNj4Viw599f20Y3n7Jy7XZ/iGzPOIG
 3bKCRHT6q8RUmHSQxOxpCHNR/vGmhD4VFfDbJz/tocT2UOKY2h7BQCZUewa0rb6aW8R/
 KHyg==
X-Gm-Message-State: APjAAAWkop0is5OHD586PuLMrbpasnpZGWODs5FF7wIGt7Qgv8PgioZV
 AKmAwCrkcbvEl/KJyMqgel72Cg==
X-Google-Smtp-Source: APXvYqyg0YKjFTNIvTLCv1J1tDb1jq98QSviRK57/SbcLNfCJ0c+TDqSL8X9WHbEQTrvYD3q+/dxRw==
X-Received: by 2002:a63:cb0f:: with SMTP id p15mr887811pgg.81.1573612938430;
 Tue, 12 Nov 2019 18:42:18 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id r22sm395559pfg.54.2019.11.12.18.41.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Nov 2019 18:42:17 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
 <20191112021747.GA68506@google.com>
 <25cb9647-007a-9c18-4784-49c0aef4f54b@arista.com>
 <20191112042546.GA119579@google.com>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <d828cb62-aeea-4d67-33ba-b3a93ea10a3d@arista.com>
Date: Wed, 13 Nov 2019 02:41:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191112042546.GA119579@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_184219_399784_11455046 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Ben Segall <bsegall@google.com>,
 Guo Ren <guoren@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Matt Turner <mattst88@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Len Brown <len.brown@intel.com>,
 linux-pm@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-um@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Richard Henderson <rth@twiddle.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Mackerras <paulus@samba.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-ia64@vger.kernel.org,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 James Hogan <jhogan@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Vincent Chen <deanbo422@gmail.com>,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-hexagon@vger.kernel.org, Helge Deller <deller@gmx.de>,
 linux-xtensa@linux-xtensa.org, Vasily Gorbik <gor@linux.ibm.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 linux-m68k@lists.linux-m68k.org, Stafford Horne <shorne@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Tony Luck <tony.luck@intel.com>, Douglas Anderson <dianders@chromium.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Will Deacon <will@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Brian Cain <bcain@codeaurora.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 kgdb-bugreport@lists.sourceforge.net, linux-snps-arc@lists.infradead.org,
 Fenghua Yu <fenghua.yu@intel.com>, Borislav Petkov <bp@alien8.de>,
 Jeff Dike <jdike@addtoit.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, Ley Foon Tan <lftan@altera.com>,
 "David S. Miller" <davem@davemloft.net>, Rich Felker <dalias@libc.org>,
 Petr Mladek <pmladek@suse.com>, Peter Zijlstra <peterz@infradead.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Richard Weinberger <richard@nod.at>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Mark Salter <msalter@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Michal Simek <monstr@monstr.eu>, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Jason Wessel <jason.wessel@windriver.com>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 11/12/19 4:25 AM, Sergey Senozhatsky wrote:
> On (19/11/12 02:40), Dmitry Safonov wrote:
> [..]
>> In my point of view the cost of one-time [mostly build] testing every
>> architecture is cheaper than introducing some new smart code that will
>> live forever.
> 
> Well, there may be the need to pass loglevel deeper due to "hey __show_stack()
> on that arch invokes bar(), which invokes foo() and now foo() does printk(),
> but we don't see it". The context which decided to backtaraces decided
> to do so for a reason, probably, so I guess we can look at it as "a special
> error reporting code block".
> 
> The proposed patch set passes loglevel via slightly unusual channel -
> via sprintf(). We probably can do it, but I would prefer to minimize
> the number of such printk-s in the kernel. The code snippet which I
> posted also does pretty unusual thing w.r.t loglevel. Both approaches
> are "non-standard" from that POV.

I don't strongly disagree, but if you look at those results:
git grep 'printk("%s.*", \(lvl\|level\)'

it seems to be used in quite a few places.

Thanks,
          Dmitry

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
