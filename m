Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C11D1D7C63
	for <lists+linux-um@lfdr.de>; Mon, 18 May 2020 17:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKAbfhi41Iz/4uDU+SpBIJ0fPMwHubYDJVUxsuBG8xM=; b=PwMk+ljZK/eHLh
	7NBP+41CkYF2Dev5b76vDcBzHBqRcNXYGTq3hNwb/+7sYKQWQT1f/+uQ6XJDqUUfqXK+CW548Yq5D
	cu4wQUi52JlVrOGTcmB7ABWbLPGEABTInXm644BQ0Emk8IGv0l8suA19Km/GmP0BSFw4EsRyjT+SW
	jXF9Tcsk4azs7F34iFqgdyemr2Hmls5BOxE1nBgfbMyao/cpSkoGC6Nzspac1wOAnNnaU78e0vDMe
	e6Ym45iw5ZIyv3NqBUPh4RJWw/A58et8ovNSUiLsrxHg6b/yuY9uxvpkRXT/HUP6pv45/uRL+eQxP
	XOAb7XXScTWTu7oZr86A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahO9-000106-H6; Mon, 18 May 2020 15:09:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahO6-0000yZ-O3
 for linux-um@lists.infradead.org; Mon, 18 May 2020 15:09:08 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 27D5268B02; Mon, 18 May 2020 17:09:04 +0200 (CEST)
Date: Mon, 18 May 2020 17:09:03 +0200
From: Christoph Hellwig <hch@lst.de>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 14/18] maccess: allow architectures to provide kernel
 probing directly
Message-ID: <20200518150903.GD8871@lst.de>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-15-hch@lst.de>
 <20200516124259.5b68a4e1d4670efa1397a1e0@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200516124259.5b68a4e1d4670efa1397a1e0@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_080906_929488_34085E3F 
X-CRM114-Status: UNSURE (   9.93  )
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

On Sat, May 16, 2020 at 12:42:59PM +0900, Masami Hiramatsu wrote:
> > Provide alternative versions of probe_kernel_read, probe_kernel_write
> > and strncpy_from_kernel_unsafe that don't need set_fs magic, but instead
> > use arch hooks that are modelled after unsafe_{get,put}_user to access
> > kernel memory in an exception safe way.
> 
> This patch seems to introduce new implementation of probe_kernel_read/write()
> and strncpy_from_kernel_unsafe(), but also drops copy_from/to_kernel_nofault()
> and strncpy_from_kernel_nofault() if HAVE_ARCH_PROBE_KERNEL is defined.
> In the result, this cause a link error with BPF and kprobe events.

That was just a bug as I didn't commit the changes to switch everything
to _nofault and remove _unsafe entirely, sorry.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
