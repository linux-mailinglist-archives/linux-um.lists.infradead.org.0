Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291A711EC32
	for <lists+linux-um@lfdr.de>; Fri, 13 Dec 2019 21:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbARGTwX7W5R4vcqwCfOEk049nwIvvrGV1UKkqVoZDo=; b=OsH8HUqv8DFenR
	PmPZABoFfK6cRj6gkoCQaVXlKPXI+E3420UxbQkDDvjfNiuAPD901L2UOPdmPOGzzJBXlOV99BIcU
	iQMfBULwIi0W5xLAhEfaDdGm3L0IW09QG/ES9CAuaUz7gUYPqKc9Mue4uJ8qt5SUSEktkNy+fGHHr
	BPtkZCWC9bPVefsy6Ja7z2+MjavzDT9eEE4Fl5a8ItSGfIcmK+H8Mne5W+k7L1m7/mbkPycLFGohp
	PA9cjmEgP8DqQ9a8kJSWLozuyml34gKq+mDEPS0sJ1ZsrvLBMx/GbOyApGun2V7YH2KY1freShUHZ
	MMzkGd+ZIpcKXJkkGJHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifrxH-0001Rv-Um; Fri, 13 Dec 2019 20:54:31 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifrxF-0001Qq-IC
 for linux-um@lists.infradead.org; Fri, 13 Dec 2019 20:54:31 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MgNQd-1i4aSD2T9D-00huUn; Fri, 13 Dec 2019 21:54:18 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org, linux-kernel@vger.kernel.org,
 Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH v2 10/24] hostfs: pass 64-bit timestamps to/from user space
Date: Fri, 13 Dec 2019 21:53:38 +0100
Message-Id: <20191213205417.3871055-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191213204936.3643476-1-arnd@arndb.de>
References: <20191213204936.3643476-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:a6AdbmdDziwYGHu+FLwRLl9xFjl6ntLHucVI0g7wMYChjz0a15h
 smNUqa7abfPVyLZDEicFzc+kxaoNSdsVsBhb2C3KoKHnF4X8drVpnzEeQwBcbSTwVrbA4ZE
 l/jIyoAGeOSrx0BHpxPkM9AhZOahh3h/KMQdhAQJBgsQmtKP1NyFUKIJaAQ9SbK3m9M929y
 ljS3RSrIpKC/5sFEyqAAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:b1QJuSoZs2Y=:1GUnlu2dF2dprRPCt31Clf
 Kv1y3O8o9ERlAkl4V0Fe0QrmFl1eJGcoNbAP0shJliOwxb439vJP2ESzT6Q6LmTMB/1OUgg9L
 E8Eo8/uwZZx5ox+EFguRWTmeEqyers2S/DSkAwyHIIrMAzFr8MyXCyhm009u6VdNeqCkCZFk4
 e1QPQn3EmkzHcdqZUu7o5eZFrT7OWWdmJQrWh68tRPsSPlHGqTn19fa4eHLmlpExQ8JxzgArD
 t8eCWD9AwqyNgGiMB7tiqzu5ddMtDEFtWuXgss4ODnuNNPpz2g8dUGsqKO1W5yFO+B8zffSMs
 iTkexflWc1Ypsz4//U87m4Xu3OVdSBxRG1m+/lYHw1KEoDAUwJfg5+k256HLY6TjdHxZCABIL
 GI64J+yahQXalgJZAXy5iwZA8cLeJWtJC8ByybbPqW8PUjSD76HnNYIHjBufaflMJ0guhkC+4
 sYwivnoImJE9ADg5/9YBzIESX7pRf/SUfjiLs9A15TqtB4NlVfNeFDoRZbBpFScRWO+4PbQbD
 FqLeH63FvQfoifJVe4Qfae2M9f6G0FKaqVFof3e5uDC3Zyv1KgHQN0YLphROlOsL7ZRuoNaE6
 DQDZGX8LVOCgHnoleFFuqaASFjkLl69bGmbUCy+2H1d8KVZa9J/AMKydajYxybqMjHt1Ac6CS
 SZtUewPJGvklOSadqpjRJquJhKDiz9Vmq6zZRh13oCELpbJlrQTDjJmO0dRcdr1YKe+j/gM2d
 gWZN+GMeXDsvdTyYfsux7MOfX/hcSZ9O8F95amXeLAxhJJR322Q3FWab15NoFKliM0HGKZEzb
 vYWwoCO7nFofkOIokJhiMcWeRAvAGdQYpyCKuveyQ8wLV4bDaHIIIEvxvEVnG0HowsDZgTSO5
 LWDJ78F7la/VYdUw7G1w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_125429_899097_AA1C3655 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: linux-um@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
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
