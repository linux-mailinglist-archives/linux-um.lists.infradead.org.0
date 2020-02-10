Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64369158384
	for <lists+linux-um@lfdr.de>; Mon, 10 Feb 2020 20:24:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOBnJPwVZbagK0jeIy2/QfxfDQhNi7LqGbSAEsMf1F4=; b=c8bqFKezjmPuFB
	fMQ4d89euizK7LFKXpQ1UCKOvj8VkXOaSmyBzS7rH98pURVwiF0cF1/ZlIQSf65YQaHqVsi3Bete0
	xeIlNBHoy9AWsdJb9Uwrj3TvM61qoBllWyl07MNjcQ/Zwu6hXVuPeV+rs97q8/YD3V4wOOmMPHvxl
	gqWJEqykE5frstI+TneJ/DnXeV8Ju09g5CWIIiirZrEfnAlS3Q6yADeNYE0Z+dOM/TVExfjAd+D8G
	ZLB/f3VhXmpDTyff+i6/jvS4XiRnCX1FlLDd1ae+u+slrI4TE2SYqaoMQ+5T6n7x+Cz0cThSlz1zh
	TPyBMqAHwP0dNNavrUPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EfP-0002OA-SX; Mon, 10 Feb 2020 19:24:23 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EfN-0002NF-0H
 for linux-um@lists.infradead.org; Mon, 10 Feb 2020 19:24:22 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1j1EfI-000ajs-3E; Mon, 10 Feb 2020 20:24:16 +0100
Message-ID: <245eb08f8ecca1435c882f0be4f1543e22501694.camel@sipsolutions.net>
Subject: Re: [DEMO] um: demonstrate super early constructors
From: Johannes Berg <johannes@sipsolutions.net>
To: Patricia Alfonso <trishalfonso@google.com>
Date: Mon, 10 Feb 2020 20:24:15 +0100
In-Reply-To: <CAKFsvUJzj-DXe9sDumyYmSr2WqrBCK6Xiuon+G1w8Jeycsc7tA@mail.gmail.com>
 (sfid-20200207_013125_010309_E966A98D)
References: <20200206204937.db680692f366.Ie05fc2ad440c8db59c1519194aeac356469efa72@changeid>
 <51a008bc836a2630ee59e8d521cd3d1cc475a96d.camel@sipsolutions.net>
 <CAKFsvUJzj-DXe9sDumyYmSr2WqrBCK6Xiuon+G1w8Jeycsc7tA@mail.gmail.com>
 (sfid-20200207_013125_010309_E966A98D)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_112421_040700_1E386D4D 
X-CRM114-Status: UNSURE (   4.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

> Thank you so much for this patch!! I have been trying to find an
> elegant fix all week and this is perfect!

Glad it helped :-)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
