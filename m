Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A5F132648
	for <lists+linux-um@lfdr.de>; Tue,  7 Jan 2020 13:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPHMD2g3mJiGqLGqfxveIc2e/SFOe1FogO4fGuFXf0U=; b=txRSDI0WUsd8ca
	rZj9sh+ZLbCjI7OffVV4zp/IjiVenp0bldMtorjaCKgyBWsDmyl4DnoW2dWUrYTmOgaFs5NdhZyXG
	OTQ0j0p9hSZTji5RKplRXXKlkmEGhHeoaG8uvEaRDZHFYcBqizw/0QWc+aa2tLI3p3leJnL6XIz63
	D2uRkEoQiPW/gTiBmtYG1PIFz6lgx4wQiakm3B/p1QTZ6MerJ2iqN7pBOM4iDjQouYkDdPj1gyhb9
	DwpMdGDpkvOSh7MM283oDy/USfQjOfw5kkabMQDPMMXLJrNm/2aAvlm3tHR8bBkMuIJHgL8DRjz/D
	cEly/qMJi0O+VJ7GkB8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioo5Z-0007sT-Cq; Tue, 07 Jan 2020 12:36:01 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioo5W-0007lV-8C
 for linux-um@lists.infradead.org; Tue, 07 Jan 2020 12:36:00 +0000
Received: from ip-109-41-1-227.web.vodafone.de ([109.41.1.227]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1ioo5K-0001qX-1o; Tue, 07 Jan 2020 12:35:46 +0000
Date: Tue, 7 Jan 2020 13:35:49 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Amanieu d'Antras <amanieu@gmail.com>, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH] um: Implement copy_thread_tls
Message-ID: <20200107123548.5fzu4v6czrlhrhmh@wittgenstein>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200104123928.1048822-1-amanieu@gmail.com>
 <20200105151928.qrmhnwer3r5ffc77@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200105151928.qrmhnwer3r5ffc77@wittgenstein>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_043558_454694_80C946BA 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: stable@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Jan 05, 2020 at 04:19:28PM +0100, Christian Brauner wrote:
> On Sat, Jan 04, 2020 at 01:39:30PM +0100, Amanieu d'Antras wrote:
> > This is required for clone3 which passes the TLS value through a
> > struct rather than a register.
> > 
> > Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> > Cc: linux-um@lists.infradead.org
> > Cc: <stable@vger.kernel.org> # 5.3.x
> 
> Thanks. I'm picking this up as part of the copy_thread_tls() series.
> (Leaving the patch in tact so people can Ack right here if they want to.)
> If I could get an Ack from one of the maintainers that would be great;
> see
> https://lore.kernel.org/lkml/20200102172413.654385-1-amanieu@gmail.com
> for more context.
> 
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

I've this up as part of the series link in above ^^ and moved it into
https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git/log/?h=clone3_tls

If I hear no objections I'll merge into into my fixes tree today or
tomorrow.

An Ack from one of the maintainers would still be appreciated.

Thanks!
Christian

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
