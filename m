Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91849148C73
	for <lists+linux-um@lfdr.de>; Fri, 24 Jan 2020 17:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSOko42O+JDLV5cY4gr1W3b+n62l34da77C7eFAExPM=; b=WfcmwxOyi7VYgt
	OfZIAJMM6VXyfoH2OFpHsl6KrwkwK751pKZOlnf+9hDTZ7zfJ3eWciKnJcUJO0yqh15rT0AAlekzv
	4jzc1RteXgT/o8TO31kGHKcaE04b6i7KBcEX0wUE3DKTimlWau4ayvjZJyIad+UaGC2eRchKj1CAr
	POy40OB+kXNq57D7BHW3rrYxR3RiUJDeaAUR33oaPaRWKeVZjoc3dLYsgcL5nV+rNWwSeJA0YiSc/
	0taLaPI4nrya04XYvGeLaWyT3yrVmlaRklRyj2c7EutmTkQxHkA+YOGJAIBvF/4X6DKDeSQ3tTdW8
	EYS+He/l8A2890Y8BRFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv258-00052E-QP; Fri, 24 Jan 2020 16:45:18 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv253-0004fo-5R
 for linux-um@lists.infradead.org; Fri, 24 Jan 2020 16:45:15 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00OGhdOe163796;
 Fri, 24 Jan 2020 16:44:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=ax2b7VbroDAFXGhWoaT8oid295EG/aT8E5ybilKIp/8=;
 b=CN94oT93dmhc59Evrew/6dj3KVkcSKW1kn1ZvYwtt43WNbD+VI5MjX6T4CZT7ftmrbvh
 Q4fxTieCq3Og6dbIv8Wg9RbW+aOdYg+8GljZKz8G3rFHJLktSHPCvk45bWzrFVZJlUVc
 phZikyy4/F7ZtjOGfcYiOnjr+EImiYPLDZUSupjSsWaHqCt/LIIo7IfonjQAbDS1Axs9
 fbWaaRRdKqkHCxwerYXHFBMx/wUVzbIAENpu4UhWK83/4Q8SlouEXgMeG98PF/9Lh3Ic
 9XKNG2dH/jr7nadHTuDvckoTx+tPqm6SEHyvlwVU0pBofGnvzu5ixATxUyQe8ipHV+kx qw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2xksyqt3hu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jan 2020 16:44:43 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00OGi8rW142590;
 Fri, 24 Jan 2020 16:44:43 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2xqmufc49n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jan 2020 16:44:43 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00OGif1t004136;
 Fri, 24 Jan 2020 16:44:41 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 Jan 2020 08:44:40 -0800
Date: Fri, 24 Jan 2020 19:44:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH] um: Fix some error handling in uml_vector_user_bpf()
Message-ID: <20200124164427.GF1870@kadam>
References: <20200124101450.jxfzsh6sz7v324hv@kili.mountain>
 <36070c96-8e75-7d06-d945-87a9d366d0b9@cambridgegreys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36070c96-8e75-7d06-d945-87a9d366d0b9@cambridgegreys.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9510
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001240137
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9510
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001240137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_084513_411470_564B48DA 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-janitors@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Song Liu <songliubraving@fb.com>,
 Alexei Starovoitov <ast@kernel.org>, Yonghong Song <yhs@fb.com>,
 Alex Dewar <alex.dewar@gmx.co.uk>, bpf@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 12:52:18PM +0000, Anton Ivanov wrote:
> 
> 
> On 24/01/2020 10:14, Dan Carpenter wrote:
> > 1) The uml_vector_user_bpf() returns pointers so it should return NULL
> >     instead of false.
> > 2) If the "bpf_prog" allocation failed, it would have eventually lead to
> >     a crash.  We can't succeed after the error happens so it should just
> >     return.
> > 
> > Fixes: 9807019a62dc ("um: Loadable BPF "Firmware" for vector drivers")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >   arch/um/drivers/vector_user.c | 10 +++++-----
> >   1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
> > index ddcd917be0af..88483f5b034c 100644
> > --- a/arch/um/drivers/vector_user.c
> > +++ b/arch/um/drivers/vector_user.c
> > @@ -732,13 +732,13 @@ void *uml_vector_user_bpf(char *filename)
> >   	if (stat(filename, &statbuf) < 0) {
> >   		printk(KERN_ERR "Error %d reading bpf file", -errno);
> > -		return false;
> > +		return NULL;
> 
> I will sort this one out, thanks for noticing.
> 
> >   	}
> >   	bpf_prog = uml_kmalloc(sizeof(struct sock_fprog), UM_GFP_KERNEL);
> > -	if (bpf_prog != NULL) {
> > -		bpf_prog->len = statbuf.st_size / sizeof(struct sock_filter);
> > -		bpf_prog->filter = NULL;
> > -	}
> > +	if (!pfg_prog)
> 
> ^^^^^ ?

If we don't return here it leads to a NULL dereference.

regards,
dan carpenter


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
