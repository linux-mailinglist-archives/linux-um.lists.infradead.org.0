Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CEFC3EA7
	for <lists+linux-um@lfdr.de>; Tue,  1 Oct 2019 19:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pjo2MjLEVWhwMJS3XN18suS0qX6I+aHENjVG18TyMPw=; b=pWTxnztoCepEyZ
	aY4F/zNpOCnxPs4OfKacW13/DqfgHVhiKrC2t++GoQhSyBQtydUmrHHI9yg/Dn+jD6ha7uNQYnTWo
	4DzvPlXQfpROu5h42ONeH+3BERxgLCGP/9O0sG/6DqRxVUGdxpANyxuo7HkaRXKuyyByuPFWfuTya
	tLhwjWdsh4sz1cjoSYjTDgti2M7tyIrlhyhflvyknrH3tLqX2MgM8ONJ9ZNgEby3wG0TbkC6BBCm8
	DtkCClGTaTtSHWzEbNuHZfDBj4OZ5UvzOaDMKcB/yThdrBQ6vALdlO6ZlM4N3O2IyfkajlbufgPkK
	B+O3MRDmI2eXZAiDfnqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFM2E-0006H0-O4; Tue, 01 Oct 2019 17:34:02 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFM2C-0006GZ-Np
 for linux-um@lists.infradead.org; Tue, 01 Oct 2019 17:34:01 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iFM2B-0007Er-EH; Tue, 01 Oct 2019 19:33:59 +0200
Message-ID: <0c6503e6b74ed1f25457d9919552fbfe48b68f37.camel@sipsolutions.net>
Subject: Re: [PATCH v2] um: Loadable BPF "Firmware" for vector drivers
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Tue, 01 Oct 2019 19:33:58 +0200
In-Reply-To: <20191001165537.3386-1-anton.ivanov@cambridgegreys.com>
References: <20191001165537.3386-1-anton.ivanov@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_103400_777766_0994F49F 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: richard@nod.at
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-10-01 at 17:55 +0100, Anton Ivanov wrote:
> 
> +	vp->bpf->filter = kmalloc(fw->size, GFP_KERNEL);
> +	if (!vp->bpf->filter)
> +		goto free_buffer;
> +
> +	memcpy(vp->bpf->filter, fw->data, fw->size);

Also, that's really just kmemdup().

> +	release_firmware(fw);
> +
> +	vp->bpf->len = fw->size / sizeof(struct sock_filter);

and that's a use-after-free, afaict?

johannes



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
