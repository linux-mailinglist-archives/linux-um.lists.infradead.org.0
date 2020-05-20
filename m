Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A7F1DB138
	for <lists+linux-um@lfdr.de>; Wed, 20 May 2020 13:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8TcM7EGPDnwb4IQF7f8udWZAmsfXybvjHHF4tbqgPo=; b=U2QG7Bs4+HBZ2c
	kiWEo7bavkCHoa2Ul1OlNBSqqc+AIhIGFaxZq86ys9c0ObrDc5KRCzmLbTqbvln7rXJ96rLe2z5H8
	/UHkNVBIMMY0piEV9mzZqWDDJf7kcZy7a8svLrNBIN/33eQjm1LzSed0eJ7HfgthjlbxeQ3Oao8oq
	dSYf8eokW/Pl/hw+hdK67qfccOtsE3YI9oMWvgUehKU0qf/ND4MR1rodCAcpc0JsLLP+wO1mlziYB
	P96o2jIcDxH3j2+vrnoxm/3N/fu7Gmhx5P/4Rqm4E78JwOfNwzMc74zjvhBZ2N8BvfgzlIRsD4Von
	rNh3fLuByquYnOO3Wi5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMfq-0005RY-7r; Wed, 20 May 2020 11:14:10 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMfD-0004pc-HJ
 for linux-um@lists.infradead.org; Wed, 20 May 2020 11:13:33 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7017168BEB; Wed, 20 May 2020 13:13:25 +0200 (CEST)
Date: Wed, 20 May 2020 13:13:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 13/20] maccess: always use strict semantics for
 probe_kernel_read
Message-ID: <20200520111324.GA16488@lst.de>
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-14-hch@lst.de>
 <20200520201126.f37d3b1e46355199216404e2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520201126.f37d3b1e46355199216404e2@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041331_772227_78BEE197 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: linux-parisc@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, bpf@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 08:11:26PM +0900, Masami Hiramatsu wrote:
> > -		ret = probe_kernel_read(&c, (u8 *)addr + len, 1);
> > +		if (IS_ENABLED(CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE) &&
> > +		    (unsigned long)addr < TASK_SIZE) {
> > +			ret = probe_user_read(&c,
> > +				(__force u8 __user *)addr + len, 1);
> > +		} else {
> > +			ret = probe_kernel_read(&c, (u8 *)addr + len, 1);
> > +		}
> >  		len++;
> >  	} while (c && ret == 0 && len < MAX_STRING_SIZE);
> 
> To avoid redundant check in the loop, we can use strnlen_user_nofault() out of
> the loop. Something like below.

Yes, I've done something very similar in response to Linus' comment (just
using an ifdef instead).

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
