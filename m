Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C51D8F53
	for <lists+linux-um@lfdr.de>; Tue, 19 May 2020 07:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORmYVmZ0nElgMEl7ZTNTK645Yq0dd9rxXMRYnUDLf4o=; b=Bw4ykQG7xKaiB1
	WsPd2gd2kisF799/lgpURKLMIe64MlAkCMleAjWX/DYAeX+Wm6pefICTuMDoZYFiwtFWMO9P2hZmW
	FhbZISAfPDhZqIKrbkQU2cxkuexGrDAdfE4XmMRlXHH2fMXGFB8vN7PzEs4OYKYSh6ux/EFotS+be
	KsqI0RRG2rtiG952V1OGQ8084U63YXyaJZJALAljWkOU6oOYxaBKUOtixCmOd5H+FdgCqz+9wBM8s
	77Fvy/SceFW7NWuSQcuSfT/bQcrMpRdS0F7U9ssDnEnuQUIcKwxCWqoz7itliL6FgGZGbPMU8eOKK
	cbG+1oPPza7jt5PsaSoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jav4v-0000Bn-4R; Tue, 19 May 2020 05:46:13 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jav4s-0000B3-CI
 for linux-um@lists.infradead.org; Tue, 19 May 2020 05:46:11 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id F31C968B02; Tue, 19 May 2020 07:46:06 +0200 (CEST)
Date: Tue, 19 May 2020 07:46:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 10/18] maccess: unify the probe kernel arch hooks
Message-ID: <20200519054606.GA23853@lst.de>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-11-hch@lst.de>
 <20200514101318.1c14647e41b7038b99b91fcd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514101318.1c14647e41b7038b99b91fcd@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_224610_563498_CAE13218 
X-CRM114-Status: UNSURE (   9.28  )
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

On Thu, May 14, 2020 at 10:13:18AM +0900, Masami Hiramatsu wrote:
> > +		bool strict)
> >  {
> >  	long ret;
> >  	mm_segment_t old_fs = get_fs();
> >  
> > +	if (!probe_kernel_read_allowed(dst, src, size, strict))
> > +		return -EFAULT;
> 
> Could you make this return -ERANGE instead of -EFAULT so that
> the caller can notice that the address might be user space?

That is clearly a behavior change, so I don't want to mix it into
this patch.  But I can add it as another patch at the end.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
