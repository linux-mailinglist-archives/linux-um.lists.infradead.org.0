Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E0E197096
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9f/VCP006i1kSdXsRuMklQH/2+rrBfLlQc0x79+Yo14=; b=GpFwg7Tk4QQFaq
	ULz9WJVDyc6FyL9BBp84PU+DK1cM2UUT6XYdbsqoY+3UYDbOjhy4H/XJJKI3RIflJdI2LcWcFDJhe
	DjGIK5fJcyZFOMa4EUBImxn/xrlRM1JduzzEhJM5kVesTfyHYrb/2yGZ91ODYZvF1dXnjc+/pnMC2
	KqS3f8SQZqN2/LYa4WtIFFXwp2+GgtUTvQOSP4Tg7RqkpbsBsVsopbeqI2BZ3EY2eNOkSHRNsm0Z9
	1flWZYMii11cH+ffulFBnye4TVdjMB3qbC1bY0mnOguze8amihJdJfb/4YCEvCdRNibMXbr07XCTS
	sCn2mpuk6cUO6fTVUsfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfhY-0001xj-Qd; Sun, 29 Mar 2020 21:42:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfhW-0001xQ-Lw
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:42:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id p10so18866719wrt.6
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1TVHBWmKirb/Mk+PmPXrosBd7yrJ3IZNUk1srAL59dk=;
 b=Hx5l/72dgPpSCTDGbRnwfNTfU+vZ7sx5qAQtGGK1xjRWN7EGU8M01h9oMm0KBZXX57
 ktQtivbySOWW58B9LngvP/YFV7+/t2Bk1IxpdGsgjALXUyQvqR19m3RJyZBIh1rsJ5oh
 SDv/Xa8Te9eKok4/mF0yrLOPhiMM43sHN2jIB/GO/8l8wteFYPl31lqsTD3hDZ+miSSh
 kJDVlXGxQgyyjxv4unamih4K5pLt9YnP1YQFCy/BtO7VUfeXlexR2NCeefIhEGgCL5rY
 bWmRtMwaqNyn++g3lNmJsWzd86ai5DEQv3Cn2/+yzrEBq24gjw3rAZIzTLKFsGbf3Z4X
 xGxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1TVHBWmKirb/Mk+PmPXrosBd7yrJ3IZNUk1srAL59dk=;
 b=iBdlcIYdaaVJk54QevSpGkqEn/ziNLhPhRT4F0f7FeZZBQhq2Qixi6wc2WXbi81qp9
 KZRpJ7sAy2U+cSWIx/iL9Ornbp7JRFI5yLxchK6OqTIMRaTOTzkWGejOobKQtLZJe9eq
 w2gfp8Dnyrsx2mpQl/7vrwvghwFvBTAz1IG6CmAhv8m80mEdIORD0bWIJEt1Jd078uWn
 HHZVJ2w4QHKGWoNAe/xQ0fY/zESmL/a7ufezq4eiXQaH2VnYW0ZSKplvk3eLl0maNADM
 xDJ3ECKzrZ4RHp+N8laTz/33TSoBxnyacIlRvyebMJ8VfaTe6oCb+dcXNrlBZP93HFso
 YKTg==
X-Gm-Message-State: ANhLgQ2lVF7MG7RCc9jiEuwxjH7WJMTOgbf7OfOffbac1KgsZTIOy3EL
 1X7YzgrxIBhp5H6hW/EPvHuVP5b90Z1S139Su70=
X-Google-Smtp-Source: ADFU+vuO2MaFdmZjG560qivNCL/ftLGYCPur85VQ2yCYRxbHOe4anOjvWIOJif7mwkgoNvzbkEH5R5hmWt63d53O4F0=
X-Received: by 2002:adf:f68b:: with SMTP id v11mr10937634wrp.270.1585518157502; 
 Sun, 29 Mar 2020 14:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200320130735.50925-1-andriy.shevchenko@linux.intel.com>
 <20200324123644.GJ1922688@smile.fi.intel.com>
In-Reply-To: <20200324123644.GJ1922688@smile.fi.intel.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:42:26 +0200
Message-ID: <CAFLxGvyEri=M+KQbd-46gQd_Qzrd_W85CzxZh5woJ+HdCFoCtg@mail.gmail.com>
Subject: Re: [PATCH v1] hostfs: Use kasprintf() instead of fixed buffer
 formatting
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_144238_719245_6F6B06CC 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 1:36 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Fri, Mar 20, 2020 at 03:07:35PM +0200, Andy Shevchenko wrote:
> > Improve readability and maintainability by replacing a hardcoded string
> > allocation and formatting by the use of the kasprintf() helper.
> >
>
> Any comments so far?
>
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > ---
> >  fs/hostfs/hostfs_kern.c | 12 ++++--------
> >  1 file changed, 4 insertions(+), 8 deletions(-)
> >
> > diff --git a/fs/hostfs/hostfs_kern.c b/fs/hostfs/hostfs_kern.c
> > index e6b8c49076bb..c070c0d8e3e9 100644
> > --- a/fs/hostfs/hostfs_kern.c
> > +++ b/fs/hostfs/hostfs_kern.c
> > @@ -139,8 +139,8 @@ static char *inode_name(struct inode *ino)
> >
> >  static char *follow_link(char *link)
> >  {
> > -     int len, n;
> >       char *name, *resolved, *end;
> > +     int n;
> >
> >       name = __getname();
> >       if (!name) {
> > @@ -164,15 +164,13 @@ static char *follow_link(char *link)
> >               return name;
> >
> >       *(end + 1) = '\0';
> > -     len = strlen(link) + strlen(name) + 1;
> >
> > -     resolved = kmalloc(len, GFP_KERNEL);
> > +     resolved = kasprintf(GFP_KERNEL, "%s%s", link, name);
> >       if (resolved == NULL) {
> >               n = -ENOMEM;
> >               goto out_free;
> >       }
> >
> > -     sprintf(resolved, "%s%s", link, name);
> >       __putname(name);
> >       kfree(link);
> >       return resolved;
> > @@ -921,18 +919,16 @@ static int hostfs_fill_sb_common(struct super_block *sb, void *d, int silent)
> >       sb->s_d_op = &simple_dentry_operations;
> >       sb->s_maxbytes = MAX_LFS_FILESIZE;
> >
> > -     /* NULL is printed as <NULL> by sprintf: avoid that. */
> > +     /* NULL is printed as '(null)' by printf(): avoid that. */
> >       if (req_root == NULL)
> >               req_root = "";
> >
> >       err = -ENOMEM;
> >       sb->s_fs_info = host_root_path =
> > -             kmalloc(strlen(root_ino) + strlen(req_root) + 2, GFP_KERNEL);
> > +             kasprintf(GFP_KERNEL, "%s/%s", root_ino, req_root);
> >       if (host_root_path == NULL)
> >               goto out;
> >
> > -     sprintf(host_root_path, "%s/%s", root_ino, req_root);
> > -
> >       root_inode = new_inode(sb);
> >       if (!root_inode)
> >               goto out;

Thanks for cleaning this up! Applied.

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
