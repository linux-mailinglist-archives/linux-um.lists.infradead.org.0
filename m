Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AD7F59FF
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 22:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDylcW7r9cMITkCdmVS1YTP+wGuAjHCCx/SMmfHjGp4=; b=ZJtRM/U0lXMZHH
	CF8lMlgeEm2eMh/G6PvZ6y7yLQrlAWoQJf+S6BegqmdhLhvPmahnM00CNUiAl6eYdPYyYuTO+uG3J
	Ay4GOuATY++43hKTIrck1+oWnSJw1/zcttj8u3MQMlmXCH1NvL4EO1YPprP8/O7mRTyxjpuP40Adx
	uhSTe7BsO3HQRivYgeT9V4sfXH2N/QPXhRzgHU0GTAMy7cDxEVMXtFmUG0VLhdfaUzt4b0NsQv7b+
	jMD5hoNAlp5HzyWmM2FZXnIfMM25bBj0flVR5XpouN1xnMeIEXLe6/WP91d90wSFqgjzk7KgzigcY
	Vf0OSeLBIK2OnpYEoQkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTBv1-0000z5-BT; Fri, 08 Nov 2019 21:35:47 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBuy-0000yY-6M
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 21:35:46 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M6UqP-1iZUMu0OVt-006yfN; Fri, 08 Nov 2019 22:35:17 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org, Jeff Dike <jdike@addtoit.com>,
 Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH 06/16] um: ubd: use 64-bit time_t where possible
Date: Fri,  8 Nov 2019 22:32:44 +0100
Message-Id: <20191108213257.3097633-7-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191108213257.3097633-1-arnd@arndb.de>
References: <20191108213257.3097633-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Kz5NxHHOvfJYq5W0loqpTgWDD5GLAn6p6huhGseqlIGjUxpqs56
 erxGZ8PolN8DzkmutO7TPQe5q3wxkEU3RCNiYlW5wJtalQYwR6PmaPVhf1HaCzY5o0fj+nD
 YoXhDXSOKPWecRlA79QqQVTFWO+XadBooMOiOn3QBBxIVKz90NsdAavZscpPxBdSeVVG/NL
 PmCoJjOEvbJg5j0AalAvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gH4cxcsvPPE=:hhkpbE/jGdEEZKP4uMAozT
 ejzlw1RW5qktKjWGSMModOSILhU75yjNTk80hR/hGjz8RbthKD8/CDonT45r+z6whSMIhMi25
 VXwWGbHyZpJwpSKs1TSIaeGWZ3L2jFNdlI3cg51W0eCXBHbt6w8nqvVFunZPHPrDE55wWQGLS
 GLL/Jp/UAJrt/PI05CL/daHMETqQ//nkvq5OBqYNldxrgPW4ANogae9aU1MhHmawMZAsBiydc
 Wb5mPvc1WIPL6ERpQzHCA6FLyGV1wif+59yICf9sLQxUFo/J04MSQf0bYBPRAARf4h6ggpcyt
 H0PBILdXHVPB4TFzrHjEu8ExdPG/kBHdOjWrTuwWlbM2/CljE0dWZvoraRqwW43j0nY6zcl1g
 /labk9EUo1NRB3lEF62GsdZBEhOSnj7+NksyMBYMay3DsVbKNhhMW9dvv9VPjvWAguIjY6crl
 rD3raJk1+aALmjq94cII3T3fBh5uXqj1GcwEQfPmy7hXQbmgcI2dqo8+Z1yWlCbEb3a/ntuaI
 +oyF0A52DEmCjquGivmTJDbekX0hLNajdLoCFHrvJ2lv8CQUdiYXNBZqV+NFFSh52uNXliuHW
 Oa3mh/DErS/6lxfND6HRzNdDGAGH+5ohSwlcVG4zt+9ebvJOtm8/lmPFISdzUgPm9QrJJzO+B
 uxebqZrmBaKZp4mAgWCPOerw6NhBf6iCE3ZSrt0O0zkgwObq0ywe3eZuZwjsXBbcTW9X/CrGh
 5fF8/5SV+apzzPN3K2XgDkMLQ78KhJEEishwJBbpGV7mDetMJFF94lwJmwowih6zOSv+Hab6h
 bBvJe/uuZjIcyclTDAawK98ZHCmgTkTe1gnvGrcOP4XopQFQ6/hxQLDUFrnTkPm+esK0lR9At
 Dhn1NqhVQnn099gvMTDA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_133544_530556_3618C348 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Johannes Berg <johannes.berg@intel.com>,
 Erel Geron <erelx.geron@intel.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, Daniel Walter <dwalter@google.com>,
 Alex Dewar <alex.dewar@gmx.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The ubd code suffers from a possible y2038 overflow on 32-bit
architectures, both for the cow header and the os_file_modtime()
function.

Replace time_t with time64_t to extend the ubd_kern side as much
as possible.

Whether this makes a difference for the user side depends on
the host libc implementation that may use either 32-bit or 64-bit
time_t.

For the cow file format, the header contains an unsigned 32-bit
timestamp, which is good until y2106, passing this through a
'long long' gives us a consistent interpretation between 32-bit
and 64-bit um kernels.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/um/drivers/cow.h       |  2 +-
 arch/um/drivers/cow_user.c  |  7 ++++---
 arch/um/drivers/ubd_kern.c  | 10 +++++-----
 arch/um/include/shared/os.h |  2 +-
 arch/um/os-Linux/file.c     |  2 +-
 5 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/arch/um/drivers/cow.h b/arch/um/drivers/cow.h
index 760c507dd5b6..103adac691ed 100644
--- a/arch/um/drivers/cow.h
+++ b/arch/um/drivers/cow.h
@@ -11,7 +11,7 @@ extern int init_cow_file(int fd, char *cow_file, char *backing_file,
 extern int file_reader(__u64 offset, char *buf, int len, void *arg);
 extern int read_cow_header(int (*reader)(__u64, char *, int, void *),
 			   void *arg, __u32 *version_out,
-			   char **backing_file_out, time_t *mtime_out,
+			   char **backing_file_out, long long *mtime_out,
 			   unsigned long long *size_out, int *sectorsize_out,
 			   __u32 *align_out, int *bitmap_offset_out);
 
diff --git a/arch/um/drivers/cow_user.c b/arch/um/drivers/cow_user.c
index 74b0c2686c95..29b46581ddd1 100644
--- a/arch/um/drivers/cow_user.c
+++ b/arch/um/drivers/cow_user.c
@@ -17,6 +17,7 @@
 
 #define PATH_LEN_V1 256
 
+/* unsigned time_t works until year 2106 */
 typedef __u32 time32_t;
 
 struct cow_header_v1 {
@@ -197,7 +198,7 @@ int write_cow_header(char *cow_file, int fd, char *backing_file,
 		     int sectorsize, int alignment, unsigned long long *size)
 {
 	struct cow_header_v3 *header;
-	unsigned long modtime;
+	long long modtime;
 	int err;
 
 	err = cow_seek_file(fd, 0);
@@ -276,7 +277,7 @@ int file_reader(__u64 offset, char *buf, int len, void *arg)
 
 int read_cow_header(int (*reader)(__u64, char *, int, void *), void *arg,
 		    __u32 *version_out, char **backing_file_out,
-		    time_t *mtime_out, unsigned long long *size_out,
+		    long long *mtime_out, unsigned long long *size_out,
 		    int *sectorsize_out, __u32 *align_out,
 		    int *bitmap_offset_out)
 {
@@ -363,7 +364,7 @@ int read_cow_header(int (*reader)(__u64, char *, int, void *), void *arg,
 
 		/*
 		 * this was used until Dec2005 - 64bits are needed to represent
-		 * 2038+. I.e. we can safely do this truncating cast.
+		 * 2106+. I.e. we can safely do this truncating cast.
 		 *
 		 * Additionally, we must use be32toh() instead of be64toh(), since
 		 * the program used to use the former (tested - I got mtime
diff --git a/arch/um/drivers/ubd_kern.c b/arch/um/drivers/ubd_kern.c
index 6627d7c30f37..dcabb463e011 100644
--- a/arch/um/drivers/ubd_kern.c
+++ b/arch/um/drivers/ubd_kern.c
@@ -561,7 +561,7 @@ static inline int ubd_file_size(struct ubd *ubd_dev, __u64 *size_out)
 	__u32 version;
 	__u32 align;
 	char *backing_file;
-	time_t mtime;
+	time64_t mtime;
 	unsigned long long size;
 	int sector_size;
 	int bitmap_offset;
@@ -600,9 +600,9 @@ static int read_cow_bitmap(int fd, void *buf, int offset, int len)
 	return 0;
 }
 
-static int backing_file_mismatch(char *file, __u64 size, time_t mtime)
+static int backing_file_mismatch(char *file, __u64 size, time64_t mtime)
 {
-	unsigned long modtime;
+	time64_t modtime;
 	unsigned long long actual;
 	int err;
 
@@ -628,7 +628,7 @@ static int backing_file_mismatch(char *file, __u64 size, time_t mtime)
 		return -EINVAL;
 	}
 	if (modtime != mtime) {
-		printk(KERN_ERR "mtime mismatch (%ld vs %ld) of COW header vs "
+		printk(KERN_ERR "mtime mismatch (%lld vs %lld) of COW header vs "
 		       "backing file\n", mtime, modtime);
 		return -EINVAL;
 	}
@@ -671,7 +671,7 @@ static int open_ubd_file(char *file, struct openflags *openflags, int shared,
 		  unsigned long *bitmap_len_out, int *data_offset_out,
 		  int *create_cow_out)
 {
-	time_t mtime;
+	time64_t mtime;
 	unsigned long long size;
 	__u32 version, align;
 	char *backing_file;
diff --git a/arch/um/include/shared/os.h b/arch/um/include/shared/os.h
index 506bcd1bca68..0f30204b6afa 100644
--- a/arch/um/include/shared/os.h
+++ b/arch/um/include/shared/os.h
@@ -150,7 +150,7 @@ extern int os_sync_file(int fd);
 extern int os_file_size(const char *file, unsigned long long *size_out);
 extern int os_pread_file(int fd, void *buf, int len, unsigned long long offset);
 extern int os_pwrite_file(int fd, const void *buf, int count, unsigned long long offset);
-extern int os_file_modtime(const char *file, unsigned long *modtime);
+extern int os_file_modtime(const char *file, long long *modtime);
 extern int os_pipe(int *fd, int stream, int close_on_exec);
 extern int os_set_fd_async(int fd);
 extern int os_clear_fd_async(int fd);
diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
index 5133e3afb96f..fbda10535dab 100644
--- a/arch/um/os-Linux/file.c
+++ b/arch/um/os-Linux/file.c
@@ -341,7 +341,7 @@ int os_file_size(const char *file, unsigned long long *size_out)
 	return 0;
 }
 
-int os_file_modtime(const char *file, unsigned long *modtime)
+int os_file_modtime(const char *file, long long *modtime)
 {
 	struct uml_stat buf;
 	int err;
-- 
2.20.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
