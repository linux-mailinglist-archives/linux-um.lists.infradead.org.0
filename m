Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75E717CC8A
	for <lists+linux-um@lfdr.de>; Sat,  7 Mar 2020 07:46:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52x2WiPr6Ry1oAlZtkG5q2reZLzpgcfH7Xq7lCKhtK0=; b=ORuLiWeGxrchQB
	JiX/V6Ngnea2GBp6Ktfk4xffArIP2QrA+TaWw66oK+wn4TleGldr2y1J0AALz+hnha5PVVrjfWjX3
	vi5t6VY/lJpPjlNW7O7CKYeUssbRGQz/1WVeE8CdTIRj/93jbki8l+0kC0LRpbzETfgcUF/4Y2aFi
	LbO3zUVJieuhqlXx0Hie3mFbeb+Ys906p3MSTA4mqfjcXarDcuYkVdfsGqUv3ILKbY1Spt918fc2S
	xyfCKTiRe4CZQT+qpni/m5Z0gkAkXblNH9yjz7tE/OOb5B/UfRtR3qnMqGO9szLouKUX7Y8ba1VT9
	TukKMR8i7nbJaQqik0wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jATED-0002I0-Eu; Sat, 07 Mar 2020 06:46:29 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jATEA-0002Hf-Td
 for linux-um@lists.infradead.org; Sat, 07 Mar 2020 06:46:28 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::f0c])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 16A2C15538DB4;
 Fri,  6 Mar 2020 22:46:19 -0800 (PST)
Date: Fri, 06 Mar 2020 22:46:18 -0800 (PST)
Message-Id: <20200306.224618.1734969802976525324.davem@davemloft.net>
To: kuba@kernel.org
Subject: Re: [PATCH net-next 0/7] ethtool: consolidate irq coalescing -
 other drivers
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200306010602.1620354-1-kuba@kernel.org>
References: <20200306010602.1620354-1-kuba@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 06 Mar 2020 22:46:20 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_224626_956966_62F9363F 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mkubecek@suse.cz, merez@codeaurora.org, pv-drivers@vmware.com,
 GR-Linux-NIC-Dev@marvell.com, doshir@vmware.com, leon@kernel.org,
 manishc@marvell.com, linux-rdma@vger.kernel.org, richard@nod.at,
 jdike@addtoit.com, linux-um@lists.infradead.org, edumazet@google.com,
 jgg@ziepe.ca, dledford@redhat.com, netdev@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 hayeswang@realtek.com, jasowang@redhat.com, kvalo@codeaurora.org,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Jakub Kicinski <kuba@kernel.org>
Date: Thu,  5 Mar 2020 17:05:55 -0800

> Convert more drivers following the groundwork laid in a recent
> patch set [1]. The aim of the effort is to consolidate irq
> coalescing parameter validation in the core.
> 
> This set converts all the drivers outside of drivers/net/ethernet.
> 
> Only vmxnet3 them was checking unsupported parameters.
> 
> The aim is to merge this via the net-next tree so we can
> convert all drivers and make the checking mandatory.
> 
> [1] https://lore.kernel.org/netdev/20200305051542.991898-1-kuba@kernel.org/

Series applied, thanks Jakub.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
