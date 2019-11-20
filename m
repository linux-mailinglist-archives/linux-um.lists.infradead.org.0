Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3AB10452E
	for <lists+linux-um@lfdr.de>; Wed, 20 Nov 2019 21:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWE/SYuVcgTcg8xIwOI+e2jnjQDVfceOaGMHyKYABr4=; b=lvqn2pOClPKGPq
	8OJATL8Jq9hXMdJCMNBhLN1nQYur3L0lkY/xCxsBnrn/UKqqZ6z5ooGElI1/iBzrlY1Tdarc5hmie
	3cxgI50nwhe6iXlwKkHQRdNZ2Nw7rt+97J+Zy6N6s5JvcEKsjgcniphp5aSxhppq/sck09uCrRwEo
	JnR70rtJ9KQ8+v1rE6MBlWo71i9lCtLH+4u2wwufXUtneA6cb9BsiNt00muAJ48BsS+Ww7xGYjwaE
	lX17OvfjHtTbsUBMeLBkjc5PXSqxxxVHuY4QRc2m6o5ETvFjg/O5GJCRpTHwmoRh1qKLiqRfXMZKl
	LJ03sive6mHUt53luDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWhc-0007j3-BT; Wed, 20 Nov 2019 20:35:52 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWhZ-0007i5-Bn
 for linux-um@lists.infradead.org; Wed, 20 Nov 2019 20:35:50 +0000
Received: from [167.98.27.226] (helo=xylophone)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iXWhV-0003lv-28; Wed, 20 Nov 2019 20:35:45 +0000
Message-ID: <1eb03d47afc38cd01d17988cf170b14066569bde.camel@codethink.co.uk>
Subject: Re: [Y2038] [PATCH 12/16] hostfs: pass 64-bit timestamps to/from
 user space
From: Ben Hutchings <ben.hutchings@codethink.co.uk>
To: Arnd Bergmann <arnd@arndb.de>, y2038@lists.linaro.org, Jeff Dike
 <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>, Anton Ivanov
 <anton.ivanov@cambridgegreys.com>
Date: Wed, 20 Nov 2019 20:35:44 +0000
In-Reply-To: <fff201b0d21a8ba775eb1d201e083ba96f8ff6f1.camel@codethink.co.uk>
References: <20191108213257.3097633-1-arnd@arndb.de>
 <20191108213257.3097633-13-arnd@arndb.de>
 <fff201b0d21a8ba775eb1d201e083ba96f8ff6f1.camel@codethink.co.uk>
Organization: Codethink Ltd.
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_123549_557563_069807AE 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Colin Ian King <colin.king@canonical.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-11-20 at 20:30 +0000, Ben Hutchings wrote:
> On Fri, 2019-11-08 at 22:32 +0100, Arnd Bergmann wrote:
> > The use of 'struct timespec' is deprecated in the kernel, so we
> > want to avoid the conversions from/to the proper timespec64
> > structure.
> > 
> > On the user space side, we have a 'struct timespec' that is defined
> > by the C library and that will be incompatible with the kernel's
> > view on 32-bit architectures once they move to a 64-bit time_t,
> > breaking the shared binary layout of hostfs_iattr and hostfs_stat.
> > 
> > This changes the two structures to use a new hostfs_timespec structure
> > with fixed 64-bit seconds/nanoseconds for passing the timestamps
> > between hostfs_kern.c and hostfs_user.c. With a new enough user
> > space side, this will allow timestamps beyond year 2038.
> [...]
> 
> The "user-space" side has a structure assignment in set_attr():
> 
> 	if (attrs->ia_valid & (HOSTFS_ATTR_ATIME | HOSTFS_ATTR_MTIME)) {
> 		err = stat_file(file, &st, fd);
> 		attrs->ia_atime = st.atime;
> 		attrs->ia_mtime = st.mtime;
> 		if (err != 0)
> 			return err;
> 	}
> 
> which will also need to be updated for this type change.

Sorry, I'm confused, this looks fine.

Ben.

-- 
Ben Hutchings, Software Developer                         Codethink Ltd
https://www.codethink.co.uk/                 Dale House, 35 Dale Street
                                     Manchester, M1 2HF, United Kingdom


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
