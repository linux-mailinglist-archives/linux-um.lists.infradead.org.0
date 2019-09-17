Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972D9B4F4E
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 15:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHNxD4VUtW1suvigO4oVOgMtvi8MdLoy0YBOB5jQDMY=; b=DE/agF46Wdzlj+
	UFwwauMZ5tZHg6mlCwgZcK9J44gXCxpvE+SHYRo3X2I0bNAx4zq58d/DcBg9D34KI7MPlASw4fzCA
	Qd78/FcxCsJFRBr/QomV9/dHJUMcvnjrAGDSyme2Gh+hjeGnQum6MNS5/gCN0m9ON59GiXlHse/tT
	OzDfCTKO6orl6W7Et8zG7jh5M3oDpzueHBuMXOsgwdrLWUrThYdFJUCce4zbFoq8Lr0RedOIDZy8S
	WyB6p16fMl5o1QFWM9jSludNRNGse9erACrfG4DYnQr7OEx+dmxwuTSJ9M4gf94PI8agDlbVCg5fj
	vtcC+TSj5OVAQ3MpKtmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADaW-0003L0-5S; Tue, 17 Sep 2019 13:32:12 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADaS-0003KT-A0
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 13:32:10 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1iADaP-0005IO-6R
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 15:32:05 +0200
Message-ID: <640e7817c839f6cf2e3ce53bae8a5bb686044a31.camel@sipsolutions.net>
Subject: Re: [RFC v3 1/2] um: virtio: implement
 VHOST_USER_PROTOCOL_F_INBAND_NOTIFICATIONS
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Tue, 17 Sep 2019 15:32:02 +0200
In-Reply-To: <1568726354-I895f9019593bd579566f14e5af9346e3c9b56f28@changeid>
References: <20190917132943.20102-1-johannes@sipsolutions.net>
 <1568726354-I895f9019593bd579566f14e5af9346e3c9b56f28@changeid>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_063208_352372_5A7D2F5B 
X-CRM114-Status: UNSURE (   4.98  )
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

On Tue, 2019-09-17 at 15:29 +0200, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> We'll prefer this feature, under the assumption that only a
> few (simulation) devices will ever support it, since it's not
> very efficient.

This is mostly RFC because the spec changes to vhost-user haven't really
been accepted. I reposted them earlier and hopefully addressed all the
concerns there, but who knows ...

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
