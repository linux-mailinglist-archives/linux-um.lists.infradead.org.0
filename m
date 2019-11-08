Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329E8F5A02
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 22:37:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbARGTwX7W5R4vcqwCfOEk049nwIvvrGV1UKkqVoZDo=; b=bLNPP6Qik513GI
	zxRkoRLGkKQhjafXjJrQLDjYLNeRAhT4JZlS07PpBl3/kuJL8DMdpp3b91vWGdi2lbHbILej3iU8d
	kq8uxtWGZh0MoSEX3jqTZzdVR53jqvsNM/cmBprYfjmlqt8c4xdTEYKIpPhPdu2Ub9LrXQKeTfR27
	3bRIFJ5GG+t3z9g2RB1HM0UFYvRjlcEAcjJKmaiwbOMhrwOxxhJsCyAlXIbQ8/Bz6duseq06MHKL4
	IPUZiXJwS0jbjV/C2dRpDJgnxS9FFJKLWfBKk7mJTQFclMoZOqu7awmvpLCLJ1Y6aAnheovneSlS+
	w5sVLEe0k1JH+PnTKqyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTBwC-00016W-R2; Fri, 08 Nov 2019 21:37:00 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBw9-000169-R7
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 21:36:59 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MXXdn-1iQ6Au3bOp-00YveV; Fri, 08 Nov 2019 22:36:51 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH 12/16] hostfs: pass 64-bit timestamps to/from user space
Date: Fri,  8 Nov 2019 22:32:50 +0100
Message-Id: <20191108213257.3097633-13-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191108213257.3097633-1-arnd@arndb.de>
References: <20191108213257.3097633-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Yjh6blzut3U2WoiDT+9caZknQkgK1SpL5j185/SocENaX6KahaJ
 kOL/KPbr4pFe9IK4tNAPuqUZYc9vyuuRJlXa5Jyi5HeOeb/Mqnh0xCaFpV2rdvsfH7y4Wit
 8UNwCPfTSY925fxcJvFdawPFZqCjcSfTBZkeg5nRD1wJtObhSfUCv5bW5Ua7XjmkI40iyLD
 p8Q5pHUIIqdkvM0JmOt5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:s6RMSOV+IEU=:WJyWxBiIq8IQCJo/f/EKGK
 nqQ7zcAZIxMF8ulFyWM0BfYcrcDNkXlwNqouT+zyA+QDs28rWHJWnLUgU3IGZV6s4hn9NIDl0
 og/Zgd7ooGGaFdG1Ixujt9uatHRtM/p2mXFQ3y9d+X6bDq2a10m3jJu5E/gleN/fStRntxfjt
 TMgfnaYURyOib+S2OXeg09KikTVqMiBXxamINr30VR6p4wxwrLGOLRpnoCi7B7FF/g2u7bENY
 Jc70Fs4f3erfgcfvzu5NszIBybVltfX5SoCJkff1nM1/30ycy0Ty1kUWdhDwaX3wzPcOSEaGv
 ieVmmTHqFpL+2pwStqHjQfThVawdeEKIp2qKX6AgWIPei04i26CNLIaPNE8OnWYR8xg5st6Ui
 DL9HNF09gu87sO0m45Ffair4klP3nAr52XsUhiOhuyw2orclqBQ7BZaiwqX8h4kCpBuG/RKvB
 45a5ySGCzIdLNbrBSLXjQp3OEVCbz1MQI5Ge8KRvURLrxLta7mN3uzS/bZN/yTvYRrmKOQmrs
 T7IOnOzlgOFPYQFeQgjzjW/4QvQzTi89y/sUvSbuKgej0slGgyvW/kxi1XgEOIaW7Hxjimqua
 n1ioK5aaHnQ4KXmIrXS7zqnikJzS9Dh39KvWoghF0JfkXVGb48p3ZzlnoXOVb88BLqSHuiZsS
 cEoyEbpdO0HCKFTUMxuOFghzD6KBj0kA2D+PA7I79q7eI5gu5nQ5sL1Rp8XM8GWxbN45szYrL
 PLEQ5gOAnsfDyg0iatYRqpwrvGpSOPxHB64nYdAItsP6HnAa2pE0jWVQ1rWrOS5O6lgvy+XtC
 GdFBv5ySckoxO0DoPYjQrhQZRgsWnmu035Pl8oaOzX2VHdSJzmoxST9WIZnKK+GvPp4XwIF55
 4PGIiv/0CL4yDVP7LC1w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_133658_169864_AC095E28 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The use of 'struct timespec' is deprecated in the kernel, so we
want to avoid the conversions from/to the proper timespec64
structure.

On the user space side, we have a 'struct timespec' that is defined
by the C library and that will be incompatible with the kernel's
view on 32-bit architectures once they move to a 64-bit time_t,
breaking the shared binary layout of hostfs_iattr and hostfs_stat.

This changes the two structures to use a new hostfs_timespec structure
with fixed 64-bit seconds/nanoseconds for passing the timestamps
between hostfs_kern.c and hostfs_user.c. With a new enough user
space side, this will allow timestamps beyond year 2038.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 fs/hostfs/hostfs.h      | 22 +++++++++++++---------
 fs/hostfs/hostfs_kern.c | 15 +++++++++------
 2 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/fs/hostfs/hostfs.h b/fs/hostfs/hostfs.h
index f4295aa19350..69cb796f6270 100644
--- a/fs/hostfs/hostfs.h
+++ b/fs/hostfs/hostfs.h
@@ -37,16 +37,20 @@
  * is on, and remove the appropriate bits from attr->ia_mode (attr is a
  * "struct iattr *"). -BlaisorBlade
  */
+struct hostfs_timespec {
+	long long tv_sec;
+	long long tv_nsec;
+};
 
 struct hostfs_iattr {
-	unsigned int	ia_valid;
-	unsigned short	ia_mode;
-	uid_t		ia_uid;
-	gid_t		ia_gid;
-	loff_t		ia_size;
-	struct timespec	ia_atime;
-	struct timespec	ia_mtime;
-	struct timespec	ia_ctime;
+	unsigned int		ia_valid;
+	unsigned short		ia_mode;
+	uid_t			ia_uid;
+	gid_t			ia_gid;
+	loff_t			ia_size;
+	struct hostfs_timespec	ia_atime;
+	struct hostfs_timespec	ia_mtime;
+	struct hostfs_timespec	ia_ctime;
 };
 
 struct hostfs_stat {
@@ -56,7 +60,7 @@ struct hostfs_stat {
 	unsigned int uid;
 	unsigned int gid;
 	unsigned long long size;
-	struct timespec atime, mtime, ctime;
+	struct hostfs_timespec atime, mtime, ctime;
 	unsigned int blksize;
 	unsigned long long blocks;
 	unsigned int maj;
diff --git a/fs/hostfs/hostfs_kern.c b/fs/hostfs/hostfs_kern.c
index 5a7eb0c79839..e6b8c49076bb 100644
--- a/fs/hostfs/hostfs_kern.c
+++ b/fs/hostfs/hostfs_kern.c
@@ -549,9 +549,9 @@ static int read_name(struct inode *ino, char *name)
 	set_nlink(ino, st.nlink);
 	i_uid_write(ino, st.uid);
 	i_gid_write(ino, st.gid);
-	ino->i_atime = timespec_to_timespec64(st.atime);
-	ino->i_mtime = timespec_to_timespec64(st.mtime);
-	ino->i_ctime = timespec_to_timespec64(st.ctime);
+	ino->i_atime = (struct timespec64){ st.atime.tv_sec, st.atime.tv_nsec };
+	ino->i_mtime = (struct timespec64){ st.mtime.tv_sec, st.mtime.tv_nsec };
+	ino->i_ctime = (struct timespec64){ st.ctime.tv_sec, st.ctime.tv_nsec };
 	ino->i_size = st.size;
 	ino->i_blocks = st.blocks;
 	return 0;
@@ -820,15 +820,18 @@ static int hostfs_setattr(struct dentry *dentry, struct iattr *attr)
 	}
 	if (attr->ia_valid & ATTR_ATIME) {
 		attrs.ia_valid |= HOSTFS_ATTR_ATIME;
-		attrs.ia_atime = timespec64_to_timespec(attr->ia_atime);
+		attrs.ia_atime = (struct hostfs_timespec)
+			{ attr->ia_atime.tv_sec, attr->ia_atime.tv_nsec };
 	}
 	if (attr->ia_valid & ATTR_MTIME) {
 		attrs.ia_valid |= HOSTFS_ATTR_MTIME;
-		attrs.ia_mtime = timespec64_to_timespec(attr->ia_mtime);
+		attrs.ia_mtime = (struct hostfs_timespec)
+			{ attr->ia_mtime.tv_sec, attr->ia_mtime.tv_nsec };
 	}
 	if (attr->ia_valid & ATTR_CTIME) {
 		attrs.ia_valid |= HOSTFS_ATTR_CTIME;
-		attrs.ia_ctime = timespec64_to_timespec(attr->ia_ctime);
+		attrs.ia_ctime = (struct hostfs_timespec)
+			{ attr->ia_ctime.tv_sec, attr->ia_ctime.tv_nsec };
 	}
 	if (attr->ia_valid & ATTR_ATIME_SET) {
 		attrs.ia_valid |= HOSTFS_ATTR_ATIME_SET;
-- 
2.20.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
