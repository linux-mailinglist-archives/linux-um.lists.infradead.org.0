Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F1C152714
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 08:37:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxwR1hfCHso1r3xrccOTuvq7YzuyJwjVs4kAN68gt90=; b=J4ZiE/mkIly2kH
	1Vpj25alDJjvOkRJFJKDo8+ClGEqHWjRLW16ZbFknZkOh6Hgi4F9pehHLByQZxcxe9r496WVyQYqf
	wemsfACsAniF5H2NteigFD/GJd07VjZQx0pHUSNCj+/l23HYnTyuH9mRHyfXeOwyTqIj/xNm1y5BA
	ty+Io+hAh5jTdHD2fswuNx2Fel9ekEgkkvAhBIrZkOwCRCOcuoDS/Lkp7+Z+u8iZTO1PiqbysZwwR
	gji+rEtWeOms8TBVTdT437GekC00ZpLQYhNyGE8/y4Jyf3XjnInaVFkWHR4D849PbLpIWEfpdW4pN
	N+hZyyq6q+/9CGoIVvEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izFFQ-0001gr-TZ; Wed, 05 Feb 2020 07:37:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izFFO-0001em-FT
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 07:37:19 +0000
Received: by mail-pf1-x444.google.com with SMTP id 185so758053pfv.3
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 23:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :user-agent:mime-version;
 bh=e4f4UudbrQYMkpSax5xMKxVy+apwOZQRbnmAQIeV4qI=;
 b=Gg8doiZXDi5qdF+Aa+qi/Tn4f76nkx6XlkUXQIytHaPdxUHsokAS/vTjQ4QzVsffRq
 yRInGpo+askBdUFypIbJiokJMpqr1H8Enp+056IsbUBktvvun4K4ezKPFaX4G83UG0xG
 XDz0RZqUVerbHCiiCg9YkkX5hVxWYcILEDoF5hV3D2xSqVrYPJ/eZCX/Uly0+/vereT9
 KRIvjbnwGAP+tIVejy7d/LO5SyhDiYDoxh78IPM5B3MoLJ988EBCuHKL5e+uvJKY41Ai
 7PlUw3I6Fz27VtiWfdkH1+Q80j7En+od5Y6aJildd6wMNLExHMl1nmv9cMoO/xotK7Ut
 wh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:user-agent:mime-version;
 bh=e4f4UudbrQYMkpSax5xMKxVy+apwOZQRbnmAQIeV4qI=;
 b=poKeb+4xHo/10VmJEfpsGlZvmqJOnq9erXHbYMR3IyubTTarCcEm78PpKqLKx3thsI
 iUOXKEQfqNH5aw+/YvrYaNDESAllT7XRtiiSWXaPCnj9/K+D1c8Tjlkfz3NiQSoEjNkP
 DccX+MLLwuAiipe3XXw8pvDz9IBq5mVj9HcgXclQgJJFktOE26LxCly5hgHsnstLXdH4
 SJkifdI/Jtef8/POzGoy1flwYHBgcxyLTQLaBUF/wh2qfjdMKYSHv/YwaaBR8IIpcdwd
 mUC8C8duU1U82EyGxan7m70K9KsZSh9W47TXUotxQINK5/4bjipm/Hw/6J8UQoq+mrPb
 Zvfw==
X-Gm-Message-State: APjAAAXr5WqSrxiV3h4ldNDCnrQZ18t1dTZ5FWaed2mEGXNrlFW6VfbX
 /1pg5CFM7/mmAEs73NzRBs8=
X-Google-Smtp-Source: APXvYqz+2wdWbT7U5qmCJCyAcBXDpFQnkFUSqs7cSHB8hC+hVCsl+JI4hdsOd+8dBrxpnRTi9V3D2w==
X-Received: by 2002:a63:8b44:: with SMTP id j65mr34528983pge.272.1580888237892; 
 Tue, 04 Feb 2020 23:37:17 -0800 (PST)
Received: from earth-mac.local.gmail.com ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id z27sm27637237pfj.107.2020.02.04.23.37.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 23:37:17 -0800 (PST)
Date: Wed, 05 Feb 2020 16:37:10 +0900
Message-ID: <m2k151qyc9.wl-thehajime@gmail.com>
From: Hajime Tazaki<thehajime@gmail.com>
To: richard@nod.at
Subject: Re: [RFC v2 03/37] lkl: architecture skeleton for Linux kernel library
In-Reply-To: <907430042.98310.1574784132348.JavaMail.zimbra@nod.at>
References: <cover.1573179553.git.thehajime@gmail.com>	<64a5d6c94d331058331af7d191d2cdbe870d009b.1573179553.git.thehajime@gmail.com>	<CAFLxGvw+w+xmput3xMjKPXPn4hj9opbo+gtV6896hhzDUzQNiA@mail.gmail.com>	<m2v9r6iux5.wl-thehajime@gmail.com>	<907430042.98310.1574784132348.JavaMail.zimbra@nod.at>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) Emacs/25.3 Mule/6.0
 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233718_520895_0162C9B3 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thehajime[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.3 TO_NO_BRKTS_FROM_MSSP  Multiple header formatting problems
 1.5 FROM_MISSP_FREEMAIL    From misspaced + freemail provider
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
Cc: linux-arch@vger.kernel.org, levex@linux.com, mattator@gmail.com,
 cem@freebsd.org, tavi.purdila@gmail.com, jiangshanlai@gmail.com,
 staal1978@gmail.com, motomuman@gmail.com, linux-um@lists.infradead.org,
 retrage01@gmail.com, petrosagg@gmail.com, edisonmcastro@hotmail.com,
 mark@stillwell.me, linux-kernel-library@freelists.org, pscollins@google.com,
 phh@phh.me, sigmaepsilon92@gmail.com, luca.dariz@gmail.com, liuyuan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


On Wed, 27 Nov 2019 01:02:12 +0900,
Richard Weinberger wrote:

(snip)
> > Do you mean "this chain" by the long list of Signed-off-by lines, or
> > something else ?
> 
> The long list is rather unusual.
>  
> > We were trying to put all of contributors on the list.  I was failed to
> > interpret process/submitting-patches.rst on which part is not appropriate.
> 
> If every contributor is also a Co-Author. Okay. But having such a long
> list of authors is still a little odd.

I've replaced most of Signed-off-by: to Cc: in v3 patches.

-- Hajime


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
