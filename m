Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C592190DBC
	for <lists+linux-um@lfdr.de>; Tue, 24 Mar 2020 13:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVLKKn7jPyPPSrKcMs049eQFffBtjAy8rvrzQ7g3pxc=; b=hzzp+WswlLqBHV
	v6LiylS7fkA/dbmCWpn9S2chRqfyiamG0/hKS+hXGqWx4RhMxAbFt4OHdfNxEcD6oKgdVONtH/b2g
	oLTYfhpnIjU84iOhw8vakpcgTZh1DYtZ0D4lsMMFuxB3pOSLf5wPdDLQCjwyrOCRzc1OUIw5/0Rk7
	bx9WlDReJ9jbLH4ssZ3euFS7XkjzrbtVvvVEPYl6Q+qKlpDm9JTxS48v3cysxCjH2+oZh7TOybVZB
	a9tZ5iML5cENGTapt/nMP7w8udRZ96bPNmyxV7ETTd+C+e1imN/3IWzK+gSYvDRqR+ivq//AA8UwJ
	NshI6i4OYZGOOM/FUsVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGinX-00062a-5l; Tue, 24 Mar 2020 12:36:47 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGinU-00061P-7h
 for linux-um@lists.infradead.org; Tue, 24 Mar 2020 12:36:45 +0000
IronPort-SDR: OlZFgRwVc3F56WhEPEBaXRY4QJZRWmMGTnxDoUJ5eNf5fsVP6/Wr/ip4XB+c9y2RMInY9FADGO
 OggGC6rGw0HA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 05:36:43 -0700
IronPort-SDR: LXAUFJrQ6+LaOFpNE7IgkDcma4O0UjOy098rnAwg4yxFJZ+KBo1rguv3vaDktm4vI40XB/QIXU
 7O7vL0piyejw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,300,1580803200"; d="scan'208";a="281701428"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 24 Mar 2020 05:36:42 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jGinU-00CWjK-WC; Tue, 24 Mar 2020 14:36:45 +0200
Date: Tue, 24 Mar 2020 14:36:44 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
Subject: Re: [PATCH v1] hostfs: Use kasprintf() instead of fixed buffer
 formatting
Message-ID: <20200324123644.GJ1922688@smile.fi.intel.com>
References: <20200320130735.50925-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320130735.50925-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_053644_287709_C3131010 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 03:07:35PM +0200, Andy Shevchenko wrote:
> Improve readability and maintainability by replacing a hardcoded string
> allocation and formatting by the use of the kasprintf() helper.
> 

Any comments so far?

> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  fs/hostfs/hostfs_kern.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/fs/hostfs/hostfs_kern.c b/fs/hostfs/hostfs_kern.c
> index e6b8c49076bb..c070c0d8e3e9 100644
> --- a/fs/hostfs/hostfs_kern.c
> +++ b/fs/hostfs/hostfs_kern.c
> @@ -139,8 +139,8 @@ static char *inode_name(struct inode *ino)
>  
>  static char *follow_link(char *link)
>  {
> -	int len, n;
>  	char *name, *resolved, *end;
> +	int n;
>  
>  	name = __getname();
>  	if (!name) {
> @@ -164,15 +164,13 @@ static char *follow_link(char *link)
>  		return name;
>  
>  	*(end + 1) = '\0';
> -	len = strlen(link) + strlen(name) + 1;
>  
> -	resolved = kmalloc(len, GFP_KERNEL);
> +	resolved = kasprintf(GFP_KERNEL, "%s%s", link, name);
>  	if (resolved == NULL) {
>  		n = -ENOMEM;
>  		goto out_free;
>  	}
>  
> -	sprintf(resolved, "%s%s", link, name);
>  	__putname(name);
>  	kfree(link);
>  	return resolved;
> @@ -921,18 +919,16 @@ static int hostfs_fill_sb_common(struct super_block *sb, void *d, int silent)
>  	sb->s_d_op = &simple_dentry_operations;
>  	sb->s_maxbytes = MAX_LFS_FILESIZE;
>  
> -	/* NULL is printed as <NULL> by sprintf: avoid that. */
> +	/* NULL is printed as '(null)' by printf(): avoid that. */
>  	if (req_root == NULL)
>  		req_root = "";
>  
>  	err = -ENOMEM;
>  	sb->s_fs_info = host_root_path =
> -		kmalloc(strlen(root_ino) + strlen(req_root) + 2, GFP_KERNEL);
> +		kasprintf(GFP_KERNEL, "%s/%s", root_ino, req_root);
>  	if (host_root_path == NULL)
>  		goto out;
>  
> -	sprintf(host_root_path, "%s/%s", root_ino, req_root);
> -
>  	root_inode = new_inode(sb);
>  	if (!root_inode)
>  		goto out;
> -- 
> 2.25.1
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
