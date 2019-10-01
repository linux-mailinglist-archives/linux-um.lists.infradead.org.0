Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E29C3EA2
	for <lists+linux-um@lfdr.de>; Tue,  1 Oct 2019 19:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhJe35w/Y6Gpk+Bvw6iDpRaty2UdlpapbDnKTNudBzo=; b=Rlnt9eH8au2bQ7
	/uDLewFf+UQ3Ke/U6/BrArYLtJVsx5c4EoZe+AH6fihXCrk2/EAnY06gqAh8jzo66qvgd+2dpn19E
	7o5W7w8amd411fNSgYSMzIOl2eqaXXoSayWPZQC9lRNzfVCaHeC6+sWYpmF+yet9l5HZijAr7oab/
	9BU+1TTL6FgxOHazyTQwxeSoAhJD52+Ipv264qWOIV/r4RaGxwSWtCCjKyXL9syDkQ88F1vNFUyhU
	Gskqdc171X9Vqf+BRDCirHmS6LUclDJzMUUovqKDXyl27Bgp0ThAXYEOhsckYV/N2Jf+XUh2DlfTR
	sWRTtNNJrm9VlntUMzyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFM1A-0006C3-F6; Tue, 01 Oct 2019 17:32:56 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFM17-0006BC-OU
 for linux-um@lists.infradead.org; Tue, 01 Oct 2019 17:32:55 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iFM14-0007D8-4X; Tue, 01 Oct 2019 19:32:50 +0200
Message-ID: <6e5e87abcf0fa6453239678524be6049598dc080.camel@sipsolutions.net>
Subject: Re: [PATCH v2] um: Loadable BPF "Firmware" for vector drivers
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Tue, 01 Oct 2019 19:32:48 +0200
In-Reply-To: <20191001165537.3386-1-anton.ivanov@cambridgegreys.com>
References: <20191001165537.3386-1-anton.ivanov@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_103253_795322_5BEB6560 
X-CRM114-Status: UNSURE (   7.29  )
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
Cc: richard@nod.at
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


> +/*
> + * We cannot use the firmware.c loader API here because this is not a module
> + *  and we do not have a proper device structure to pass to it as required
> + *  by the firmware API
> + */

I think you should delete the comment now :)

[...]

> +	if (request_firmware(&fw, efl->data, &vdevice->pdev.dev))
> +		goto flash_fail;

That is the standard firmware loader now after all.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
