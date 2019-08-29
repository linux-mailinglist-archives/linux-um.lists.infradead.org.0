Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF81A1B98
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 15:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0dwuR+mpiwnekWJmqneltdRBnutGmUxIzswUPEEzF4=; b=DFW2+ufJ8nwpgo
	vmqpdhykaahgOhyVd2XsQVwrz2QhVXJrLCmuefeglhREpkaoF0oV7VJqBNBMwMNcnnKF6zqyKv4Au
	zWQ9lRqV2D18HzyskZ3cYe5i/DhO/QzUb8qdOjZ2b55n1X79RmaG2crns9aTKr2siO5g2vf21L6eV
	mBvEgWB57PLwNhlxjqZbZwISDWV+ARosyrg8rgC8nrFbtCS4F0v5RDKrIRFtKKeMgtafpFICg98x/
	pQKPxukqXu1HNmRzo4eN+WuDo4Mc9IDNJR4PC4dG/rbposVBPxX3oZaIAuPDH368/T9V4LoFIsDg2
	nxY5+ihv9L1XXJdTAZ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KcW-0003se-3g; Thu, 29 Aug 2019 13:37:48 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KcS-0003rz-I6
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 13:37:45 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.1) (envelope-from <johannes@sipsolutions.net>)
 id 1i3KcH-000130-QZ; Thu, 29 Aug 2019 15:37:33 +0200
Message-ID: <696734afb27182d7a1a9218dd3cfa01f47a76093.camel@sipsolutions.net>
Subject: Re: [PATCH] um: Rewrite host RNG driver.
From: Johannes Berg <johannes@sipsolutions.net>
To: Alexander Neville <dark@volatile.bz>, Richard Weinberger
 <richard@nod.at>,  Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Thu, 29 Aug 2019 15:37:32 +0200
In-Reply-To: <20190828204609.02a7ff70@TheDarkness>
References: <20190828204609.02a7ff70@TheDarkness>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_063744_594005_DDF4FC63 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-08-28 at 21:44 -0400, Alexander Neville wrote:
> The old driver had a bug that would cause it to outright stop working if
> the host's /dev/random were to block. Instead of trying to track down
> the cause of said bug, rewriting it from scratch turned out to be a much
> better option as it came with a few benefits:
> 
>  - The new driver properly registers itself as an hardware RNG.
> 
>  - The code is simpler and therefore easier to maintain.
> 
>  - It serves as a minimal example of writing a hardware RNG driver.
> 
> I also edited the Kconfig symbol to bring it up to more modern
> standards.

I realize that it's still easier to use, but theoretically you could
just use the virtio implementation, and use that driver with a suitable
small vhost device implementation. :-)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
