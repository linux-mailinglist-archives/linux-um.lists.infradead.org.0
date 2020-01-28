Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEFC14BCCD
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 16:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FECz8ivKJw1DxbIwXbUv7/CVgFaNx9eGjbPznqyF8f0=; b=IAmJNviyOnM6KJ
	wwxe2w4xT0TlrWP65BLgCFK/5uVh4680X7p/cs9G61uCM9o81M+aQ/m0/HMzwk9TmcpWLWrxikoxF
	IBbCNkgmjgrEeeEbV8tfeXBzM+rHJJytHGliwsUCcnrFoM8DEmgigySV6eOLToER4v6koVTQI/MaA
	mAzBlDHTbhAoE0Al/2I5U0f5Va49a+JOokZa3JBa6v9W79NkOK6i01mXm4IE2cLfB2FP5EXwybki9
	tdJyXKObksox3jXXS4Fn+J1+YsFv//LaE78JsHG7a4WrCSU1JQRHJkk5zx+md7Cut1E6FVHQlCYB7
	k1PLbcwKfP3H1bPJ5IZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSmK-0000cF-Ga; Tue, 28 Jan 2020 15:27:48 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSmH-0000bk-4v
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 15:27:46 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00SFPE0v163707;
 Tue, 28 Jan 2020 15:27:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=WcLyX1UMG6Kg6oHwrdXVffPNT7Y4MkPcD5QG5ETvnRs=;
 b=JaWHNw8eNuWyb6qCiCvH0wRTnG33BCaFS63Vnlig3GKtn3SVeKCOgxickiFJJzVytNuc
 YzeuPbcdpGGedRyKcRdc1pp9mSgvIa0tRb9vdngo795tO9MgjDp1yf90RCGDYih54FFM
 zmqOW+pf1eP6SrkE5U3jcnCWP8V9oUhlQjBYatuknZHvcH1xiOmBBU5NiIQKVEC9Urkn
 l06M546WMqukbsgqp1qx/mekaFEE+2ZCbZqD8ZR3Jcd55YJD0EaDxB1sRI15uEcVLUhF
 X+ttiSrGxOEVqeK/aam8YuMWLrV1da344+fFXKGjukGgdD4CegqaNU61ciLnIHx+tZnS 2w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2xrear6vwr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Jan 2020 15:27:18 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00SFLJHo033398;
 Tue, 28 Jan 2020 15:27:18 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2xta8hyfgw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Jan 2020 15:27:18 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00SFRD0k029151;
 Tue, 28 Jan 2020 15:27:13 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Jan 2020 07:27:12 -0800
Date: Tue, 28 Jan 2020 18:27:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jeff Dike <jdike@addtoit.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH v3] um: Fix some error handling in uml_vector_user_bpf()
Message-ID: <20200128151000.kx2bwayuuxpuqn6t@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9514
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001280122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9514
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_072745_322466_D4EC4E40 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 kernel-janitors@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 linux-um@lists.infradead.org, Alexei Starovoitov <ast@kernel.org>,
 Alex Dewar <alex.dewar@gmx.co.uk>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

1) The uml_vector_user_bpf() returns pointers so it should return NULL
   instead of false.
2) If the "bpf_prog" allocation failed, it would have eventually lead to
   a crash.  We can't succeed after the error happens so it should just
   return.

Fixes: 9807019a62dc ("um: Loadable BPF "Firmware" for vector drivers")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v3: Fix screwed up subject.  Sorry.  Not my most shining hour.
v2: The first version broke the build.  Shame upon me.

 arch/um/drivers/vector_user.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index ddcd917be0af..1403cbadf92b 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -732,13 +732,14 @@ void *uml_vector_user_bpf(char *filename)
 
 	if (stat(filename, &statbuf) < 0) {
 		printk(KERN_ERR "Error %d reading bpf file", -errno);
-		return false;
+		return NULL;
 	}
 	bpf_prog = uml_kmalloc(sizeof(struct sock_fprog), UM_GFP_KERNEL);
-	if (bpf_prog != NULL) {
-		bpf_prog->len = statbuf.st_size / sizeof(struct sock_filter);
-		bpf_prog->filter = NULL;
-	}
+	if (bpf_prog == NULL)
+		return NULL;
+	bpf_prog->len = statbuf.st_size / sizeof(struct sock_filter);
+	bpf_prog->filter = NULL;
+
 	ffd = os_open_file(filename, of_read(OPENFLAGS()), 0);
 	if (ffd < 0) {
 		printk(KERN_ERR "Error %d opening bpf file", -errno);
-- 
2.11.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
