Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C8D11BDA2
	for <lists+linux-um@lfdr.de>; Wed, 11 Dec 2019 21:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KC6BL6qSzi58Z3iJ/bhS55fdFCxqicAn92wPmEeYa4=; b=PHue6xrgD2IzBd
	IJr9CHSZP9v3qKR7YeL/nIgS9rJLYHWiqFfC8TERmzotVNRIYFJj1rmA8H6LLcUvEB8X6YW8GxDEc
	ByauXzl1/hhWbR358GI3toEg2VmkQRaa3vM7j/jxNh7blSgOu8FswqDP5b6i5Po6TRJ/MWaSzO8JJ
	94pV0Tw72yovshrh/crqpwwGKofmI+Xrlw7LaPsvX2FXbQPXe4B/SsWE9Qv8ZcvegB/6GHmWjh2Xb
	McYm3IoW/bNmgk//tIvnDGYTKvgy6JQ80AOe7RO1UE1O3mWBs+WR8uRAn4HrVbgOsy6JAragUikFL
	pyOhSPo5c/yfZhdkjaYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8FU-0008OC-SW; Wed, 11 Dec 2019 20:06:16 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8FS-0008Ng-9A
 for linux-um@lists.infradead.org; Wed, 11 Dec 2019 20:06:15 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1if8FO-004wEi-Ts; Wed, 11 Dec 2019 21:06:11 +0100
Message-ID: <e1e0fdadd05387200caf361dc08713a811263258.camel@sipsolutions.net>
Subject: Re: [PATCH v1 0/7] uml: add unspecified HAS_IOMEM dependencies
From: Johannes Berg <johannes@sipsolutions.net>
To: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 11 Dec 2019 21:06:08 +0100
In-Reply-To: <20191211192742.95699-1-brendanhiggins@google.com>
References: <20191211192742.95699-1-brendanhiggins@google.com>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_120614_320646_9181A061 
X-CRM114-Status: UNSURE (   4.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

(stripping CCs a lot)

On Wed, 2019-12-11 at 11:27 -0800, Brendan Higgins wrote:
> # TL;DR
> 
> This patchset adds a missing HAS_IOMEM dependency to several drivers in
> an attempt to get allyesconfig closer to working for ARCH=um.

Out of curiosity, how big does that monstrosity get? :)

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
