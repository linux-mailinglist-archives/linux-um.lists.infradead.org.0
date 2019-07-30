Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73787A182
	for <lists+linux-um@lfdr.de>; Tue, 30 Jul 2019 08:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ultd6pQ3uvy3y2Jk8Oyiiqn1mJ/HcToxM78XAC2p0AY=; b=QTljxcfMHzXHIJ
	0QOHrdvG+HZCd4FIeddW8keycsLVyMS/B+nOWX5a4D52QyWtdlsmVC59etbRwptX2BuqsC6cskS9l
	fQ6pRfgWj7/7Xnmn+EPU3Owz251cOSKjKxh4nlWRjtSHoDWxDWWtplC+LD9VfkTnp0xpneAVX6VZn
	tUwFFagvxr5QrdFGU5AybPnZqXNCGy1Q/asRMJUKoaY5GrGwOZqwaYGYGh/fZsguuJTzyOgpYFwXU
	MxoWdIvC0ATl3Bn+ErVcE+JtYcxhqIOxGCnCiS8/g9uRxs0I5zIcUhz3qc5yZEe5xYMT8i4d2hbsT
	Fcu17usuKvFstQFBKqgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsM4F-0003PR-GG; Tue, 30 Jul 2019 06:57:03 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsM4C-0003Ow-3t
 for linux-um@lists.infradead.org; Tue, 30 Jul 2019 06:57:01 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hsM46-0007tM-Pr; Tue, 30 Jul 2019 08:56:54 +0200
Message-ID: <e29f4e44ac9d671521287d492b96cb8e5295b424.camel@sipsolutions.net>
Subject: Re: [PATCHv3 4/5] um: Fix off by one error in IRQ enumeration
From: Johannes Berg <johannes@sipsolutions.net>
To: anton.ivanov@cambridgegreys.com, linux-um@lists.infradead.org
Date: Tue, 30 Jul 2019 08:56:53 +0200
In-Reply-To: <20190722073025.20844-4-anton.ivanov@cambridgegreys.com>
References: <20190722073025.20844-1-anton.ivanov@cambridgegreys.com>
 <20190722073025.20844-4-anton.ivanov@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_235700_156963_93709B4A 
X-CRM114-Status: UNSURE (   4.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: richard@nod.at
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2019-07-22 at 08:30 +0100, anton.ivanov@cambridgegreys.com
wrote:
> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> 
> Fix an off-by-one in IRQ enumeration
> 
> Reported by: Dana Johnson <djohns042@gmail.com>

nit: "Reported-by"
 
> -#define LAST_IRQ (VECTOR_IRQ_SPACE + VECTOR_BASE_IRQ)
> +#define LAST_IRQ (VECTOR_IRQ_SPACE + VECTOR_BASE_IRQ - 1)

Somebody internally at my group just made the same patch, but came to
the cnoclusion that we also need, in arch/um/kernel/irq.c:


-   for (i = 1; i < LAST_IRQ; i++)
+   for (i = 1; i <= LAST_IRQ; i++)

in init_IRQ()?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
