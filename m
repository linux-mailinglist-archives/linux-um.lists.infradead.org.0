Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDE91F9011
	for <lists+linux-um@lfdr.de>; Mon, 15 Jun 2020 09:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjbsyCVdRJDX4u2lx0R45AWL/ys+SkgJgsg86zYl6dY=; b=jM+TlQnrjPyDux
	37kIsbe8XQn7/I1dNq8ecLwJXB1kOowl0AaF0aRWpK0RZw97lra9LpbRkelaRVF9LI5I/Fg+MSfMJ
	uN4zzww8jWgNmy+fF3crlmm9mk9WPGIVH400jITYuiTzwNvEoIi8wZenXfQJqjh9vs12FaJBEandL
	FexoqP73JJ7DMlUjFMjmEOJcpct7cK5FH3xAJni5WZYDGmHqGoxt4An8DgHMxtZSuqeDdPwAdwSIC
	lZYAMGtWc8QCosKoXjz8ZXme0CaZ3Fw2zLo7BtrWFlSy42Z8/Vi7+e4vO/lMz0gU/1w54vkGTUsYK
	Lhe9E16kD7OW2wSXNsoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjhc-0007mL-U3; Mon, 15 Jun 2020 07:38:44 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjha-0007lG-0a
 for linux-um@lists.infradead.org; Mon, 15 Jun 2020 07:38:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C138FAE39;
 Mon, 15 Jun 2020 07:38:42 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id E64861E1289; Mon, 15 Jun 2020 09:38:36 +0200 (CEST)
Date: Mon, 15 Jun 2020 09:38:36 +0200
From: Jan Kara <jack@suse.cz>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] proc: Use new_inode not new_inode_pseudo
Message-ID: <20200615073836.GD9449@quack2.suse.cz>
References: <000000000000d788c905a7dfa3f4@google.com>
 <87mu58p02g.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mu58p02g.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_003842_349462_F946560A 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jack@suse.cz, mareklindner@neomailbox.ch, amir73il@gmail.com, a@unstable.cc,
 sven@narfation.org, anton.ivanov@cambridgegreys.com, sfr@canb.auug.org.au,
 syzbot <syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com>,
 kuba@kernel.org, adobriyan@gmail.com, syzkaller-bugs@googlegroups.com,
 jdike@addtoit.com, linux-um@lists.infradead.org, sw@simonwunderlich.de,
 netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
 linux-kernel@vger.kernel.org, richard@nod.at, linux-fsdevel@vger.kernel.org,
 alex.dewar@gmx.co.uk, akpm@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri 12-06-20 14:15:51, Eric W. Biederman wrote:
> 
> Recently syzbot reported that unmounting proc when there is an ongoing
> inotify watch on the root directory of proc could result in a use
> after free when the watch is removed after the unmount of proc
> when the watcher exits.
> 
> Commit 69879c01a0c3 ("proc: Remove the now unnecessary internal mount
> of proc") made it easier to unmount proc and allowed syzbot to see the
> problem, but looking at the code it has been around for a long time.
> 
> Looking at the code the fsnotify watch should have been removed by
> fsnotify_sb_delete in generic_shutdown_super.  Unfortunately the inode
> was allocated with new_inode_pseudo instead of new_inode so the inode
> was not on the sb->s_inodes list.  Which prevented
> fsnotify_unmount_inodes from finding the inode and removing the watch
> as well as made it so the "VFS: Busy inodes after unmount" warning
> could not find the inodes to warn about them.
> 
> Make all of the inodes in proc visible to generic_shutdown_super,
> and fsnotify_sb_delete by using new_inode instead of new_inode_pseudo.
> The only functional difference is that new_inode places the inodes
> on the sb->s_inodes list.
> 
> I wrote a small test program and I can verify that without changes it
> can trigger this issue, and by replacing new_inode_pseudo with
> new_inode the issues goes away.
> 
> Cc: stable@vger.kernel.org
> Link: https://lkml.kernel.org/r/000000000000d788c905a7dfa3f4@google.com
> Reported-by: syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com
> Fixes: 0097875bd415 ("proc: Implement /proc/thread-self to point at the directory of the current thread")
> Fixes: 021ada7dff22 ("procfs: switch /proc/self away from proc_dir_entry")
> Fixes: 51f0885e5415 ("vfs,proc: guarantee unique inodes in /proc")
> Signed-off-by: "Eric W. Biederman" <ebiederm@xmission.com>

Thanks for analysing this! I agree with the analysis and the patch looks
good to me. You can add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/proc/inode.c       | 2 +-
>  fs/proc/self.c        | 2 +-
>  fs/proc/thread_self.c | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/proc/inode.c b/fs/proc/inode.c
> index f40c2532c057..28d6105e908e 100644
> --- a/fs/proc/inode.c
> +++ b/fs/proc/inode.c
> @@ -617,7 +617,7 @@ const struct inode_operations proc_link_inode_operations = {
>  
>  struct inode *proc_get_inode(struct super_block *sb, struct proc_dir_entry *de)
>  {
> -	struct inode *inode = new_inode_pseudo(sb);
> +	struct inode *inode = new_inode(sb);
>  
>  	if (inode) {
>  		inode->i_ino = de->low_ino;
> diff --git a/fs/proc/self.c b/fs/proc/self.c
> index ca5158fa561c..72cd69bcaf4a 100644
> --- a/fs/proc/self.c
> +++ b/fs/proc/self.c
> @@ -43,7 +43,7 @@ int proc_setup_self(struct super_block *s)
>  	inode_lock(root_inode);
>  	self = d_alloc_name(s->s_root, "self");
>  	if (self) {
> -		struct inode *inode = new_inode_pseudo(s);
> +		struct inode *inode = new_inode(s);
>  		if (inode) {
>  			inode->i_ino = self_inum;
>  			inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
> diff --git a/fs/proc/thread_self.c b/fs/proc/thread_self.c
> index ac284f409568..a553273fbd41 100644
> --- a/fs/proc/thread_self.c
> +++ b/fs/proc/thread_self.c
> @@ -43,7 +43,7 @@ int proc_setup_thread_self(struct super_block *s)
>  	inode_lock(root_inode);
>  	thread_self = d_alloc_name(s->s_root, "thread-self");
>  	if (thread_self) {
> -		struct inode *inode = new_inode_pseudo(s);
> +		struct inode *inode = new_inode(s);
>  		if (inode) {
>  			inode->i_ino = thread_self_inum;
>  			inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
> -- 
> 2.20.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
