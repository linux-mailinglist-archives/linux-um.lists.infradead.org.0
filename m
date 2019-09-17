Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDD6B5726
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 22:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=923ssBol52KsREaHtYk59/jcH7n93MBaJ8TPuzewfks=; b=OGIlui790giSRC
	72bihR3zehHX2NrysQ1F0K9onfE9WYhwLSSYXHKnLCb7PyPBfgijGP6CaJAWONLwA+5E1a9KcJ3Io
	lBRNFAMKJ8CrrhkM669owm5a9alefkIY4V1TyciQou2q9REVrB19wvdZ2Z2lrWFK9l3OoZjVrrLPj
	PbwOtmOdgwIk3s/dnwlh8q6qrtqELOYQvqSkCrrAA2/TV11aLg/RCUn3rx03Qf8v7fzqfW+lki1Kf
	r+NvXj+PMMR7aswM39EYs1WSkv0495sSlCRQhDOW/L1NHvqyxjFUcriAFP8oO7zaGNGOmrBqWChX/
	W344YE5+aWApDdNv9FDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKOI-0000db-RB; Tue, 17 Sep 2019 20:48:02 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKO7-0000Z9-OM
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 20:47:53 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1iAKO4-0006v8-VU
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 22:47:49 +0200
Message-ID: <60f73376da11640d5b335512f052a583fd784fd8.camel@sipsolutions.net>
Subject: CONFIG_COMPAT for UM?
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Tue, 17 Sep 2019 22:47:48 +0200
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_134751_855627_6B04412C 
X-CRM114-Status: UNSURE (   4.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

It seems to me that it ought to be possible - at least if the host
kernel has 32/64 compatibility, to extend the same to the UML kernel?

Has anyone ever given this a thought?

I just realized that our test suite is based on 32-bit binaries ... :-)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
