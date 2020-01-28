Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D0D14BC9A
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 16:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=pXB5y8uebXiGV1dU2OkGMrH33WKHd/xzVkNBqGpH3P4=; b=sYMT/sifq78wcD
	7jqLEKs7o7hoi/uT89UuRSgztnPnRdyAk944WsiMmo42jhntjLggD4p224rQ4AwyFJ2yOe/zcNZvY
	7HEUoFN0tJ76zJ4adAC0aTYrmI/mQHcEFh4pfYPZ+fETaBpw3PQ7mQnckwhStIcEv9jcUH0bJDMSf
	fl5jeqRXhZjEv44mZPlpTMNoRG/dWFyaUpr7JwjuxmlLkB5g0TZsZknfRBjiqwyAsfuF7FQFsqg3Y
	DdxSpn1jipG52cwG+QCcsA0RgYzt6l6nm48b3K1f1OG9JhEfmTX8F9sDrXyer35ojSlMf5wy60MYG
	XsC4pv6zp9LYwjWgaVYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSVw-0002O1-7e; Tue, 28 Jan 2020 15:10:52 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSVt-0002EY-2E
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 15:10:50 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00SF8E8N170198;
 Tue, 28 Jan 2020 15:10:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2019-08-05; bh=nxpvpwe9WiDpih91itrb0XgItg4slzB+AobMJCEpQkg=;
 b=lCXmIe6PdasLunEzTCKBIc4V+ualtOZ/csxmhgT2YCwTWDsQxnoz4DweSpDNX+m8q05x
 8cBpuAFxzy0sRRcthDwVUJ3sQ1NHr2FeRFd+2lpE9HtRHSyMRlIFpx2LhJ/N49VTwgh+
 q1ImTY70gpRmh7XKN/2uPrVGbL5kl7lhNVL5dUXDQzREK+DRgO0Nmd0x0FX7vFx3nwjx
 kr+5+Lj6Az6AnMUIPF7oiNLO+L9nbIgPAhSkLs/4YcYm4hOTlFVtsh8gWGzrl5WLN0ra
 +twwpej7cne6GgYluLB4jJhHfx4+InA+EUJWq06b29tyro0h7oxMH+UxUFpxU39uC9Od ag== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2xrd3u6vwd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Jan 2020 15:10:18 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00SExRqp045977;
 Tue, 28 Jan 2020 15:10:17 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2xtmr2g40e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Jan 2020 15:10:17 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00SFAA2h000887;
 Tue, 28 Jan 2020 15:10:11 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Jan 2020 07:10:10 -0800
Date: Tue, 28 Jan 2020 18:10:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jeff Dike <jdike@addtoit.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH] um:
Message-ID: <20200128151000.kx2bwayuuxpuqn6t@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <de3bdae8-2dcd-490f-cdf2-67bf92a552e8@cambridgegreys.com>
X-Mailer: git-send-email haha only kidding
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9513
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001280120
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9513
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001280120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_071049_243342_28B1D5EF 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
