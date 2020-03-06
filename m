Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF9917B375
	for <lists+linux-um@lfdr.de>; Fri,  6 Mar 2020 02:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lz4oymws4cYfX6yc/mI0h9fVIlL44GhFm+OXk3V099o=; b=lMPn0956BeweeB
	lZFgKESirC4v3ZvD0OSkrLGbYzr8y4+FwxdysdqZ6Hl8/pP/HRlm8XEZlW2FtSUAJRX46q6VE1DEY
	KP0MR+LaYECigXUyXFK9OEutPzuSx/Z95GPEOceej/Wl+rF2LyKvopD3xgMyt5J6JId0pX0RhHxnq
	DC92l0QzCxKf+UcJx/5/tFD/k0tRn9Y7Kdu1imIW9ey0fDGpZ3KSTXpfqKRWpu7ebHiY0n2s2TiLn
	20o8UCVZlnh+fevejMN5v5g3vDpidbatjYU5UUsBG4nl7/l4hwNSH+sKsBEO5zCdMbFkJlOV8bDlf
	uP+fPVboIjbpQi/5wZhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1S1-0008Ol-5f; Fri, 06 Mar 2020 01:06:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1Rx-0008Mh-SF
 for linux-um@lists.infradead.org; Fri, 06 Mar 2020 01:06:51 +0000
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.128])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93F1E2073D;
 Fri,  6 Mar 2020 01:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583456807;
 bh=aURKFQvIjafRMU6Gm9pVZS/vH2n9loe7wUOjvdcmpyE=;
 h=From:To:Cc:Subject:Date:From;
 b=nZh9xR/GftMO+mns/iZyIOCijIKiV5pzhuM8uhqpdqNMC0UUIetUleJVhk9rH3zNV
 tDem9k+/iCMlcptF6njn8k/0dxNSKdQVYGfSV5bbW94TEGe6ZiksF8h4/sWgjRVmRU
 1+v8Gf/HcPBmIfo/WUOwPUqjSAdXOEFyOZU/agVo=
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Subject: [PATCH net-next 0/7] ethtool: consolidate irq coalescing - other
 drivers
Date: Thu,  5 Mar 2020 17:05:55 -0800
Message-Id: <20200306010602.1620354-1-kuba@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_170649_938399_224C1988 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mkubecek@suse.cz, doshir@vmware.com, pv-drivers@vmware.com,
 jasowang@redhat.com, edumazet@google.com, anton.ivanov@cambridgegreys.com,
 merez@codeaurora.org, leon@kernel.org, linux-rdma@vger.kernel.org,
 richard@nod.at, jgg@ziepe.ca, dledford@redhat.com,
 Jakub Kicinski <kuba@kernel.org>, hayeswang@realtek.com, jdike@addtoit.com,
 linux-um@lists.infradead.org, kvalo@codeaurora.org,
 GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi!

Convert more drivers following the groundwork laid in a recent
patch set [1]. The aim of the effort is to consolidate irq
coalescing parameter validation in the core.

This set converts all the drivers outside of drivers/net/ethernet.

Only vmxnet3 them was checking unsupported parameters.

The aim is to merge this via the net-next tree so we can
convert all drivers and make the checking mandatory.

[1] https://lore.kernel.org/netdev/20200305051542.991898-1-kuba@kernel.org/

Jakub Kicinski (7):
  um: reject unsupported coalescing params
  RDMA/ipoib: reject unsupported coalescing params
  tun: reject unsupported coalescing params
  r8152: reject unsupported coalescing params
  vmxnet3: let core reject the unsupported coalescing parameters
  staging: qlge: reject unsupported coalescing params
  wil6210: reject unsupported coalescing params

 arch/um/drivers/vector_kern.c                |  1 +
 drivers/infiniband/ulp/ipoib/ipoib_ethtool.c |  2 ++
 drivers/net/tun.c                            |  1 +
 drivers/net/usb/r8152.c                      |  1 +
 drivers/net/vmxnet3/vmxnet3_ethtool.c        | 24 +++-----------------
 drivers/net/wireless/ath/wil6210/ethtool.c   |  1 +
 drivers/staging/qlge/qlge_ethtool.c          |  2 ++
 7 files changed, 11 insertions(+), 21 deletions(-)

-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
