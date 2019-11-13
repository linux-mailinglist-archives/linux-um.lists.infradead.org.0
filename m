Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E39CFBB26
	for <lists+linux-um@lfdr.de>; Wed, 13 Nov 2019 22:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8dx2cLav5IfA2jG+RIMqzxXOpInOlAztAbNJI2uWyR8=; b=VO8Dd6LpSeG0Bh
	4VQ4ijdEwoZOXod/YPEVHhBgEHSFjV3Wa9E7y8QruNXaXOIQno3VdvsapN2t/iT1qaG4TaRKO0tJb
	/jOa1nJZv7FEE7Mbg6V/dpvAtkjNbawNl0255wrxeHyiLmj2Ei5KVbaRzeYxPtpkh2eGaRuEjeUho
	v9qKPm/FZ0QYZTOr8ofDSbXEpmi6hHn8l+lGyuOxw7JGrlgWhYnnWY4IYRA5/sblfo7fO0+2w4CkU
	gzKyB6C/cAaH+vCwZFNj7IS5PV8ecXqhiy57ErT75TkZkbSWGLc/6vmdOEjlPQ+8k7l2kZ5I6IGBC
	j5scys6G+88gfE7Wffqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV0dN-0002s5-9m; Wed, 13 Nov 2019 21:57:05 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV0dK-0002r3-M7
 for linux-um@lists.infradead.org; Wed, 13 Nov 2019 21:57:04 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iV0ch-00077n-F2; Wed, 13 Nov 2019 22:56:23 +0100
Date: Wed, 13 Nov 2019 22:56:22 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 03/23] y2038: vdso: change timeval to __kernel_old_timeval
In-Reply-To: <20191108210824.1534248-3-arnd@arndb.de>
Message-ID: <alpine.DEB.2.21.1911132256110.2507@nanos.tec.linutronix.de>
References: <20191108210236.1296047-1-arnd@arndb.de>
 <20191108210824.1534248-3-arnd@arndb.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_135702_863885_B7F8FDEB 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Vincent Chen <deanbo422@gmail.com>, y2038@lists.linaro.org,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Borislav Petkov <bp@alien8.de>,
 Greentime Hu <green.hu@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, 8 Nov 2019, Arnd Bergmann wrote:

> The gettimeofday() function in vdso uses the traditional 'timeval'
> structure layout, which will be incompatible with future versions of
> glibc on 32-bit architectures that use a 64-bit time_t.
> 
> This interface is problematic for y2038, when time_t overflows on 32-bit
> architectures, but the plan so far is that a libc with 64-bit time_t
> will not call into the gettimeofday() vdso helper at all, and only
> have a method for entering clock_gettime().  This means we don't have
> to fix it here, though we probably want to add a new clock_gettime()
> entry point using a 64-bit version of 'struct timespec' at some point.
> 
> Changing the vdso code to use __kernel_old_timeval helps isolate
> this usage from the other ones that still need to be fixed properly,
> and it gets us closer to removing the 'timeval' definition from the
> kernel sources.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Thomas Gleixner <tglx@linutronix.de>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
