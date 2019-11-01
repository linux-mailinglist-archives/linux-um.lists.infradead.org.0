Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C49EC051
	for <lists+linux-um@lfdr.de>; Fri,  1 Nov 2019 10:12:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ci1J/3mHkZ0uNSDPqIWU4J3VVkxHJs5ItGquuP28BJI=; b=GIEaDNtilOMZ2c
	yd4fhthgcs0MfcRJAfpRw/jci/gVxRqzqYCBIDmmWE1ZsMyzSaGr8HhHfyPyE5td97TkVfXcvsqog
	M2XAYiMuJvm1HbpZqOtacZDaaAWqZQnMoWgTNEuhnYKPS0SQKlXKUiWVz0ka1Fth4rk5b460o7NhF
	pzIXSX7gEaekLDGbT3WMxWTrJusglOloPe1Q0Dco+gXrjOBhZnpmG5SbCYD7R9XBuaIqLDYZCPSdn
	MYX5xw1qMUxeeQazB8+SjR8Xe8SCTPeD6UTj1/oEdDDtvdHHlO0udQcjLi72efSPFFr7K6WaDydT2
	G7ugUOt4NK+exd1+ar9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSyR-00033O-Rn; Fri, 01 Nov 2019 09:12:03 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSyP-00031L-1v
 for linux-um@lists.infradead.org; Fri, 01 Nov 2019 09:12:02 +0000
Received: by mail-lf1-x143.google.com with SMTP id y127so6751750lfc.0
 for <linux-um@lists.infradead.org>; Fri, 01 Nov 2019 02:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XlvIQVFH0OsvvtfZAtH/Qzezeu3c9I63M8S4KPzBTmI=;
 b=UuJXdNFjFQHl67JtwQY9epQ7JZlX/qPb15ER8c6Lqil7fRSMcWNmfwOoeV2vHvtVIf
 MQprOmpD0hwsPPFv2gxzxn4Ufk5Qeavun2lFUk2TgV9/BJmHdQ9LjJJ4cLQHvBjOt2iq
 7InLsmyICkBrD2SFovxTIo55dNntzl9yo0IcQEGHox/sHEWXjP92g9WoW1Z/R7RjoyCR
 dw+A/DYMa1eBrvJi7jIO94xX+0zK2qTl0s4ygNxkGhD9Tvg/jlXPIsDkskH/BRFS0OFW
 rBmZ4ZqdBwG72D4QcTsAOtQDJM+k21sLl7cD2V9ljZhidt0HoZbQbczQibBO+ANCIENx
 R3Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XlvIQVFH0OsvvtfZAtH/Qzezeu3c9I63M8S4KPzBTmI=;
 b=GGDl76IqSERn24xJz30KHAEQW5UAfLL9AEKgkADqyRDvnLb4fqVC/R7kLPbmVGLLY7
 dPha7BEy95qFgr5WekDGTJRspNNuHfEL5wY/qrd9VOSWmNaBvo04t1vUyumzLeqs7BjE
 sVhgjhbOzWfHBd9NRRMXP04YmuSJT3Oa8Qn2ORrfIddXfy/dMlq77CI/RC+089ZM8IAr
 i7+TmEjekxY+gFvWK/FqQ1gPNETLfEc9X24eKyixc6v+7QaHSHXkuey711lIwqKVrauJ
 6OJslobBccZzqk5JW50zZqNpF2EpaUv3CnaGhlWdEKfRFh1bjH69Elj7uJQAP0sRH5vT
 snnQ==
X-Gm-Message-State: APjAAAX32Hxo3tLqqIgjWXuAsLbyGoGbrleqf8mZ5SWmwrAnmHDwTTAX
 UYtaaM7rRHDTEHGscXYAPYPCSg==
X-Google-Smtp-Source: APXvYqz/HnRIkMMRi6lyXHmUXuPZQAZA0KSr/y66JRxF1fApobZgQwfrztMJrO8lOUblE8ZNClOn4A==
X-Received: by 2002:a19:6b04:: with SMTP id d4mr6761779lfa.10.1572599518710;
 Fri, 01 Nov 2019 02:11:58 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id r1sm2237427ljk.83.2019.11.01.02.11.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 02:11:57 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 3778110134C; Fri,  1 Nov 2019 12:11:57 +0300 (+03)
Date: Fri, 1 Nov 2019 12:11:57 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v2 01/13] alpha: use pgtable-nop4d instead of 4level-fixup
Message-ID: <20191101091157.q4cesn6vsiy5qj2j@box>
References: <1572597584-6390-1-git-send-email-rppt@kernel.org>
 <1572597584-6390-2-git-send-email-rppt@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572597584-6390-2-git-send-email-rppt@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_021201_217733_A37D34F8 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <monstr@monstr.eu>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-alpha@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 10:39:32AM +0200, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> It is not likely alpha will have 5-level page tables.
> 
> Replace usage of include/asm-generic/4level-fixup.h and implied
> __ARCH_HAS_4LEVEL_HACK with include/asm-generic/pgtable-nop4d.h and adjust
> page table manipulation macros and functions accordingly.

Not pgtable-nop4d.h, but pgtable-nopud.h. Also in subject.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
