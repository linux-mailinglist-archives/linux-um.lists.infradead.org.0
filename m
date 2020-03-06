Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6115E17B379
	for <lists+linux-um@lfdr.de>; Fri,  6 Mar 2020 02:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYp8GGvohFFTIDQts5Et+9ZIMAyclp0O7ct0vXSzMDA=; b=Fe2ZD5+JPpVQ80
	85u0Mnzwk/e/RFfxlh4+HWvHct8RtLq3jooNRc8mlH6b4jfzWOUEY4p+16kolZKCpdi1xkABEMUBl
	Kk/loC+zXAfadE/CfZL6Tap3J83LfBHoI4d1asH3Eh3F/Li/8lSxlH7nFI+uDfkKPvUSr3z9saSeh
	YO4Ex55bi9uR8FMENnfjVgZA3ODEsDyp0QF6DadKv36RLWwkNsKPZPpilt/PeBc/dy5IhTP//HlMH
	G/qFmLUied3E+sBsbO19PKaIG5gay0AXe1LD+DyeQZrSf9rdINsjuRlFtZiDqt8pmDbY9zPhc35C9
	D3jOVdERNzFwmn+5Fhpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1S2-0008QK-Uf; Fri, 06 Mar 2020 01:06:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1S0-0008OI-88
 for linux-um@lists.infradead.org; Fri, 06 Mar 2020 01:06:53 +0000
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.128])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 080BE21556;
 Fri,  6 Mar 2020 01:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583456811;
 bh=t6+kueVIWNtLUqViCk3MdqFhB51exWacT2hvYbn4hoc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xdk2QAQZ24xQ+XNnceK3ptrcg2bWbXOcr9edHCgW/cXLqloNOsBzFBFHkh9fZ17u/
 UTSOplONajI9FemA3ollW3gpdBxDi42uXizDTyOzUnVChUfYu9ictQzzt1NcQhxxKi
 mlXYnjjf8vCnK3wYVfT27cEmWiwwbI1lNXUchhlQ=
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Subject: [PATCH net-next 4/7] r8152: reject unsupported coalescing params
Date: Thu,  5 Mar 2020 17:05:59 -0800
Message-Id: <20200306010602.1620354-5-kuba@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200306010602.1620354-1-kuba@kernel.org>
References: <20200306010602.1620354-1-kuba@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_170652_304383_6892433F 
X-CRM114-Status: UNSURE (   8.55  )
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

Set ethtool_ops->supported_coalesce_params to let
the core reject unsupported coalescing parameters.

This driver did not previously reject unsupported parameters.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/usb/r8152.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/usb/r8152.c b/drivers/net/usb/r8152.c
index b8d2722a1b33..f27fdd6ab86f 100644
--- a/drivers/net/usb/r8152.c
+++ b/drivers/net/usb/r8152.c
@@ -6345,6 +6345,7 @@ static int rtl8152_set_ringparam(struct net_device *netdev,
 }
 
 static const struct ethtool_ops ops = {
+	.supported_coalesce_params = ETHTOOL_COALESCE_USECS,
 	.get_drvinfo = rtl8152_get_drvinfo,
 	.get_link = ethtool_op_get_link,
 	.nway_reset = rtl8152_nway_reset,
-- 
2.24.1


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
