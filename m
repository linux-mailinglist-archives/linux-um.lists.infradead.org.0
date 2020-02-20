Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EDC165965
	for <lists+linux-um@lfdr.de>; Thu, 20 Feb 2020 09:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BUzmSGdvEf7X7ETM6rcrjRgIJovA6BR05mOAQakAuEs=; b=AwZolALWG6vNkf
	ww3qiSdNU3x99jS55byRcoU1K9qvfgq/WYbISPCoPVpGy50LQ+FsCZFJUWBlnWut73OEK2vIaiaoJ
	SCtDbqmAQYxFBsBHSZxt7yPIJDKfIoht/bninYIgZYnVD7DdsWxunjjXa2bsZi4RHTxOl46UaAYqI
	N5Z0aE5RVd5OuXKvL8Y26pwlpNo2ztY0ZU5pA1otFAhz6LfpWNcpZ2WitrfW8pVfUugIYSJo316nZ
	TZ2PsXYOlIebghKRW/7fo4uevNwlRffc+fP1xg2/9aWHcqNB4CaxS3din1TTRdqGh8LZ6F964m1TJ
	DRGGJAEU2bZZUypI+4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hNm-0003QE-EO; Thu, 20 Feb 2020 08:40:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hNj-0003Pu-TK
 for linux-um@lists.infradead.org; Thu, 20 Feb 2020 08:40:29 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A106208C4;
 Thu, 20 Feb 2020 08:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582188026;
 bh=YYtDNAQmy5Wcw2wNq69Q1Z8Aj/k+bmI4bRg/U006rvM=;
 h=From:To:Cc:Subject:Date:From;
 b=VU6X7pQr77KCIvq2Ph9gdueSeTAo5SUgb9y38C/D1fuXGrUXb+pHnpZtfozQXTq8S
 zu+/a5JnEvcAD+fwMn5P+VJxU8HwHPVRF/qA0fcgKLmHsXxCD1bNgmBoRNXZBQCav+
 YJcYkiMd8VpQyaJH3THH/FxO+LJczUMX3KyJFDSM=
From: Leon Romanovsky <leon@kernel.org>
To: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: [PATCH 0/2] Remove dead code and driver version
Date: Thu, 20 Feb 2020 10:40:12 +0200
Message-Id: <20200220084014.238768-1-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_004027_968964_A877F027 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Leon Romanovsky <leonro@mellanox.com>,
 linux-um <linux-um@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

Hi,

This short series is an outcome of the change in ethtool [1] to provide
proper driver version that will work reliably. The second patch is
removal of useless timer setup.

Code is compile tested only.

[1] https://lore.kernel.org/linux-rdma/20200127072028.19123-1-leon@kernel.org/

Leon Romanovsky (2):
  um: Don't overwrite ethtool driver version
  um: Delete never executed timer

 arch/um/drivers/net_kern.c    | 13 -------------
 arch/um/drivers/vector_kern.c |  2 --
 2 files changed, 15 deletions(-)

--
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
