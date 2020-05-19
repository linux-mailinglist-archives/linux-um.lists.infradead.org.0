Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D891D8F76
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 07:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXv/adJ2S+cgYPzNI96q18joCy8jyD+5bkU/rjUzyg4=; b=Tgh4UvELMbftzd
	6M1MVd9WoOFrlwyI6ZmGszwllbIyjzP2Ql6SCxM4Yd5AeQDkn4B6A6rg5PaOxOMqL9NSYbUiBWi8T
	9kAMmCz18Il/F2qag6OZS9os/wO8fv//0Nmpvbdy7nxdIv7BlmHSwuydJEYVz/rNUMqgIjdTDT3G9
	SsyxzytfYIdMu8P1nQ/aoAoXCREQA/q+UhG5l/G/YkOJl5o2td/bJQ/OAKl7/HVbZpU2NhP3HIGA4
	wjK/cyZukDRpjNMe+zLAeeCtYiHlNtFmuSeNMO8DR/RYDes322DO6vFAVJ4lLh66tJzz7AOdMx2rG
	QFALHsJ+9ncHfEzyPIxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jav8o-00032d-JQ; Tue, 19 May 2020 05:50:14 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jav8m-00031x-Eu
 for linux-um@lists.infradead.org; Tue, 19 May 2020 05:50:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B2C5568B02; Tue, 19 May 2020 07:50:09 +0200 (CEST)
Date: Tue, 19 May 2020 07:50:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: Daniel Borkmann <daniel@iogearbox.net>
Subject: Re: clean up and streamline probe_kernel_* and friends v2
Message-ID: <20200519055009.GB23853@lst.de>
References: <20200513160038.2482415-1-hch@lst.de>
 <10c58b09-5ece-e49f-a7c8-2aa6dfd22fb4@iogearbox.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10c58b09-5ece-e49f-a7c8-2aa6dfd22fb4@iogearbox.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_225012_650847_A08AE144 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: bpf@vger.kernel.org, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 x86@kernel.org, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 01:04:38AM +0200, Daniel Borkmann wrote:
> Aside from comments on list, the series looks reasonable to me. For BPF
> the bpf_probe_read() helper would be slightly penalized for probing user
> memory given we now test on copy_from_kernel_nofault() first and if that
> fails only then fall back to copy_from_user_nofault(), but it seems
> small enough that it shouldn't matter too much and aside from that we have
> the newer bpf_probe_read_kernel() and bpf_probe_read_user() anyway that
> BPF progs should use instead, so I think it's okay.
>
> For patch 14 and patch 15, do you roughly know the performance gain with
> the new probe_kernel_read_loop() + arch_kernel_read() approach?

I don't think there should be any measurable difference in performance
for typical use cases.  We'll save the stac/clac pair, but that's it.
The real eason is to avoid that stac/clac pair that opens up a window
for explots, and as a significant enabler for killing of set_fs based 
address limit overrides entirely.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
