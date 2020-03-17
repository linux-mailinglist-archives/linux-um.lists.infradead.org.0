Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2BF188C42
	for <lists+linux-um@lfdr.de>; Tue, 17 Mar 2020 18:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xDhsPNvcVfQHCbPxZcCLn/Wqp2Zfy3e0Fzb9cLFY08s=; b=bZB
	FxTTu3whtqY9S1zEkkCLS7SbNDELatYGDgQ2vadFSU5plE8PRB4+2Zr4mo1e977bNGwFEskDWEGo7
	kZ4Mnr0AngWfI6uMWBidFSNfOfw3j6wSgV3j9RSTAijZ64sE3VSNj/j9R+UkDS4lMK4vEv507h7xl
	TOIAZ5kHxGzoQKT6aGdrMbmIA00jZkKvGwXpJOv5uPPzJUgQ0fuB4jkE9juQ4JgUkrFVSPHKwyO5T
	B5tZbHDZvIkhMnAE9nYGDizpF8Pizw93iNXc+sIQGHMKM39BVteQWamKw7C8WdlhIxEb9fEzzoq1l
	Z6DtD3xFSQKtUwaySFA8HPRFUivE3HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEGAY-0004Rg-GK; Tue, 17 Mar 2020 17:38:22 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEGAU-0004R9-UQ
 for linux-um@lists.infradead.org; Tue, 17 Mar 2020 17:38:20 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02HHHqVk056217;
 Tue, 17 Mar 2020 17:38:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2020-01-29;
 bh=HhYQtNzT7W8ofZ1VIhf3mFuaTo9RNACqiUJRCIPqvIw=;
 b=lMYrLx5QWiZ+xiLWVnB/bSb6CnfNPhPAbqlPt4I+93thcy4JFREQZV+KJm/EUJTbewk8
 dyjRdONeiG9pWWmQjOtsW+OkFv8qyqJU3oeM5TPBPf4EMKv/nYRfTbrm2/4M+1Ib4UDr
 FPm1wJkMB2AcVfxw455pwwi/PDXs9Rea0H4bWDt0tK3AFhZBF1XlosVYYDhY23m+iQnS
 y7K0z4Dvu9sV1IZX6evOOfEswKHvZrVsJIqPB0B/JR7HJJd6dP3orqOHm2Bhi5dMY/uH
 DLazI99Wrpa1t+Q+k5vLXbXfrh+o+yztN1rcq5BGUOK7gl2OLgyOtbS9ROrsnM0Db8B4 ag== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2yrqwn671a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Mar 2020 17:38:00 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02HHJjBa102500;
 Tue, 17 Mar 2020 17:35:59 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2ys92dmrug-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Mar 2020 17:35:59 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02HHZrdG015128;
 Tue, 17 Mar 2020 17:35:53 GMT
Received: from dhcp-10-175-196-233.vpn.oracle.com (/10.175.196.233)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 17 Mar 2020 10:35:53 -0700
From: Alan Maguire <alan.maguire@oracle.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
 alex.dewar@gmx.co.uk, erelx.geron@intel.com, johannes.berg@intel.com,
 arnd@arndb.de, linux-um@lists.infradead.org
Subject: [PATCH] arch/um: falloc.h needs to be directly included for older libc
Date: Tue, 17 Mar 2020 17:35:34 +0000
Message-Id: <1584466534-13248-1-git-send-email-alan.maguire@oracle.com>
X-Mailer: git-send-email 1.8.3.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9563
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=686
 mlxscore=0 spamscore=0 bulkscore=0 adultscore=82 suspectscore=3
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003170069
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9563
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 mlxlogscore=748
 mlxscore=0 bulkscore=0 phishscore=0 spamscore=0 suspectscore=3
 malwarescore=0 priorityscore=1501 clxscore=1011 adultscore=45
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003170069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_103819_066567_B4954D92 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alan Maguire <alan.maguire@oracle.com>, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

When building UML with glibc 2.17 installed, compilation
of arch/um/os-Linux/file.c fails due to failure to find
FALLOC_FL_PUNCH_HOLE and FALLOC_FL_KEEP_SIZE definitions.

It appears that /usr/include/bits/fcntl-linux.h (indirectly
included by /usr/include/fcntl.h) does not include falloc.h
with an older glibc, whereas a more up-to-date version
does.

Adding the direct include to file.c resolves the issue
and does not cause problems for more recent glibc.

Fixes: 50109b5a03b4 ("um: Add support for DISCARD in the UBD Driver")
Cc: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
---
 arch/um/os-Linux/file.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
index fbda105..5c819f8 100644
--- a/arch/um/os-Linux/file.c
+++ b/arch/um/os-Linux/file.c
@@ -8,6 +8,7 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <signal.h>
+#include <linux/falloc.h>
 #include <sys/ioctl.h>
 #include <sys/mount.h>
 #include <sys/socket.h>
-- 
1.8.3.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
