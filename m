Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D578A7CCE
	for <lists+linux-um@lfdr.de>; Wed,  4 Sep 2019 09:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yuu4D5i6uxc7tXUDCJgzXHAIn8K/IZh27cPkAKSDnXg=; b=RwhlZ74z7sja3q
	GoIVVoiT+wiMHGh4ty30Fe62Tb0am0DQnacuMM1xYAfWooK+SH0s2GT3TPDJ2DJURwFYkC/8FSzvW
	aaTpi32LEbyenAWUfadwEjfCaapDFCz3F+h7CD0NAlCXtD3sHxE/ZCrI2cpS68i1F174VPRDap1ni
	83ycG+9ZVO+dGQRDM6JRCSKYiFONz00bYv2mug9gaKOxqldq4zu81jjrcX/2O79zSGUfwjABp3Ypo
	j7PxGcwomsDueQFT9YY/r3FK+UNVwoIjvoqGXEP6/3Ldcz04YEjHR8//PgN6mOBUnEckv7qH/trb1
	/iVs2BD9xnPLcQze2/3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Pke-0005MM-Rh; Wed, 04 Sep 2019 07:30:48 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Pkd-0005Lu-3C
 for linux-um@lists.infradead.org; Wed, 04 Sep 2019 07:30:48 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.1) (envelope-from <johannes@sipsolutions.net>)
 id 1i5Pkb-0000To-OJ; Wed, 04 Sep 2019 09:30:45 +0200
Message-ID: <d3c3f6a5703b3d45a89e5818ad46f7a16b165b56.camel@sipsolutions.net>
Subject: Re: [PATCH v2] um: irq: Fix LAST_IRQ usage
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Wed, 04 Sep 2019 09:30:44 +0200
In-Reply-To: <20190904071007.7837-1-johannes@sipsolutions.net>
References: <20190904071007.7837-1-johannes@sipsolutions.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_003047_136757_C66328C9 
X-CRM114-Status: UNSURE (   5.32  )
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
Cc: Erel Geron <erelx.geron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 09:10 +0200, Johannes Berg wrote:
> From: Erel Geron <erelx.geron@intel.com>
> 
> LAST_IRQ was used incorrectly in init_IRQ.
> Fix this.

Oops, ignore this one - I accidentally sent it instead of the virtio
code.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
