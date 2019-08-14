Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D538D4F7
	for <lists+linux-um@lfdr.de>; Wed, 14 Aug 2019 15:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQMkSTNntqcB5MnoNFVIXNQUa4Drtm1k7ol0a0ceR+U=; b=aD0MC4KIiJxIXb
	qDuCrwyDHR5p3K7Kpogx7QOIDHkODOPYHBWhbBhPvQHYkqkU7a/+Qyn1VAasYGDPxAw934EsRhA59
	FMoSXlcsqnkjD/1kMkebdzOnCe/s2gcSlA8hH4JFg5MDTQTI9DSwFzecsDLddFSXuj8h6GmjnckSu
	1YKlXDMSrEnRcOkcwqmUQFVYNlZqorLXrki4Cs/GH8EFbkN3yTka455Z8YsRJ5sbxLT0HNqdM4sbj
	+wqhzYNxQ0dl3gnxRGoFrgQJOW6t/Jwyd0QTSm6F2YTIsge4sLJBY2oYCGQIj03LB/rGRCpdaOe/A
	nT4bawtWXw3Aiz6MYBTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtUM-0000Eu-S3; Wed, 14 Aug 2019 13:38:54 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtUJ-0000DB-FD
 for linux-um@lists.infradead.org; Wed, 14 Aug 2019 13:38:52 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 06:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,385,1559545200"; d="scan'208";a="351914284"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2019 06:38:49 -0700
Received: from lcsmsx154.ger.corp.intel.com (10.186.165.229) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 14 Aug 2019 06:38:49 -0700
Received: from HASMSX110.ger.corp.intel.com ([169.254.6.228]) by
 LCSMSX154.ger.corp.intel.com ([169.254.7.131]) with mapi id 14.03.0439.000;
 Wed, 14 Aug 2019 16:38:46 +0300
From: "Geron, ErelX" <erelx.geron@intel.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, Johannes Berg
 <johannes@sipsolutions.net>, "linux-um@lists.infradead.org"
 <linux-um@lists.infradead.org>
Subject: RE: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
Thread-Topic: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
Thread-Index: AQHVR97NJ+Z+8AXQpUK+XFrVihdLtKb6AzOAgAACwICAAE+7gIAAYfjA
Date: Wed, 14 Aug 2019 13:38:45 +0000
Message-ID: <55F06090E0044C4F985D9B415677B33F4E42700B@HASMSX110.ger.corp.intel.com>
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <aa0e9645-add5-0169-95d0-e11dc36dcfaa@cambridgegreys.com>
 <57a7df50-0a87-a8a6-7cd7-e4aa2ef35f1d@cambridgegreys.com>
 <3ffcf614-ce0e-949c-b0dd-49551866f7cf@cambridgegreys.com>
In-Reply-To: <3ffcf614-ce0e-949c-b0dd-49551866f7cf@cambridgegreys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.184.70.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_063851_513202_300A792C 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Our config is based on defconfig.
Added CONFIG_VIRTIO_UML, CONFIG_VIRTIO_BLK and CONFIG_VIRTIO_NET.

Please note that we have two working examples:

One example is with qemu/contrib/vhost-user-blk:

# Prepare disk file
truncate -s 5120 my_file
# Run server
./vhost-user-blk -b my_file -s /tmp/my_blk
# Run uml
./linux ... virtio_uml.device=/tmp/my_blk:2

And another example is with snabb:

# Run server with two interconnected interfaces
# (need to add a vm2vm program, as shown at: https://github.com/snabbco/snabb/issues/1119)
./snabb vm2vm /tmp/first /tmp/second
# Run uml
./linux ... virtio_uml.device=/tmp/first:1
./linux ... virtio_uml.device=/tmp/second:1

---------------------------------------------------------------------
A member of the Intel Corporation group of companies

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
