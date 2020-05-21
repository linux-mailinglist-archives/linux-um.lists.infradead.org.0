Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA501DD9F2
	for <lists+linux-um@lfdr.de>; Fri, 22 May 2020 00:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qlZfm+jTksw/KWtPSoPCQSxs/iO/WyxJ4AbH/uTmh4=; b=CbmU+usVfvIIjF
	oSvv2z2naYJQ4Nf975GMwh35psNjCBIQHkeaKCbF6uQqah7r7u+An6kfT9a8vWqimRcNKxIUrc/5N
	zzev6JjHcQgFvXGt8JpucQWKH7jJmbDmb9YZEFfoRqmR/o63lds+DGUdNtrTPRwTU/BV9fBcy2+IV
	ibrNZ9l+FylyK3K8UQfgiMV+/eOnHOcvL17twZNS16s/+zuw+1YvvJguD8rTG9Jw8wAdiwCbHgPwv
	wrRwk0Eywc1FstGNZ0No/KY68vTeGRa7Yp7fMtRzcTYOHe7pemLqIA2rOpI+o4UY5BQyrEc++6zU8
	4hlmj1dtfW7Ms4a3o+XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtOy-0001z0-MD; Thu, 21 May 2020 22:10:56 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtOw-0001xj-N8
 for linux-um@lists.infradead.org; Thu, 21 May 2020 22:10:55 +0000
Received: by mail-qk1-x741.google.com with SMTP id w3so3380931qkb.6
 for <linux-um@lists.infradead.org>; Thu, 21 May 2020 15:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=isMsZ2pUMyCVKxa9Y2mlyk5l3TCYNg/xt93/ki7P2xM=;
 b=rvtv2nZMjsCYj/CeRcxqSRzJYCvoWBWeEm/72+lnNyxa+Vdy9NkfFeD8cpeGY76yDk
 wfvMzNxbucIn7Hs+oWyf05qo9fHMcUsteanx5aU0XArHtMRRXJLuU721EUNgAES4ID8L
 4BK22OGZzPIFuxQJNAXNMRKzin+VQSx6P4f7rTt5QxVcnbVdnbKLOB4xWP/9BUtlDCzG
 wxQKxlWDremxmA6nHO7Dnyr4bSR0bzQXoj8MWM7oqmmacFdDmArrPOzkdO2ojiT2NeXZ
 3rF1QgvrXugmu2458C0loC8GmxZvMhABO4SKgIQSvB76sfSoth+Bvjqp6Btx4FaWlhSq
 MSyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=isMsZ2pUMyCVKxa9Y2mlyk5l3TCYNg/xt93/ki7P2xM=;
 b=gPMrr8JYelz8eWuZZ5RNo9GEFkdd5OWPzH5764pDU0OGnHHcmR126BazoL7YaeMzBu
 94s+5dJYq0a52OJMzRuNM+L1mFtKVUafQ6rSBK0kogKpCDOxkUDwjBO+ePPpZ+ieHlEI
 9ZJmUzEQgQ1i3KXKAC90M/jfiPOddzfaHwcN0FjwYsbYcRy3QwPsJbIPBFA7pOFaIR/a
 Z8Lpzz1/kZ5ySBN2Leg9L9w03GuAhkNGMmXlplnSZQq/YGBa+NN5ntM3d6FicpdqKQgL
 FKYmwzkY5f6P2K5FellJgv/f5I+eFiHCOuqOty4UNtNt686JEbHsaxGkCQOeWh1ceS9f
 8m6w==
X-Gm-Message-State: AOAM5324Idjwp0QXO5gnS0ixr1KvcZ7U341RjxYwdc7qP+w08jChy/AZ
 uVz1PxQ14XxxcS8YLJg90bVS1SOggAS54dtA8rs=
X-Google-Smtp-Source: ABdhPJyXmTlK01x/mLueG4iMCV7LUGdCvFmE02/3ZxSTylcerxvuwFpzisGXHtk+V9iTqf6OpLYFCd1cU/qrM9V446Y=
X-Received: by 2002:ae9:e713:: with SMTP id m19mr12160235qka.39.1590099053692; 
 Thu, 21 May 2020 15:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200521152301.2587579-1-hch@lst.de>
 <20200521152301.2587579-14-hch@lst.de>
In-Reply-To: <20200521152301.2587579-14-hch@lst.de>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 21 May 2020 15:10:42 -0700
Message-ID: <CAEf4BzZCp3w9YB0Hg1yyfXFTTCv_Kvi2Xc5RXm7DU2kgm31EUg@mail.gmail.com>
Subject: Re: [PATCH 13/23] bpf: rework the compat kernel probe handling
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_151054_754477_3DF8C6D7 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

On Thu, May 21, 2020 at 8:26 AM Christoph Hellwig <hch@lst.de> wrote:
>
> Instead of using the dangerous probe_kernel_read and strncpy_from_unsafe
> helpers, rework the compat probes to check if an address is a kernel or
> userspace one, and then use the low-level kernel or user probe helper
> shared by the proper kernel and user probe helpers.  This slightly
> changes behavior as the compat probe on a user address doesn't check
> the lockdown flags, just as the pure user probes do.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---

Looks good, thanks.

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  kernel/trace/bpf_trace.c | 109 ++++++++++++++++++++++++---------------
>  1 file changed, 67 insertions(+), 42 deletions(-)
>

[...]

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
