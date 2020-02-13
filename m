Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B04215C3FB
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 16:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gLBR3jwKxwqkzR0hVHCeLusm+BOR9szb57dzHK6pJ0=; b=YSRg8byVHicDAo
	h4uTToY/U7CdttXJk48jXtbXdQT0VrwywoRXlBgphvbaQHPIhZN20nSgb11eCCMgV0r+FKu6GDYCV
	2VaWIEhrcFEBomGjoTVtRg72AlVRmzFlUVnuAjSnpmQbStRMxOhjOkEWa44TC+dIYUW6AQQT30ywV
	fn8U57dE0hr3iO8T5dTqgUtaXnbfC4DftzWeGCImXbZyUulyvK5Iecn3aXYMAhB/N4teNkh6mYawV
	rIooCcgIFR8k7uupVq0YDWFxCLtXooVaQaaPcVJWLzV8DbJhKIPl+2oVR8+yNfqmt2c9BVnLWg3GU
	J3Jr+IJ4oQyRWaVDU1xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GnJ-0001Fl-9N; Thu, 13 Feb 2020 15:52:49 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GnG-0001EC-DS
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 15:52:47 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1j2GnB-00957o-44; Thu, 13 Feb 2020 16:52:41 +0100
Message-ID: <e3073fbe7298451467a3a484efad90611df19c9e.camel@sipsolutions.net>
Subject: Re: [PATCH 4/6] um: implement time-travel=ext
From: Johannes Berg <johannes@sipsolutions.net>
To: Hajime Tazaki <thehajime@gmail.com>
Date: Thu, 13 Feb 2020 16:52:39 +0100
In-Reply-To: <m2h7zuwpao.wl-thehajime@gmail.com>
 (sfid-20200213_151101_494563_49D1F81B)
References: <20200213132651.20506-1-johannes@sipsolutions.net>
 <20200213132651.20506-5-johannes@sipsolutions.net>
 <m2h7zuwpao.wl-thehajime@gmail.com> (sfid-20200213_151101_494563_49D1F81B)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_075246_464148_BFFDCF71 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

> > The protocol for the unix domain socket is defined in the new file
> > include/uapi/linux/um_timetravel.h.
> 
> I was wondering if the source code of the special application (central
> scheduler?) is public (or not) so that we can test on a local machine.

So ... sadly, it's a bit of a sad story right now.

I have one, but it's part of a bigger testing framework that we wrote
(and uses the infrastructure from it), that I haven't been able to
release so far.

On this tool, conceptually, the code is very simple, just keep a sorted
"next event" list, and tell the next one that it's their turn.

For a vhost-user device implementation, it's a bit more complex, as it
needs to be able to handle scheduler messages while waiting for a vhost-
user ACK message, similar to what you can see in the UML vhost-user
code.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
