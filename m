Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90FDA834E
	for <lists+linux-um@lfdr.de>; Wed,  4 Sep 2019 15:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7z86AO7mWTmKaB7ILTHjgnfhcUsLEV3aIWI6/7B9L0=; b=Uq+x6/xHLIDpq4
	JsrQ5VseIb0Tt/t5K+9slZO4Du730qomw4J31/hHeMbFVP8SJdjmKMtQzXUY1yapU3cRFPBHDI9A9
	rUmARYd9V65S2NB/2QxxKr86QzoZS0Kmz6CoZZy8ornVF7L6WDJdZIV+Q2WIoQ8bw1KNMhUvjT6xb
	jJYNQLq1+f22gDh6eErt5WFnQMMSupi8fxc/iE/CPU5B7ZoWWw9L0kIVR54P4Io47JITyhld8PXTr
	2AqbkBANiBMdDevFvQ/FOxYn7AGyjRinb/Dlp68nTu25bEeqkSVBSNWzfkKAbp/zN5yLeQkrq88yI
	Sbf1nTHnYhyuuguZEQNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5UtP-0002Wj-TB; Wed, 04 Sep 2019 13:00:12 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UtN-00020c-IC
 for linux-um@lists.infradead.org; Wed, 04 Sep 2019 13:00:10 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.1) (envelope-from <johannes@sipsolutions.net>)
 id 1i5UtI-0008V5-Ka
 for linux-um@lists.infradead.org; Wed, 04 Sep 2019 15:00:05 +0200
Message-ID: <e759728af3b0e8a1188cd8956bc4ee2d3b66a68c.camel@sipsolutions.net>
Subject: Re: [PATCH 1/2] um: virtio: implement VHOST_USER_PROTOCOL_F_SLAVE_REQ
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Wed, 04 Sep 2019 15:00:02 +0200
In-Reply-To: <20190904071116.8204-1-johannes@sipsolutions.net>
References: <20190904071116.8204-1-johannes@sipsolutions.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_060009_597787_C0310496 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

On Wed, 2019-09-04 at 09:11 +0200, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> Implement the communication channel for the device to notify
> us of some events, and notably implement the handling of the
> config updates needed for the combination of this feature
> and VHOST_USER_PROTOCOL_F_CONFIG.

This has some error path issues, I'll resend later.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
