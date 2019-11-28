Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176CB10C544
	for <lists+linux-um@lfdr.de>; Thu, 28 Nov 2019 09:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iA2RBQcHEwh5EhE3gWsXd63AEZgXggyef9BTURYOqtI=; b=TDyCPFlYKmBfWL
	W6TW+JNO32m8IwJ2/tj/zX0PZefGBV+mVPiicIC7LlviJqAjQPGOP9tOdH7CgABqbhkvGuLlOjsCm
	WCSRHvJDpbddr9Mv3T00t96Z0suL0jvxxGkHGPw8UXrhpL6E2wGsR8ttMn7s+FxjraBhNZYl6j5in
	rOLMAw/VUb9Xb0g0T9GbCGiycgPPVyC9CF6hiEpME+pKrHW203YT6GU0yK9DteLOOZVFknZY0KEnx
	kZ5S8kd/FWpf45ejmE/j2hkl+fEvkQ24EulLvw6eVAB14IUPsYNyAq0nFxhlx6LiErcM5LRA1L5LN
	QBApKykU9A6kB8vr/UVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaFJi-0006Ms-T6; Thu, 28 Nov 2019 08:38:26 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaFJg-0006MR-JF
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 08:38:25 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAS8Y4Jo035180;
 Thu, 28 Nov 2019 08:37:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=lT5186ZNBxR5ODA3TJnZ4mvt45f9bF6EnEE3JtOE2LE=;
 b=R0O4N0uwWjPVpcQSpyAxWnjbP89B8lu82n+53715BCU9EGqXDv6fQqjFsIiVsc14Q2Dq
 I3dKEUmacHX2yhLek9LuQUTPThKpniVbxpVGlbpJGVjjZEgtLn1i3uPdLwJxr3andgBW
 ReUojJrt9UDJG3gg2C6sCgQsSxYxr3YMX8RYVeO0/REFnLMhvqm1DrRlHFzHmJouISlT
 Zlwy4LlAyIGifexDgTLGERJ8d6FVI9LPDEWbrTI1p0vkcldyd0rkHxnAddb+7YpZk3Nr
 pvw9garPA7sQUxehv3JOEklYMEoD/gD7RiGc+837YO+pdh+6mcZlYrOUf4xJZc4nrFCK /w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2wewdrj27s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 Nov 2019 08:37:52 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAS8YAp3167927;
 Thu, 28 Nov 2019 08:37:51 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2why49pb3s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 Nov 2019 08:37:51 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAS8bkFY023351;
 Thu, 28 Nov 2019 08:37:46 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 28 Nov 2019 00:37:45 -0800
Date: Thu, 28 Nov 2019 11:37:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH -next] um: vector: use GFP_ATOMIC under spin lock
Message-ID: <20191128083735.GE1781@kadam>
References: <20191128020147.191893-1-weiyongjun1@huawei.com>
 <20191128080641.GD1781@kadam>
 <5892ee7c-ff24-fb3c-6911-44e0b1d5895f@cambridgegreys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5892ee7c-ff24-fb3c-6911-44e0b1d5895f@cambridgegreys.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9454
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911280073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9454
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911280073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_003824_726725_1FFCC869 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 kernel-janitors@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 linux-um@lists.infradead.org, Wei Yongjun <weiyongjun1@huawei.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 08:18:30AM +0000, Anton Ivanov wrote:
> 
> 
> On 28/11/2019 08:06, Dan Carpenter wrote:
> > On Thu, Nov 28, 2019 at 02:01:47AM +0000, Wei Yongjun wrote:
> > > A spin lock is taken here so we should use GFP_ATOMIC.
> > > 
> > > Fixes: 9807019a62dc ("um: Loadable BPF "Firmware" for vector drivers")
> > > Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> > > ---
> > >   arch/um/drivers/vector_kern.c | 4 ++--
> > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> > > index 92617e16829e..6ff0065a271d 100644
> > > --- a/arch/um/drivers/vector_kern.c
> > > +++ b/arch/um/drivers/vector_kern.c
> > > @@ -1402,7 +1402,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
> > >   		kfree(vp->bpf->filter);
> > >   		vp->bpf->filter = NULL;
> > >   	} else {
> > > -		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_KERNEL);
> > > +		vp->bpf = kmalloc(sizeof(struct sock_fprog), GFP_ATOMIC);
> > >   		if (vp->bpf == NULL) {
> > >   			netdev_err(dev, "failed to allocate memory for firmware\n");
> > >   			goto flash_fail;
> > > @@ -1414,7 +1414,7 @@ static int vector_net_load_bpf_flash(struct net_device *dev,
> > >   	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
> >              ^^^^^^^^^^^^^^^^
> > 
> > Is it really possible to call request_firmware() while holding a
> > spin_lock?  I was so sure that read from the disk.
> 
> Works, I tested the patch quite a few times.
> 

Do you have CONFIG_DEBUG_ATOMIC_SLEEP enabled?  The GFP_KERNEL calls
should have triggered a warning if so.

regards,
dan carpenter


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
