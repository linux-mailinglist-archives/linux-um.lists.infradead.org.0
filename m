Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F341F7D73
	for <lists+linux-um@lfdr.de>; Fri, 12 Jun 2020 21:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syPmDLPqXY4n6s4b0SchyuJfCJZCIEMj3nqSyqZAXHI=; b=ILTBh4XCD2x1D4
	Kd8y2jRgTd/uMqFN+mL8l1PDNRDowt9w2vvuzEiSzAiW5jdoz3vzZPcikNF3AaReoS3e6bbBGTSNa
	WrsYz24fmdO068jvgjNEZt05TYLyzuPMuSVKelDi5QpRxqGJVghRJS/ZKIj5TtYdL4xQLD52LpgI6
	SX/+JDYPQdVSzmGQl2YokRrXWDk11YlpT0RtTyNpMCPGBGkMwJIwdp2Eh4jaewe+/7nn+0jd7NAKA
	2rrB+Xnr2c/TBHmeF82NCdfCLs1NcDmhbd5N3nrgBbp8IHLt33qMZdDnVlvxyHogt93UcLHmt7H/P
	zId6uoQ1lp+UNUJfYx4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjpE1-00074H-2s; Fri, 12 Jun 2020 19:20:25 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjpDx-00073e-Sv
 for linux-um@lists.infradead.org; Fri, 12 Jun 2020 19:20:23 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jjpDl-0004PN-Dk; Fri, 12 Jun 2020 13:20:09 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jjpDd-0006RR-MZ; Fri, 12 Jun 2020 13:20:09 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: syzbot <syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com>
References: <000000000000d788c905a7dfa3f4@google.com>
Date: Fri, 12 Jun 2020 14:15:51 -0500
In-Reply-To: <000000000000d788c905a7dfa3f4@google.com> (syzbot's message of
 "Fri, 12 Jun 2020 02:24:11 -0700")
Message-ID: <87mu58p02g.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jjpDd-0006RR-MZ; ; ; mid=<87mu58p02g.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX19vy/8HlHfqiCxlfZY83od+GSsaBZEU8Is=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa01.xmission.com
X-Spam-Level: ***
X-Spam-Status: No, score=3.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,LotsOfNums_01,NO_DNS_FOR_FROM,SORTED_RECIPS,
 T_TM2_M_HEADER_IN_MSG autolearn=disabled version=3.4.2
X-Spam-Virus: No
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4825]
 *  2.5 SORTED_RECIPS Recipient list is sorted by address
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 *  1.2 LotsOfNums_01 BODY: Lots of long strings of numbers
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa01 0; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 NO_DNS_FOR_FROM DNS: Envelope sender has no MX or A DNS records
X-Spam-DCC: ; sa01 0; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ***;syzbot
 <syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 7251 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 3.9 (0.1%), b_tie_ro: 2.8 (0.0%), parse: 0.68
 (0.0%), extract_message_metadata: 12 (0.2%), get_uri_detail_list: 1.77
 (0.0%), tests_pri_-1000: 2.7 (0.0%), tests_pri_-950: 0.97 (0.0%),
 tests_pri_-900: 0.84 (0.0%), tests_pri_-90: 139 (1.9%), check_bayes:
 138 (1.9%), b_tokenize: 8 (0.1%), b_tok_get_all: 8 (0.1%),
 b_comp_prob: 1.97 (0.0%), b_tok_touch_all: 117 (1.6%), b_finish: 0.72
 (0.0%), tests_pri_0: 6340 (87.4%), check_dkim_signature: 0.39 (0.0%),
 check_dkim_adsp: 6008 (82.9%), poll_dns_idle: 6742 (93.0%),
 tests_pri_10: 2.6 (0.0%), tests_pri_500: 746 (10.3%), rewrite_mail:
 0.00 (0.0%)
Subject: [PATCH] proc: Use new_inode not new_inode_pseudo
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_122021_933780_EEF42398 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
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
Cc: sfr@canb.auug.org.au, b.a.t.m.a.n@lists.open-mesh.org, jack@suse.cz,
 mareklindner@neomailbox.ch, sw@simonwunderlich.de,
 linux-um@lists.infradead.org, jdike@addtoit.com, amir73il@gmail.com,
 a@unstable.cc, linux-kernel@vger.kernel.org, davem@davemloft.net,
 syzkaller-bugs@googlegroups.com, richard@nod.at, netdev@vger.kernel.org,
 kuba@kernel.org, linux-fsdevel@vger.kernel.org, alex.dewar@gmx.co.uk,
 akpm@linux-foundation.org, adobriyan@gmail.com, sven@narfation.org,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


Recently syzbot reported that unmounting proc when there is an ongoing
inotify watch on the root directory of proc could result in a use
after free when the watch is removed after the unmount of proc
when the watcher exits.

Commit 69879c01a0c3 ("proc: Remove the now unnecessary internal mount
of proc") made it easier to unmount proc and allowed syzbot to see the
problem, but looking at the code it has been around for a long time.

Looking at the code the fsnotify watch should have been removed by
fsnotify_sb_delete in generic_shutdown_super.  Unfortunately the inode
was allocated with new_inode_pseudo instead of new_inode so the inode
was not on the sb->s_inodes list.  Which prevented
fsnotify_unmount_inodes from finding the inode and removing the watch
as well as made it so the "VFS: Busy inodes after unmount" warning
could not find the inodes to warn about them.

Make all of the inodes in proc visible to generic_shutdown_super,
and fsnotify_sb_delete by using new_inode instead of new_inode_pseudo.
The only functional difference is that new_inode places the inodes
on the sb->s_inodes list.

I wrote a small test program and I can verify that without changes it
can trigger this issue, and by replacing new_inode_pseudo with
new_inode the issues goes away.

Cc: stable@vger.kernel.org
Link: https://lkml.kernel.org/r/000000000000d788c905a7dfa3f4@google.com
Reported-by: syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com
Fixes: 0097875bd415 ("proc: Implement /proc/thread-self to point at the directory of the current thread")
Fixes: 021ada7dff22 ("procfs: switch /proc/self away from proc_dir_entry")
Fixes: 51f0885e5415 ("vfs,proc: guarantee unique inodes in /proc")
Signed-off-by: "Eric W. Biederman" <ebiederm@xmission.com>
---
 fs/proc/inode.c       | 2 +-
 fs/proc/self.c        | 2 +-
 fs/proc/thread_self.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/proc/inode.c b/fs/proc/inode.c
index f40c2532c057..28d6105e908e 100644
--- a/fs/proc/inode.c
+++ b/fs/proc/inode.c
@@ -617,7 +617,7 @@ const struct inode_operations proc_link_inode_operations = {
 
 struct inode *proc_get_inode(struct super_block *sb, struct proc_dir_entry *de)
 {
-	struct inode *inode = new_inode_pseudo(sb);
+	struct inode *inode = new_inode(sb);
 
 	if (inode) {
 		inode->i_ino = de->low_ino;
diff --git a/fs/proc/self.c b/fs/proc/self.c
index ca5158fa561c..72cd69bcaf4a 100644
--- a/fs/proc/self.c
+++ b/fs/proc/self.c
@@ -43,7 +43,7 @@ int proc_setup_self(struct super_block *s)
 	inode_lock(root_inode);
 	self = d_alloc_name(s->s_root, "self");
 	if (self) {
-		struct inode *inode = new_inode_pseudo(s);
+		struct inode *inode = new_inode(s);
 		if (inode) {
 			inode->i_ino = self_inum;
 			inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
diff --git a/fs/proc/thread_self.c b/fs/proc/thread_self.c
index ac284f409568..a553273fbd41 100644
--- a/fs/proc/thread_self.c
+++ b/fs/proc/thread_self.c
@@ -43,7 +43,7 @@ int proc_setup_thread_self(struct super_block *s)
 	inode_lock(root_inode);
 	thread_self = d_alloc_name(s->s_root, "thread-self");
 	if (thread_self) {
-		struct inode *inode = new_inode_pseudo(s);
+		struct inode *inode = new_inode(s);
 		if (inode) {
 			inode->i_ino = thread_self_inum;
 			inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
-- 
2.20.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
