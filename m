Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ADF1F4D49
	for <lists+linux-um@lfdr.de>; Wed, 10 Jun 2020 07:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYLN6qMBMCTHOslgXPxFIgfI34L13fYOLggyHhGyg4s=; b=nm6rJQynpmDuxu
	AQqSMtTn7WEDX5wDdYzv57KVjP6Ut6tjvMqTC30EDAJxXSrCXC98/bDJJWv/Cz/lgsssUfkj/3Eor
	y+pJBuYBqmSePFBedu+hffUEHfuuvbssWmCytywt0uNmx0rxY2d/gkhSHIwF5pOu22tWhBRxtCa6m
	jgYYh6qHF0DXFwhbhe2tlO4HY2Uy0cdnjlBEJ8UqHavU1bD2Mc7U+J/27TwvOVLYLx5bQ3vUc8EQi
	gRAJSaNHNstWIDCzd+XSdC3vhMpwO9lHH5N0P7RBhgUGNP6rmlqEBS/smH6+b9En+p2Xcv87hdl97
	OjeXWjj8kNn7W4id8USA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jitgI-00053g-6l; Wed, 10 Jun 2020 05:53:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jitgG-00053N-AL
 for linux-um@lists.infradead.org; Wed, 10 Jun 2020 05:53:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 481F32074B;
 Wed, 10 Jun 2020 05:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591768423;
 bh=/2TgyOGEKrd2FU+b646mx1YVglemkJKs7lxOPjEWCO8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZDEoFQ4frCiEzR+mN5Sk4MObIpGkmJ8vaIeJgYBsf8dx7/0YZORDC4LYzIbkoBQtN
 o2bUNLHnfP9dSG5qC4s+gfiM11CLPoJjHtBJ9VfdDUPrsj/nVDPLNFReMMGtIgggBC
 pKjpNjWDaTmqJDbJmZRZKEEiwmleYobMNTeQqdJg=
Date: Wed, 10 Jun 2020 07:53:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gaurav Singh <gaurav1086@gmail.com>
Subject: Re: [PATCH] Fix null pointer dereference in vector_user_bpf
Message-ID: <20200610055339.GA1865470@kroah.com>
References: <20200610034314.9290-1-gaurav1086@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610034314.9290-1-gaurav1086@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_225344_378480_507238B4 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:USER-MODE LINUX \(UML\)" <linux-um@lists.infradead.org>,
 "open list:BPF \(Safe dynamic programs and tools\)" <netdev@vger.kernel.org>,
 Alex Dewar <alex.dewar@gmx.co.uk>, KP Singh <kpsingh@chromium.org>,
 Yonghong Song <yhs@fb.com>,
 "open list:BPF \(Safe dynamic programs and tools\)" <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 11:43:00PM -0400, Gaurav Singh wrote:
> Signed-off-by: Gaurav Singh <gaurav1086@gmail.com>
> 
> The bpf_prog is being checked for !NULL after uml_kmalloc but
> later its used directly for example: 
> bpf_prog->filter = bpf and is also later returned upon success.
> Fix this, do a NULL check and return right away.
> 
> ---
>  arch/um/drivers/vector_user.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

No signed-off-by?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
