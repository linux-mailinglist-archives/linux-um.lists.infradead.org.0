Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553C31D22A9
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 01:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tv8GyhgeMR3G31f+DwkYd5M3C4/ojD3Mnc5MVbml0O0=; b=ANMm7oQDZbU3UNSzX53wJ/rG1
	xEyiGUaAUQX8zYEmXg/tv4hvsYgMtAcmRZMGt2xoJrh2WiMaEWPNLJju7IKVS/Xf938WHS4VV8I+l
	WgFmvg0VQYV5yaTjFADk6gOrRNtpt16I1GBmPrvHyOrlqTRL31emBIn8HzL+E2V9FJcp6B9Fbghs6
	jcy+YMfeFsXn8TIdxBVIBVhTVwRs5+UDUTl1t0V3ejGaaBOlh6l8Nb8/G9eLG9OE7jM++anCZd/z2
	uFqyh7qQHcUyvP6Zxu0/vkck0sIre59rUL7OYJODcamgYDZ04296UiVIWUHjaBJxGehPnPc6hwKWK
	+kMejC64w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0Qf-0004Te-KU; Wed, 13 May 2020 23:04:45 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0Qd-0004T5-7l
 for linux-um@lists.infradead.org; Wed, 13 May 2020 23:04:44 +0000
Received: from sslproxy02.your-server.de ([78.47.166.47])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jZ0QZ-0006AE-Sk; Thu, 14 May 2020 01:04:39 +0200
Received: from [178.196.57.75] (helo=pc-9.home)
 by sslproxy02.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jZ0QZ-000IG3-GK; Thu, 14 May 2020 01:04:39 +0200
Subject: Re: clean up and streamline probe_kernel_* and friends v2
To: Christoph Hellwig <hch@lst.de>, x86@kernel.org,
 Alexei Starovoitov <ast@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20200513160038.2482415-1-hch@lst.de>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <10c58b09-5ece-e49f-a7c8-2aa6dfd22fb4@iogearbox.net>
Date: Thu, 14 May 2020 01:04:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200513160038.2482415-1-hch@lst.de>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25811/Wed May 13 14:11:53 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_160443_277165_0477FD96 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/13/20 6:00 PM, Christoph Hellwig wrote:
> Hi all,
> 
> this series start cleaning up the safe kernel and user memory probing
> helpers in mm/maccess.c, and then allows architectures to implement
> the kernel probing without overriding the address space limit and
> temporarily allowing access to user memory.  It then switches x86
> over to this new mechanism by reusing the unsafe_* uaccess logic.
> 
> This version also switches to the saner copy_{from,to}_kernel_nofault
> naming suggested by Linus.
> 
> I kept the x86 helprs as-is without calling unsage_{get,put}_user as
> that avoids a number of hard to trace casts, and it will still work
> with the asm-goto based version easily.

Aside from comments on list, the series looks reasonable to me. For BPF
the bpf_probe_read() helper would be slightly penalized for probing user
memory given we now test on copy_from_kernel_nofault() first and if that
fails only then fall back to copy_from_user_nofault(), but it seems
small enough that it shouldn't matter too much and aside from that we have
the newer bpf_probe_read_kernel() and bpf_probe_read_user() anyway that
BPF progs should use instead, so I think it's okay.

For patch 14 and patch 15, do you roughly know the performance gain with
the new probe_kernel_read_loop() + arch_kernel_read() approach?

Thanks,
Daniel

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
