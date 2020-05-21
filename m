Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1727C1DD9F1
	for <lists+linux-um@lfdr.de>; Fri, 22 May 2020 00:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sd+P2jSB1L6lg/1Qy6A8tNmtb17fCBTQmitFfOv4LIQ=; b=O69w4WPJ5QzW+F
	Zq6V5V44TkhQ8d9Lu3TzumbCVWBpydG5WUrArgZH11itRwhjztsRyzqZiSG7dfw8EJBJTJh5Vj3S0
	Bg6XPghya5CCWZLoUHJCBlN5KuLEzaeywBIokeD6x+k0ul01U4jbLPE+guxOtL+nZ0Xw13VKskt5t
	lP4dLZxfeP859TLrjJ7TXX6HwId9OGNEtUEzlMkmEXyk28O8m12XM6WPGNFABblZgUFASFVDywKG/
	qK4J9/FkZs6AC4L7E/OhPhb1CIaeHo9CZc1D4+NjoT1O1OfO0yN4bUnJNfWjTk8q4v+Be1OcQGPUm
	T+cE2DqxXmK2IYWL30Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtOw-0001xk-G5; Thu, 21 May 2020 22:10:54 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtOt-0001w3-Rq
 for linux-um@lists.infradead.org; Thu, 21 May 2020 22:10:53 +0000
Received: by mail-qk1-x742.google.com with SMTP id i14so8861174qka.10
 for <linux-um@lists.infradead.org>; Thu, 21 May 2020 15:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cY8bWJYAziC6DykutTES7fh6tr7JoLymaKn0aTQJgAA=;
 b=oZBWHO6MlDik/xfnpMWKRcWYwij9zTcWmbH9JuSmErAy7WB07e1TiF4dmrbYGrUrqE
 qfRPZudJxSJMEBbPTN71bDZdMWPCrJkbvu8G7XGoSbB0Kx34lsholiAsXcWwqN10JtAU
 iOCFxhlFjbpIHLaFaQJOBJAm68LmJFbPxQgZuVSKrSYMQSv1COiw2SUduvBiHjvsxcll
 SIQaO4hysm74vwz4ag6lDgfbljYQ6gTEO0Fln/KDw5G3EyoU4W7ba+OEbrCIfHydiwYn
 pXBLSiowmepxk4ogSoo4Ab+GKnE6jOcIyJP+L+T59F2DnNwEODLueAcdNSCaAW5tjuuP
 lBTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cY8bWJYAziC6DykutTES7fh6tr7JoLymaKn0aTQJgAA=;
 b=oNaCuvYTJXBu6TNzYu021pPxdK/8ftSkXWZvC1ht3tgubxZeI90wqJysHQ0ydWvaH0
 xSQjLfCf0zNJvhZnTuoyE+Y66eFlwuKvzZJbShm6/TOrRM1rkEEijOWCbsV4/x9w/bK3
 Wh0AECkA1Wwa5QJg0ze5hkTmO7G8d9hlTeNSjf8hrK6oLvl187PItZ51Kw5p4+LwVxpU
 Wv3q2ZDW2wS1dP7W9VeeMkVA+RMUWkA1gzVwlAEOKCj2Ev2NmpVCdNKN0rH5/BaA2Aa3
 weXL+6MMvq+m7D+dxHj/CqU1NZX4FZ1MnsODLlJ5cU2LEtKscediUyC613k/BjYY5lRl
 3x7w==
X-Gm-Message-State: AOAM533RY3VsSDeEY3ycHJKU9+9A4OdhxOTntjcBrWIzzMH34ZKF5Sau
 vHx/9kPV5DWX/XgUoW0CcZa0iEVHUvzcDmej4O4ZWv93PAc=
X-Google-Smtp-Source: ABdhPJzIXkJVvDhLwFX1ARUU8mtpCzq9VTmjBd6JQhlCMg9ID1AyioP6mhJJ2XBj6nVE6eoFrNsRgaLgO0TsCsULEdY=
X-Received: by 2002:a05:620a:2049:: with SMTP id
 d9mr13093079qka.449.1590099049726; 
 Thu, 21 May 2020 15:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200521152301.2587579-1-hch@lst.de>
 <20200521152301.2587579-13-hch@lst.de>
In-Reply-To: <20200521152301.2587579-13-hch@lst.de>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 21 May 2020 15:10:38 -0700
Message-ID: <CAEf4BzbDvJzbygB9T2_4YtCx8J+ESp9rhpB=BCQVDa0QBHrV0A@mail.gmail.com>
Subject: Re: [PATCH 12/23] bpf: handle the compat string in
 bpf_trace_copy_string better
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_151051_903219_3BB6E2A4 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrii.nakryiko[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Networking <netdev@vger.kernel.org>, x86@kernel.org,
 linux-um@lists.infradead.org, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, linux-mm@kvack.org,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 8:24 AM Christoph Hellwig <hch@lst.de> wrote:
>
> User the proper helper for kernel or userspace addresses based on
> TASK_SIZE instead of the dangerous strncpy_from_unsafe function.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  kernel/trace/bpf_trace.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>

[...]

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
